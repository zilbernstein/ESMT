//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "memory"
#include <stdio.h>

#include "config.h"
#include "public.h"

#include "UDMMain.h"

#include "uDepoEnterIncidentAdd.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxGraphics"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "cxClasses"
#pragma link "cxGridBandedTableView"
#pragma link "cxStyles"
#pragma link "cxTL"
#pragma link "cxVGrid"
#pragma link "cxCheckBox"
#pragma link "cxControls"
#pragma link "cxCustomData"
#pragma link "cxData"
#pragma link "cxDataStorage"
#pragma link "cxDBData"
#pragma link "cxEdit"
#pragma link "cxFilter"
#pragma link "cxGrid"
#pragma link "cxGridCustomTableView"
#pragma link "cxGridCustomView"
#pragma link "cxGridDBBandedTableView"
#pragma link "cxGridLevel"
#pragma link "cxGridTableView"
#pragma link "cxNavigator"
#pragma link "dxSkinscxPCPainter"
#pragma resource "*.dfm"
TDepoEnterIncidentAdd *DepoEnterIncidentAdd;
//---------------------------------------------------------------------------
__fastcall TDepoEnterIncidentAdd::TDepoEnterIncidentAdd(TComponent* Owner)
	: TForm(Owner)
{
}

TModalResult __fastcall TDepoEnterIncidentAdd::Show(StrctIncidentList* ep)
{
	ep_	= ep;
	aLoadIncidents->Execute();
	return ShowModal();
}

//---------------------------------------------------------------------------
void __fastcall TDepoEnterIncidentAdd::aSelectIncidentsExecute(TObject *Sender)
{
	/* Добавление */
	TcxGridDBBandedTableView *btv = btvIncidentList;
	TClientDataSet *cds           = cdsIncidentList;

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		cds->Filter = "checked = 1";
		cds->Filtered = true;

        btv->ViewData->Expand(true);
		btv->Controller->SelectAllRecords();

		for (int i = 0; i < btv->Controller->SelectedRowCount; i++)
        {
			//btv->Controller->SelectedRows[i]->Focused = true;

			if (cds->FieldByName("checked")->AsInteger == 1)

			{
				try
				{
					TDMMain::ClearDataSet(dsa.get());
					dsa->CommandText = "SMT.INCIDENT2_PKG.depo_enter_incidentlistadd_i";
					dsa->Params->CreateParam(ftInteger, "p_row_id",   ptInput)->AsInteger  = ep_->row_id;
					dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger  = cds->FieldByName("sheet_id")->AsInteger;
					dsa->Params->CreateParam(ftDateTime,"p_date_op",  ptInput)->AsDateTime = ep_->date_op;
					dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
					dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);
					TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

					if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
						throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
				}
				catch (Exception &e)
				{
					throw Exception("< UDEIA-1 > : Ошибка сохранения в БД: " + e.Message);
				}
			}
		}
	}
	__finally
	{
		cds->Filter = "";
		cds->Filtered = false;
	}
	ModalResult = mrOk;
}
//---------------------------------------------------------------------------

void __fastcall TDepoEnterIncidentAdd::aCancelExecute(TObject *Sender)
{
	/* Отмена */

	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------
void __fastcall TDepoEnterIncidentAdd::aLoadIncidentsExecute(TObject *Sender)
{
	/* Загрузка списка инцидентов */

	TcxGridDBBandedTableView *btv	= btvIncidentList;
	TClientDataSet *cds				= cdsIncidentList;
	TDataSource *ds					= dsIncidentList;

	try
	{
		btv->DataController->DataSource = 0;

		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.INCIDENT2_PKG.depo_enter_incidentlistadd_cur";
		cds->Params->CreateParam(ftInteger,  "p_row_id", ptInput)->AsInteger	= ep_->row_id;
		cds->Params->CreateParam(ftInteger,  "p_ser_loc", ptInput)->AsInteger   = ep_->kod_ser;
		cds->Params->CreateParam(ftInteger,  "p_zns_loc", ptInput)->AsInteger   = ep_->nom_loc;
		cds->Params->CreateParam(ftInteger,  "p_prs_loc", ptInput)->AsInteger   = ep_->nom_sec;
		cds->Params->CreateParam(ftDateTime, "p_date_op", ptInput)->AsDateTime	= ep_->date_op;
		cds->Params->CreateParam(ftCursor,   "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btv->DataController->DataSource = ds;
	}
	catch (Exception &e)
	{
		btv->OptionsView->NoDataToDisplayInfoText = ErrorRefreshText;
		TDMMain::ShowAppException(AET_EXCEPTION, "< UDEIA-2 > : Ошибка загрузки списка инцидентов. ", e.Message);
	}
}
//---------------------------------------------------------------------------

