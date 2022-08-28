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

#include "UEdit_TeamLeader.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxNavigator"
#pragma link "cxNavigator"
#pragma resource "*.dfm"
TfrmEdit_TeamLeader *frmEdit_TeamLeader;
//---------------------------------------------------------------------------
__fastcall TfrmEdit_TeamLeader::TfrmEdit_TeamLeader(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmEdit_TeamLeader::Show( Strct_TeamLeader* te )
{
	te_ = te;
    tmr->Enabled = true;
    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_TeamLeader::aLoadLeaderExecute(TObject *Sender)
{
	/*Загрузить список руководителей*/
	TClientDataSet *cds     =  DMMain->cdsTeam_NSI_Leader;
	TDataSource *ds         =  DMMain->dsTeam_NSI_Leader;
	TcxGridDBTableView *vw  =  btvTeamLeader;

	TDMMain::ClearDataSet(cds);
	cds->CommandText = "SMT.smt_nsi_pkg.smt_nsi_leader_cur";
	cds->Params->CreateParam(ftInteger, "p_sheet_id",     ptInput)->AsInteger  =  te_->sheet_id;
	cds->Params->CreateParam(ftInteger, "p_sign",         ptInput)->AsInteger  =  te_->sign;
//	cds->Params->CreateParam(ftInteger, "p_access_level", ptInput)->AsInteger  =  DepotID;
	cds->Params->CreateParam(ftInteger, "p_id_user",      ptInput)->AsInteger  =  UserID;
	cds->Params->CreateParam(ftString,  "p_code_object",  ptInput)->AsString   =  "aIncident";
	cds->Params->CreateParam(ftCursor,  "o_cur",          ptInputOutput);

	try
	{
        vw->DataController->DataSource = 0;
        TDMMain::OpenDS(cds, "OPEN", "CT", 1);
        vw->DataController->DataSource = ds;
    }
	catch ( Exception &e )
	{
		throw Exception ("< UETL-1 > : Ошибка загрузки списка доступных руководителей.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_TeamLeader::tmrTimer(TObject *Sender)
{
    tmr->Enabled = false;

    try
    {
        if ( te_->sheet_id == 0 )
			throw Exception ("< UETL-2 > : Исходная информация по инциденту еще не сохранена. Добавление руководителей/владельцев невозможно.\n");

    	aLoadLeader->Execute();

        grd->SetFocus();
    }
	catch ( Exception &e )
    {
        MessageBox(Handle, AnsiString(e.Message).c_str(), "Операция прервана", MB_ICONSTOP);
    	ModalResult = mrAbort;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_TeamLeader::aCancelExecute(TObject *Sender)
{
	/*Отмена*/

    ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_TeamLeader::FormKeyPress(TObject *Sender, wchar_t &Key)

{
  if ( Key == VK_RETURN )
		FindNextControl((TWinControl*)Sender,true,true, false)->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_TeamLeader::aSaveExecute(TObject *Sender)
{
	/*Сохранить исполнителя*/

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
    TcxGridDBTableView *vw = btvTeamLeader;
    TClientDataSet *cds = DMMain->cdsTeam_NSI_Leader;

    for ( int i = 0 ; i < vw->DataController->RecordCount; i++ )
    {
    	if ( vw->Controller->FocusRecord(i, true) == true
        	&&	( (int)vw->Controller->FocusedRecord->Values[clmnCheck->Index] == 1
            	|| cds->FieldByName("team_id")->AsInteger != 0
            	)
        	)
        {
            try
            {
                TDMMain::ClearDataSet(dsa.get());
                dsa->CommandText = "SMT.INCIDENT_PKG.team_leader_iu";

                dsa->Params->CreateParam(ftInteger, "o_team_id", ptInputOutput )->AsInteger = DMMain->cdsTeam_NSI_Leader->FieldByName("team_id")->AsInteger;
                dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput )->AsInteger 		= te_->sheet_id;
                dsa->Params->CreateParam(ftInteger, "p_user_id", ptInput )->AsInteger 		= DMMain->cdsTeam_NSI_Leader->FieldByName("user_id")->AsInteger;
                dsa->Params->CreateParam(ftInteger, "p_sign", ptInput )->AsInteger 			= te_->sign;
                dsa->Params->CreateParam(ftInteger, "p_is_valid", ptInput )->AsInteger 		= DMMain->cdsTeam_NSI_Leader->FieldByName("checked")->AsInteger;

                dsa->Params->CreateParam( ftInteger, "p_change_user_id", ptInput )->AsInteger	= UserID;
                dsa->Params->CreateParam( ftInteger, "o_Err_Code", ptInputOutput );
                dsa->Params->CreateParam( ftString, "o_Err_Msg", ptInputOutput );

                TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

                if ( dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0 )
                    throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
            }
            catch ( Exception &e )
            {
                throw Exception ("< UETL-3 > : Ошибка сохранения руководителя/владельца.\n" + e.Message);
            }
    	}
    }
    te_->team_id = dsa->Params->ParamByName("o_team_id")->AsInteger;

    ModalResult = mrOk;
}
//---------------------------------------------------------------------------

