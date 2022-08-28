//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include <memory>
#include <stdio.h>

#include "config.h"
#include "public.h"
#include "UReason.h"
#include "UDMMain.h"

#include "U_Edit_Reason.h"
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
#pragma link "cxPC"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "cxStyles"
#pragma link "cxTL"
#pragma link "cxVGrid"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "dxSkinscxPCPainter"
#pragma link "cxDropDownEdit"
#pragma link "cxContainer"
#pragma link "cxCustomData"
#pragma link "cxDBLookupComboBox"
#pragma link "cxDBTL"
#pragma link "cxGroupBox"
#pragma link "cxImageComboBox"
#pragma link "cxMaskEdit"
#pragma link "cxProgressBar"
#pragma link "cxTextEdit"
#pragma link "cxTLData"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma link "dxStatusBar"
#pragma link "cxMemo"
#pragma resource "*.dfm"
Tfrm_Edit_Reason *frm_Edit_Reason;
//---------------------------------------------------------------------------
TModalResult __fastcall Tfrm_Edit_Reason::Show(RecordReason* ep)
{
	ep_ = ep;
	tmr->Enabled = true;

	return ShowModal();
}
//---------------------------------------------------------------------------
__fastcall Tfrm_Edit_Reason::Tfrm_Edit_Reason(TComponent* Owner)
	: TForm(Owner)
{
	pc->ActivePage = tsProgress;
    pc->HideTabs = true;
}
//---------------------------------------------------------------------------
void __fastcall Tfrm_Edit_Reason::aCancelExecute(TObject *Sender)
{
	/* Отмена */

	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------
void __fastcall Tfrm_Edit_Reason::aSaveExecute(TObject *Sender)
{
	/* Сохранить */
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    try
    {
        dsa->CommandText = "SMT.NSI_PKG.reason_tree_iu";
		dsa->Params->CreateParam(ftInteger, "p_reason_id", ptInputOutput)->AsInteger	= ep_->reason_id;
		dsa->Params->CreateParam(ftInteger, "p_parent_id", ptInput)->AsInteger			= ep_->parent_id;
		dsa->Params->CreateParam(ftString, "p_reason_name", ptInput)->AsString			= VarToStr(rwNameReason->Properties->Value);
		dsa->Params->CreateParam(ftString, "p_mnemo", ptInput)->AsString				= VarToStr(rwMnemo->Properties->Value);
		dsa->Params->CreateParam(ftString, "p_descr", ptInput)->AsString				= VarToStr(rwDescr->Properties->Value);
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
        dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

        TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

        if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
            throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);

		ep_->reason_id = dsa->Params->ParamByName("p_reason_id")->AsInteger;

        ModalResult = mrOk;
    }
    catch (Exception &e)
    {
		TDMMain::ShowAppException(AET_EXCEPTION, "< UERS-1 > : Ошибка сохранения причины инцидента.\n", e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall Tfrm_Edit_Reason::aLoadReasonTreeExecute(TObject *Sender)
{
	/* Загрузка дерева */

	TClientDataSet *cd	= cdsReasonTreeParent;
	TDataSource *ds		= dsReasonTreeParent;

	TcxTreeListNode *node = NULL;

	try
	{
		tlReason_Tree->DataController->DataSource = 0;

		TDMMain::ClearDataSet(cd);
		cd->CommandText = "SMT.NSI_PKG.reason_tree_cur";
		cd->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cd, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UERS-2 > : Ошибка загрузки дерева причин.\n", e.Message);
		ModalResult = mrAbort;
	}

	tlReason_Tree->DataController->DataSource = ds;

	if (tlReason_Tree->AbsoluteCount > 0)
		tlReason_Tree->TopVisibleNode->Expand(false);

	node = tlReason_Tree->FindNodeByKeyValue(ep_->parent_id, tlReason_Tree->Root, false, true);

	if (node != NULL)
		node->Focused = true;

	rwReasonParentTree->Properties->Value = cd->Lookup("reason_id", ep_->parent_id, "reason_name");
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_Edit_Reason::aSelect_ReasonTreeExecute(TObject *Sender)
{
	/* Выбор причины инцидента в дереве */

	TcxTreeListNode *ln = NULL;
	ln = tlReason_Tree->FocusedNode;

	if (ln != NULL /*&& !ln->HasChildren*/)
	{
		ep_->parent_id 			  		  	  = cdsReasonTreeParent->FieldByName("reason_id")->AsInteger;
		rwReasonParentTree->Properties->Value = cdsReasonTreeParent->FieldByName("reason_name")->AsString;

		vg->SetFocus();
	}

}
//---------------------------------------------------------------------------

void __fastcall Tfrm_Edit_Reason::tlReason_TreeKeyPress(TObject *Sender, System::WideChar &Key)

{
	if (Key == VK_RETURN) aSelect_ReasonTree->Execute();
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_Edit_Reason::tmrTimer(TObject *Sender)
{
	/* */

	tmr->Enabled = false;

	try
	{
		gbLoading->Caption = "Загрузка родительских причин...";
		Update();
		aLoadReasonTree->Execute();
		pb->Position++;
		Update();

		gbLoading->Caption = "Загрузка полей...";
		Update();
		aLoadFields->Execute();
		pb->Position++;
		Update();

		pc->ActivePage = tsEdit;
		rwNameReason->Focused = true;
		vg->SetFocus();
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UERS-3 > : Ошибка выполнения предварительных настроек.\n", e.Message);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------


void __fastcall Tfrm_Edit_Reason::aLoadFieldsExecute(TObject *Sender)
{
	/* Установка значений полей */

	rwNameReason->Properties->Value = ep_->sReasonName;
	rwMnemo->Properties->Value      = ep_->sMnemo;
	rwDescr->Properties->Value      = ep_->sDescr;
}
//---------------------------------------------------------------------------

