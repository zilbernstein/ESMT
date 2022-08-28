//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "config.h"
#include "public.h"
#include "UDMMain.h"
#include "Utils_JK.h"
#include <memory>
#include <stdio.h>
#include <string.h>
#include "Log.h"
#pragma hdrstop

#include "uEditDicCloseDepoIncident.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxClasses"
#pragma link "cxControls"
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
#pragma resource "*.dfm"
TfrmEditDicCloseDepoIncident *frmEditDicCloseDepoIncident;
//---------------------------------------------------------------------------
__fastcall TfrmEditDicCloseDepoIncident::TfrmEditDicCloseDepoIncident(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
TModalResult __fastcall TfrmEditDicCloseDepoIncident::Show( RecordThree* pThree )
{
	pThree_ = pThree;

	rowName->Properties->Value = pThree_->nam;
	rwDescr->Properties->Value = pThree_->note;
	rwType->Properties->Value  = pThree_->pr_id;

	return ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TfrmEditDicCloseDepoIncident::aSaveExecute(TObject *Sender)
{
	/* Сохранить */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "smt_nsi2_pkg.smt_nsi_univ_iu";
		dsa->Params->CreateParam(ftInteger, "o_id",        ptInputOutput)->AsInteger = pThree_->id;
		dsa->Params->CreateParam(ftString,  "p_name",      ptInput)->AsString		 = rowName->Properties->Value;
		dsa->Params->CreateParam(ftString,  "p_mnemo",     ptInput)->AsString		 = rwDescr->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "p_parent_id", ptInput)->AsInteger		 = int(rwType->Properties->Value);
        dsa->Params->CreateParam(ftInteger, "p_user_id",   ptInput)->AsInteger       = UserID;
		dsa->Params->CreateParam(ftInteger, "o_err_code",  ptInputOutput);
		dsa->Params->CreateParam(ftString,  "o_err_msg",   ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);

		ModalResult = mrOk;
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UTHEE-1 > : Ошибка сохранения.\n", e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditDicCloseDepoIncident::aCloseExecute(TObject *Sender)
{
	/* Отмена */
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------


