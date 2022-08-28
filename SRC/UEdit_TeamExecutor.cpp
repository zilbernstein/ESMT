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

#include "UEdit_TeamExecutor.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmEdit_TeamExecutor *frmEdit_TeamExecutor;
//---------------------------------------------------------------------------
__fastcall TfrmEdit_TeamExecutor::TfrmEdit_TeamExecutor(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmEdit_TeamExecutor::Show(Strct_TeamExecutor* te)
{
	te_ = te;
	cxCategoryRow1->Properties->Caption = "Лист регистрации - " + IntToStr(te_->sheet_id);
    tmr->Enabled = true;
    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_TeamExecutor::aLoadExecutorExecute(TObject *Sender)
{
	/* Загрузить список исполнителей */

	TClientDataSet *cds				= DMMain->cdsTeam_NSI_Executor;
	TDataSource *ds					= DMMain->dsTeam_NSI_Executor;
	TcxGridDBBandedTableView *vw	= DMMain->btvNSI_Team_Executors;

    TDMMain::ClearDataSet(cds);
	cds->CommandText = "SMT.nsi_pkg.user_department_cur";
	//ShowMessage("te_->department_id" + IntToStr(te_->department_id));
	cds->Params->CreateParam(ftInteger, "p_access", ptInput)->AsInteger = te_->department_id;
    cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

	try
	{
        vw->DataController->DataSource = 0;
        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        /* Раскомментить, если нужно будет выбирать юзеров из в te_->department_id указанного подразделения
        if ( cds->RecordCount == 0 )
        {
            MessageBox(Handle, "В выбранном Вами подразделении нет зарегистрированных сотрудников.", "Операция прервана", MB_OK);
            ModalResult = mrCancel;
        }
        */
        vw->DataController->DataSource = ds;
    }
	catch (Exception &e)
	{
		throw Exception ("< UETE-1 > : Ошибка загрузки списка доступных исполнителей.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_TeamExecutor::aLoadWorkExecute(TObject *Sender)
{
	/* Загрузить список работ */

	TClientDataSet *cds				= DMMain->cdsTeam_NSI_Work;
	TDataSource *ds					= DMMain->dsTeam_NSI_Work;
	TcxGridDBBandedTableView *vw	= DMMain->btvNSI_Team_Work;

	TDMMain::ClearDataSet(cds);
	cds->CommandText = "SMT.smt_nsi_pkg.smt_nsi_work_cur";
	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

	try
	{
		vw->DataController->DataSource = 0;
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
		vw->DataController->DataSource = ds;
	}
	catch ( Exception &e )
	{
		throw Exception ("< UETE-2 > : Ошибка загрузки списка работ.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_TeamExecutor::tmrTimer(TObject *Sender)
{
	tmr->Enabled = false;

	try
	{
		if (te_->sheet_id == 0)
			throw Exception ("< UETE-3 > : Исходная информация по инциденту еще не сохранена. Добавление исполнителей невозможно.\n");

		aLoadExecutor->Execute();
		aLoadWork->Execute();

		try
		{
			rwExecutor->Properties->Value	= (te_->user_id == 0 ? DMMain->cdsTeam_NSI_Executor->FieldByName("employee_id")->AsInteger : te_->user_id);
			rwWork->Properties->Value		= (te_->work_id == 0 ? DMMain->cdsTeam_NSI_Work->FieldByName("work_id")->AsInteger : te_->work_id);
			rwDescr->Properties->Value		= te_->descr;
			rwDateBegin->Properties->Value	= DateTimeToVariant(te_->date_begin);
			rwExecutor->Focused 			= true;
		}
		catch (Exception &e)
		{
			throw Exception ("< UETE-4 > : Ошибка установки ключевых значений.\nРекомендуем сделать снимок экрана и обратиться к разработчикам.\n" + e.Message);
		}
	}
	catch (Exception &e)
	{
		MessageBox(Handle, AnsiString(e.Message).c_str(), "Операция прервана", MB_ICONSTOP);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_TeamExecutor::aCancelExecute(TObject *Sender)
{
	/* Отмена */

	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_TeamExecutor::FormKeyPress(TObject *Sender, wchar_t &Key)

{
  if (Key == VK_RETURN)
		FindNextControl((TWinControl*)Sender,true,true, false)->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_TeamExecutor::aSaveExecute(TObject *Sender)
{
	/* Сохранить исполнителя */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "SMT.INCIDENT_PKG.team_executor_iu";

		dsa->Params->CreateParam(ftInteger, "o_team_id", ptInputOutput)->AsInteger	= te_->team_id;
		dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger 		= te_->sheet_id;
		dsa->Params->CreateParam(ftInteger, "p_user_id", ptInput)->AsInteger 		= (int)rwExecutor->Properties->Value; // cbExecutor->EditValue;
		dsa->Params->CreateParam(ftInteger, "p_work_id", ptInput)->AsInteger 		= (int)rwWork->Properties->Value; // GetValue_WorkID();
		dsa->Params->CreateParam(ftString, "p_descr", ptInput)->AsString 			= VarToStr(rwDescr->Properties->Value);
		dsa->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime 	= GetDateTimeFromValue(rwDateBegin->Properties->Value);

		dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput )->AsInteger	= UserID;
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput );
		dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput );

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
	}
	catch (Exception &e)
	{
		throw Exception ("< UETE-5 > : Ошибка сохранения исполнителя.\n" + e.Message);
	}

	te_->team_id = dsa->Params->ParamByName("o_team_id")->AsInteger;

	ModalResult = mrOk;
}
//---------------------------------------------------------------------------



