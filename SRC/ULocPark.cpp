//---------------------------------------------------------------------------

#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include "memory"
#include <stdio.h>

#include "uBinFunction.h"
#include "config.h"
#include "public.h"
#include "UDMMain.h"
#include "Utils_JK.h"
#include "UEdit_Loc.h"
#include "UEdit_Template.h"
#include "UTemplates.h"

#include "ULocPark.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)

#pragma link "cxNavigator"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma resource "*.dfm"
TfrmLocPark *frmLocPark;
UnicodeString TplIncident = "";
//---------------------------------------------------------------------------
__fastcall TfrmLocPark::TfrmLocPark(TComponent* Owner)
	: TForm(Owner)
{
	pc->ActivePage = tsRunning;
    //tsOthers->TabVisible = false;
	pc->HideTabs = true;
	clmnCheck->Visible     = DMMain->IsFunction("f_code", "aLocPark_aEdit");
	beichbShowAll->Visible = (clmnCheck->Visible == false ? ivNever : ivAlways);

	// название шаблона
	TplIncident = cfg_.ini->ReadString("Templates", "tplLocPark", "");

	if (TplIncident == "")
		lblTemplateName->Caption = lblTemplateName->Caption + "исходный";
	else
		lblTemplateName->Caption = lblTemplateName->Caption + TplIncident;

	tmr->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::tmrTimer(TObject *Sender)
{
	tmr->Enabled = false;

    try
    {
        // восстановить сохраненные настройки грида
        TcxGridStorageOptions opt;
        opt << gsoUseFilter << gsoUseSummary;
        if (cfg.ini->ReadInteger("TfrmLocPark", "ApplyGridSettings_0", 0) == 1)
        	btvLocPark->RestoreFromIniFile(ProfileFolder + "LocPark.ini", true, false, opt);
        cfg.ini->WriteInteger("TfrmLocPark", "ApplyGridSettings_0", 1);
        // включить/отключить автоширину грида (если включены пробеги - автоширина отключается)
        btvLocParkBandPosChanged(btvLocPark, btvLocPark->Bands->Items[2]);

        // загрузить список предприятий
    	aLoad_NSI_FirmTree->Execute();
        // загрузить список серий
        aLoad_NSI_LocSer->Execute();
        // загрузить список эксплуатационных депо (приписка локомотива)
        aLoad_NSI_DepoList->Execute();

        aSetAction->Execute();
    }
    catch (Exception &e)
    {
		TDMMain::ShowAppException(AET_EXCEPTION, "< ULP-1 > : Ошибка выполнения предварительных настроек.\n", e.Message);
		this->Close();
	}

	Timer1->Enabled = true;
    aSetForm->Execute();
	TDMMain::LogEvenEnterExit("Вход. Парк сервисных локомотивов.");
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::FormClose(TObject *Sender, TCloseAction &Action)
{
	try
	{
		// сохранить настройки грида
		//TcxGridStorageOptions opt;
		//opt << gsoUseFilter << gsoUseSummary;
		//btvLocPark->StoreToIniFile(ProfileFolder + "LocPark.ini", false, opt);
		//
		cfg.ini->WriteInteger("TfrmLocPark", "KodFirm", cbFirmTree_->Tag);
		cfg.ini->WriteInteger("TfrmLocPark", "KodSer", (int)cbLocSer->EditValue);
		cfg.ini->WriteInteger("TfrmLocPark", "KodDepo", (int)cbDepoList->EditValue);
	}
	catch ( Exception &e )
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< ULP-2 > : Ошибка сохранения настроек.\n", e.Message);
	}
	//
	TDMMain::LogEvenEnterExit("Выход. Парк сервисных локомотивов.");

	Action = caFree;
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::aRefreshExecute(TObject *Sender)
{
	TcxGridDBBandedTableView *btv = btvLocPark;
	TClientDataSet *cds = cdsLocPark;
	TDataSource *ds = dsLocPark;
	bool lct = false;
	int vID = 0;

	try
	{
		if (btv->DataController->RowCount > 0 && btv->Controller->FocusedRow != NULL)
			vID = cds->FieldByName("id_object")->AsInteger;

		btv->OptionsView->NoDataToDisplayInfoText = RefreshText;
		btv->DataController->DataSource = 0;
		lblTitle->Caption = "";
		Update();
		TDMMain::ClearDataSet(cds);

		if ((int)chbLess->EditValue == 0 && (int)chbEqualy->EditValue == 0 && (int)chbMore->EditValue == 0)
		{
			if (clmnTO2_Vr->Visible == false)
				cds->CommandText = "SMT.LOC_PARK_PKG.loc_park_short_2_0_cur";
			else
				cds->CommandText = "SMT.LOC_PARK_PKG.loc_park_2_0_cur";

			cds->Params->CreateParam(ftInteger, "p_show_all", ptInput)->AsInteger	= (int)chbShowAll->EditValue;
			cds->Params->CreateParam(ftInteger, "p_kod_ser", ptInput)->AsInteger	= (int)cbLocSer->EditValue;
			cds->Params->CreateParam(ftInteger, "p_kod_depo", ptInput)->AsInteger	= (int)cbDepoList->EditValue;
			cds->Params->CreateParam(ftInteger, "p_access", ptInput)->AsInteger		= cbFirmTree_->Tag;
			cds->Params->CreateParam(ftCursor,  "o_cur", ptInputOutput);

			TDMMain::OpenDS(cds, "OPEN", "CT", 1);
		} else
		{
			cds->CommandText = "SMT.LOC_PARK_PKG.loc_park_filtered_2_0_cur";
			cds->Params->CreateParam(ftInteger, "p_repair_type", ptInput)->AsString	= cbRepairType->EditValue;
			cds->Params->CreateParam(ftInteger, "p_less", ptInput)->AsInteger		= (int)chbLess->EditValue;
			cds->Params->CreateParam(ftInteger, "p_equaly", ptInput)->AsInteger     = (int)chbEqualy->EditValue;
			cds->Params->CreateParam(ftInteger, "p_more", ptInput)->AsInteger       = (int)chbMore->EditValue;
			cds->Params->CreateParam(ftInteger, "p_kod_ser", ptInput)->AsInteger	= (int)cbLocSer->EditValue;
			cds->Params->CreateParam(ftInteger, "p_kod_depo", ptInput)->AsInteger	= (int)cbDepoList->EditValue;
			cds->Params->CreateParam(ftInteger, "p_access", ptInput)->AsInteger		= cbFirmTree_->Tag;
			cds->Params->CreateParam(ftCursor,  "o_cur", ptInputOutput);

			TDMMain::OpenDS(cds, "OPEN", "CT", 1);
		}

		if (!cds->Active)
			throw Exception ("Не удалось открыть источник данных (датасет не активен).");

		btv->OptionsView->NoDataToDisplayInfoText = NoDataTextDefault;
		//Update();
		btv->DataController->DataSource = ds;

		if (btv->DataController->RowCount > 0)
		{
			lct = ((TClientDataSet*)ds->DataSet)->Locate("id_object", vID, TLocateOptions());

			if ( lct == false )
				btv->Controller->FocusRecord(btv->Controller->TopRecordIndex,true);

			btv->Controller->FocusedRecord->Selected = true;
			btv->Controller->FocusedRecord->Expand(false);
		}
		lblTitle->Caption = "Локомотивы, переданные на сервисное обслуживание :: " + cbFirmTree_->Text.Trim();
	}
	catch (Exception &e)
	{
		btv->OptionsView->NoDataToDisplayInfoText = ErrorRefreshText;
		TDMMain::ShowAppException(AET_EXCEPTION, "< ULP-3 > : Ошибка загрузки списка локомотивов.\n", e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::aLoad_NSI_FirmTreeExecute(TObject *Sender)
{
	/* Загрузить дерево предприятий */

	TClientDataSet *cds = cdsFirmTree;
	TDataSource *ds = dsFirmTree;
	int vKodFirm = 0;
	TcxTreeListNode *node = NULL;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.APP_NSI_PKG.firm_tree_cur";
		cds->Params->CreateParam(ftInteger, "p_id_user",     ptInput)->AsInteger = UserID;
		cds->Params->CreateParam(ftString,  "p_code_object", ptInput)->AsString  = "aLocPark";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		tlFirmTree->DataController->DataSource = dsFirmTree;

		try
		{
			vKodFirm = cfg.ini->ReadInteger("TfrmLocPark", "KodFirm", cfg_.DepotID); //DMMain->Get_CDS_Value(cds, "kod_firm", cfg.ini->ReadInteger("TfrmLocPark", "KodFirm", DepotID), "kod_firm" );
		}
		catch ( Exception &e )
		{
			vKodFirm = cfg_.DepotID;
		}

		if ( vKodFirm == 0 )
			vKodFirm = cfg_.DepotID;

		if ( tlFirmTree->AbsoluteCount > 0 )
			tlFirmTree->TopVisibleNode->Expand(false);

		node = tlFirmTree->FindNodeByKeyValue(vKodFirm, tlFirmTree->Root, false, true);
		if ( node != NULL )
			node->Focused = true;

		if ( cds->Locate("kod_firm", vKodFirm, TLocateOptions() ) == false )
			cds->First();

		cbFirmTree_->Text = cds->FieldByName("firm_name")->AsString;
		cbFirmTree_->Tag = cds->FieldByName("kod_firm")->AsInteger;

	}
	catch ( Exception &e )
	{
		// эксепшен ловим в вызывающем методе
		throw Exception ("< ULP-4 > : Ошибка загрузки дерева предприятий.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------





void __fastcall TfrmLocPark::aEditExecute(TObject *Sender)
{
	/*	Редактировать реквизиты локомотива (сервисное обслуживание) */

	std::auto_ptr<TfrmEdit_Loc> dlg (new TfrmEdit_Loc(this));
	Strct_EditLoc te;
	TcxGridDBBandedTableView *btv = btvLocPark;
	TClientDataSet *cds = cdsLocPark;
	int vID = 0;
	bool lct = false;
	AnsiString s = "";

	try
	{
		cds->Filter = "checked = 1";
		cds->Filtered = true;

		te.id_object_list      = "";
		te.loc_name_list       = "";
		te.kod_firm_repair     = cdsLocPark->FieldByName("kod_firm_repair")->AsInteger;
		te.date_service_begin  = cdsLocPark->FieldByName("date_service_begin")->AsDateTime;
		te.date_service_finish = cdsLocPark->FieldByName("date_service_finish")->AsDateTime;
		te.service_contract_id = cdsLocPark->FieldByName("service_contract_id")->AsInteger;
		te.id_depo_name        = cdsLocPark->FieldByName("kod_depo")->AsInteger;

		btv->ViewData->Expand(true);
		btv->Controller->SelectAllRecords();
		for ( int i = 0; i < btv->Controller->SelectedRowCount; i++ )
		{
			btv->Controller->SelectedRows[i]->Focused = true;

			// запомнить первую отмеченную секцию (ибо из-за фильтрации потом не вовзвращается почему-то)
			if ( i == 0 )
				vID = cds->FieldByName("id_object")->AsInteger;

			if ( cds->FieldByName("checked")->AsInteger == 1 )

			{
				te.id_object_list = te.id_object_list + cds->FieldByName("id_object")->AsString + ",";
				te.loc_name_list = te.loc_name_list + cds->FieldByName("ser_name")->AsString + " - " + cds->FieldByName("section_name")->AsString + "\n";
			}
		}
		dlg->rwSectionName->Properties->Value = te.loc_name_list;

		if (mrOk == dlg->Show(&te))
		{
			cds->Filter = "";
			cds->Filtered = false;

			aRefresh->Execute();

			if (btv->DataController->RowCount > 0)
			{
				lct = cds->Locate("id_object", vID, TLocateOptions());

				if ( lct == false )
					btv->Controller->FocusRecord(btv->Controller->TopRecordIndex,true);

				btv->Controller->FocusedRecord->Selected = true;
				btv->Controller->FocusedRecord->Expand(false);
			}
		}
	}
	__finally
	{
		cds->Filter = "";
		cds->Filtered = false;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::clmnTO2_VrGetDisplayText(TcxCustomGridTableItem *Sender, TcxCustomGridRecord *ARecord, UnicodeString &AText)
{
	if (ARecord != NULL && !AText.IsEmpty())
	{
		if (AText == "0")
			AText = "";
		else
			AText = FormatFloat("#,#", StrToFloat(AText));
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::clmnTO2_DateGetDisplayText(TcxCustomGridTableItem *Sender, TcxCustomGridRecord *ARecord, UnicodeString &AText)
{
	if (ARecord != NULL && !AText.IsEmpty())
		AText = FormatDateTime("dd.mm.yy  hh:nn", StrToDateTime(AText));
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::clmnSeriaCompareRowValuesForCellMerging(TcxGridColumn *Sender,
		  TcxGridDataRow *ARow1, TcxCustomEditProperties *AProperties1,
		  const Variant &AValue1, TcxGridDataRow *ARow2,
		  TcxCustomEditProperties *AProperties2, const Variant &AValue2,
		  bool &AAreEqual)
{
	/* Красивое объединение ячеек только для одного локомотива (а не все подряд одинаковые) */

	if (ARow1->Values[clmnNomTPE->Index] != ARow2->Values[clmnNomTPE->Index] || ARow1->Values[clmnSeria->Index] != ARow2->Values[clmnSeria->Index])
		AAreEqual = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::btvLocParkCustomDrawCell(TcxCustomGridTableView *Sender, TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo, bool &ADone)
{
	// Выделение четных строк (по целому локомотиву)
	/*div_t x;
	x = div ((int)AViewInfo->GridRecord->Values[clmnRN->Index], 2);
	if ( x.rem == 0 )
		ACanvas->Brush->Color = stlContentOdd->Color;
	*/
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::clmnTO3_DateGetDisplayText(TcxCustomGridTableItem *Sender,
		  TcxCustomGridRecord *ARecord, UnicodeString &AText)

{
	if (ARecord != NULL && !AText.IsEmpty())
		AText = FormatDateTime("dd.mm.yy", StrToDateTime(AText));
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::btvLocParkStylesGetGroupSummaryStyle(TcxGridTableView *Sender,
		  TcxGridGroupRow *ARow, TcxGridColumn *AColumn, TcxDataSummaryItem *ASummaryItem,
		  TcxStyle *&AStyle)
{
	/* Разноцветные итоги в строке группировки */

	try
	{
		if (Sender != NULL && ARow != NULL && ASummaryItem != NULL)
		{
			switch ( ASummaryItem->Index )
			{
				case 3:
					AStyle = stlLocInWork;	// на линии
					break;
				case 4:
					AStyle = stlLocInDepo;	// просто в депо
					break;
				case 5:
					AStyle = stlLocInDepoNR;	// в депо в НР или РЕКЛ
					break;
			}
		}
	}
	catch (Exception &e)
	{
		throw Exception ("< ULP-5 > : Ошибка отрисовки групповых итогов: " + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::btvLocParkCanSelectRecord(TcxCustomGridTableView *Sender, TcxCustomGridRecord *ARecord, bool &AAllow)
{
	if (ARecord->Expandable)
		AAllow = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::btvLocParkBandPosChanged(TcxGridBandedTableView *Sender, TcxGridBand *ABand)
{
	/* Автоширина грида - только если скрыты текущие пробеги */

	if (ABand->Index == 2)
		btvLocPark->OptionsView->ColumnAutoWidth = !ABand->Visible;
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::aSetActionExecute(TObject *Sender)
{
	/* Установка доступности действий */

	TcxGridDBBandedTableView *btv = btvLocPark;
	bool can_edit	= false;

	int check_footer_idx = btv->DataController->Summary->FooterSummaryItems->IndexOfItemLink(clmnCheck);

	try
	{
		can_edit = (btv->DataController->RowCount > 0 &&
					clmnCheck->Visible == true &&
					(int) btv->DataController->Summary->FooterSummaryValues[check_footer_idx] > 0);

		aEdit->Visible = can_edit;
		aEdit->Enabled = aEdit->Visible;
		aDeleteFromService->Visible = aEdit->Visible;
		aDeleteFromService->Enabled = aEdit->Visible;

		aExportXLS->Enabled = (btv->DataController->RowCount > 0);
	}
	catch (Exception &e)
	{
		throw Exception ("< ULP-6 > : SetAction: Ошибка определения доступности действий: " + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::btvLocParkFocusedRecordChanged(TcxCustomGridTableView *Sender,
		  TcxCustomGridRecord *APrevFocusedRecord, TcxCustomGridRecord *AFocusedRecord,
		  bool ANewItemRecordFocusingChanged)
{
//	aSetAction->Execute();
}
//---------------------------------------------------------------------------


void __fastcall TfrmLocPark::clmnCheckPropertiesEditValueChanged(TObject *Sender)
{
   // обновление totalsummaty отчеканных секций (без этого обновляется только после ухода со строки!)
   clmnCheck->Summary->FooterKind = skNone;
   clmnCheck->Summary->FooterKind = skSum;

   //->Caption = btvLocPark->DataController->Summary->FooterSummaryValues[ btvLocPark->DataController->Summary->FooterSummaryItems->ItemOfItemLink(clmnCheck)->Index ];

   aSetAction->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::aExportXLSExecute(TObject *Sender)
{
	/* Экспорт в эксель */

	try
	{
		btvLocPark->OptionsCustomize->ColumnGrouping = false;
		TcxGrid *grd = grdLocPark;
		/*
		dlgSave->FileName = "Инциденты";
		dlgSave->FileName = dlgSave->FileName + ".xls";

		if ( dlgSave->Execute() )
		{
			ExportGridToExcel(dlgSave->FileName, grd, true, true, true, "xls");

			char buf_str[2000];
			sprintf(buf_str, dlgSave->FileName.t_str() );
			ShellExecute(Application->Handle, NULL, buf_str, NULL, NULL, SW_MAXIMIZE);
		}*/

		AnsiString vFileName = TemporaryFolder + "locpark_" + "_" + FormatDateTime("ddmmyy_hhnnss", Now()) + ".xls";
		ExportGridToExcel(vFileName, grd, true, true, true, "xls");

		char buf_str[2000];
		sprintf(buf_str, vFileName.c_str() );
		ShellExecute(Application->Handle, NULL, buf_str, NULL, NULL, SW_MAXIMIZE);
	}
	__finally
	{
		btvLocPark->OptionsCustomize->ColumnGrouping = true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::btvLocParkKeyPress(TObject *Sender, wchar_t &Key)
{
	if (btvLocPark->DataController->DataSource == NULL) return;

	TClientDataSet *cds = (TClientDataSet*)btvLocPark->DataController->DataSource->DataSet;

	if (Key == VK_SPACE)
		LogEvent( "IDUser = " + IntToStr(UserID) +
					";	 id_object = " + cds->FieldByName("id_object")->AsString);
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::aLoad_NSI_LocSerExecute(TObject *Sender)
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
		throw Exception ("< ULP-7 > : Ошибка загрузки серий.\n" + e.Message);
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

		vKodSer = cfg.ini->ReadInteger("TfrmLocPark", "KodSer", 0);
		cbLocSer->EditValue = vKodSer;
	}
	catch (Exception &e)
	{
		throw Exception ("< ULP-8 > : Ошибка заполнения списка серий.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::OverRunning_CustomDrawCell( int clmn_value, TcxCanvas *ACanvas )
{
	/* Признак пробега - раскраска зеленых, желтых и красных пробегов */

	switch (clmn_value)
	{
		case 1:
			ACanvas->Brush->Color = stlRunningYellow->Color; // пробег 100%-110%
			break;
		case 2:
			ACanvas->Brush->Color = stlRunningRed->Color;    // перепробег выше допуска
			break;
		case 3:
			ACanvas->Brush->Color = stlRunningGreen->Color;  // пробег 90%-100%
			break;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::btvLocParkColumn11CustomDrawCell(TcxCustomGridTableView *Sender,
		  TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
		  bool &ADone)
{
	OverRunning_CustomDrawCell((int)AViewInfo->GridRecord->Values[clmn_PRIZN_PROB_TO2_KM->Index], ACanvas);
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::clmnTO2_VrCustomDrawCell(TcxCustomGridTableView *Sender,
		  TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
		  bool &ADone)
{
	OverRunning_CustomDrawCell((int)AViewInfo->GridRecord->Values[clmn_PRIZN_PROB_TO2_VR->Index], ACanvas);
}
//---------------------------------------------------------------------------


void __fastcall TfrmLocPark::btvLocParkColumn3CustomDrawCell(TcxCustomGridTableView *Sender,
		  TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
		  bool &ADone)
{
	OverRunning_CustomDrawCell((int)AViewInfo->GridRecord->Values[clmn_PRIZN_PROB_TO3_KM->Index], ACanvas);
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::btvLocParkColumn4CustomDrawCell(TcxCustomGridTableView *Sender,
		  TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
		  bool &ADone)
{
	OverRunning_CustomDrawCell((int)AViewInfo->GridRecord->Values[clmn_PRIZN_PROB_TO3_VR->Index], ACanvas);
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::btvLocParkColumn14CustomDrawCell(TcxCustomGridTableView *Sender,
		  TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
		  bool &ADone)
{
	OverRunning_CustomDrawCell((int)AViewInfo->GridRecord->Values[clmn_PRIZN_PROB_TR1_KM->Index], ACanvas);
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::btvLocParkColumn16CustomDrawCell(TcxCustomGridTableView *Sender,
		  TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
		  bool &ADone)
{
	OverRunning_CustomDrawCell((int)AViewInfo->GridRecord->Values[clmn_PRIZN_PROB_TR1_VR->Index], ACanvas);
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::btvLocParkColumn9CustomDrawCell(TcxCustomGridTableView *Sender,
		  TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
		  bool &ADone)
{
	OverRunning_CustomDrawCell((int)AViewInfo->GridRecord->Values[clmn_PRIZN_PROB_TR2_KM->Index], ACanvas);
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::btvLocParkColumn12CustomDrawCell(TcxCustomGridTableView *Sender,
		  TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
		  bool &ADone)
{
	OverRunning_CustomDrawCell((int)AViewInfo->GridRecord->Values[clmn_PRIZN_PROB_TR2_VR->Index], ACanvas);
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::btvLocParkColumn18CustomDrawCell(TcxCustomGridTableView *Sender,
		  TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
		  bool &ADone)
{
	OverRunning_CustomDrawCell((int)AViewInfo->GridRecord->Values[clmn_PRIZN_PROB_TR3_KM->Index], ACanvas);
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::btvLocParkColumn19CustomDrawCell(TcxCustomGridTableView *Sender,
		  TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
		  bool &ADone)
{
	OverRunning_CustomDrawCell((int)AViewInfo->GridRecord->Values[clmn_PRIZN_PROB_TR3_VR->Index], ACanvas);
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::aDeleteFromServiceExecute(TObject *Sender)
{
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	AnsiString	id_object_list, loc_name_list;
	TcxGridDBBandedTableView *btv	= btvLocPark;
	TClientDataSet *cds				= cdsLocPark;
	int vID							= 0;
	bool lct						= false;
	AnsiString s					= "";

	try
	{
		try
		{
			cds->Filter		= "checked = 1";
			cds->Filtered	= true;

			id_object_list	= "";
			loc_name_list	= "";

			btv->ViewData->Expand(true);
			btv->Controller->SelectAllRecords();

			for (int i = 0; i < btv->Controller->SelectedRowCount; i++)
			{
				btv->Controller->SelectedRows[i]->Focused = true;

				// запомнить первую отмеченную секцию (ибо из-за фильтрации потом не вовзвращается почему-то)
				if (i == 0)
					vID = cds->FieldByName("id_object")->AsInteger;

				if (cds->FieldByName("checked")->AsInteger == 1)
				{
					id_object_list = id_object_list + cds->FieldByName("id_object")->AsString + ",";
					loc_name_list  = loc_name_list + cds->FieldByName("ser_name")->AsString + " - " + cds->FieldByName("section_name")->AsString + "\n";
				}
			}
		}
		catch (Exception &e)
		{
			throw Exception("< ULP-9 > : Ошибка сборки перечня секций: " + e.Message);
		}

		int qr = MessageBox(NULL, ("Исключить [" + loc_name_list + "]?").c_str(), "Подтверждение", MB_YESNO);
		if (IDYES == qr)
		{
			try
			{
				dsa->CommandText = "SMT.LOC_PARK_PKG.loc_service_iu";

				dsa->Params->CreateParam(ftString, "p_id_object", ptInput)->AsString 			   = id_object_list;
				dsa->Params->CreateParam(ftInteger, "p_kod_firm_repair", ptInput)->AsInteger 	   = 0;
				dsa->Params->CreateParam(ftInteger, "p_kod_firm_service", ptInput)->AsInteger 	   = 0;
				dsa->Params->CreateParam(ftDateTime, "p_date_service_begin", ptInput)->AsDateTime  = GetDateTimeFromValue(Null);
				dsa->Params->CreateParam(ftDateTime, "p_date_service_finish", ptInput)->AsDateTime = GetDateTimeFromValue(Null);
				dsa->Params->CreateParam(ftInteger, "p_service_contract", ptInput)->AsInteger 	   = 0;
				dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput)->AsInteger	       = UserID;
				dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
				dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

				TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

				if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
					throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
			}
			catch (Exception &e)
			{
				throw Exception("< ULP-10 > : Ошибка сохранения в БД: " + e.Message);
			}
		}

		aRefresh->Execute();

		if (btv->DataController->RowCount > 0)
		{
			lct = cds->Locate("id_object", vID, TLocateOptions());

			if (lct == false)
				btv->Controller->FocusRecord(btv->Controller->TopRecordIndex,true);

			btv->Controller->FocusedRecord->Selected = true;
			btv->Controller->FocusedRecord->Expand(false);
		}
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "Ошибка исключения секций из парка", e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::aLoad_NSI_DepoListExecute(TObject *Sender)
{
	// загрузить список серий

	TcxImageComboBox *cb = cbDepoList;
	int vKodDepo = 0;

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	TcxImageComboBoxItem 		*itm	= NULL;
	TcxImageComboBoxProperties	*cbep	= NULL;

	try
	{
		cbep = (TcxImageComboBoxProperties*)cb->Properties;
		cbep->Items->Clear();

		dsa->CommandText 	= "SMT.nsi_pkg.tche_full_list_cur";
		dsa->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< ULP-11 > : Ошибка загрузки ТЧЭ.\n" + e.Message);
	}

	try
	{
		itm = cbep->Items->Add();
		if (itm)
		{
			itm->Description	= "ВСЕ ДЕПО";
			itm->Value			= 0;
		}

		for (int i = 0; i < dsa->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if (itm)
			{
				itm->Description	= dsa->FieldByName("firm_name")->AsString;
				itm->Value			= dsa->FieldByName("pred_id")->AsInteger;
			}
			dsa->Next();
		}

		vKodDepo = cfg.ini->ReadInteger("TfrmLocPark", "KodDepo", 0);
		cbDepoList->EditValue = vKodDepo;
	}
	catch (Exception &e)
	{
		throw Exception ("< ULP-12 > : Ошибка заполнения списка ТЧЭ.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::aSelect_FirmTreeExecute(TObject *Sender)
{
	// Выбор предприятия в дереве
	TcxTreeListNode *ln = NULL;
	ln = tlFirmTree->FocusedNode;

	if (ln != NULL /*&& !ln->HasChildren*/)
	{
		cbFirmTree_->Tag = cdsFirmTree->FieldByName("kod_firm")->AsInteger;
		cbFirmTree_->Text = cdsFirmTree->FieldByName("firm_name")->AsString;

		cbFirmTree_->DroppedDown = false;
		cbFirmTree_->SetFocus();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::tlFirmTreeCustomDrawCell(TObject *Sender, TcxCanvas *ACanvas,
		  TcxTreeListEditCellViewInfo *AViewInfo, bool &ADone)
{
	if (AViewInfo->Node->Level == 0)
		ACanvas->Font->Style = TFontStyles() << fsBold;
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::tlFirmTreeKeyPress(TObject *Sender, wchar_t &Key)

{
	if (Key == VK_RETURN) aSelect_FirmTree->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::tlFirmTreeKeyDown(TObject *Sender, WORD &Key, TShiftState Shift)
{
	if (Key == VK_LEFT && tlFirmTree->FocusedNode->Expanded) tlFirmTree->FocusedNode->Collapse(true);
	if (Key == VK_RIGHT && !tlFirmTree->FocusedNode->Expanded) tlFirmTree->FocusedNode->Expand(false);

}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::clmnCheckCustomDrawFooterCell(TcxGridTableView *Sender,
		  TcxCanvas *ACanvas, TcxGridColumnHeaderViewInfo *AViewInfo,
		  bool &ADone)
{
	  ACanvas->Brush->Color = clFuchsia;
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::clmnSectionNameCustomDrawCell(TcxCustomGridTableView *Sender,
		  TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
		  bool &ADone)
{
	if ((int) AViewInfo->GridRecord->Values[clmnCheck->Index] == 1)
	{
		 ACanvas->Font->Style = TFontStyles() << fsBold;
		 ACanvas->Font->Color = clBlue;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::btvLocParkColumn8CustomDrawCell(TcxCustomGridTableView *Sender,
		  TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
		  bool &ADone)
{
	// Красным - локомотивы, находящиеся в депо
	switch ((int) AViewInfo->GridRecord->Values[clmnSostCategory->Index])
	{
		case 1:
			ACanvas->Font->Color = stlAttention_Middle->TextColor;
			break;
		case 2:
			ACanvas->Font->Color = stlAttention->TextColor;
			break;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::btvLocParkColumn5GetCellHint(TcxCustomGridTableItem *Sender,
		  TcxCustomGridRecord *ARecord, TcxGridTableDataCellViewInfo *ACellViewInfo,
		  const TPoint &AMousePos, TCaption &AHintText,
		  bool &AIsHintMultiLine, TRect &AHintTextRect)
{
	if (ARecord != NULL && (VarToStr(ARecord->Values[clmnSostName->Index])).IsEmpty() == false)
		AHintText = VarToStr(ARecord->Values[clmnSostName->Index]);
}
//---------------------------------------------------------------------------


void __fastcall TfrmLocPark::clmnSostCategoryGetCellHint(TcxCustomGridTableItem *Sender,
		  TcxCustomGridRecord *ARecord, TcxGridTableDataCellViewInfo *ACellViewInfo,
		  const TPoint &AMousePos, TCaption &AHintText,
		  bool &AIsHintMultiLine, TRect &AHintTextRect)
{
	try
	{
		switch	((int) ACellViewInfo->Value)
		{
			case 1:
				AHintText = lblLegend_InDepo->Hint;
				break;
			case 2:
				AHintText = lblLegend_InDepo_NR->Hint;
				break;
			default:
				AHintText = "";
		}
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< ULP-13 > : Ошибка hint-определения (обратитесь к разработчикам).", e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::clmnLastEventDateGetDisplayText(TcxCustomGridTableItem *Sender,
		  TcxCustomGridRecord *ARecord, UnicodeString &AText)
{
	if (ARecord != NULL && !AText.IsEmpty())
		AText = FormatDateTime("dd.mm  hh:nn", StrToDateTime(AText));
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::aCreateTemplateExecute(TObject *Sender)
{
	/* Сохранить шаблон */

	StrctEditTemplate sf;
	TStringList *lst = new TStringList();

	std::auto_ptr<TfrmEdit_Template> dlg (new TfrmEdit_Template(this));
	dlg->Caption = "Создать новый шаблон";

	// сохранить настройки грида в шаблон
	TcxGridStorageOptions opt;
	opt << gsoUseFilter << gsoUseSummary;
	btvLocPark->StoreToIniFile(ProfileFolder + "LocPark.ini", false, opt);

	lst->LoadFromFile(ProfileFolder + "LocPark.ini");

	// передаём данные в структуру
	sf.template_name = "";
	sf.Template      = lst;
	sf.type          = tLocPark;
	sf.state_id		 = stateNewTpl;
	sf.file_name     = "LocPark.ini";

	if (mrOk == dlg->Show(&sf))
	{
	}

	delete lst;
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::aViewTemplateExecute(TObject *Sender)
{
	/* Список шаблонов */
	std::auto_ptr<TfrmTemplates> dlg (new TfrmTemplates(this));

	if (mrOk == dlg->Show())
	{
        // восстановить сохраненные настройки грида
        TcxGridStorageOptions opt;
        opt << gsoUseFilter << gsoUseSummary;
		btvLocPark->RestoreFromIniFile(ProfileFolder + "LocPark.ini", true, false, opt);

		// название шаблона
		TplIncident = cfg_.ini->ReadString("Templates", "tplLocPark", "");
	}

	if (TplIncident == "")
		lblTemplateName->Caption = "Применён шаблон: исходный";
	else
		lblTemplateName->Caption = "Применён шаблон: " + TplIncident;
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::aClearAllExecute(TObject *Sender)
{
	/* Сбросить всё */

	chbLess->EditValue	 = 0;
	chbEqualy->EditValue = 0;
	chbMore->EditValue	 = 0;
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::Timer1Timer(TObject *Sender)
{
	dxBarButton1->ButtonStyle = bsChecked;
//	dxBarButton1->Down = true;
	dxBarButton1->Down = false;
	Timer1->Enabled = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::cbFirmTree_PropertiesEditValueChanged(TObject *Sender)

{
	dxBarButton1->Down = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::cbLocSerPropertiesEditValueChanged(TObject *Sender)
{
	dxBarButton1->Down = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::cbDepoListPropertiesEditValueChanged(TObject *Sender)

{
	dxBarButton1->Down = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::aViltrLRZExecute(TObject *Sender)
{
	/* Фильтрация по ЛРЗ */

	if (((TcxGridDBBandedTableView*)grdLocPark->ActiveView)->Controller->FocusedRow == NULL)
		return;

	TClientDataSet *cds = cdsLocPark;
	std::auto_ptr<TClientDataSet> dsaSess (new TClientDataSet(NULL));

	AnsiString Url;
	AnsiString Key = "";

	Url = cfg.ini->ReadString("ApplicationServers", "DepoEnterURL", "");

	if (Url == "") {
		MessageBox (NULL, "Неверные настройки строки адреса Отчета ЛРЗ в INI-файле.", "Ошибка INI-файла", MB_ICONSTOP);
		return;
	}

	try
	{
		TDMMain::ClearDataSet(dsaSess.get());
		dsaSess->CommandText = "SMT.RULE_PKG.CREATESESSION";
		dsaSess->Params->CreateParam(ftInteger, "pUserId", ptInput)->AsInteger    = UserID;
		dsaSess->Params->CreateParam(ftString, "pIp", ptInput)->AsString 	   	  = DefaultIP;
		dsaSess->Params->CreateParam(ftString, "oKey", ptInputOutput)->AsString   = Key;
		dsaSess->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsaSess->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);
		TDMMain::OpenDS(dsaSess.get(), "EXEC", "CT", 1);

		Key = dsaSess->Params->ParamByName("oKey")->AsString;

		if (dsaSess->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (dsaSess->Params->ParamByName("o_Err_Msg")->AsString);
		else
		{
			Url = Url + Key
				+ "&kod_ser=" + cds->FieldByName("kod_ser")->AsString
				+ "&nom_loc=" + cds->FieldByName("nom_loc")->AsString
				+ "&nom_sec=" + cds->FieldByName("nom_sec")->AsString;
			LogEvent("REP-URL:" + Url);
			ShellExecute(Application->Handle, NULL, Url.c_str(), NULL, NULL, SW_MAXIMIZE);
		}
	}
	catch (Exception &e)
	{
		throw Exception ("< REP-2 > : Ошибка сессии отчета ЛРЗ.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmLocPark::aSetFormExecute(TObject *Sender)
{
	/**/
	aRefresh->Enabled            = DMMain->IsFunction("f_code", "aLocPark_aRefresh");           //Просмотр
	aEdit->Enabled               = DMMain->IsFunction("f_code", "aLocPark_aEdit");
	aDeleteFromService->Enabled  = DMMain->IsFunction("f_code", "aLocPark_aDeleteFromService");
	aExportXLS->Enabled          = DMMain->IsFunction("f_code", "aLocPark_aExportXLS");
}
//---------------------------------------------------------------------------

