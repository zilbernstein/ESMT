//---------------------------------------------------------------------------

#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include "memory"
#include <stdio.h>
#include <windows.h>


#include "UDMMain.h"
#include "config.h"
#include "public.h"

#include "uIncidentExport.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxGraphics"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "cxContainer"
#pragma link "cxControls"
#pragma link "cxEdit"
#pragma link "cxGroupBox"
#pragma link "cxProgressBar"
#pragma link "cxCalendar"
#pragma link "cxDateUtils"
#pragma link "cxDropDownEdit"
#pragma link "cxMaskEdit"
#pragma link "cxTextEdit"
#pragma link "dxCore"
#pragma link "cxLabel"
#pragma link "cxDBLookupComboBox"
#pragma link "cxDBLookupEdit"
#pragma link "cxImageComboBox"
#pragma link "cxLookupEdit"
#pragma link "cxPC"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "dxSkinscxPCPainter"
#pragma link "cxCustomData"
#pragma link "cxDBTL"
#pragma link "cxInplaceContainer"
#pragma link "cxStyles"
#pragma link "cxTL"
#pragma link "cxTLData"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma link "dxStatusBar"
#pragma link "cxClasses"
#pragma link "cxData"
#pragma link "cxDataStorage"
#pragma link "cxDBData"
#pragma link "cxFilter"
#pragma link "cxGrid"
#pragma link "cxGridCustomTableView"
#pragma link "cxGridCustomView"
#pragma link "cxGridDBTableView"
#pragma link "cxGridLevel"
#pragma link "cxGridTableView"
#pragma link "cxNavigator"
#pragma link "cxCheckBox"
#pragma link "cxGridBandedTableView"
#pragma link "cxGridDBBandedTableView"
#pragma resource "*.dfm"
TfrmIncidentExport *frmIncidentExport;
//---------------------------------------------------------------------------
__fastcall TfrmIncidentExport::TfrmIncidentExport(TComponent* Owner)
	: TForm(Owner)
{
	pc->ActivePage		= tsMain;
	pc->HideTabs		= true;

    tmrLoad->Enabled	= true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncidentExport::tmrLoadTimer(TObject *Sender)
{
	tmrLoad->Enabled = false;

	gbProgressBar->Visible = true;
	gbProgressBar->Caption = "Загрузка НСИ предприятий...";
	Update();
	aLoadFirmTree->Execute();
	pbProgressBar->Position++;
	Update();

	gbProgressBar->Caption = "Загрузка НСИ серий локомотивов...";
	Update();
	aLoadSerList->Execute();
	pbProgressBar->Position++;
	Update();

	gbProgressBar->Caption = "Загрузка НСИ секций локомотивов...";
	Update();
	aLoadNumList->Execute();
	pbProgressBar->Position++;
	Update();

	gbProgressBar->Caption = "Загрузка списка столбцов...";
	Update();
	aLoadColumns->Execute();
	pbProgressBar->Position++;
	Update();

	gbProgressBar->Caption = "";
	gbProgressBar->Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncidentExport::aLoadFirmTreeExecute(TObject *Sender)
{
	// Загрузка дерева ТМХ

	TClientDataSet* cds 	= new TClientDataSet(this);
	TDataSource* ds			= new TDataSource(this);
	ds->DataSet				= cds;

	TcxTreeListNode *node	= NULL;

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT.APP_NSI_PKG.firm_tree_cur";
		cds->Params->CreateParam(ftInteger, "p_id_user",     ptInput)->AsInteger = UserID;
		cds->Params->CreateParam(ftString,  "p_code_object", ptInput)->AsString  = "aIncident";
		cds->Params->CreateParam(ftCursor,  "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		tlFirmTree->DataController->DataSource = ds;

		try
		{
			KodFirm = cfg.ini->ReadInteger("frmIncident", "KodFirm", cfg_.DepotID);
		}
		catch (Exception &e)
		{
			KodFirm = cfg_.DepotID;
		}

	if (KodFirm == 0)
		KodFirm = cfg_.DepotID;

	if (tlFirmTree->AbsoluteCount > 0)
		tlFirmTree->TopVisibleNode->Expand(false);

	node = tlFirmTree->FindNodeByKeyValue(KodFirm, tlFirmTree->Root, false, true);

	if (node != NULL)
		node->Focused = true;

	if (cds->Locate("kod_firm", KodFirm, TLocateOptions()) == false)
		cds->First();

	cbFirmTree->Text	= cds->FieldByName("firm_name")->AsString;
	cbFirmTree->Tag		= cds->FieldByName("kod_firm")->AsInteger;

	}
	catch (Exception &e)
	{
		throw Exception ("Ошибка загрузки дерева предприятий.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncidentExport::aLoadSerListExecute(TObject *Sender)
{
	// Загрузка списка серий

	TcxImageComboBox *cb = cbSer;
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
		throw Exception ("< UI-15 > : Ошибка загрузки серий.\n" + e.Message);
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
		cbSer->EditValue = KodSer;
	}
	catch (Exception &e)
	{
		throw Exception ("Ошибка заполнения списка серий.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncidentExport::aLoadNumListExecute(TObject *Sender)
{
	// Загрузка списка секций

	TClientDataSet* cds 	= new TClientDataSet(this);
	TDataSource* ds			= new TDataSource(this);
	ds->DataSet				= cds;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.smt_nsi2_pkg.nom_ser_loc_cur";
		cds->Params->CreateParam(ftCursor,  "o_cur",      ptInputOutput);
		cds->Params->CreateParam(ftInteger, "p_kod_ser",  ptInput)->AsInteger = KodSer;
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		cbNum->Properties->ListSource	= ds;
		cbNum->EditValue 				= LocObj;
	}
	catch (Exception &e)
	{
		throw Exception ("Ошибка загрузки номеров.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncidentExport::aExportExecute(TObject *Sender)
{
	/* Экспорт в .csv */

	TcxGridDBBandedTableView *btv	= btvColumns;
	TClientDataSet *cds				= cdsExport;
	TDataSource *ds					= dsExport;
	TStringList *slCSV				= new TStringList;
	AnsiString sCsv, sCols		 	= "";

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	int start_rec = 1, end_rec = 500, step = 500, cnt = 0;

    // проверка выбора полей
	btv->DataController->DataSet->First();
	while (!btv->DataController->DataSet->Eof)
	{
		if (btv->DataController->DataSet->FieldByName("checked")->AsInteger == 1)
		{
			sCsv = sCsv + "\"" + btv->DataController->DataSet->FieldByName("column_name")->AsString + "\";";
			sCols = sCols + "\"" + btv->DataController->DataSet->FieldByName("column_name")->AsString + "\",";
		}
		btv->DataController->DataSet->Next();
	}

	if (sCols  == "")
	{
		throw Exception ("Для выгрузки необходимо выбрать хотя бы одно поле!");
		return;
	}

    // диалог сохранения
	if (SaveDialog->Execute())
	{
		slCSV->Add(sCsv);
		slCSV->SaveToFile(SaveDialog->FileName);
	}


	// запрашиваем количество строк
	try
	{
		dsa->CommandText = "SMT.INCIDENT_EXPORT_CNT";

		dsa->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime   = deDateFrom->Date;
		dsa->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime  = deDateTo->Date;
		dsa->Params->CreateParam(ftInteger,  "p_access", ptInput)->AsInteger        = cbFirmTree->Tag;
		dsa->Params->CreateParam(ftInteger,  "p_kod_ser",    ptInput)->AsInteger 	= KodSer;
		dsa->Params->CreateParam(ftInteger,  "p_nom_sec",    ptInput)->AsInteger 	= LocSec;
		dsa->Params->CreateParam(ftInteger,  "p_nom_object", ptInput)->AsInteger 	= LocNum;

		dsa->Params->CreateParam(ftInteger, "o_cnt", ptInputOutput);
		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_cnt")->AsInteger != 0)
		{
			cnt = dsa->Params->ParamByName("o_cnt")->AsInteger;
			pbProgressBar->Position        = 0;
			pbProgressBar->Properties->Max = cnt;
		}
		gbProgressBar->Caption	= "Будет экспортировано " + IntToStr(cnt) + " строк. Дождитесь окончания процесса!";
	}
	catch (Exception &e)
	{
		throw Exception ("Ошибка получения данных для выгрузки.\n" + e.Message);
	}

	gbProgressBar->Visible = true;

	for (start_rec; start_rec < cnt; start_rec += step)
	{
		sCsv = "";

		// получаем данные
		try
		{
			TDMMain::ClearDataSet(cds);
			cds->CommandText = "SMT.INCIDENT_EXPORT_DATA";
			cds->Params->CreateParam(ftInteger, "p_from", ptInputOutput)->AsInteger				= start_rec;
			cds->Params->CreateParam(ftInteger, "p_to", ptInputOutput)->AsInteger				= end_rec;
			cds->Params->CreateParam(ftString, "p_columns", ptInputOutput)->AsString			= sCols;
			cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInputOutput)->AsDateTime		= deDateFrom->Date;
			cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInputOutput)->AsDateTime	= deDateTo->Date;
			cds->Params->CreateParam(ftInteger, "p_access", ptInputOutput)->AsInteger			= cbFirmTree->Tag;
			cds->Params->CreateParam(ftInteger, "p_kod_ser", ptInputOutput)->AsInteger			= KodSer;
			cds->Params->CreateParam(ftInteger, "p_nom_sec", ptInputOutput)->AsInteger			= LocSec;
			cds->Params->CreateParam(ftInteger, "p_nom_object", ptInputOutput)->AsInteger		= LocNum;
			cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
			TDMMain::OpenDS(cds, "OPEN", "CT", 1);
		}
		catch (Exception &e)
		{
			throw Exception ("Ошибка выгрузки данных.\n" + e.Message);
		}

		// и пишем их в файл
		cds->First();

		while (!cds->Eof)
		{
			for (int i = 0; i < cds->FieldList->Count; i++)
			{
				sCsv = sCsv + "\"" + StringReplace(cds->FieldList->Fields[i]->AsString, "\"", "", TReplaceFlags() << rfReplaceAll << rfIgnoreCase) + "\";";
				if (i == cds->FieldList->Count - 1)
				{
				   slCSV->LoadFromFile(SaveDialog->FileName);
				   slCSV->Add(sCsv);
				   slCSV->SaveToFile(SaveDialog->FileName);
				   sCsv = "";
				}
			}
			cds->Next();
		}

		pbProgressBar->Position += step;
		Application->ProcessMessages();

		end_rec += step;
	}

	gbProgressBar->Visible = false;

	MessageBox(Handle, AnsiString("Экспорт завершен!\"").c_str(), "Информация", MB_ICONINFORMATION);
}
//---------------------------------------------------------------------------
void __fastcall TfrmIncidentExport::aLoadColumnsExecute(TObject *Sender)
{
	// Загрузка списка доступных для выбора столбцов

	TClientDataSet* cds 	= new TClientDataSet(this);
	TDataSource* ds			= new TDataSource(this);
	ds->DataSet				= cds;

	TcxGridDBBandedTableView *btv	= btvColumns;

	try
	{
		btv->DataController->DataSource = 0;

		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.INCIDENT_EXPORT_COLUMNS";
		cds->Params->CreateParam(ftCursor,   "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btv->DataController->DataSource = ds;
	}
	catch (Exception &e)
	{
		btv->OptionsView->NoDataToDisplayInfoText = ErrorRefreshText;
		TDMMain::ShowAppException(AET_EXCEPTION, "Ошибка загрузки списка инцидентов. ", e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncidentExport::tlFirmTreeKeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift)
{
	if (Key == VK_LEFT && tlFirmTree->FocusedNode->Expanded)
		tlFirmTree->FocusedNode->Collapse(true);

	if (Key == VK_RIGHT && !tlFirmTree->FocusedNode->Expanded)
		tlFirmTree->FocusedNode->Expand(false);
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncidentExport::tlFirmTreeKeyPress(TObject *Sender, System::WideChar &Key)

{
	if (Key == VK_RETURN)
		aSelect_FirmTree->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncidentExport::aSelect_FirmTreeExecute(TObject *Sender)
{
	/* Выбор предприятия в дереве */

	TcxTreeListNode *ln = NULL;
	ln = tlFirmTree->FocusedNode;

	if (ln != NULL)
	{
		cbFirmTree->Tag  = tlFirmTree->DataController->DataSet->FieldByName("kod_firm")->AsInteger;
		cbFirmTree->Text = tlFirmTree->DataController->DataSet->FieldByName("firm_name")->AsString;

		cbFirmTree->DroppedDown	= false;
		cbFirmTree->SetFocus();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncidentExport::cbNumPropertiesEditValueChanged(TObject *Sender)

{
	if (cbNum->Properties->ListSource->DataSet->RecordCount > 0)
	{
		LocNum = cbNum->Properties->ListSource->DataSet->FieldByName("nom_object")->AsInteger;
		LocSec = cbNum->Properties->ListSource->DataSet->FieldByName("nom_sec")->AsInteger;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncidentExport::cbSerPropertiesEditValueChanged(TObject *Sender)

{
	KodSer = cbSer->EditValue;

	aLoadNumList->Execute();
}
//---------------------------------------------------------------------------

