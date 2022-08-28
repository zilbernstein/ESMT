#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include <memory>

#include "UDMMain.h"
#include "config.h"
#include "public.h"
#include "Utils_JK.h"

#include "UEdit_IncidentRelation.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxNavigator"
#pragma link "cxNavigator"
#pragma resource "*.dfm"
TfrmIncident_Relation *frmIncident_Relation;
//---------------------------------------------------------------------------
__fastcall TfrmIncident_Relation::TfrmIncident_Relation(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmIncident_Relation::Show( Strct_Relation* r )
{
	r_ = r;
    tmr->Enabled = true;
    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident_Relation::aLoadIncidentExecute(TObject *Sender)
{
	/*Загрузить список доступных для указанного вида связки инцидентов*/

    TClientDataSet *cds = cdsRelationIncident;
    TDataSource *ds = dsRelationIncident;
    TcxGridDBBandedTableView *vw = btvRelation;

    TDMMain::ClearDataSet(cds);

    cds->CommandText = "SMT.test_pkg.incident4relation_cur";
    switch ( r_->relation_type )
    {
        case RT_ADD_CHILD:
        	cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = r_->parent_sheet_id;
        	break;
        case RT_ADD_PARENT:
        	cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = r_->sheet_id;
        	break;
    }
    cds->Params->CreateParam(ftInteger, "p_relation_type", ptInput)->AsInteger = r_->relation_type;
    cds->Params->CreateParam(ftInteger, "p_access", ptInput)->AsInteger = DepotID;
    cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

	try
	{
        vw->DataController->DataSource = 0;
        TDMMain::OpenDS(cds, "OPEN", "CT", 1);
        vw->DataController->DataSource = ds;
    }
	catch ( Exception &e )
	{
		throw Exception ("< UEIR-1 > : Ошибка загрузки списка доступных инцидентов.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident_Relation::tmrTimer(TObject *Sender)
{
    tmr->Enabled = false;

    try
    {
        if ( r_->sheet_id == 0 && r_->parent_sheet_id == 0 )
			throw Exception ("< UEIR-2 > : Исходная информация по инциденту еще не сохранена. Редактирование зависимостей невозможно.\n");

		aLoadIncident->Execute();

		grd->SetFocus();
	}
	catch ( Exception &e )
	{
		MessageBox(Handle, AnsiString(e.Message).c_str(), "Операция прервана", MB_ICONSTOP);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident_Relation::aCancelExecute(TObject *Sender)
{
	/*Отмена*/

	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident_Relation::FormKeyPress(TObject *Sender, wchar_t &Key)

{
  if ( Key == VK_RETURN )
		FindNextControl((TWinControl*)Sender,true,true, false)->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident_Relation::aSaveExecute(TObject *Sender)
{
	/*Сохранить связи*/

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	TcxGridDBBandedTableView *vw = btvRelation;
	TClientDataSet *cds = cdsRelationIncident;
	int cnt = 0;

	for ( int i = 0 ; i < vw->DataController->RecordCount; i++ )
	{
		if ( 	vw->Controller->FocusRecord(i, true) == true
			&&	(int)vw->Controller->FocusedRecord->Values[clmnCheck->Index] == 1
		   )
		{
			try
			{
				TDMMain::ClearDataSet(dsa.get());
				dsa->CommandText = "SMT.INCIDENT_PKG.relation_iu";

				switch ( r_->relation_type )
				{
					case RT_ADD_CHILD:
						dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput )->AsInteger 			= (int)vw->Controller->FocusedRecord->Values[clmnSheetID->Index];
						dsa->Params->CreateParam(ftInteger, "p_parent_sheet_id", ptInput )->AsInteger 	= r_->parent_sheet_id;
						break;
					case RT_ADD_PARENT:
						dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput )->AsInteger 			= r_->sheet_id;
						dsa->Params->CreateParam(ftInteger, "p_parent_sheet_id", ptInput )->AsInteger 	= (int)vw->Controller->FocusedRecord->Values[clmnSheetID->Index];
						break;
				}

				dsa->Params->CreateParam( ftInteger, "p_change_user_id", ptInput )->AsInteger	= UserID;
				dsa->Params->CreateParam( ftInteger, "o_Err_Code", ptInputOutput );
				dsa->Params->CreateParam( ftString, "o_Err_Msg", ptInputOutput );

				TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

				if ( dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0 )
					throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);

				cnt++;
			}
			catch ( Exception &e )
			{
				throw Exception ("< UEIR-3 > : Ошибка сохранения связи.\n" + e.Message);
			}
		}
	}

	MessageBox(NULL, AnsiString("Добавлено связанных ЛР: [ " + IntToStr(cnt)+ " ]").c_str(), "Инфо", MB_ICONINFORMATION);

	ModalResult = mrOk;
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident_Relation::btvRelationColumn2GetDisplayText(TcxCustomGridTableItem *Sender,
		  TcxCustomGridRecord *ARecord, UnicodeString &AText)

{
	if ( ARecord != NULL && !AText.IsEmpty() )
		AText = FormatDateTime("dd.mm  hh:nn", StrToDateTime(AText));
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident_Relation::clmnCheckPropertiesEditValueChanged(TObject *Sender)
{
	TcxGridDBBandedTableView *vw = btvRelation;
    int id =  (int)vw->Controller->FocusedRecord->Values[clmnSheetID->Index];

	if ( r_->relation_type == RT_ADD_PARENT && (int)vw->Controller->FocusedRecord->Values[clmnCheck->Index] == 1 )
    {
        for ( int i = 0 ; i < vw->DataController->RecordCount; i++ )
        {
            if	( (int)vw->DataController->Values[i][clmnSheetID->Index] != id )
            	vw->DataController->Values[i][clmnCheck->Index] = 0;
        }
    }
}
//---------------------------------------------------------------------------

