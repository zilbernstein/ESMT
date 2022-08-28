//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include <memory>
#include "UDMMain.h"
#include "UEdit_Template.h"
#include "config.h"
#include "public.h"
#include "Utils_JK.h"
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
#pragma link "cxStyles"
#pragma link "cxTL"
#pragma link "cxVGrid"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "cxImageComboBox"
#pragma resource "*.dfm"
TfrmEdit_Template *frmEdit_Template;
//---------------------------------------------------------------------------
__fastcall TfrmEdit_Template::TfrmEdit_Template(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
TModalResult __fastcall TfrmEdit_Template::Show(StrctEditTemplate* ep)
{
	tep_ = ep;
    tmr->Enabled = true;
    return ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TfrmEdit_Template::tmrTimer(TObject *Sender)
{
	tmr->Enabled = false;

	rwTemplateName->Properties->Value = tep_->template_name;
	rwTemplateType->Properties->Value = tep_->type;
}
//---------------------------------------------------------------------------


void __fastcall TfrmEdit_Template::aSaveExecute(TObject *Sender)
{
	/* Сохранить */

    std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    try
    {
		dsa->CommandText = "SMT.ASUT_USER_TEMPLATES_PKG.template_iu";

		dsa->Params->CreateParam(ftInteger, "o_id", ptInput)->AsInteger       = tep_->id;
		dsa->Params->CreateParam(ftString,  "p_name", ptInput)->AsString      = rwTemplateName->Properties->Value;
		dsa->Params->CreateParam(ftString,  "p_user_id", ptInput)->AsInteger  = cfg_.UserID;
		dsa->Params->CreateParam(ftOraClob, "p_template", ptInput)->AsMemo    = tep_->Template->Text;
		dsa->Params->CreateParam(ftString,  "p_type", ptInput)->AsInteger     = tep_->type;
		dsa->Params->CreateParam(ftString,  "p_file_name", ptInput)->AsString = tep_->file_name;
		dsa->Params->CreateParam(ftString,  "p_state_id", ptInput)->AsString  = tep_->state_id;

		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString,  "o_Err_Msg", ptInputOutput);

        TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

        if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
            throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);

        ModalResult = mrOk;
    }
    catch (Exception &e)
    {
        TDMMain::ShowAppException(AET_EXCEPTION, "< UET-1 > : Ошибка сохранения шаблона.\n", e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Template::aCancelExecute(TObject *Sender)
{
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

