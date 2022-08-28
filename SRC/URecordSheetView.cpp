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
#include "URecordSheetView.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxDBVGrid"
#pragma link "cxDBLookupComboBox"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "dxSkinsCore"
#pragma link "dxSkinscxPCPainter"
#pragma resource "*.dfm"
TfrmRecordSheetView *frmRecordSheetView;
//---------------------------------------------------------------------------
__fastcall TfrmRecordSheetView::TfrmRecordSheetView(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmRecordSheetView::Show( StrctRecordSheetView* ep )
{
	ep_ = ep;
    tsOthers->TabVisible = false;
    tmr->Enabled = true;
    pcRecordSheetView->ActivePage = tsWork;
    pcRecordSheetView->HideTabs = true;
    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheetView::tmrTimer(TObject *Sender)
{
	tmr->Enabled = false;
//	aLoad_RSh->Execute();
	aLoad_Work->Execute();

/*
	aLoad_NSI_SystemTree->Execute();
	aLoad_NSI_AggType->Execute();
	aFill_NSI_System->Execute();
	aLoad_Analyzes->Execute();

	aLoad_NSI_ReasonTree->Execute();
	//aAggType_SetFilter->Execute();
*/
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheetView::aLoad_RShExecute(TObject *Sender)
{
	/* Основная информация по инциденту */

    TClientDataSet *cds = cdsRSh;
    TDataSource *ds = dsRSh;

    try
    {
    	TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.INCIDENT_PKG.incident_record_sheet_p";
    	cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = ep_->sheet_id;
    	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

    	//tlWork->DataController->DataSource = ds;
    }
	catch ( Exception &e )
	{
		throw Exception ("< URSV-1 > : Ошибка загрузки основной информации по инциденту.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheetView::aLoad_WorkExecute(TObject *Sender)
{
	/* Команда/Работа */

	TClientDataSet *cds = cdsWork;
	TDataSource *ds = dsWork;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.INCIDENT_PKG.team_executor_cur";
		cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = ep_->sheet_id;
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		tlWork->DataController->DataSource = ds;
	}
	catch ( Exception &e )
	{
		throw Exception ("< URSV-2 > : Ошибка загрузки списка работ.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheetView::aLoad_AnalyzesExecute(TObject *Sender)
{
	// Анализ

	TClientDataSet *cds = cdsAnalyzes;
	TDataSource *ds = dsAnalyzes;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.INCIDENT_PKG.eq_cur";
		cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = ep_->sheet_id;
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch ( Exception &e )
	{
		throw Exception ("< URSV-3 > : Ошибка загрузки данных раздела Анализ.\n" + e.Message);
	}

	try
	{
		ep_->class_id = cds->FieldByName("class_id")->AsInteger;
		rwSystemTree->Properties->Value = cds->FieldByName("class_name_full")->AsString;

		ep_->system_id = cds->FieldByName("system_id")->AsInteger;
		rwSystem->Properties->Value = cds->FieldByName("system_id")->AsInteger;

		aFill_NSI_Unit->Execute();
		ep_->unit_id = cds->FieldByName("unit_id")->AsInteger;
		rwUnit->Properties->Value = cds->FieldByName("unit_id")->AsInteger;

		aFill_NSI_Fail->Execute();
		ep_->fail_id = cds->FieldByName("fail_id")->AsInteger;

		aAggType_SetFilter->Execute();

		ep_->agg_type_id = cds->FieldByName("agg_type_id")->AsInteger;
		rwAggType->Properties->Value = cds->FieldByName("agg_type_id")->AsInteger;

		ep_->reason_id = cds->FieldByName("reason_id")->AsInteger;
		rwReason->Properties->Value = cds->FieldByName("reason_name_full")->AsString;
		rwReason_Old->Properties->Value = cds->FieldByName("reason_name_old")->AsString;

		rwEQ_Manufacturer->Properties->Value = cds->FieldByName("eq_mfr_id")->AsInteger;

		ep_->responsible_id = cds->FieldByName("responsible_id")->AsInteger;
		rwResponsible->Properties->Value = ( ep_->responsible_id == 0 ? DMMain->cdsRSh_NSI_Responsible->Params->ParamByName("o_default")->AsInteger : ep_->responsible_id );
	}
	catch ( Exception &e )
	{
		throw Exception ("< URSV-4 > : Ошибка заполнения значений раздела Анализ.\n" + e.Message);
	}

	tsAnalyses->ImageIndex = -1;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheetView::aLoad_NSI_SystemTreeExecute(TObject *Sender)
{
	// Загрузить дерево оборудований

	TClientDataSet *cds = cds_NSI_SystemTree;
	TDataSource *ds = ds_NSI_SystemTree;

	try
	{
		tlSystemTree->DataController->DataSource = 0;

		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.NSI_PKG.eq_tree_cur";
		cds->Params->CreateParam(ftInteger, "p_tjaga", ptInput)->AsInteger = cdsRSh->FieldByName("kod_tjaga")->AsInteger;
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		tlSystemTree->DataController->DataSource = ds;
	}
	catch ( Exception &e )
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< URSV-5 > : Ошибка загрузки дерева узлов.\n", e.Message);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheetView::aSelect_NSI_SystemTreeExecute(TObject *Sender)
{
	// Выбор агрегата/неисправности

	TcxTreeListNode *ln = NULL;
	ln = tlSystemTree->FocusedNode;

	if ( ln != NULL && !ln->HasChildren )
	{
		ep_->class_id = cds_NSI_SystemTree->FieldByName("class_id")->AsInteger;
		rwSystemTree->Properties->Value = cds_NSI_SystemTree->FieldByName("class_name_full")->AsString;

		aAggType_SetFilter->Execute();

		vgAnalyses->SetFocus();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheetView::tlSystemTreeKeyPress(TObject *Sender, wchar_t &Key)

{
	if ( Key == VK_RETURN ) aSelect_NSI_SystemTree->Execute();
}
//---------------------------------------------------------------------------


void __fastcall TfrmRecordSheetView::aLoad_NSI_ReasonTreeExecute(TObject *Sender)
{
	// Загрузить дерево причин

	TClientDataSet *cds = DMMain->cds_NSI_ReasonTree;
	TDataSource *ds = DMMain->ds_NSI_ReasonTree;

	try
	{
		tlReasonTree->DataController->DataSource = 0;

		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.NSI_PKG.reason_tree_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		tlReasonTree->DataController->DataSource = ds;
	}
	catch ( Exception &e )
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< URSV-6 > : Ошибка загрузки дерева причин.\n", e.Message);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheetView::aSelect_NSI_ReasonTreeExecute(TObject *Sender)
{
	// Выбор причины

	TcxTreeListNode *ln = NULL;
	ln = tlReasonTree->FocusedNode;

	if ( ln != NULL && !ln->HasChildren )
	{
		ep_->reason_id = DMMain->cds_NSI_ReasonTree->FieldByName("reason_id")->AsInteger;
		rwReason->Properties->Value = DMMain->cds_NSI_ReasonTree->FieldByName("reason_name_full")->AsString;

		vgAnalyses->SetFocus();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheetView::tlReasonTreeKeyPress(TObject *Sender, wchar_t &Key)

{
	if ( Key == VK_RETURN ) aSelect_NSI_ReasonTree->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheetView::aLoad_NSI_AggTypeExecute(TObject *Sender)
{
	// типы агрегатов

	TClientDataSet *cds = cds_NSI_AggType;
	TDataSource *ds = ds_NSI_AggType;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.nsi_pkg.eq_agg_type_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		((TcxLookupComboBoxProperties*)rwAggType->Properties->EditProperties)->ListSource = ds;
	}
	catch ( Exception &e )
	{
		throw Exception ( "< URSV-7 > : Ошибка загрузки списка типов агрегатов.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheetView::aAggType_SetFilterExecute(TObject *Sender)
{
	cds_NSI_AggType->Filter = "";
	cds_NSI_AggType->Filtered = false;
	cds_NSI_AggType->Filter = "class_id = " + IntToStr((int)rwUnit->Properties->Value) + " OR class_id = " + IntToStr((int)rwSystem->Properties->Value);
	cds_NSI_AggType->Filtered = true;

	LogEvent(cds_NSI_AggType->Filter + " : " + IntToStr(cds_NSI_AggType->RecordCount));

	if ( cds_NSI_AggType->RecordCount == 0 )
		ep_->agg_type_id = 0;

	rwAggType->Properties->Value = cds_NSI_AggType->FieldByName("id")->AsInteger;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheetView::rwSystemTreeEditPropertiesInitPopup(TObject *Sender)
{
	pnlSystemTree->Width= vgAnalyses->Width - vgAnalyses->OptionsView->RowHeaderWidth;
	cds_NSI_SystemTree->Locate("class_id", ep_->class_id, TLocateOptions());
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheetView::rwReasonEditPropertiesInitPopup(TObject *Sender)
{
	pnlReasonTree->Width = vgAnalyses->Width - vgAnalyses->OptionsView->RowHeaderWidth;
	DMMain->cds_NSI_ReasonTree->Locate("reason_id", ep_->reason_id, TLocateOptions());
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheetView::vgAnalysesEditValueChanged(TObject *Sender,
		  TcxCustomEditorRowProperties *ARowProperties)
{
	tsAnalyses->ImageIndex = 47;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheetView::aFill_NSI_SystemExecute(TObject *Sender)
{
	// Загрузить список оборудований

	TClientDataSet *cds = cds_NSI_SystemTree;
	TDataSource *ds = ds_NSI_SystemTree;
	TcxEditorRow *rw = rwSystem;
	TcxImageComboBoxItem 	   *itm		= NULL;
	TcxImageComboBoxProperties *cbep	= (TcxImageComboBoxProperties*)rw->Properties->EditProperties;

	try
	{
		cds->Filter = "parent_class_id = " + IntToStr(cdsRSh->FieldByName("kod_tjaga")->AsInteger);
		cds->Filtered = true;
		LogEvent("System:" + cds->Filter + " : " + IntToStr(cds->RecordCount));

		cbep->Items->Clear();

		for ( int i = 0; i < cds->RecordCount; i++ )
		{
			itm = cbep->Items->Add();
			if ( itm )
			{
				itm->Description	= cds->FieldByName("class_name")->AsString;
				itm->Value			= cds->FieldByName("class_id")->AsInteger;
			}
			cds->Next();
		}

		if ( cds->RecordCount > 0 )
		{
			cds->First();
			rw->Properties->Value = cds->FieldByName("class_id")->AsInteger;
		}
	}
	catch ( Exception &e )
	{
		throw Exception ("< URSV-8 > : Ошибка заполнения списка оборудования.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheetView::aFill_NSI_UnitExecute(TObject *Sender)
{
	// Заполнить список узлов

	TClientDataSet *cds = cds_NSI_SystemTree;
	TDataSource *ds = ds_NSI_SystemTree;
	TcxEditorRow *rw = rwUnit;
	TcxImageComboBoxItem 	   *itm		= NULL;
	TcxImageComboBoxProperties *cbep	= (TcxImageComboBoxProperties*)rw->Properties->EditProperties;;

	try
	{
		cds->Filter = "parent_class_id = " + IntToStr((int)rwSystem->Properties->Value);
		cds->Filtered = true;
		LogEvent("Unit:" + cds->Filter + " : " + IntToStr(cds->RecordCount));

		cbep->Items->Clear();

		for ( int i = 0; i < cds->RecordCount; i++ )
		{
			itm = cbep->Items->Add();
			if ( itm )
			{
				itm->Description	= cds->FieldByName("class_name")->AsString;
				itm->Value			= cds->FieldByName("class_id")->AsInteger;
			}
			cds->Next();
		}

		if ( cds->RecordCount > 0 )
		{
			cds->First();
			rw->Properties->Value = cds->FieldByName("class_id")->AsInteger;
		}
	}
	catch ( Exception &e )
	{
		throw Exception ("< URSV-9 > : Ошибка заполнения списка узлов.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheetView::aFill_NSI_FailExecute(TObject *Sender)
{
	// Заполнить список агрегатов/неисправностей

	TClientDataSet *cds = cds_NSI_SystemTree;
	TDataSource *ds = ds_NSI_SystemTree;
	TcxEditorRow *rw = rwFail;
	TcxImageComboBoxItem 	   *itm		= NULL;
	TcxImageComboBoxProperties *cbep	= (TcxImageComboBoxProperties*)rw->Properties->EditProperties;;

	try
	{
		cds->Filter = "parent_class_id = " + IntToStr((int)rwUnit->Properties->Value);
		cds->Filtered = true;
		LogEvent("Fails:" + cds->Filter + " : " + IntToStr(cds->RecordCount));

		cbep->Items->Clear();

		for ( int i = 0; i < cds->RecordCount; i++ )
		{
			itm = cbep->Items->Add();
			if ( itm )
			{
				itm->Description	= cds->FieldByName("class_name")->AsString;
				itm->Value			= cds->FieldByName("class_id")->AsInteger;
			}
			cds->Next();
		}

		if ( cds->RecordCount > 0 )
		{
			cds->First();
			rw->Properties->Value = cds->FieldByName("class_id")->AsInteger;
		}
	}
	catch ( Exception &e )
	{
		throw Exception ("< URSV-10 > : Ошибка заполнения списка агрегатов/неисправностей.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheetView::rwSystemEditPropertiesChange(TObject *Sender)
{
	aFill_NSI_Unit->Execute();
	aFill_NSI_Fail->Execute();
    aAggType_SetFilter->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheetView::rwUnitEditPropertiesChange(TObject *Sender)
{
    aFill_NSI_Fail->Execute();
	aAggType_SetFilter->Execute();
}
//---------------------------------------------------------------------------



void __fastcall TfrmRecordSheetView::tlSystemTreeGetNodeImageIndex(TcxCustomTreeList *Sender,
          TcxTreeListNode *ANode, TcxTreeListImageIndexType AIndexType,
          TImageIndex &AIndex)
{
	if ( ANode->HasChildren == false )
    	AIndex = 49;
    else
    	AIndex = 52;
}
//---------------------------------------------------------------------------


