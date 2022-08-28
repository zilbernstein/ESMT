//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include <memory>

#include "Log.h"
#include "UDMMain.h"
#include "config.h"
#include "public.h"
#include "Utils_JK.h"

#include "uExpectRefusal.h"

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
#pragma link "cxImageComboBox"
#pragma resource "*.dfm"
TfrmExpectRefusal *frmExpectRefusal;
//---------------------------------------------------------------------------
__fastcall TfrmExpectRefusal::TfrmExpectRefusal(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmExpectRefusal::Show(RecordExrefNRE* te)
{
	te_ = te;
    tmr->Enabled = true;
	return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmExpectRefusal::aCancelExecute(TObject *Sender)
{
	/* Отмена */

	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmExpectRefusal::tmrTimer(TObject *Sender)
{
	tmr->Enabled = false;

	aFill_SystemTree->Execute();
	aFill_SystemType->Execute();
	rwSystemType->Properties->Value	= te_->system_type_id;
	aFill_System->Execute();
	rwSystem->Properties->Value		= te_->system_id;
}
//---------------------------------------------------------------------------

void __fastcall TfrmExpectRefusal::aFill_SystemTypeExecute(TObject *Sender)
{
	/* Заполнить список - тип оборудования - 1 уровень */

	TClientDataSet *cds	= cds_NSI_SystemTree;
	TDataSource *ds		= ds_NSI_SystemTree;
	TcxEditorRow *rw	= rwSystemType;
	TcxImageComboBoxItem 	   *itm		= NULL;
	TcxImageComboBoxProperties *cbep	= (TcxImageComboBoxProperties*)rw->Properties->EditProperties;

	try
	{
		cds->Filter = "lvl = 1";
		cds->Filtered = true;
		LogEvent("SystemType: " + cds->Filter + " : " + IntToStr(cds->RecordCount));

		cbep->Items->Clear();

		for (int i = 0; i < cds->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if (itm)
			{
				itm->Description	= cds->FieldByName("class_name")->AsString;
				itm->Value			= cds->FieldByName("class_id")->AsInteger;
			}
			cds->Next();
		}
	}
	catch (Exception &e)
	{
		throw Exception ("< UER-1 > : Ошибка заполнения списка - Тип оборудования.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------


void __fastcall TfrmExpectRefusal::aFill_SystemExecute(TObject *Sender)
{
	/* Заполнить список - оборудование - 2 уровень */

	TClientDataSet *cds	= cds_NSI_SystemTree;
	TDataSource *ds		= ds_NSI_SystemTree;
	TcxEditorRow *rw	= rwSystem;
	TcxImageComboBoxItem 	   *itm	 = NULL;
	TcxImageComboBoxProperties *cbep = (TcxImageComboBoxProperties*)rw->Properties->EditProperties;;

	try
	{
		cds->Filter = "parent_class_id = " + IntToStr((int)rwSystemType->Properties->Value) + " AND lvl = 2";
		cds->Filtered = true;
		LogEvent("System: " + cds->Filter + " : " + IntToStr(cds->RecordCount));

		cbep->Items->Clear();

		for (int i = 0; i < cds->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if (itm)
			{
				itm->Description = cds->FieldByName("class_name")->AsString;
				itm->Value		 = cds->FieldByName("class_id")->AsInteger;
			}
			cds->Next();
		}

		if (DMMain->cdsAnalyses->Active && DMMain->cdsAnalyses->RecordCount > 0)
		{
			rw->Properties->Value = DMMain->cdsAnalyses->FieldByName("system_id")->AsInteger;
		}
		else
			rw->Properties->Value = (cbep->Items->Count == 0 ? 0 : cbep->Items->Items[0]->Value);
	}
	catch (Exception &e)
	{
		throw Exception ("< UER-2 > : Ошибка заполнения списка - Оборудование.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmExpectRefusal::rwSystemTypeEditPropertiesChange(TObject *Sender)
{
	aFill_System->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmExpectRefusal::aFill_SystemTreeExecute(TObject *Sender)
{
	/* Загрузить полное дерево оборудований */

	TClientDataSet *cds	= cds_NSI_SystemTree;
    TDataSource *ds		= ds_NSI_SystemTree;

	try
    {
    	TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.NSI_PKG.eq_tree_new_cur";
    	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
    }
    catch (Exception &e)
    {
		TDMMain::ShowAppException(AET_EXCEPTION, "< UER-3 > : Ошибка загрузки дерева узлов.\n", e.Message);
        ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmExpectRefusal::aSaveExecute(TObject *Sender)
{
	/* Сохранить */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
    {
		dsa->CommandText = "SMT.INCIDENT2_PKG.nre_exrefusal_iu";

		dsa->Params->CreateParam(ftInteger, "o_exref_id", ptInputOutput)->AsInteger	= te_->exref_id;
		dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger		= te_->sheet_id;
		dsa->Params->CreateParam(ftInteger, "p_system_type_id", ptInput)->AsInteger	= rwSystemType->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "p_system_id", ptInput)->AsInteger		= rwSystem->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "p_user_id", ptInput)->AsInteger		= te_->user_id;

		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

        TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

        if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
            throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
    }
    catch (Exception &e)
    {
    	throw Exception ("< UER-4 > : Ошибка сохранения записи Ожидаемый отказ НРЭ.\n" + e.Message);
	}

	ModalResult = mrOk;
}
//---------------------------------------------------------------------------

