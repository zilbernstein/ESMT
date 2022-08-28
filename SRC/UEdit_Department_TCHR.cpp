//---------------------------------------------------------------------------
#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include <memory>
#include "uBinFunction.h"
#include "config.h"
#include "public.h"
#include "UDMMain.h"
#include "Utils_JK.h"

#include "UEdit_Department_TCHR.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)

#pragma link "cxCustomData"
#pragma link "cxDBTL"
#pragma link "cxMaskEdit"
#pragma link "cxPC"
#pragma link "cxTLData"
#pragma link "dxSkinscxPCPainter"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma link "dxStatusBar"
#pragma link "cxDropDownEdit"
#pragma link "cxTextEdit"
#pragma link "cxContainer"
#pragma link "cxGroupBox"
#pragma link "cxProgressBar"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma resource "*.dfm"
TfrmEdit_Department_TCHR *frmEdit_Department_TCHR;
//---------------------------------------------------------------------------
__fastcall TfrmEdit_Department_TCHR::TfrmEdit_Department_TCHR(TComponent* Owner)
	: TForm(Owner)
{
	pc->ActivePage = tsProgress;
    pc->HideTabs = true;
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmEdit_Department_TCHR::Show( StrctEditDepartmentTCHR* ep )
{
	ep_ = ep;
    tmr->Enabled = true;
    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Department_TCHR::tmrTimer(TObject *Sender)
{
	tmr->Enabled = false;

    try
    {
		gbLoading->Caption = "Загрузка типов предприятий...";
        Update();
    	aLoadFirmType->Execute();
    	pb->Position++;
    	Update();

		gbLoading->Caption = "Загрузка дорог...";
        Update();
        aLoadRoad->Execute();
    	pb->Position++;
    	Update();

		gbLoading->Caption = "Загрузка дерева родительских предприятий...";
        Update();
        aLoadFirmTree->Execute();
    	pb->Position++;
    	Update();

		gbLoading->Caption = "Загрузка базовых ТЧР...";
        Update();
        aLoadTCHR->Execute();
    	pb->Position++;
    	Update();

        rwFirmName->Properties->Value = ep_->FirmName;
        rwMnemo->Properties->Value = ep_->Mnemo;

		pc->ActivePage = tsEdit;
        rwFirmName->Focused = true;
        vg->SetFocus();
    }
    catch ( Exception &e )
    {
		TDMMain::ShowAppException(AET_EXCEPTION, "< UEDTCHR-1 > : Ошибка выполнения предварительных настроек.\n", e.Message);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------


void __fastcall TfrmEdit_Department_TCHR::aSelect_FirmTreeExecute(TObject *Sender)
{
	// Выбор предприятия в дереве

	TcxTreeListNode *ln = NULL;
	ln = tlFirmTree->FocusedNode;

	if ( ln != NULL /*&& !ln->HasChildren*/ )
	{
		ep_->KodFirmParent = cdsFirmTree->FieldByName("kod_firm")->AsInteger;
		rwFirmTree->Properties->Value = cdsFirmTree->FieldByName("firm_name")->AsString;

		vg->SetFocus();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Department_TCHR::tlFirmTreeKeyPress(TObject *Sender, wchar_t &Key)
{
	if ( Key == VK_RETURN ) aSelect_FirmTree->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Department_TCHR::aCancelExecute(TObject *Sender)
{
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Department_TCHR::tlFirmTreeCustomDrawCell(TObject *Sender,
		  TcxCanvas *ACanvas, TcxTreeListEditCellViewInfo *AViewInfo, bool &ADone)

{
	switch ( AViewInfo->Node->Level )
	{
		case 0: case 1:
			ACanvas->Font->Style >> fsBold;
			break;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Department_TCHR::aLoadFirmTypeExecute(TObject *Sender)
{
	// Заполнить список типов предприятий
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	TcxEditorRow *rw = rwFirmType;
	TcxImageComboBoxItem 	   *itm		= NULL;
	TcxImageComboBoxProperties *cbep	= (TcxImageComboBoxProperties*)rw->Properties->EditProperties;

	try
	{
		dsa->CommandText = "SMT.NSI_PKG.firm_type_cur";
		dsa->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);
	}
	catch ( Exception &e )
	{
		throw Exception ("< UEDTCHR-2 > : Ошибка загрузки типов предприятий.\n" + e.Message);
	}

	try
	{
		cbep->Items->Clear();
		dsa->First();

		for ( int i = 0; i < dsa->RecordCount; i++ )
		{
			itm = cbep->Items->Add();
			if ( itm )
			{
				itm->Description	= dsa->FieldByName("FIRM_TYPE_NAME")->AsString;
				itm->Value			= dsa->FieldByName("KOD_FIRM_TYPE")->AsInteger;
			}
			dsa->Next();
		}

		rw->Properties->Value = ep_->KodFirmType;
	}
	catch ( Exception &e )
	{
		throw Exception ("< UEDTCHR-3 > : Ошибка заполнения списка типов предприятий.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Department_TCHR::aLoadRoadExecute(TObject *Sender)
{
	// Заполнить список дорог
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	TcxEditorRow *rw = rwRoad;
	TcxImageComboBoxItem 	   *itm		= NULL;
	TcxImageComboBoxProperties *cbep	= (TcxImageComboBoxProperties*)rw->Properties->EditProperties;

	try
	{
		dsa->CommandText = "SMT.NSI_PKG.road_cur";
		dsa->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);
	}
	catch ( Exception &e )
	{
		throw Exception ("< UEDTCHR-4 > : Ошибка загрузки дорог.\n" + e.Message);
	}

	try
	{
		cbep->Items->Clear();
		dsa->First();

		for ( int i = 0; i < dsa->RecordCount; i++ )
		{
			itm = cbep->Items->Add();
			if ( itm )
			{
				itm->Description	= dsa->FieldByName("ROAD_NAME")->AsString;
				itm->Value			= dsa->FieldByName("KOD_ROAD")->AsInteger;
			}
			dsa->Next();
		}

		rw->Properties->Value = ep_->KodRoad;
	}
	catch ( Exception &e )
	{
		throw Exception ("< UEDTCHR-5 > : Ошибка заполнения списка дорог.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Department_TCHR::aLoadTCHRExecute(TObject *Sender)
{
	TClientDataSet *cds = cdsTCHR;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.NSI_PKG.tchr_1_cur";

		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		rwTCHR->Properties->Value = ep_->PredID;
	}
	catch ( Exception &e )
	{
		throw Exception ("< UEDTCHR-6 > : Ошибка загрузки ТЧР.\n" + e.Message);
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Department_TCHR::aLoadFirmTreeExecute(TObject *Sender)
{
	// Заполнить дерево предприятий-родителей

	TClientDataSet *cds = cdsFirmTree;
	TcxTreeListNode *node = NULL;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.APP_NSI_PKG.firm_tree_cur";

		cds->Params->CreateParam(ftInteger, "p_access", ptInput )->AsInteger = cfg_.DepotID;
		cds->Params->CreateParam(ftCursor,  "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch ( Exception &e )
	{
		throw Exception ("< UEDTCHR-7 > : Ошибка загрузки дерева предприятий.\n" + e.Message);
	}

	tlFirmTree->DataController->DataSource = dsFirmTree;

	if ( tlFirmTree->AbsoluteCount > 0 )
		tlFirmTree->TopVisibleNode->Expand(false);

	node = tlFirmTree->FindNodeByKeyValue(ep_->KodFirmParent, tlFirmTree->Root, false, true);
	if ( node != NULL )
		node->Focused = true;

	rwFirmTree->Properties->Value = cds->Lookup("kod_firm", ep_->KodFirmParent, "firm_name");
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Department_TCHR::aSaveExecute(TObject *Sender)
{
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "SMT.APP_NSI_PKG.firm_iu";
		dsa->Params->CreateParam(ftInteger, "p_kod_firm", ptInputOutput )->AsInteger	= ep_->KodFirm;
		dsa->Params->CreateParam(ftInteger, "p_kod_firm_parent", ptInput )->AsInteger	= ep_->KodFirmParent;
		dsa->Params->CreateParam(ftInteger, "p_kod_road", ptInput )->AsInteger			= (int)rwRoad->Properties->Value;
		dsa->Params->CreateParam(ftString,  "p_firm_name", ptInput )->AsString			= VarToStr(rwFirmName->Properties->Value);
		dsa->Params->CreateParam(ftString,  "p_mnemo", ptInput )->AsString				= VarToStr(rwMnemo->Properties->Value);
		dsa->Params->CreateParam(ftInteger, "p_kod_firm_type", ptInput )->AsInteger		= (int)rwFirmType->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "p_pred_id", ptInput )->AsInteger			= (int)rwTCHR->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput );
		dsa->Params->CreateParam(ftString,  "o_Err_Msg", ptInputOutput );

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if ( dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0 )
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);

		ep_->KodFirm = dsa->Params->ParamByName("p_kod_firm")->AsInteger;

		ModalResult = mrOk;
	}
	catch ( Exception &e )
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UEDTCHR-8 > : Ошибка сохранения предприятия.\n", e.Message);
	}
}
//---------------------------------------------------------------------------

