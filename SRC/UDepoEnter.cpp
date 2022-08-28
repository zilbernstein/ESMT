//---------------------------------------------------------------------------
#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include "uBinFunction.h"
#include "config.h"
#include "public.h"
#include <memory>
#include "UDMMain.h"
#include "Utils_JK.h"
#include "UDepoEnter.h"
#include "UEdit_DepoEnter.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxBarEditItem"
#pragma link "cxDBLookupComboBox"
#pragma link "cxRadioGroup"
#pragma link "cxControls"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "dxRibbon"
#pragma link "dxSkinsdxRibbonPainter"
#pragma link "cxCheckComboBox"
#pragma link "dxBarExtDBItems"
#pragma link "dxRibbonGallery"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsdxBarPainter"
#pragma link "cxCheckBox"
#pragma link "cxContainer"
#pragma link "cxCustomData"
#pragma link "cxData"
#pragma link "cxDataStorage"
#pragma link "cxDBData"
#pragma link "cxDBTL"
#pragma link "cxDropDownEdit"
#pragma link "cxEdit"
#pragma link "cxFilter"
#pragma link "cxGrid"
#pragma link "cxGridCustomTableView"
#pragma link "cxGridCustomView"
#pragma link "cxGridDBBandedTableView"
#pragma link "cxGridLevel"
#pragma link "cxGridTableView"
#pragma link "cxImageComboBox"
#pragma link "cxInplaceContainer"
#pragma link "cxMaskEdit"
#pragma link "cxNavigator"
#pragma link "cxPC"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "cxTextEdit"
#pragma link "cxTL"
#pragma link "cxTLData"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "dxSkinscxPCPainter"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma link "dxStatusBar"
#pragma link "cxLabel"
#pragma link "cxMemo"
#pragma link "cxGridDBTableView"
#pragma resource "*.dfm"
TfrmDepoEnter *frmDepoEnter;
//---------------------------------------------------------------------------
__fastcall TfrmDepoEnter::TfrmDepoEnter(TComponent* Owner)
	: TForm(Owner)
{
	pcMain->ActivePage	= tsMain;
	pcMain->HideTabs	= true;

	deDateBegin->Date  = cfg.ini->ReadDate("TfrmDepoEnter", "DateBegin", Date() - 7);
	deDateFinish->Date = cfg.ini->ReadDate("TfrmDepoEnter", "DateFinish", Date());

	TDMMain::LogEvenEnterExit("Вход. Заходы в депо.");

	tmr->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmDepoEnter::FormClose(TObject *Sender, TCloseAction &Action)

{
	try
	{
		// сохранить настройки грида
		cfg.ini->WriteInteger("TfrmDepoEnter", "KodSer", (int)cbLocSer->EditValue);

		cfg.ini->WriteDate("TfrmDepoEnter", "DateBegin", deDateBegin->Date);
		cfg.ini->WriteDate("TfrmDepoEnter", "DateFinish", deDateFinish->Date);
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UDEN-1 > : Ошибка сохранения настроек.\n", e.Message);
	}

    TDMMain::LogEvenEnterExit("Выход. Заходы в депо.");

	Action = caFree;
}
//---------------------------------------------------------------------------
void __fastcall TfrmDepoEnter::tmrTimer(TObject *Sender)
{
	tmr->Enabled = false;

	aSetForm->Execute();

	aLoadLocSer->Execute();
}
//---------------------------------------------------------------------------


void __fastcall TfrmDepoEnter::aRefreshExecute(TObject *Sender)
{
	/* Обновить */

	TcxGridDBBandedTableView *btv	= btvDepoEnter;
	TClientDataSet *cds				= cdsDepoEnter;
	TDataSource *ds					= dsDepoEnter;

	int vID = 0;

	try
	{
		if (btv->DataController->RowCount > 0 && btv->Controller->FocusedRow != NULL)
			vID = cds->FieldByName("row_id")->AsInteger;

		btv->OptionsView->NoDataToDisplayInfoText = RefreshText;
		btv->DataController->DataSource = 0;

		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.INCIDENT2_PKG.depo_enter_cur";
		cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime   = deDateBegin->Date;
		cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime  = deDateFinish->Date;
		cds->Params->CreateParam(ftInteger, "p_kod_ser", ptInput)->AsInteger		= (int)cbLocSer->EditValue;
		cds->Params->CreateParam(ftCursor,   "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btv->OptionsView->NoDataToDisplayInfoText = NoDataTextDefault;
		btv->DataController->DataSource = ds;

	}
	catch (Exception &e)
	{
		btv->OptionsView->NoDataToDisplayInfoText = ErrorRefreshText;
		TDMMain::ShowAppException(AET_EXCEPTION, "< UDEN-2 > : Ошибка загрузки списка заходов.\n", e.Message);
	}

	dxBarButton1->ButtonStyle = bsChecked;
	dxBarButton1->Down = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmDepoEnter::aExportExecute(TObject *Sender)
{
	/* Экспорт в Excel */

	try
	{
		btvDepoEnter->OptionsCustomize->ColumnGrouping = false;
		TcxGrid *grd = grdDepoEnter;

		AnsiString vFileName = TemporaryFolder + "depoenter_" + "_" + FormatDateTime("ddmmyy_hhnnss", Now()) + ".xls";
		ExportGridToExcel(vFileName, grd, true, true, true, "xls");

		char buf_str[2000];
		sprintf(buf_str, vFileName.c_str() );
		ShellExecute(Application->Handle, NULL, buf_str, NULL, NULL, SW_MAXIMIZE);
	}
	__finally
	{
		btvDepoEnter->OptionsCustomize->ColumnGrouping = true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmDepoEnter::btvDepoEnterDblClick(TObject *Sender)
{
	aDetail->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmDepoEnter::aLoadLocSerExecute(TObject *Sender)
{
	/* Загрузить список серий */

	TcxImageComboBox *cb = cbLocSer;
	int vKodSer = 0;

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	TcxImageComboBoxItem 		*itm	= NULL;
	TcxImageComboBoxProperties	*cbep	= NULL;

	try
	{
		cbep = (TcxImageComboBoxProperties*)cb->Properties;
		cbep->Items->Clear();

		dsa->CommandText = "SMT.nsi_pkg.loc_ser_2_0_cur";
		dsa->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UDEN-3 > : Ошибка загрузки серий.\n" + e.Message);
	}

	try
	{
		itm = cbep->Items->Add();
		if (itm)
		{
			itm->Description = "ВСЕ СЕРИИ";
			itm->Value		 = 0;
		}

		for (int i = 0; i < dsa->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if (itm)
			{
				itm->Description = dsa->FieldByName("ser_name")->AsString;
				itm->Value		 = dsa->FieldByName("kod_ser")->AsInteger;
			}
			dsa->Next();
		}

		vKodSer = cfg.ini->ReadInteger("TfrmDepoEnter", "KodSer", 0);
		cbLocSer->EditValue = vKodSer;
	}
	catch (Exception &e)
	{
		throw Exception ("< UDEN-4 > : Ошибка заполнения списка серий.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmDepoEnter::deDateBeginChange(TObject *Sender)
{
	cfg.ini->WriteDate("TfrmDepoEnter", "DateBegin", deDateBegin->Date);
	dxBarButton1->Down = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmDepoEnter::deDateFinishChange(TObject *Sender)
{
	cfg.ini->WriteDate("TfrmDepoEnter", "DateFinish", deDateFinish->Date);
	dxBarButton1->Down = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmDepoEnter::aNewExecute(TObject *Sender)
{
	/* Добавить заход в депо */

	std::auto_ptr<TfrmEdit_DepoEnter> dlg (new TfrmEdit_DepoEnter(this));
	TcxGridDBBandedTableView	*btv = btvDepoEnter;
	StrctDepoEnter 				ep;

	if (((TcxGridDBBandedTableView*)grdDepoEnter->ActiveView)->Controller->FocusedRow == NULL)
	return;

	ep.row_id 		= 0;
	ep.edit	  		= true;
	ep.create_mode	= 1;
	ep.was_edit		= false;

	dlg->Caption = "[Добавление записи] - Лист регистрации захода в депо";
	dlg->Show(&ep);

	if (ep.was_edit) {
		aRefresh->Execute();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmDepoEnter::aEditExecute(TObject *Sender)
{
	/* Редактировать заход в депо */

	if (cdsDepoEnter->Active == false
		|| cdsDepoEnter->RecordCount == 0)
		return;

	std::auto_ptr<TfrmEdit_DepoEnter> dlg (new TfrmEdit_DepoEnter(this));
	TcxGridDBBandedTableView	*btv = btvDepoEnter;
	StrctDepoEnter 				ep;

	TClientDataSet *cds = cdsDepoEnter;

	if (((TcxGridDBBandedTableView*)grdDepoEnter->ActiveView)->Controller->FocusedRow == NULL)
	return;

	ep.row_id		= cds->FieldByName("row_id")->AsInteger;
	ep.kod_ser		= cds->FieldByName("kod_ser")->AsInteger;
	ep.nom_loc		= cds->FieldByName("nom_loc")->AsInteger;
	ep.nom_sec		= cds->FieldByName("nom_sec")->AsInteger;
	ep.loc_name		= cds->FieldByName("loc_name")->AsString;
	ep.date_op		= cds->FieldByName("date_op")->AsDateTime;
	ep.date_next_op	= cds->FieldByName("date_next_op")->AsDateTime;
	ep.create_mode	= cds->FieldByName("create_mode")->AsInteger;
	ep.reason		= cds->FieldByName("reason")->AsString;
	ep.edit			= true;
	ep.was_edit		= false;

	dlg->Caption = "[Редактирование записи] - Лист регистрации захода в депо";
	dlg->Show(&ep);

	if (ep.was_edit) {
		aRefresh->Execute();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmDepoEnter::aDetailExecute(TObject *Sender)
{
	/* Просмотр записи */

	if (cdsDepoEnter->Active == false
		|| cdsDepoEnter->RecordCount == 0)
		return;

	std::auto_ptr<TfrmEdit_DepoEnter> dlg (new TfrmEdit_DepoEnter(this));
	TcxGridDBBandedTableView	*btv = btvDepoEnter;
	StrctDepoEnter 				ep;

	TClientDataSet *cds = cdsDepoEnter;

	if (((TcxGridDBBandedTableView*)grdDepoEnter->ActiveView)->Controller->FocusedRow == NULL)
	return;

	/* */
	ep.row_id		= cds->FieldByName("row_id")->AsInteger;
	ep.kod_ser		= cds->FieldByName("kod_ser")->AsInteger;
	ep.nom_loc		= cds->FieldByName("nom_loc")->AsInteger;
	ep.nom_sec		= cds->FieldByName("nom_sec")->AsInteger;
	ep.loc_name		= cds->FieldByName("loc_name")->AsString;
	ep.date_op		= cds->FieldByName("date_op")->AsDateTime;
	ep.date_next_op	= cds->FieldByName("date_next_op")->AsDateTime;
	ep.create_mode	= cds->FieldByName("create_mode")->AsInteger;
	ep.reason		= cds->FieldByName("reason")->AsString;
	ep.edit			= false;
	ep.was_edit		= false;
	/* */

	/*
	ep.row_id = cds->FieldByName("row_id")->AsInteger;
	ep.edit	  = false;
	*/

	dlg->Caption = "[Просмотр записи] - Лист регистрации захода в депо";
	dlg->Show(&ep);

	if (ep.was_edit)
	{
		aRefresh->Execute();
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmDepoEnter::cbLocSerPropertiesEditValueChanged(TObject *Sender)

{
	dxBarButton1->Down = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmDepoEnter::aSetFormExecute(TObject *Sender)
{
	/* Установка функционала */

	aRefresh->Enabled  =  DMMain->IsFunction("f_code", "aDepoEnter_aRefresh");
	aNew->Enabled      =  DMMain->IsFunction("f_code", "aDepoEnter_aNew");
	aEdit->Enabled     =  DMMain->IsFunction("f_code", "aDepoEnter_aEdit");
//	aDetail->Enabled   =  DMMain->IsFunction("f_code", "aDepoEnter_aEdit");
	aExport->Enabled   =  DMMain->IsFunction("f_code", "aDepoEnter_aExport");
}
//---------------------------------------------------------------------------

