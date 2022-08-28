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

#include "UEdit_Pause.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxDateUtils"
#pragma link "dxCore"
#pragma link "cxInplaceContainer"
#pragma link "cxStyles"
#pragma link "cxVGrid"
#pragma link "cxClasses"
#pragma link "cxGridBandedTableView"
#pragma link "cxTL"
#pragma resource "*.dfm"
TfrmEdit_Pause *frmEdit_Pause;
//---------------------------------------------------------------------------
__fastcall TfrmEdit_Pause::TfrmEdit_Pause(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmEdit_Pause::Show(Strct_Pause* te)
{
	te_ = te;
    tmr->Enabled = true;
    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Pause::aLoadReasonExecute(TObject *Sender)
{
	/* Загрузить список причин паузы */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	TcxEditorRow 				*rw 	= NULL;
	TcxImageComboBoxItem 		*itm	= NULL;
	TcxImageComboBoxProperties	*cbep	= NULL;

	try
	{
		rw		= rwReason;
		cbep 	= (TcxImageComboBoxProperties*)rw->Properties->EditProperties;
		cbep->Items->Clear();

		dsa->CommandText = "SMT.smt_nsi_pkg.smt_nsi_pause_reason_cur";
        dsa->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);
	}
	catch ( Exception &e )
	{
		throw Exception ("< UEP-1 > : Ошибка загрузки списка доступных причин паузы.\n" + e.Message);
	}

	try
	{
		for ( int i = 0; i < dsa->RecordCount; i++ )
		{
			itm = cbep->Items->Add();
			if ( itm )
			{
				itm->Description	= dsa->FieldByName("name")->AsString;
				itm->Value			= dsa->FieldByName("id")->AsInteger;
			}
			dsa->Next();
		}

		if ( dsa->RecordCount > 0 )
		{
			dsa->First();
			rw->Properties->Value = dsa->FieldByName("id")->AsInteger;
		}
	}
	catch ( Exception &e )
	{
		throw Exception ("< UEP-2 > : Ошибка заполнения списка доступных причин паузы.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Pause::tmrTimer(TObject *Sender)
{
    tmr->Enabled = false;

    try
    {
        if ( te_->sheet_id == 0 )
			throw Exception ("< UEP-3 > : Исходная информация по инциденту еще не сохранена. Добавление паузы невозможно.\n");

		aLoadReason->Execute();
    }
    catch ( Exception &e )
    {
        MessageBox(Handle, AnsiString(e.Message).c_str(), "Операция прервана", MB_ICONSTOP);
    	ModalResult = mrAbort;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Pause::aCancelExecute(TObject *Sender)
{
	/* Отмена */

	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Pause::FormKeyPress(TObject *Sender, wchar_t &Key)

{
  if (Key == VK_RETURN)
	FindNextControl((TWinControl*)Sender,true,true, false)->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Pause::aSaveExecute(TObject *Sender)
{
	/* Сохранить паузу */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    try
    {
        dsa->CommandText = "SMT.INCIDENT_PKG.pause_iu_pn";

		dsa->Params->CreateParam(ftInteger,  "o_pause_id", ptInputOutput )->AsInteger  = te_->pause_id;
		dsa->Params->CreateParam(ftInteger,  "p_sheet_id", ptInput )->AsInteger 	   = te_->sheet_id;
		dsa->Params->CreateParam(ftDateTime, "p_date_begin", ptInput )->AsDateTime 	   = GetDateTimeFromValue(rwDateBegin->Properties->Value);
		dsa->Params->CreateParam(ftDateTime, "p_date_finish", ptInput )->AsDateTime    = GetDateTimeFromValue(rwDateEnd->Properties->Value);
		dsa->Params->CreateParam(ftInteger,  "p_pause_reason_id", ptInput )->AsInteger = (int)rwReason->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput )->AsInteger   = UserID;
		dsa->Params->CreateParam(ftInteger, "p_pause_descr", ptInput )->AsString       = VarToStr(rwDescr->Properties->Value);
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput );
		dsa->Params->CreateParam(ftString,  "o_Err_Msg", ptInputOutput );

        TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

        if ( dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0 )
            throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
    }
    catch ( Exception &e )
    {
    	throw Exception ("< UEP-4 > : Ошибка сохранения Паузы.\n" + e.Message);
    }

    te_->pause_id = dsa->Params->ParamByName("o_pause_id")->AsInteger;

    ModalResult = mrOk;
}
//---------------------------------------------------------------------------

