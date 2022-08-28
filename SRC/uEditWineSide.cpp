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

#include "uEditWineSide.h"
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
#pragma link "cxStyles"
#pragma link "cxTL"
#pragma link "cxVGrid"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "cxDBLookupComboBox"
#pragma link "cxContainer"
#pragma link "cxDBLookupEdit"
#pragma link "cxDropDownEdit"
#pragma link "cxLookupEdit"
#pragma link "cxMaskEdit"
#pragma link "cxTextEdit"
#pragma link "cxCustomData"
#pragma link "cxDBTL"
#pragma link "cxGroupBox"
#pragma link "cxPC"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "cxProgressBar"
#pragma link "cxTLData"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "dxSkinscxPCPainter"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma link "dxStatusBar"
#pragma resource "*.dfm"
TfrmEditWineSide *frmEditWineSide;

int parent_id;
//---------------------------------------------------------------------------
__fastcall TfrmEditWineSide::TfrmEditWineSide(TComponent* Owner)
	: TForm(Owner)
{
	pc->ActivePage = tsEdit;
	pc->HideTabs = true;
}
//---------------------------------------------------------------------------
TModalResult __fastcall TfrmEditWineSide::Show( RecordWineSide* pWineSide )
{

	pWineSide_ = pWineSide;

	aLoadRoad->Execute();   //Загрузка дорог

	aLoadFirm->Execute();   //фирма

	aLoadParent->Execute(); //Загрузка предприятий

	if (pWineSide_ != 0)
	{
		aLoadRec->Execute();    //Загрузка записи

		rwTypeFirm->Properties->Value  = cdsRec->FieldByName("kod_firm_type")->AsInteger;
		rwRoad->Properties->Value      = cdsRec->FieldByName("kod_road")->AsInteger;
		rwName->Properties->Value      = cdsRec->FieldByName("firm_name")->AsString;
		rwShortName->Properties->Value = cdsRec->FieldByName("mnemo")->AsString;
		pWineSide_->pr_id              = cdsRec->FieldByName("kod_firm_parent")->AsInteger;
	}

	return ShowModal();
}
void __fastcall TfrmEditWineSide::aSaveExecute(TObject *Sender)
{
	/* Сохранить */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "SMT.smt_nsi2_pkg.nsi_vinov_s_iu";
		dsa->Params->CreateParam(ftInteger,  "o_kod_firm",      ptInput)->AsInteger = pWineSide_->id;
		dsa->Params->CreateParam(ftInteger,  "p_kod_road",      ptInput)->AsInteger = rwRoad->Properties->Value;
		dsa->Params->CreateParam(ftString,   "p_firm_name",     ptInput)->AsString  = rwName->Properties->Value;
		dsa->Params->CreateParam(ftString,   "p_mnemo",         ptInput)->AsString  = rwShortName->Properties->Value;
		dsa->Params->CreateParam(ftInteger,  "p_kod_firm_type", ptInput)->AsInteger = rwTypeFirm->Properties->Value;
		dsa->Params->CreateParam(ftInteger,  "p_parent",        ptInput)->AsInteger = pWineSide_->pr_id;
		dsa->Params->CreateParam(ftInteger,  "p_user_id",       ptInput)->AsInteger = UserID;

		dsa->Params->CreateParam(ftInteger, "o_err_code", ptInputOutput);
		dsa->Params->CreateParam(ftString,  "o_err_msg",  ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_err_code")->AsInteger < 0)
			throw Exception (dsa->Params->ParamByName("o_err_msg")->AsString);


		ModalResult = mrOk;
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UEWS-1 > : Ошибка сохранения виновной стороны.\n", e.Message);
	}

}
//---------------------------------------------------------------------------
void __fastcall TfrmEditWineSide::aCancelExecute(TObject *Sender)
{
	/* Отмена */
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------
void __fastcall TfrmEditWineSide::aLoadRoadExecute(TObject *Sender)
{
	/* Загрузка дорог */

	TClientDataSet *cds	= cdsRoad;
	TDataSource *ds		= dsRoad;

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "smt_nsi_pkg.smt_nsi_road_cur";
		cds->Params->CreateParam(ftInteger, "p_access_level", ptInput)->AsInteger = 0;
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UEWS-2 > : Ошибка загрузки списка дорог.\n" + e.Message);
	}

	TcxEditorRow *rw				 = rwRoad;
	TcxImageComboBoxItem 	   *itm	 = NULL;
	TcxImageComboBoxProperties *cbep = (TcxImageComboBoxProperties*)rw->Properties->EditProperties;

	try
	{
		cbep->Items->Clear();
		for (int i = 0; i < cds->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if ( itm )
			{
				itm->Description = cds->FieldByName("road_name")->AsString;
				itm->Value		 = cds->FieldByName("kod_road")->AsInteger;
			}
			cds->Next();
		}
	}
	catch ( Exception &e )
	{
		throw Exception ("< UEWS-3 > : Ошибка заполнения списка дорог.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmEditWineSide::aLoadFirmExecute(TObject *Sender)
{
	/* Фирмы */

	TClientDataSet *cds	= cdsFirm;
	TDataSource *ds		= dsFirm;

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "smt_nsi2_pkg.nsi_vinov_s_firm";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

	}
	catch (Exception &e)
	{
		throw Exception ("< UEWS-4 > : Ошибка загрузки справочника - Тип предприятия.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------


void __fastcall TfrmEditWineSide::aLoadParentExecute(TObject *Sender)
{
	/* Загрузка родительского дерева */
	TClientDataSet *cds	= cdsParent;
	TDataSource *ds		= dsParent;

	TcxTreeListNode *node = NULL;

	try
	{
		trWineSide->DataController->DataSource = 0;

		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.SMT_NSI_PKG.smt_nsi_responsible_dpt_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		cds->Params->CreateParam(ftInteger, "o_default", ptInputOutput)->AsInteger = 0;

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		trWineSide->DataController->DataSource = ds;
    }
	catch (Exception &e)
    {
		TDMMain::ShowAppException(AET_EXCEPTION, "< UEWS-5 > : Ошибка загрузки дерева виновных сторон. ", e.Message);
		ModalResult = mrAbort;
	}

	if ( trWineSide->AbsoluteCount > 0 )
		trWineSide->TopVisibleNode->Expand(false);

//	node = trWineSide->FindNodeByKeyValue(pWineSide_->id, trWineSide->Root, false, true);
	node = trWineSide->FindNodeByKeyValue(pWineSide_->pr_id, trWineSide->Root, false, true);


	if (node != NULL)
		node->Focused = true;

	rwParent->Properties->Value = cds->Lookup("kod_firm_child", pWineSide_->pr_id, "resp_name");
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditWineSide::trWineSideDblClick(TObject *Sender)
{
	// Выбор предприятия в дереве

	TcxTreeListNode *ln = NULL;
	ln = trWineSide->FocusedNode;

	if ( ln != NULL /*&& !ln->HasChildren*/ )
	{
		pWineSide_->pr_id           = cdsParent->FieldByName("kod_firm_child")->AsInteger;
		rwParent->Properties->Value = cdsParent->FieldByName("resp_name")->AsString;

		vg->SetFocus();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditWineSide::aLoadRecExecute(TObject *Sender)
{
	/* Загрузка записи */

	TClientDataSet *cds	= cdsRec;
	TDataSource *ds		= dsRec;

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT.smt_nsi2_pkg.smt_nsi_vinov_s_cur_rec";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		cds->Params->CreateParam(ftInteger, "p_id_firm", ptInput)->AsInteger = pWineSide_->id;

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

	}
	catch (Exception &e)
	{
		throw Exception ("< UEWS-6 > : Ошибка загрузки записи.\n" + e.Message);
	}

}
//---------------------------------------------------------------------------

