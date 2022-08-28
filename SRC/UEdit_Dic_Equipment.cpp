//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <DB.hpp>
#include <DBClient.hpp>


#include <memory>
#include <stdio.h>

#include "config.h"
#include "public.h"
#include "UReason.h"
#include "UDMMain.h"

#include "UEdit_Dic_Equipment.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxClasses"
#pragma link "cxContainer"
#pragma link "cxControls"
#pragma link "cxCustomData"
#pragma link "cxDBTL"
#pragma link "cxDropDownEdit"
#pragma link "cxEdit"
#pragma link "cxGraphics"
#pragma link "cxGridBandedTableView"
#pragma link "cxGroupBox"
#pragma link "cxInplaceContainer"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxMaskEdit"
#pragma link "cxPC"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "cxProgressBar"
#pragma link "cxStyles"
#pragma link "cxTextEdit"
#pragma link "cxTL"
#pragma link "cxTLData"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "cxVGrid"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "dxSkinscxPCPainter"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma link "dxStatusBar"
#pragma resource "*.dfm"
TfrmEdit_Dic_Equipment *frmEdit_Dic_Equipment;
//---------------------------------------------------------------------------
__fastcall TfrmEdit_Dic_Equipment::TfrmEdit_Dic_Equipment(TComponent* Owner)
	: TForm(Owner)
{
	pc->ActivePage = tsEdit;
	pc->HideTabs = true;
}
//---------------------------------------------------------------------------
TModalResult __fastcall TfrmEdit_Dic_Equipment::Show(TrEquipment* eq)
{
	eq_ = eq;

	if (eq_->eq_id != 0)
	{
		aLoadRec->Execute();
	}

	aLoadEqTree->Execute();

	rwEqName->Properties->Value   = eq_->eq_name;
	rwEqSD->Properties->Value     = eq_->eq_sd;

	return ShowModal();
}


void __fastcall TfrmEdit_Dic_Equipment::aLoadEqTreeExecute(TObject *Sender)
{
	/* Загрузка оборудования */
	TClientDataSet	*cds	= cdsEqtTree;
	TDataSource		*ds		= dsEqtTree;

	TcxTreeListNode *node = NULL;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.NSI_PKG.eq_tree_new_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UEDEQ-1 > : Ошибка загрузки дерева узлов.\n", e.Message);
		ModalResult = mrAbort;
	}

	tlEqtTree->DataController->DataSource = dsEqtTree;

	if ( tlEqtTree->AbsoluteCount > 0 )
		tlEqtTree->TopVisibleNode->Expand(false);

	node = tlEqtTree->FindNodeByKeyValue(eq_->eq_p_id, tlEqtTree->Root, false, true);

	if (node != NULL)
		node->Focused = true;

	rwEqtTree->Properties->Value = cds->Lookup("class_id", eq_->eq_p_id, "class_name");
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Dic_Equipment::aSelect_EqTreeExecute(TObject *Sender)
{
	// Выбор предприятия в дереве

	TcxTreeListNode *ln = NULL;
	ln = tlEqtTree->FocusedNode;

	if ( ln != NULL /*&& !ln->HasChildren*/ )
	{
//        eq_->eq_id = cdsEqtTree->FieldByName("class_id")->AsInteger;
		eq_->eq_p_id = cdsEqtTree->FieldByName("class_id")->AsInteger;
		rwEqtTree->Properties->Value = cdsEqtTree->FieldByName("class_name")->AsString;

		aLoadLVL->Execute();

		vg->SetFocus();
	}
}
//---------------------------------------------------------------------------



void __fastcall TfrmEdit_Dic_Equipment::aSaveExecute(TObject *Sender)
{
	/* Сохранить */

	eq_->eq_name = rwEqName->Properties->Value;
	eq_->eq_sd   = rwEqSD->Properties->Value;
/*
	ShowMessage("id: " + IntToStr(eq_->eq_id));
	ShowMessage("r_id: " +  IntToStr(eq_->eq_p_id));
	ShowMessage(eq_->eq_name);
	ShowMessage(eq_->eq_sd);
	ShowMessage("vlv: " +  IntToStr(eq_->lvl));
*/
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "SMT.NSI_PKG.eq_tree_new_iu";
		dsa->Params->CreateParam(ftInteger, "o_class_id", ptInput)->AsInteger	      = eq_->eq_id;     //id
		dsa->Params->CreateParam(ftString,  "p_class_name", ptInput)->AsString		  = eq_->eq_name;   // Имя оборудования
		dsa->Params->CreateParam(ftString,  "p_mnemo", ptInput)->AsString			  = eq_->eq_sd;     // Краткое описание
		dsa->Params->CreateParam(ftInteger, "p_lvl", ptInput)->AsInteger			  = eq_->lvl;
//		dsa->Params->CreateParam(ftString,  "p_p_num", ptInput)->AsString			  = NULL;
		dsa->Params->CreateParam(ftInteger, "p_class_id_parent", ptInput)->AsInteger  = eq_->eq_p_id;   //id-родителя
		dsa->Params->CreateParam(ftInteger, "o_err_code", ptInputOutput);
		dsa->Params->CreateParam(ftString,  "o_err_msg", ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_err_code")->AsInteger < 0)
			throw Exception (dsa->Params->ParamByName("o_err_msg")->AsString);

//		ep_->reason_id = dsa->Params->ParamByName("p_reason_id")->AsInteger;

		ModalResult = mrOk;
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UEDEQ-2 > : Ошибка сохранения оборудования.\n", e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Dic_Equipment::aCancelExecute(TObject *Sender)
{
	/* Отмена */
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Dic_Equipment::aLoadRecExecute(TObject *Sender)
{
	/* Загрузка одной выбранной записи */

	TcxTreeListNode *node = NULL;
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "SMT.NSI_PKG.eq_tree_new_cur_rec";
		dsa->Params->CreateParam(ftInteger, "p_class_id", ptInput)->AsInteger = eq_->eq_id;
		dsa->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);


		eq_->eq_name = dsa->FieldByName("class_name")->AsString;
		eq_->eq_sd   = dsa->FieldByName("mnemo")->AsString;
		eq_->eq_p_id = dsa->FieldByName("parent_class_id")->AsInteger;
		eq_->lvl     = dsa->FieldByName("lvl")->AsInteger;
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UEDEQ-3 > : Ошибка загрузки информации по данной записи.\n", e.Message);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Dic_Equipment::aLoadLVLExecute(TObject *Sender)
{
	/* Получение lvl */
	TcxTreeListNode *node = NULL;
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "SMT.NSI_PKG.eq_tree_new_cur_rec";
		dsa->Params->CreateParam(ftInteger, "p_class_id", ptInput)->AsInteger = cdsEqtTree->FieldByName("class_id")->AsInteger;
		dsa->Params->CreateParam(ftCursor,  "o_cur", ptInputOutput);
		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);

		eq_->lvl     = dsa->FieldByName("lvl")->AsInteger + 1;
		eq_->eq_p_id = dsa->FieldByName("class_id")->AsInteger;
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UEDEQ-4 > : Ошибка получения уровня.\n", e.Message);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------

