//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include <memory>

#include "UDMMain.h"
#include "config.h"
#include "public.h"
#include "Utils_JK.h"
#include "uEdit_WeightChrono.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxGraphics"
#pragma link "cxGridBandedTableView"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxStyles"
#pragma link "cxTL"
#pragma link "cxVGrid"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma link "dxStatusBar"
#pragma link "cxContainer"
#pragma link "cxEdit"
#pragma link "cxLabel"
#pragma link "cxMemo"
#pragma link "cxTextEdit"
#pragma resource "*.dfm"
TfrmEdit_WeightChrono *frmEdit_WeightChrono;
//---------------------------------------------------------------------------
__fastcall TfrmEdit_WeightChrono::TfrmEdit_WeightChrono(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmEdit_WeightChrono::Show(Strct_WeightChrono* te)
{
	te_ = te;
	tmr->Enabled = true;
	return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_WeightChrono::aCancelExecute(TObject *Sender)
{
	/* Отмена изменения */

	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------
void __fastcall TfrmEdit_WeightChrono::aSaveExecute(TObject *Sender)
{
	/* Сохранить изменения */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "SMT.INCIDENT2_PKG.unplanned_repair_chrono_iu";

		dsa->Params->CreateParam(ftInteger,	"o_repair_id", ptInputOutput)->AsInteger = te_->repair_id;
		dsa->Params->CreateParam(ftString,	"p_descr", ptInput)->AsString			 = edChrono->Text;
		dsa->Params->CreateParam(ftInteger, "p_user_id", ptInput)->AsInteger		 = UserID;
		//
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

        if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
            throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);

	}
	catch (Exception &e)
	{
		throw Exception ("< UEWCH-1 > : Ошибка сохранения Хронологии.\n" + e.Message);
	}

    ModalResult = mrOk;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_WeightChrono::tmrTimer(TObject *Sender)
{
	tmr->Enabled = false;

	try
	{
        if (te_->sheet_id == 0)
			throw Exception ("< UEWCH-2 > : Исходная информация по инциденту еще не сохранена. Добавление Хронологии невозможно.\n");
		if (te_->repair_id == 0)
			throw Exception ("< UEWCH-3 > : Исходная информация по Расчету НР еще не сохранена. Добавление Хронологии невозможно.\n");

	}
	catch (Exception &e)
	{
		MessageBox(Handle, AnsiString(e.Message).c_str(), "Операция прервана", MB_ICONSTOP);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------
