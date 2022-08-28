//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include <memory>

#include "UDMMain.h"
#include "config.h"
#include "public.h"
#include "Utils_JK.h"

#include "UHistoryNRE.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxEdit"
#pragma link "cxGraphics"
#pragma link "cxGridBandedTableView"
#pragma link "cxInplaceContainer"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxMemo"
#pragma link "cxStyles"
#pragma link "cxTextEdit"
#pragma link "cxTL"
#pragma link "cxVGrid"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "cxCalendar"
#pragma link "cxDropDownEdit"
#pragma link "cxContainer"
#pragma link "cxDBEdit"
#pragma link "cxImageComboBox"
#pragma link "cxMaskEdit"
#pragma resource "*.dfm"
TfrmHistoryNRE *frmHistoryNRE;
//---------------------------------------------------------------------------
__fastcall TfrmHistoryNRE::TfrmHistoryNRE(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmHistoryNRE::Show(RecordHistoryNRE* te)
{
	te_ = te;
	return ShowModal();
}
//---------------------------------------------------------------------------


void __fastcall TfrmHistoryNRE::rwWriterEditPropertiesChange(TObject *Sender)
{
	/*  */

	if (rwNoticeSent->Properties->Value == 2)
	{
		rwDatetNotice->Visible	= true;
		rwNumNotice->Visible	= true;
	}
	else
	{
		rwDatetNotice->Visible	= false;
		rwNumNotice->Visible	= false;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmHistoryNRE::rwErrApplyEditPropertiesChange(TObject *Sender)
{
	/*  */

	if ((rwErrApply->Properties->Value == 1) || (rwErrApply->Properties->Value == 3))
	{
		rwDateApply->Visible = true;
	}
	else
	{
		rwDateApply->Visible = false;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmHistoryNRE::aSaveExecute(TObject *Sender)
{
	/* Сохранить */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
    {
		dsa->CommandText = "SMT.INCIDENT2_PKG.nre_history_iu";

		dsa->Params->CreateParam(ftInteger, "o_hist_id", ptInputOutput)->AsInteger	= te_->hist_id;
		dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger 		= te_->sheet_id;
		dsa->Params->CreateParam(ftInteger, "p_notice_sent", ptInput)->AsInteger	= VarToInt(rwNoticeSent->Properties->Value);
		dsa->Params->CreateParam(ftDateTime, "p_notice_date", ptInput)->AsDateTime	= GetDateTimeFromValue(rwDatetNotice->Properties->Value);
		dsa->Params->CreateParam(ftString, "p_notice_num", ptInput)->AsString		= rwNumNotice->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "p_rarse_spend", ptInput)->AsInteger	= VarToInt(rwRarseSpend->Properties->Value);
		dsa->Params->CreateParam(ftInteger, "p_error_apply", ptInput)->AsInteger	= VarToInt(rwErrApply->Properties->Value);
		dsa->Params->CreateParam(ftDateTime, "p_date_apply", ptInput)->AsDateTime 	= GetDateTimeFromValue(rwDateApply->Properties->Value);
		dsa->Params->CreateParam(ftInteger, "p_user_id", ptInput)->AsInteger 		= te_->user_id;

		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

        TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

        if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
            throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
    }
    catch (Exception &e)
    {
    	throw Exception ("< UHNRE-1 > : Ошибка сохранения записи История НРЭ.\n" + e.Message);
	}

	ModalResult = mrOk;
}
//---------------------------------------------------------------------------
void __fastcall TfrmHistoryNRE::aCancelExecute(TObject *Sender)
{
	/* Отмена */

	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

