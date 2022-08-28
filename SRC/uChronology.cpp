//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include <memory>

#include "UDMMain.h"
#include "config.h"
#include "public.h"
#include "Utils_JK.h"

#include "uChronology.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxDBExtLookupComboBox"
#pragma link "cxEdit"
#pragma link "cxGraphics"
#pragma link "cxGridBandedTableView"
#pragma link "cxImageComboBox"
#pragma link "cxInplaceContainer"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxMemo"
#pragma link "cxStyles"
#pragma link "cxTL"
#pragma link "cxVGrid"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "cxTextEdit"
#pragma resource "*.dfm"
TfrmChronology *frmChronology;
//---------------------------------------------------------------------------
__fastcall TfrmChronology::TfrmChronology(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmChronology::Show(RecordChronoNRE* te)
{
	te_ = te;
	return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmChronology::aSaveExecute(TObject *Sender)
{
	/* Сохранить */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
    {
		dsa->CommandText = "SMT.INCIDENT2_PKG.nre_chrono_iu";

		dsa->Params->CreateParam(ftInteger, "o_chrono_id", ptInputOutput)->AsInteger	= te_->chrono_id;
		dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger			= te_->sheet_id;
		dsa->Params->CreateParam(ftString, "p_descr", ptInput)->AsString				= rwMemo->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "p_user_id", ptInput)->AsInteger			= te_->user_id;

		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

        TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

        if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
            throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
    }
    catch (Exception &e)
    {
    	throw Exception ("< UCH-1 > : Ошибка сохранения записи Хронолгия НРЭ.\n\n" + e.Message);
	}

	ModalResult = mrOk;
}
//---------------------------------------------------------------------------

void __fastcall TfrmChronology::aCancelExecute(TObject *Sender)
{
	/* Отмена */

	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------
