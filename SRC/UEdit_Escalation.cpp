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

#include "UEdit_Escalation.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)

#pragma resource "*.dfm"
TfrmEdit_Escalation *frmEdit_Escalation;
//---------------------------------------------------------------------------
__fastcall TfrmEdit_Escalation::TfrmEdit_Escalation(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmEdit_Escalation::Show( Strct_Escalation* te )
{
	te_ = te;
	cxCategoryRow1->Properties->Caption = "Лист регистрации - " + IntToStr(te_->sheet_id);
    tmr->Enabled = true;
    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Escalation::aLoad_FirmExecute(TObject *Sender)
{
	/* Загрузить список предприятий для уровней эскалации */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	TcxEditorRow 				*rw 	= NULL;
	TcxImageComboBoxItem 		*itm	= NULL;
	TcxImageComboBoxProperties	*cbep	= NULL;

	try
	{
		rw		= rwFirm;
		cbep 	= (TcxImageComboBoxProperties*)rw->Properties->EditProperties;
		cbep->Items->Clear();

        dsa->CommandText = "SMT.smt_nsi_pkg.smt_nsi_escalation_firm_cur";
//		dsa->Params->CreateParam(ftInteger, "p_access", ptInput)->AsInteger = DepotID;
		dsa->Params->CreateParam(ftInteger, "p_id_user",     ptInput)->AsInteger = UserID;
		dsa->Params->CreateParam(ftString,  "p_code_object", ptInput)->AsString  = "aIncident";
		dsa->Params->CreateParam(ftCursor,  "o_cur",         ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UEE-1 > : Ошибка загрузки списка доступных уровней эскалации.\n" + e.Message);
	}

	try
	{
		for ( int i = 0; i < dsa->RecordCount; i++ )
		{
			itm = cbep->Items->Add();
			if (itm)
			{
				itm->Description = dsa->FieldByName("firm_name_parent")->AsString;
				itm->Value		 = dsa->FieldByName("kod_firm")->AsInteger;
			}
			dsa->Next();
		}

		if (dsa->RecordCount > 0)
		{
			dsa->First();
			rw->Properties->Value = dsa->FieldByName("kod_firm")->AsInteger;
		}
	}
	catch (Exception &e)
	{
		throw Exception ("< UEE-2 > : Ошибка заполнения списка доступных уровней эскалации.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Escalation::tmrTimer(TObject *Sender)
{
	tmr->Enabled = false;

	try
	{
		if (te_->sheet_id == 0)
			throw Exception ("< UEE-3 > : Исходная информация по инциденту еще не сохранена. Добавление склада невозможно.\n");

		aLoad_Firm->Execute();
		aLoad_Reason->Execute();

		try
		{
			if (te_->kod_firm > 0)
				rwFirm->Properties->Value = te_->kod_firm;

			aLoad_User->Execute();

			if (te_->user_id > 0)
				rwUser->Properties->Value = te_->user_id;
			if (te_->reason_id > 0)
				rwReason->Properties->Value = te_->reason_id;

			rwDescr->Properties->Value = te_->descr;
		}
		catch (Exception &e)
		{
			throw Exception ("< UEE-4 > : Ошибка установки ключевых значений.\nРекоменуем сделать снимок экрана и обратиться к разработчикам.\n" + e.Message);
		}
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "Ошибка загрузки окна эскалации", e.Message);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Escalation::aCancelExecute(TObject *Sender)
{
	/* Отмена */

	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Escalation::FormKeyPress(TObject *Sender, wchar_t &Key)

{
  if (Key == VK_RETURN)
		FindNextControl((TWinControl*)Sender,true,true, false)->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Escalation::aSaveExecute(TObject *Sender)
{
	/* Сохранить эскалацию */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "SMT.INCIDENT_PKG.escalation_iu";

		dsa->Params->CreateParam(ftInteger, "o_escal_id", ptInputOutput)->AsInteger = te_->escal_id;
		dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger 		= te_->sheet_id;
		dsa->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime 	= te_->date_begin;
		dsa->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime  = te_->date_finish;
		dsa->Params->CreateParam(ftInteger, "p_kod_firm", ptInput)->AsInteger 		= (int)rwFirm->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "p_user_id", ptInput)->AsInteger 		= (int)rwUser->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "p_reason_id", ptInput)->AsInteger 	 	= (int)rwReason->Properties->Value;
		dsa->Params->CreateParam(ftString, "p_descr", ptInput)->AsString 			= VarToStr(rwDescr->Properties->Value);

		dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput)->AsInteger	= UserID;
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
	}
	catch ( Exception &e )
	{
		throw Exception ("< UEE-5 > : Ошибка сохранения Эскалации.\n" + e.Message);
	}

	te_->escal_id = dsa->Params->ParamByName("o_escal_id")->AsInteger;

	ModalResult = mrOk;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Escalation::aLoad_UserExecute(TObject *Sender)
{
	/* Загрузить список пользователей для выбранного уровня эскалации */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	//TClientDataSet *cds = DMMain->cdsRSh_NSI_Escalation_User;
	//TDataSource *ds = DMMain->dsRSh_NSI_Escalation_User;
	TcxEditorRow 				*rw 	= rwUser;
	TcxImageComboBoxItem 		*itm	= NULL;
	TcxImageComboBoxProperties	*cbep	= (TcxImageComboBoxProperties*)rw->Properties->EditProperties;
	//TcxGridDBBandedTableView *vw = DMMain->btvNSI_Team_Executors;

	dsa->CommandText = "SMT.smt_nsi_pkg.smt_nsi_escalation_user_cur";
	dsa->Params->CreateParam(ftInteger, "p_kod_firm", ptInput)->AsInteger = (int)rwFirm->Properties->Value;
	dsa->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

	try
	{
		//((TcxLookupComboBoxProperties*)rwUser->Properties)->ListSource = 0;
		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);
		//((TcxLookupComboBoxProperties*)rwUser->Properties)->ListSource = ds;
	}
	catch (Exception &e)
	{
		throw Exception ("< UEE-6 > : Ошибка загрузки списка пользователей, доступных для эскалации.\n" + e.Message);
	}

	try
	{
		cbep->Items->Clear();
		for ( int i = 0; i < dsa->RecordCount; i++ )
		{
			itm = cbep->Items->Add();
			if ( itm )
			{
				itm->Description	= dsa->FieldByName("fio")->AsString;
				itm->Value			= dsa->FieldByName("employee_id")->AsInteger;
			}
			dsa->Next();
		}

		if ( dsa->RecordCount > 0 )
		{
			dsa->First();
			rw->Properties->Value = dsa->FieldByName("employee_id")->AsInteger;
		}
	}
	catch ( Exception &e )
	{
		throw Exception ("< UEE-7 > : Ошибка заполнения списка пользователей, доступных для эскалации.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Escalation::aLoad_ReasonExecute(TObject *Sender)
{
	/*Загрузить список причин эскалации*/

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	TcxEditorRow 			   *rw   = NULL;
	TcxImageComboBoxItem 	   *itm  = NULL;
	TcxImageComboBoxProperties *cbep = NULL;

	try
	{
		rw	 = rwReason;
		cbep = (TcxImageComboBoxProperties*)rw->Properties->EditProperties;
		cbep->Items->Clear();

		dsa->CommandText = "SMT.smt_nsi_pkg.smt_nsi_escal_reason_cur";
		dsa->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);
	}
	catch ( Exception &e )
	{
		throw Exception ("< UEE-8 > : Ошибка загрузки списка доступных причин эскалации.\n" + e.Message);
	}

	try
	{
		for (int i = 0; i < dsa->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if ( itm )
			{
				itm->Description = dsa->FieldByName("name")->AsString;
				itm->Value		 = dsa->FieldByName("id")->AsInteger;
			}
			dsa->Next();
		}

		if (dsa->RecordCount > 0)
		{
			dsa->First();
			rw->Properties->Value = dsa->FieldByName("id")->AsInteger;
		}
	}
	catch (Exception &e)
	{
		throw Exception ("< UEE-9 > : Ошибка заполнения списка доступных причин эскалации.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------



