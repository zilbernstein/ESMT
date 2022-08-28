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

#include "UEdit_Action.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxDateUtils"
#pragma link "dxCore"
#pragma link "cxDateUtils"
#pragma link "dxCore"
#pragma resource "*.dfm"

TfrmEdit_Action *frmEdit_Action;
//---------------------------------------------------------------------------
__fastcall TfrmEdit_Action::TfrmEdit_Action(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmEdit_Action::Show( Strct_Action* te )
{
	te_ = te;
    tmr->Enabled = true;
    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Action::aLoadLeaderExecute(TObject *Sender)
{
	/* Загрузить список руководителей */

	TClientDataSet *cds				= DMMain->cdsAction_NSI_Leader;
	TDataSource *ds					= DMMain->dsAction_NSI_Leader;
    TcxGridDBBandedTableView *vw	= DMMain->btvNSI_Team_Executors;

    TDMMain::ClearDataSet(cds);
    cds->CommandText = "SMT.smt_nsi_pkg.smt_nsi_action_leader_cur";
    cds->Params->CreateParam(ftInteger, "p_access_level", ptInput)->AsInteger = DepotID;
    cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = te_->sheet_id;
    cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

	try
	{
		vw->DataController->DataSource = 0;
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		if (cds->RecordCount == 0)
		{
			MessageBox(Handle, "Не заданы руководители на вкладке <Команда>.", "Операция прервана", MB_OK);
			ModalResult = mrCancel;
		}

		vw->DataController->DataSource = ds;
	}
	catch (Exception &e)
	{
		throw Exception ("< UEAC-1 > : Ошибка загрузки списка доступных руководителей.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Action::aLoadActionTypeExecute(TObject *Sender)
{
	/* Загрузить список типов мероприятий */

	TClientDataSet *cds		= DMMain->cdsTeam_NSI_Work;
	TDataSource *ds			= DMMain->dsTeam_NSI_Work;
	TcxLookupComboBox *cb	= cbActionType;

	TDMMain::ClearDataSet(cds);
	cds->CommandText = "SMT.smt_nsi_pkg.smt_nsi_action_type_cur";
	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
	cds->Params->CreateParam(ftInteger, "o_default", ptInputOutput)->AsInteger;

	try
	{
		cb->Properties->ListSource = 0;
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
		cb->Properties->ListSource = ds;

		vDefaultActionType = cds->Params->ParamByName("o_default")->AsInteger;
	}
	catch (Exception &e)
	{
		throw Exception ("< UEAC-2 > : Ошибка загрузки списка типов мероприятий.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Action::tmrTimer(TObject *Sender)
{
	tmr->Enabled = false;

	try
	{
		if (te_->sheet_id == 0)
			throw Exception ("< UEAC-3 > : Исходная информация по инциденту еще не сохранена. Добавление исполнителей невозможно.\n");

		aLoadLeader->Execute();
		aLoadActionType->Execute();

		try
		{
			cbLeader->EditValue				= te_->leader_id;
			mmActionDescr->Text				= te_->action_descr;
			deDatePerformance->EditValue	= DateTimeToVariant(te_->date_performance);
			mmNonExecuteDescr->Text			= te_->non_execute_descr;
			cbRating->EditValue				= te_->rating;

			if (te_->action_id == 0)
			{
				cbActionType->EditValue = vDefaultActionType;
			}
			else
			{
				cbActionType->EditValue = te_->action_type_id;
				cbResult->EditValue = te_->result_id;
			}

			cbLeader->SetFocus();
		}
		catch (Exception &e)
		{
			throw Exception ("< UEAC-4 > : Ошибка установки ключевых значений.\nРекомендуем сделать снимок экрана и обратиться к разработчикам.\n" + e.Message);
		}
	}
	catch (Exception &e)
	{
		MessageBox(Handle, AnsiString(e.Message).c_str(), "Операция прервана", MB_ICONSTOP);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Action::aCancelExecute(TObject *Sender)
{
	/* Отмена */

	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Action::FormKeyPress(TObject *Sender, wchar_t &Key)

{
  if (Key == VK_RETURN)
		FindNextControl((TWinControl*)Sender,true,true, false)->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Action::aSaveExecute(TObject *Sender)
{
	/* Сохранить меру */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "SMT.INCIDENT_PKG.action_iu";

		dsa->Params->CreateParam(ftInteger, "o_action_id", ptInputOutput)->AsInteger = te_->action_id;
		dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger 		= te_->sheet_id;
		dsa->Params->CreateParam(ftInteger, "p_action_type_id", ptInput)->AsInteger 		= (int)cbActionType->EditValue;
		dsa->Params->CreateParam(ftString, "p_action_descr", ptInput)->AsString 		= mmActionDescr->Text;
		dsa->Params->CreateParam(ftInteger, "p_leader_id", ptInput)->AsInteger 		= (int)cbLeader->EditValue;
		dsa->Params->CreateParam(ftDateTime, "p_date_performance", ptInput)->AsDateTime 	= GetDateTimeFromValue(deDatePerformance->EditValue);
		dsa->Params->CreateParam(ftInteger, "p_result_id", ptInput)->AsInteger 		= (int)cbResult->EditValue;
		dsa->Params->CreateParam(ftString, "p_non_exec_descr", ptInput)->AsString 		= mmNonExecuteDescr->Text;
		dsa->Params->CreateParam(ftInteger, "p_rating", ptInput)->AsInteger 		= (int)cbRating->EditValue;

		dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput)->AsInteger	= UserID;
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if ( dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0 )
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
	}
	catch ( Exception &e )
	{
		throw Exception ("< UEAC-5 > : Ошибка сохранения мероприятия.\n" + e.Message);
	}

	te_->action_id = dsa->Params->ParamByName("o_action_id")->AsInteger;

	ModalResult = mrOk;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Action::aLoadResultExecute(TObject *Sender)
{
	/*Загрузить список результатов выполнения (состояния мероприятия)

    TClientDataSet *cds = DMMain->cdsAction_NSI_Result;
    TDataSource *ds = DMMain->dsAction_NSI_Result;
    TcxLookupComboBox *cb = cbResult;

    TDMMain::ClearDataSet(cds);
    cds->CommandText = "SMT.smt_nsi_pkg.smt_nsi_action_result_cur";
    cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
    cds->Params->CreateParam(ftInteger, "o_default", ptInputOutput)->AsInteger;

	try
	{
    	cb->Properties->ListSource = 0;
        TDMMain::OpenDS(cds, "OPEN", "CT", 1);
        cb->Properties->ListSource = ds;
        vDefaultResult = cds->Params->ParamByName("o_default")->AsInteger;
    }
	catch ( Exception &e )
	{
		throw Exception ("<TE-02>: Ошибка загрузки списка результатов.\n" + e.Message);
	} */
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Action::cbResultPropertiesEditValueChanged(TObject *Sender)

{
	lblNonExecuteDescr->Enabled	= ((int)cbResult->EditValue == 60);
    mmNonExecuteDescr->Enabled	= lblNonExecuteDescr->Enabled;

    if (mmNonExecuteDescr->Enabled == true)
    {
		te_->non_execute_descr	= mmNonExecuteDescr->Text;
        mmNonExecuteDescr->Text	= te_->non_execute_descr;
    }
    else
    {
    	mmNonExecuteDescr->Text	= "";
    }

	lblRating->Enabled	= ((int)cbResult->EditValue == 59);
    cbRating->Enabled	= lblRating->Enabled;
}
//---------------------------------------------------------------------------

