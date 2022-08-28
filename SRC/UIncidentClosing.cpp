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
#include "UIncidentClosing.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmIncidentClosing *frmIncidentClosing;
//---------------------------------------------------------------------------
__fastcall TfrmIncidentClosing::TfrmIncidentClosing(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmIncidentClosing::Show(Strct_IncidentClosing* te)
{
	te_ = te;
    cxCategoryRow1->Properties->Caption = "Лист регистрации - " + IntToStr(te_->sheet_id);
    tmr->Enabled = true;
    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncidentClosing::tmrTimer(TObject *Sender)
{
	/* Настройки и загрузки */

	tmr->Enabled = false;

    try
    {
        if (te_->sheet_id == 0)
			throw Exception ("< UICL-1 > : Исходная информация по инциденту еще не сохранена. Закрытие ЛР невозможно.\n");

		aFillReason->Execute();
		pbLoading->Position++;
		pbLoading->Update();

		try
		{
			if (te_->close_reason_id != 0)
				{
					rwReason->Properties->Value = te_->close_reason_id;
				}
			// 174 - Значение по умолчанию Устранено в штатном режиме
			/*if (te_->close_reason_new == 174)
			   rwReason->Properties->Value = 148;*/

			// 175 - Значение по умолчанию Устранено с обходным решением
			/*if (te_->close_reason_new == 175)
			   rwReason->Properties->Value = 172;*/

			// 149 - Не подтвердился
			if (te_->close_reason_new == closersnWasNotConfirmed)
			{
				rwReason->Properties->Value = te_->close_reason_new;
				rwReason->Properties->Options->Editing = false;
				te_->close_reason_id = te_->close_reason_new;
			}

			// 247 - Решен
			if (te_->close_reason_new == closersnDecide)
			{
				rwReason->Properties->Value = te_->close_reason_new;
				rwReason->Properties->Options->Editing = false;
				te_->close_reason_id = te_->close_reason_new;
			}

			rwDescr->Properties->Value = te_->descr;

			pbLoading->Position++;
			pbLoading->Update();

			vg->SetFocus();
			rwReason->Focused = true;
		}
		catch (Exception &e)
		{
			throw Exception ("< UICL-2 > : Ошибка установки ключевых значений.\nРекомендуем сделать снимок экрана и обратиться к разработчикам.\n" + e.Message);
		}
	}
	catch (Exception &e)
	{
		MessageBox(Handle, AnsiString(e.Message).c_str(), "Операция прервана", MB_ICONSTOP);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncidentClosing::aFillReasonExecute(TObject *Sender)
{
	/* Заполнение списка кодов закрытия */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	TcxEditorRow 				*rw 	= NULL;
	TcxImageComboBoxItem 		*itm	= NULL;
	TcxImageComboBoxProperties	*cbep	= NULL;

	try
	{
		rw		= rwReason;
		cbep 	= (TcxImageComboBoxProperties*)rw->Properties->EditProperties;
		cbep->Items->Clear();

		dsa->CommandText 	= "smt_nsi_pkg.nsi_reason_close_cur_2_0";
		if (te_->Flag == 1){ dsa->Params->CreateParam(ftInteger, "flag", ptInputOutput)->AsInteger = 1; }
		else {dsa->Params->CreateParam(ftInteger, "flag", ptInputOutput)->AsInteger = 0;}

		dsa->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		dsa->Params->CreateParam(ftInteger, "o_default", ptInputOutput)->AsInteger = 0;

		/*
		dsa->CommandText 	= "SMT.smt_nsi_pkg.nsi_reason_close_cur_new";
		dsa->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		dsa->Params->CreateParam(ftInteger, "o_default", ptInputOutput)->AsInteger = 0;
		*/
		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UICL-3 > : Ошибка загрузки кодов закрытия.\n" + e.Message);
	}

	try
	{
		for (int i = 0; i < dsa->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if ( itm )
			{
				itm->Description	= dsa->FieldByName("name")->AsString;
				itm->Value			= dsa->FieldByName("id")->AsInteger;
			}
			dsa->Next();
		}

		if (dsa->RecordCount > 0)
		{
			dsa->First();
			rw->Properties->Value = dsa->Params->ParamByName("o_default")->AsInteger; //dsa->FieldByName("id")->AsInteger;
		}
	}
	catch (Exception &e)
	{
		throw Exception ("< UICL-4 > : Ошибка заполнения списка кодов закрытия.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncidentClosing::aCancelExecute(TObject *Sender)
{
	// Отмена

	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncidentClosing::aSaveExecute(TObject *Sender)
{
	/* Сохранить */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	int qr = IDCANCEL;

	te_->close_reason_id = (int)rwReason->Properties->Value;
	te_->descr = VarToStr(rwDescr->Properties->Value);

	if (te_->close_reason_id == closersnNotExecutable)
	{
		qr = MessageDlg("При закрытии ЛР с указанной причиной инцидент будет\nЭСКАЛИРОВАН НА РУКОВОДЯЩИЙ УРОВЕНЬ\nс созданием ЛР-ПРОБЛЕМА.\nПродолжить?", mtWarning,  TMsgDlgButtons() << mbYes << mbNo, mbNo);
		if (qr == mrYes)
			MessageBox(NULL, "Функционал ЛР-ПРОБЛЕМА находится в разработке.", "Информация", MB_OK);
		else
			return;
	}

	dsa->CommandText = "SMT.INCIDENT_PKG.incident_close_class_u";

	dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInputOutput)->AsInteger	 = te_->sheet_id;
	dsa->Params->CreateParam(ftInteger, "p_close_reason_id", ptInput)->AsInteger = te_->close_reason_id;
	dsa->Params->CreateParam(ftString, "p_descr", ptInput)->AsString 			 = te_->descr;
	dsa->Params->CreateParam(ftInteger, "p_row_id", ptInput)->AsInteger			 = te_->row_id;

	dsa->Params->CreateParam(ftString, "p_change_user_id", ptInput)->AsString 	 = UserID;
	dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
	dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

	TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

	switch (dsa->Params->ParamByName("o_Err_Code")->AsInteger)
	{
		case dbWarning:
			TDMMain::ShowAppException(AET_WARNING, "< UICL-5 > : ВНИМАНИЕ! [" + IntToStr(te_->sheet_id) + "]", dsa->Params->ParamByName("o_Err_Msg")->AsString);
			return;
			break;
		case dbException:
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
			break;
	}

	ModalResult = mrOk;
}
//---------------------------------------------------------------------------
