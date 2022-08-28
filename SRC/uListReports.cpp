//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include <memory>
#include <stdio.h>
#include "config.h"
#include "public.h"
#include "UDMMain.h"

#include "uListReports.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxBarEditItem"
#pragma link "cxClasses"
#pragma link "cxGraphics"
#pragma link "cxGridBandedTableView"
#pragma link "cxImageComboBox"
#pragma link "cxStyles"
#pragma link "cxTL"
#pragma link "dxBar"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsdxBarPainter"
#pragma link "frxClass"
#pragma link "frxDBSet"
#pragma link "frxExportHTML"
#pragma link "frxExportPDF"
#pragma link "frxExportRTF"
#pragma link "frxExportXLS"
#pragma link "cxButtons"
#pragma link "cxCalendar"
#pragma link "cxCheckBox"
#pragma link "cxContainer"
#pragma link "cxControls"
#pragma link "cxCustomData"
#pragma link "cxData"
#pragma link "cxDataStorage"
#pragma link "cxDateUtils"
#pragma link "cxDBData"
#pragma link "cxDBLookupComboBox"
#pragma link "cxDBLookupEdit"
#pragma link "cxDropDownEdit"
#pragma link "cxEdit"
#pragma link "cxFilter"
#pragma link "cxGrid"
#pragma link "cxGridCustomTableView"
#pragma link "cxGridCustomView"
#pragma link "cxGridDBTableView"
#pragma link "cxGridLevel"
#pragma link "cxGridTableView"
#pragma link "cxLabel"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxLookupEdit"
#pragma link "cxMaskEdit"
#pragma link "cxNavigator"
#pragma link "cxPC"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "cxTextEdit"
#pragma link "dxCore"
#pragma link "dxdbtrel"
#pragma link "dxSkinscxPCPainter"
#pragma link "UfmePreview"
#pragma link "cxProgressBar"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma link "dxStatusBar"
#pragma link "frxPreview"
#pragma link "dxBarExtItems"
#pragma link "cxSpinEdit"
#pragma link "frxExportBIFF"
#pragma resource "*.dfm"
TfrmListReports *frmListReports;

// FrxRprtDoc1 - АКТ технического состояния локомотива
// FrxRprtDoc2 - АКТ передачи локомотива сервисной компании
// FrxRprtDoc3 - Техническое заключение
// FrxRprtDoc4 - Технический акт выполненых работ и указанных услуг
// FrxRprtDoc5 - АКТ нарушений режимов эксплуатации
// FrxRprtDoc6 - АКТА РАЗБОРА НАРУШЕНИЙ
// FrxRprtDoc7 - Техническая карта основных параметров работы локомотива (ТК 1 (ТЭП70БС))
// FrxRprtDoc8 - Диагностическая карта на проведение сервисного обслуживания локомотива (ДК2 (ЭП2К))

/*----------------------------------------------------------------------------*/
// Аналитика - БМЗ
// FrxRprtDoc9 - СПРАВКА ОБЩАЯ (БМЗ)
// FrxRprtDoc10 - ЕЖЕДНЕВНАЯ СПРАВКА (БМЗ)
/*----------------------------------------------------------------------------*/

// FrxRprtDoc11 - Техническая карта основных параметров работы локомотива (ТК2 (2ТЭ116У) )
// FrxRprtDoc12 - Письмо "О нарушении режимов эксплуатации"
// FrxRprtDoc13 - Диагностическая карта на проведение сервисного обслуживания локомотива (ДК1 (ТЭМ2К))

const double cMinScale = 0.3;
const double cMaxScale = 2;

const int    LineMax   = 3;  //Максимальное количество пустых строчек.

AnsiString FormDateTimeStr()
{
	// Дата и время (символьные) - чтоб подставлять к имени файла
	TDateTime Present;
	Word Day, Month, Year, BHour, BMin, BSec, BMSec;
	AnsiString sDay, sMonth, sYear, sHour, sMin, sSec, sMSec;

	// настоящий (текущий) год, месяц, день
	Present = Now();
	DecodeDate(Now(), Year, Month, Day);
	if (Day < 10)         sDay   = "0"+ IntToStr(Day);
				  else    sDay   =      IntToStr(Day);
	if (Month < 10)       sMonth = "0"+ IntToStr(Month);
				  else    sMonth =      IntToStr(Month);
	sYear  =      IntToStr(Year);

	DecodeTime(Present, BHour, BMin, BSec, BMSec);
	if (BHour < 10)       sHour  = "0"+ IntToStr(BHour);
                  else    sHour  =      IntToStr(BHour);
	if (BMin < 10)        sMin   = "0"+ IntToStr(BMin);
                  else    sMin   =      IntToStr(BMin);
	if (BSec < 10)        sSec   = "0"+ IntToStr(BSec);
                  else    sSec   =      IntToStr(BSec);
   	if (BMSec < 10)       sMSec  = "0"+ IntToStr(BMSec);
                  else    sMSec   =      IntToStr(BMSec);

   return(sDay+sMonth+sYear+"_"+sHour+sMin+sSec);
}


//---------------------------------------------------------------------------
__fastcall TfrmListReports::TfrmListReports(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
TModalResult __fastcall TfrmListReports::Show( RecordParamDoc* Param )
{
	/*  */

	pDoc_ = Param;

	pcMain->ActivePage = tsReportMain;
	pcMain->HideTabs   = true;

	TDMMain::LogEvenEnterExit("Вход. Формирование документа");

	return ShowModal();
}

void TfrmListReports::PrvFrx()
{
	/*  */

	pcMain->ActivePage = tsReportPreview;
	frxReport->Preview = frxPreviewDoc;
	frxPreviewDoc->SetFocus();
	frxReport->PreviewOptions->OutlineExpand = false;
	frxReport->ShowReport(true);
	frxPreviewDoc->OutlineWidth = 230;
}

void __fastcall TfrmListReports::aClosePRExecute(TObject *Sender)
{
	/*  */
	frxPreviewDoc->Clear();
	frxPreviewDoc->Cancel();
	frxReport->Clear();

	TDMMain::LogEvenEnterExit("Выход. Формирование документа");

	Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::FormActivate(TObject *Sender)
{
	/* Фомирование документа по номеру */

	switch ( pDoc_->NumDoc  )
	{
		case -2:{
					frxReport = FrxRprtDoc10;
					aLoadDailyReference->Execute();
					frmListReports->Caption = "Eжедневная справка БМЗ";
					break;
				}
		case -1:{
					frxReport = FrxRprtDoc9;
					aLoadOverallReference->Execute();
					frmListReports->Caption = "Общая справка БМЗ";
					break;
				}
		case 1 : {
					frxReport = FrxRprtDoc1;
					aLoadInfoDoc1->Execute();
					frmListReports->Caption = "АКТ технического состояния локомотива";
					break;
				 }
		case 2 : {
					frxReport = FrxRprtDoc2;
					aLoadInfoDoc2->Execute();
					frmListReports->Caption = "АКТ передачи локомотива сервисной компании";
					break;
				 }
		case 3 : {
					frxReport = FrxRprtDoc3;
					aLoadInfoDoc3->Execute();
					frmListReports->Caption = "Техническое заключение";
					break;
				 }
		case 4 : {
					frxReport = FrxRprtDoc4;
					aLoadInfoDoc4->Execute();
					frmListReports->Caption = "Технический акт выполненых работ и указанных услуг";
					break;
				 }
		case 5 : {
					frxReport = FrxRprtDoc5;
					aLoadInfoDoc5->Execute();
					frmListReports->Caption = "АКТ нарушений режимов эксплуатации";
					break;
				 }
		case 6 : {
					frxReport = FrxRprtDoc6;
					aLoadInfoDoc6->Execute();
					frmListReports->Caption = "Акт разбора нарушений";
					break;
				 }
		case 7 : {
					frxReport = FrxRprtDoc7;
					aLoadInfoDoc7->Execute();
					frmListReports->Caption = "Техническая карта основных параметров работы локомотива";
					break;
				 }
		case 8 : {
					frxReport = FrxRprtDoc8;
					aLoadInfoDoc8->Execute();
					frmListReports->Caption = "Диагностическая карта на проведение сервисного обслуживания локомотива";
					break;
				 }
		case 9:  {
					frxReport = FrxRprtDoc11;
					aLoadInfoDoc11->Execute();
					frmListReports->Caption = "ТК 2 (2ТЭ116У)";
					break;
				 }
		case 10: {
					frxReport = FrxRprtDoc12;
					aLoadInfoDoc12->Execute();
					frmListReports->Caption = "ПИСЬМО «О НАРУШЕНИИ РЕЖИМА ЭКСПЛУАТАЦИИ»";
					break;
				 }
		case 11: {
					frxReport = FrxRprtDoc13;
					aLoadInfoDoc13->Execute();
					frmListReports->Caption = "ДК 1 (ТЭМ2К)";
					break;
				 }
	}
	/*  */
	PrvFrx();
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::aPrintExecute(TObject *Sender)
{
   /* Печать отчета */

   if (frxPreviewDoc->PageCount > 0)
   {
		frxPreviewDoc->Print();
   }
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::aScaleExecute(TObject *Sender)
{
	/* Масштабирование */

	frxPreviewDoc->Zoom = (float) cbScale->EditValue;
	frxPreviewDoc->Update();
	frxPreviewDoc->SetFocus();
}
//---------------------------------------------------------------------------
void __fastcall TfrmListReports::aExportToXLSExecute(TObject *Sender)
{
	/* Экспорт в Ексель */

	SaveDlg->FileName = "_"+FormDateTimeStr()+".xls";

	if ( SaveDlg->Execute() == true )
	{
		frxXLSExp->FileName = SaveDlg->FileName;
		frxXLSExp->ShowDialog = false;
		frxReport->Export(frxXLSExp);
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmListReports::aExportToPDFExecute(TObject *Sender)
{
	/* Экспорт в PDF */

	SaveDlg->FileName = "_"+FormDateTimeStr()+".pdf";

	if ( SaveDlg->Execute() == true )
	{
		frxPDFExp->FileName = SaveDlg->FileName;
		frxPDFExp->ShowDialog = false;
		frxReport->Preview->PreviewPages->Export(frxPDFExp);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::aExportToRTFExecute(TObject *Sender)
{
	/* Экспорт в RTF */

	SaveDlg->FileName = "_"+FormDateTimeStr()+".rtf";

	if ( SaveDlg->Execute() == true )
	{
		frxRTFExp->FileName = SaveDlg->FileName;
		frxRTFExp->ShowDialog = false;
		frxReport->Preview->PreviewPages->Export(frxRTFExp);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::aExportToHTMLExecute(TObject *Sender)
{
	/* Экспорт в HTML */
	SaveDlg->FileName = "_"+FormDateTimeStr()+".html";

	if ( SaveDlg->Execute() == true )
	{
		frxHTMLExp->FileName = SaveDlg->FileName;
		frxHTMLExp->ShowDialog = false;
		frxReport->Preview->PreviewPages->Export(frxHTMLExp);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::aFirstPageExecute(TObject *Sender)
{
	/* Встать на первую страничку */

	frxPreviewDoc->First();
	spnNumPage->Value = 1;
	frxPreviewDoc->Update();
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::aEarlyPageExecute(TObject *Sender)
{
	/* Встать на предыдущую страничку */

	frxPreviewDoc->Prior();
	spnNumPage->Value = frxPreviewDoc->PageNo;
	frxPreviewDoc->Update();
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::aNextPageExecute(TObject *Sender)
{
	/* Встать на следующую страничку */

	frxPreviewDoc->Next();
	spnNumPage->Value = frxPreviewDoc->PageNo;
	frxPreviewDoc->Update();
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::aLastPageExecute(TObject *Sender)
{
	/* Встать на последнюю страничку */

	frxPreviewDoc->Last();
	spnNumPage->Value = frxPreviewDoc->PageCount; // PageNo;
	frxPreviewDoc->Update();
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::frxPreviewDocPageChanged(TfrxPreview *Sender, int PageNo)

{
	/* Переключаем спин с номерами страниц - ставим текущую */

	if ( PageNo > 0 ) spnNumPage->Value = PageNo;
	frxPreviewDoc->Update();
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::frxPreviewDocClick(TObject *Sender)
{
	/*  */
	frxPreviewDoc->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::FormMouseWheel(TObject *Sender, TShiftState Shift,
		  int WheelDelta, TPoint &MousePos, bool &Handled)
{
	/* Чтоб скроллировалось как надо*/

	double NewValue = (WheelDelta != 0 ? (double)cbScale->EditValue + (0.1 * (abs(WheelDelta) / WheelDelta)) : (double)cbScale->EditValue);
	if ( Shift.Contains(ssCtrl) && NewValue >= cMinScale && NewValue <= cMaxScale )
	{
		cbScale->EditValue = FloatToStr(NewValue);
		aScale->Execute();
	}
	else
	{
		frxPreviewDoc->MouseWheelScroll(WheelDelta, false, false);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::spnNumPageKeyPress(TObject *Sender, System::WideChar &Key)

{
	/*  */
	if ( Key == 'e' || Key == 'E' ) Key = NULL;
	else aGoToPage->Execute();

	if ( Key == VK_RETURN && frxPreviewDoc->PageCount > 0 && frxPreviewDoc->CanFocus() )
	{
		frxPreviewDoc->SetFocus();
		Panel1->SetFocus();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::aGoToPageExecute(TObject *Sender)
{
	/* Встать на страничку с номером */

	if ( !spnNumPage->Text.IsEmpty() )
	{
		if ( (int)spnNumPage->Value < spnNumPage->Properties->MinValue )
			spnNumPage->Value = spnNumPage->Properties->MinValue;

		if ( (int)spnNumPage->Value > spnNumPage->Properties->MaxValue )
			spnNumPage->Value = spnNumPage->Properties->MaxValue;

		frxPreviewDoc->PageNo = (int) spnNumPage->Value;
		frxPreviewDoc->Update();
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmListReports::aLoadInfoDoc1Execute(TObject *Sender)
{
	/* Загрузка данных в первый документ */
	/* FrxRprtDoc1 - АКТ технического состояния локомотива */
	TClientDataSet *cds = cdsLoadInfo;
	TDataSource    *ds  = dsLoadInfo;

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT_DOC_PKG.report_1";
		cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput )->AsInteger = pDoc_->NumLR[0];
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		FrxRprtDoc1->Script->Variables["pSer"]        = cds->FieldByName("ser_name")->AsString;
		FrxRprtDoc1->Script->Variables["pNum"]        = cds->FieldByName("nom_loc")->AsString;
		FrxRprtDoc1->Script->Variables["pDepot"]      = cds->FieldByName("loc_prip_name")->AsString;
		FrxRprtDoc1->Script->Variables["pNumTrain"]   = cds->FieldByName("train_num")->AsString;
		FrxRprtDoc1->Script->Variables["pWeight"]     = cds->FieldByName("weight")->AsString;
		FrxRprtDoc1->Script->Variables["pAmountAxis"] = cds->FieldByName("axes")->AsString;

	}
	catch (Exception &e)
	{
		throw Exception ("< ULR-1 > : Ошибка загрузки информации об акте технического состояния локомотива.\n" + e.Message);
	}
	prgsMain->Properties->Max = 1;
	prgsMain->Position = 1;
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::aLoadInfoDoc2Execute(TObject *Sender)
{
	/* Загрузка данных во второй документ */
	/* FrxRprtDoc2 - АКТ передачи локомотива сервисной компании */
	TClientDataSet *cds = cdsLoadInfo;
	TDataSource    *ds  = dsLoadInfo;

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT_DOC_PKG.report_2";
		cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput )->AsInteger = pDoc_->NumLR[0];
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		FrxRprtDoc2->Script->Variables["pSer"]     = cds->FieldByName("ser_name")->AsString;
		FrxRprtDoc2->Script->Variables["pFactNum"] = cds->FieldByName("nom_loc")->AsString;
		FrxRprtDoc2->Script->Variables["pIndxSec"] = cds->FieldByName("in_sec")->AsString;
		FrxRprtDoc2->Script->Variables["pDepot"]   = cds->FieldByName("fail_place_name")->AsString;
	}
	catch (Exception &e)
	{
		throw Exception ("< ULR-2 > : Ошибка загрузки информации об акте передачи локомотива сервисной компании.\n" + e.Message);
	}
	prgsMain->Properties->Max = 1;
	prgsMain->Position = 1;
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::aLoadInfoDoc3Execute(TObject *Sender)
{
	/* Загрузка данных в третий документ */
	/* FrxRprtDoc3 - Техническое заключение */
	TClientDataSet *cds = cdsLoadInfo;
	TDataSource    *ds  = dsLoadInfo;

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT_DOC_PKG.report_3";
		cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput )->AsInteger = pDoc_->NumLR[0];
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		FrxRprtDoc3->Script->Variables["pser_name"]  = cds->FieldByName("ser_name")->AsString;
		FrxRprtDoc3->Script->Variables["pnom_loc"]   = cds->FieldByName("nom_loc")->AsString;
		FrxRprtDoc3->Script->Variables["pfirm_name"] = cds->FieldByName("firm_name")->AsString;
		FrxRprtDoc3->Script->Variables["pbrig_name"] = cds->FieldByName("brig_name")->AsString;

	}
	catch (Exception &e)
	{
		throw Exception ("< ULR-3 > : Ошибка загрузки информации о техническом заключении.\n" + e.Message);
	}
	prgsMain->Properties->Max = 1;
	prgsMain->Position = 1;
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::aLoadInfoDoc4Execute(TObject *Sender)
{
	/* Загрузка данных в четвертый документ */
	/* FrxRprtDoc4 - Технический акт выполненых работ и указанных услуг */
	TClientDataSet *cds = cdsLoadInfo;
	TDataSource    *ds  = dsLoadInfo;

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT_DOC_PKG.report_4";
		cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput )->AsInteger = pDoc_->NumLR[0];
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		FrxRprtDoc4->Script->Variables["pser_name"]  = cds->FieldByName("ser_name")->AsString;
		FrxRprtDoc4->Script->Variables["pnom_loc"]   = cds->FieldByName("nom_loc")->AsString;
		FrxRprtDoc4->Script->Variables["pplace_loc"] = cds->FieldByName("loc_prip_name")->AsString;

	}
	catch (Exception &e)
	{
		throw Exception ("< ULR-4 > : Ошибка загрузки информации  о техническом акте выполненных работ и указанных услуг.\n" + e.Message);
	}
	prgsMain->Properties->Max = 1;
	prgsMain->Position = 1;
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::aLoadInfoDoc5Execute(TObject *Sender)
{
	/* Загрузка данных в пятый документ */
	/* FrxRprtDoc5 - АКТ нарушений режимов эксплуатации */
	TClientDataSet *cds = cdsLoadInfo;
	TDataSource    *ds  = dsLoadInfo;

	prgsMain->Position = 0;
	prgsMain->Properties->Max = pDoc_->Size;

	int index = 0;

	tmpTable->Close();

	tmpTable->Open();
	while (index != pDoc_->Size)
	{
		try
		{

			TDMMain::ClearDataSet(cds);

			cds->CommandText = "SMT_DOC_PKG.report_5";
			cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput )->AsInteger = pDoc_->NumLR[index];
			cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

			TDMMain::OpenDS(cds, "OPEN", "CT", 1);

			tmpTable->Insert();
			tmpTable->FieldByName("sheet_id")->AsString         = cds->FieldByName("sheet_id")->AsString;
			tmpTable->FieldByName("date_create")->AsString      = cds->FieldByName("date_create")->AsString;
			tmpTable->FieldByName("incident_descr_e")->AsString = cds->FieldByName("incident_descr_e")->AsString;
			tmpTable->FieldByName("source_type_name")->AsString = cds->FieldByName("source_type_name")->AsString;
			tmpTable->FieldByName("ser_name")->AsString         = cds->FieldByName("ser_name")->AsString;
			tmpTable->FieldByName("nom_loc")->AsString          = cds->FieldByName("nom_loc")->AsString;
			tmpTable->FieldByName("brig_name")->AsString        = cds->FieldByName("brig_name")->AsString;
			tmpTable->FieldByName("brig_t_nom")->AsString       = cds->FieldByName("brig_t_nom")->AsString;
			tmpTable->FieldByName("brig_depo_name")->AsString   = cds->FieldByName("brig_depo_name")->AsString;
			tmpTable->FieldByName("descr1")->AsString           = cds->FieldByName("descr1")->AsString;
			tmpTable->FieldByName("gp_diag")->AsString          = cds->FieldByName("gp_diag")->AsString;
			tmpTable->FieldByName("fail_place_name")->AsString  = cds->FieldByName("fail_place_name")->AsString;
			tmpTable->FieldByName("loc_prip_name")->AsString    = cds->FieldByName("loc_prip_name")->AsString;
			tmpTable->Next();

		}
		catch (Exception &e)
		{
			throw Exception ("< ULR-5 > : Ошибка загрузки информации об акте нарушений режимов эксплуатации.\n" + e.Message);
		}
		index = index + 1;
		prgsMain->Position = index;
		Update();
	}

	frxDataset->DataSource = tmpData;
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::aLoadInfoDoc6Execute(TObject *Sender)
{
	/* Загрузка данны в 6-ой документ */
	/* FrxRprtDoc6 - Акт разбора нарушений */

	TClientDataSet *cds = cdsLoadInfo;
	TDataSource    *ds  = dsLoadInfo;

    frxDS6->DataSource = ds;

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT_DOC_PKG.akt_razbora_nar_cur";
		cds->Params->CreateParam(ftCursor,   "o_cur",        ptInputOutput);
		cds->Params->CreateParam(ftString,   "p_sheet_id",   ptInput)->AsString = pDoc_->List_Id_Sheet;
		cds->Params->CreateParam(ftInteger,  "o_err_code",   ptInputOutput);
		cds->Params->CreateParam(ftString,   "o_err_msg",    ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< ULR-6 > : Ошибка загрузки информации.\n" + e.Message);
	}

	prgsMain->Properties->Max = 1;
	prgsMain->Position = 1;
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::aLoadInfoDoc7Execute(TObject *Sender)
{
	/* Загрузка данным 7-ого документа */
	/* FrxRprtDoc7 - Техническая карта основных параметров работы локомотива */
	TClientDataSet *cds = cdsLoadInfo;
	TDataSource    *ds  = dsLoadInfo;

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT_DOC_PKG.tex_karta_param_cur";
		cds->Params->CreateParam(ftCursor,  "o_cur",      ptInputOutput);
		cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = pDoc_->NumLR[0];
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		FrxRprtDoc7->Script->Variables["pSerInd"]  = cds->FieldByName("ser_name")->AsString;
		FrxRprtDoc7->Script->Variables["pNom"]     = cds->FieldByName("nom_loc")->AsString;
		FrxRprtDoc7->Script->Variables["pSLD"]     = cds->FieldByName("firm_name_sld")->AsString;
		FrxRprtDoc7->Script->Variables["pDate"]    = cds->FieldByName("date_fail")->AsString;
		FrxRprtDoc7->Script->Variables["pHP"]      = cds->FieldByName("name")->AsString;
		FrxRprtDoc7->Script->Variables["TO3"]     = cds->FieldByName("prob_to3_t_km")->AsString;
		FrxRprtDoc7->Script->Variables["TP1"]     = cds->FieldByName("prob_tr1_t_km")->AsString;
		FrxRprtDoc7->Script->Variables["TP2"]     = cds->FieldByName("prob_tr2_t_km")->AsString;
		FrxRprtDoc7->Script->Variables["TP3"]     = cds->FieldByName("prob_tr3_t_km")->AsString;
		FrxRprtDoc7->Script->Variables["CP"]     = cds->FieldByName("prob_sr_t_km")->AsString;
		FrxRprtDoc7->Script->Variables["KP"]     = cds->FieldByName("prob_kr_t_km")->AsString;
	}
	catch (Exception &e)
	{
		throw Exception ("< ULR-7 > : Ошибка загрузки информации.\n" + e.Message);
	}

	prgsMain->Properties->Max = 1;
	prgsMain->Position = 1;
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::aLoadInfoDoc8Execute(TObject *Sender)
{
	/* Загрузка данным 8-ого документа */
	/* FrxRprtDoc8 - Диагностическая карта на проведение сервисного обслуживания локомотива */
	std::auto_ptr<TClientDataSet> cdsT (new TClientDataSet(NULL));
	std::auto_ptr<TDataSource> dsT (new TDataSource(NULL));


	TClientDataSet *cds = cdsLoadInfo;
	TDataSource    *ds  = dsLoadInfo;

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT_DOC_PKG.diag_karta_DK2_cur";
		cds->Params->CreateParam(ftCursor,  "o_cur",      ptInputOutput);
		cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = pDoc_->NumLR[0];
		cds->Params->CreateParam(ftInteger, "p_user_id",  ptInput)->AsInteger = UserID;
		cds->Params->CreateParam(ftString,  "p_fio",      ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		FrxRprtDoc8->Script->Variables["ser_name"]        = cds->FieldByName("ser_name")->AsString;
		FrxRprtDoc8->Script->Variables["nom_loc"]         = cds->FieldByName("nom_loc")->AsString;
		FrxRprtDoc8->Script->Variables["mnemo"]           = cds->FieldByName("mnemo")->AsString;
		FrxRprtDoc8->Script->Variables["fio"]             = cds->Params->ParamByName("p_fio")->AsString;

		FrxRprtDoc8->Script->Variables["prob_postr_km"]   = cds->FieldByName("prob_postr_km")->AsString;
		FrxRprtDoc8->Script->Variables["prob_kr_km"]      = cds->FieldByName("prob_kr_km")->AsString;
		FrxRprtDoc8->Script->Variables["prob_sr_km"]      = cds->FieldByName("prob_sr_km")->AsString;
		FrxRprtDoc8->Script->Variables["prob_tr3_km"]     = cds->FieldByName("prob_tr3_km")->AsString;
		FrxRprtDoc8->Script->Variables["prob_tr2_km"]     = cds->FieldByName("prob_tr2_km")->AsString;
		FrxRprtDoc8->Script->Variables["prob_tr1_km"]     = cds->FieldByName("prob_tr1_km")->AsString;
		FrxRprtDoc8->Script->Variables["prob_to3_km"]     = cds->FieldByName("prob_to3_km")->AsString;
		FrxRprtDoc8->Script->Variables["firm_name_fil"]   = cds->FieldByName("firm_name_fil")->AsString;
		FrxRprtDoc8->Script->Variables["firm_name_sld"]   = cds->FieldByName("firm_name_sld")->AsString;

		t8_1->Close();
		t8_2->Close();
		t8_3->Close();
		t8_4->Close();

		t8_1->Open();
		t8_2->Open();
		t8_3->Open();
		t8_4->Open();

		cds->First();

		TableInsert(t8_1, "reason_name_full", " ");

		while (!cds->Eof)
		{

			switch (cds->FieldByName("idx1")->AsInteger)
			{
				case 11:{
							InsertT8_1_2_3(t8_1, cds);
							break;
						}
				case 12:{
							InsertT8_1_2_3(t8_2, cds);
							break;
						}
				case 31:{
							InsertT8_1_2_3(t8_3, cds);
							break;
						}
				case 32:{
							InsertT8_1_2_3(t8_3, cds);
							break;
						}
				case 41:{
							InsertT8_4(t8_4, cds);
							break;
						}
				case 42:{
							InsertT8_4(t8_4, cds);
							break;
						}
			}
			cds->Next();
		}

		if (t8_1->RecordCount == 0) TableInsert(t8_1, "reason_name_full", " ");
		if (t8_2->RecordCount == 0) TableInsert(t8_2, "reason_name_full", " ");
		if (t8_3->RecordCount == 0) TableInsert(t8_3, "reason_name_full", " ");
		if (t8_4->RecordCount == 0) TableInsert(t8_4, "reason_name_full", " ");


		frxDS8_1->DataSource = ds_8_1;
		frxDS8_2->DataSource = ds_8_2;
		frxDS8_3->DataSource = ds_8_3;
		frxDS8_4->DataSource = ds_8_4;

	}
	catch (Exception &e)
	{
		throw Exception ("< ULR-8 > : Ошибка загрузки информации.\n" + e.Message);
	}

	prgsMain->Properties->Max = 1;
	prgsMain->Position = 1;
}
//---------------------------------------------------------------------------
void __fastcall TfrmListReports::InsertT8_1_2_3(TFDMemTable* tb, TClientDataSet* Tcds)
{
	tb->Insert();
	tb->FieldByName("date_fail")->AsString        = Tcds->FieldByName("date_fail")->AsString;
	tb->FieldByName("reason_name_full")->AsString = Tcds->FieldByName("reason_name_full")->AsString;
	tb->FieldByName("oborud")->AsString           = Tcds->FieldByName("oborud")->AsString;
	tb->FieldByName("prin_meri")->AsString        = Tcds->FieldByName("prin_meri")->AsString;
	tb->FieldByName("descr_table")->AsString      = Tcds->FieldByName("descr_table")->AsString;
	tb->Next();
}
//---------------------------------------------------------------------------
void __fastcall TfrmListReports::InsertT8_4(TFDMemTable* tb, TClientDataSet* Tcds)
{
	tb->Insert();
	tb->FieldByName("incident_descr_e")->AsString = Tcds->FieldByName("incident_descr_e")->AsString;
	tb->FieldByName("reason_name_full")->AsString = Tcds->FieldByName("reason_name_full")->AsString;
	tb->FieldByName("descr_table")->AsString      = Tcds->FieldByName("descr_table")->AsString;
	tb->Next();
}
//---------------------------------------------------------------------------
void __fastcall TfrmListReports::aLoadOverallReferenceExecute(TObject *Sender)
{
	/* Общая справка */
	TClientDataSet   *cds = cdsLoadInfo;
	TDataSource      *ds  = dsLoadInfo;
    AnsiString tmp;
	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "REPORT_PKG.report_neisprav_loc_cur";
		cds->Params->CreateParam(ftInteger,  "p_kod_ser",     ptInput)->AsInteger = StrToInt(pDoc_->List_Ser_Kod);
		cds->Params->CreateParam(ftInteger,  "p_kod_firm",    ptInput)->AsInteger = StrToInt(pDoc_->List_Firm_Id);
		cds->Params->CreateParam(ftInteger,  "p_depo_id",     ptInput)->AsInteger = StrToInt(pDoc_->List_Depo_Id);
		cds->Params->CreateParam(ftDate,     "p_date_begin",  ptInput)->AsDate    = pDoc_->dStart;
		cds->Params->CreateParam(ftDate,     "p_date_end",    ptInput)->AsDate    = pDoc_->dFinish;
		cds->Params->CreateParam(ftCursor,  "o_cur",         ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		frxDS9->DataSource = ds;
		pDoc_->List_Ser_Nam.Delete(pDoc_->List_Ser_Nam.Length(), 1);
		FrxRprtDoc9->Script->Variables["pFirm"]    = pDoc_->FirmName;
		FrxRprtDoc9->Script->Variables["pbDate"]   = pDoc_->dStart;
		FrxRprtDoc9->Script->Variables["peDate"]   = pDoc_->dFinish;
		FrxRprtDoc9->Script->Variables["pListSer"] = pDoc_->List_Ser_Nam;
	}
	catch (Exception &e)
	{
		throw Exception ("< ULR-10 > : Ошибка загрузки информации.\n" + e.Message);
	}

	prgsMain->Properties->Max = 1;
	prgsMain->Position = 1;
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::aLoadDailyReferenceExecute(TObject *Sender)
{
	/* Ежедневная справка */
	TClientDataSet   *cds = cdsLoadInfo;
	TDataSource      *ds  = dsLoadInfo;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "REPORT_PKG.report_sost_loc_everyday_cur";
		cds->Params->CreateParam(ftString,  "p_kod_ser",   ptInput)->AsString = pDoc_->List_Ser_Kod;
		cds->Params->CreateParam(ftString,  "p_kod_firm",  ptInput)->AsString = pDoc_->List_Firm_Id;
		cds->Params->CreateParam(ftString,  "p_depo_id",   ptInput)->AsString = pDoc_->List_Depo_Id;
		cds->Params->CreateParam(ftCursor,  "o_cur",       ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		pDoc_->List_Ser_Nam.Delete(pDoc_->List_Ser_Nam.Length(), 1);
		FrxRprtDoc10->Script->Variables["pListSer"] = pDoc_->List_Ser_Nam;
		frxDS10->DataSource = ds;
	}
	catch (Exception &e)
	{
		throw Exception ("< ULR-9 > : Ошибка загрузки информации.\n" + e.Message);
	}

	prgsMain->Properties->Max = 1;
	prgsMain->Position = 1;
}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::aLoadInfoDoc11Execute(TObject *Sender)
{
	/* Загрузка в 11-ый документ */
	/* FrxRprtDoc11 - Техническая карта основных параметров работы локомотива (ТК2 (2ТЭ116У) ) */

	TClientDataSet *cds = cdsLoadInfo;
	TDataSource    *ds  = dsLoadInfo;

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT_DOC_PKG.tex_karta_param_TK2_cur";
		cds->Params->CreateParam(ftCursor,  "o_cur",      ptInputOutput);
		cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput )->AsInteger = pDoc_->NumLR[0];

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);


		FrxRprtDoc11->Script->Variables["ser_name"]        = cds->FieldByName("ser_name")->AsString;
		FrxRprtDoc11->Script->Variables["nom_loc"]         = cds->FieldByName("nom_loc")->AsString;
		FrxRprtDoc11->Script->Variables["nom_section"]     = cds->FieldByName("nom_section")->AsString;
		FrxRprtDoc11->Script->Variables["name"]            = cds->FieldByName("name")->AsString;
		FrxRprtDoc11->Script->Variables["prob_to3_t_km"]   = cds->FieldByName("prob_to3_t_km")->AsString;
		FrxRprtDoc11->Script->Variables["prob_tr1_t_km"]   = cds->FieldByName("prob_tr1_t_km")->AsString;
		FrxRprtDoc11->Script->Variables["prob_tr2_t_km"]   = cds->FieldByName("prob_tr2_t_km")->AsString;
		FrxRprtDoc11->Script->Variables["prob_tr3_t_km"]   = cds->FieldByName("prob_tr3_t_km")->AsString;
		FrxRprtDoc11->Script->Variables["prob_postr_t_km"] = cds->FieldByName("prob_postr_t_km")->AsString;

	}
	catch (Exception &e)
	{
		throw Exception ("< ULR-11 > : Ошибка загрузки информации.\n" + e.Message);
	}
	prgsMain->Properties->Max = 1;
	prgsMain->Position = 1;

}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::aLoadInfoDoc12Execute(TObject *Sender)
{
	/*Загрузка в 12-ый документ*/
	/* FrxRprtDoc12 - Письмо "О нарушении режимов эксплуатации" */

	TClientDataSet *cds = cdsLoadInfo;
	TDataSource    *ds  = dsLoadInfo;

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT_DOC_PKG.pismo_nre_cur";
		cds->Params->CreateParam(ftCursor,  "o_cur"         , ptInputOutput);
		cds->Params->CreateParam(ftDate,    "p_date_begin"  , ptInputOutput)->AsDate = pDoc_->dStart;
		cds->Params->CreateParam(ftDate,    "p_date_and"    , ptInputOutput)->AsDate = pDoc_->dFinish;
		cds->Params->CreateParam(ftInteger, "p_sheet_id"    , ptInput)->AsInteger    = pDoc_->NumLR[0];
		cds->Params->CreateParam(ftInteger, "p_user_id"     , ptInput)->AsInteger    = UserID;
		cds->Params->CreateParam(ftString,  "p_fio"         , ptOutput);
		cds->Params->CreateParam(ftString,  "p_user_pred"   , ptOutput);
		cds->Params->CreateParam(ftString,  "p_user_tel"    , ptOutput);
		cds->Params->CreateParam(ftString,  "p_user_mail"   , ptOutput);
		cds->Params->CreateParam(ftString,  "p_count_nre"   , ptOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		cds->First();
		while (!cds->Eof)
		{
			cds->Edit();
			cds->FieldByName("ser_name")->AsString 			= Trim(cds->FieldByName("ser_name")->AsString);
			cds->FieldByName("nom_loc")->AsString 			= Trim(cds->FieldByName("nom_loc")->AsString);
			cds->FieldByName("depo_prip")->AsString 		= Trim(cds->FieldByName("depo_prip")->AsString);
			cds->FieldByName("firm_name_fil")->AsString 	= Trim(cds->FieldByName("firm_name_fil")->AsString);
			cds->FieldByName("firm_name_sld")->AsString 	= Trim(cds->FieldByName("firm_name_sld")->AsString);
			cds->FieldByName("adress_sld")->AsString 		= Trim(cds->FieldByName("adress_sld")->AsString);
			cds->FieldByName("date_fail")->AsString 		= Trim(cds->FieldByName("date_fail")->AsString);
			cds->FieldByName("incident_descr_e")->AsString 	= Trim(cds->FieldByName("incident_descr_e")->AsString);
			cds->FieldByName("reason_name_full")->AsString 	= Trim(cds->FieldByName("reason_name_full")->AsString);
			cds->FieldByName("detail_name")->AsString 		= Trim(cds->FieldByName("detail_name")->AsString);
			cds->FieldByName("train_num")->AsString 		= Trim(cds->FieldByName("train_num")->AsString);
			cds->FieldByName("weight")->AsString 			= Trim(cds->FieldByName("weight")->AsString);
			cds->FieldByName("brig_name")->AsString 		= Trim(cds->FieldByName("brig_name")->AsString);
			cds->FieldByName("brig_t_nom")->AsString 		= Trim(cds->FieldByName("brig_t_nom")->AsString);
			cds->FieldByName("firm_name")->AsString 		= Trim(cds->FieldByName("firm_name")->AsString);
			cds->Next();
		}

		frxDS12->DataSource = ds;

		FrxRprtDoc12->Script->Variables["p_fio"]          =  cds->Params->ParamByName("p_fio")->AsString;
		FrxRprtDoc12->Script->Variables["p_user_pred"]    =  cds->Params->ParamByName("p_user_pred")->AsString;
		FrxRprtDoc12->Script->Variables["p_user_tel"]     =  cds->Params->ParamByName("p_user_tel")->AsString;
		FrxRprtDoc12->Script->Variables["p_user_mail"]    =  cds->Params->ParamByName("p_user_mail")->AsString;
		FrxRprtDoc12->Script->Variables["p_count_nre"]    =  cds->Params->ParamByName("p_count_nre")->AsString;
		FrxRprtDoc12->Script->Variables["firm_name_fil"]  =  cds->FieldByName("firm_name_fil")->AsString;
		FrxRprtDoc12->Script->Variables["p_date_begin"]   =  cds->Params->ParamByName("p_date_begin")->AsString;
		FrxRprtDoc12->Script->Variables["p_date_and"]     =  cds->Params->ParamByName("p_date_and")->AsString;
		FrxRprtDoc12->Script->Variables["adress_sld"]     =  cds->FieldByName("adress_sld")->AsString;
		FrxRprtDoc12->Script->Variables["firm_name_sld"]  =  cds->FieldByName("firm_name_sld")->AsString;
		FrxRprtDoc12->Script->Variables["firm_name"]      =  cds->FieldByName("firm_name")->AsString;
		FrxRprtDoc12->Script->Variables["depo_prip"]      =  cds->FieldByName("depo_prip")->AsString;

	}
	catch (Exception &e)
	{
		throw Exception ("< ULR-11 > : Ошибка загрузки информации.\n" + e.Message);
	}
	prgsMain->Properties->Max = 1;
	prgsMain->Position = 1;

}
//---------------------------------------------------------------------------

void __fastcall TfrmListReports::aLoadInfoDoc13Execute(TObject *Sender)
{
	/*Загрузка в 13-ый документ*/
	/* FrxRprtDoc13 - Диагностическая карта на проведение сервисного обслуживания локомотива (ДК1 (ТЭМ2К)) */
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	TClientDataSet *cds = cdsLoadInfo;
	TDataSource    *ds  = dsLoadInfo;

	try
	{
		dsa->CommandText = "SMT_DOC_PKG.diag_karta_SO_DK1_type_o_cur";
		dsa->Params->CreateParam(ftCursor,  "o_cur_type",  ptInputOutput);
		dsa->Params->CreateParam(ftInteger, "p_sheet_id",  ptInput)->AsInteger = pDoc_->NumLR[0];
		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< ULR-13 > : Ошибка загрузки информации.\n" + e.Message);
	}

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT_DOC_PKG.diag_karta_SO_DK1_cur";
		cds->Params->CreateParam(ftCursor,  "o_cur",       ptInputOutput);
		cds->Params->CreateParam(ftInteger, "p_sheet_id",  ptInput)->AsInteger = pDoc_->NumLR[0];
		cds->Params->CreateParam(ftInteger, "p_user_id",   ptInput)->AsInteger = UserID;
		cds->Params->CreateParam(ftString,  "p_fio",       ptOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		FrxRprtDoc13->Script->Variables["ser_name"]      = cds->FieldByName("ser_name")->AsString;
		FrxRprtDoc13->Script->Variables["name"]          = cds->FieldByName("name")->AsString;
		FrxRprtDoc13->Script->Variables["nom_object"]    = cds->FieldByName("nom_object")->AsString;
		FrxRprtDoc13->Script->Variables["prob_postr_km"] = cds->FieldByName("prob_postr_km")->AsString;
		FrxRprtDoc13->Script->Variables["prob_kr_km"]    = cds->FieldByName("prob_kr_km")->AsString;
		FrxRprtDoc13->Script->Variables["prob_sr_km"]    = cds->FieldByName("prob_sr_km")->AsString;
		FrxRprtDoc13->Script->Variables["prob_tr3_km"]   = cds->FieldByName("prob_tr3_km")->AsString;
		FrxRprtDoc13->Script->Variables["prob_tr2_km"]   = cds->FieldByName("prob_tr2_km")->AsString;
		FrxRprtDoc13->Script->Variables["prob_tr1_km"]   = cds->FieldByName("prob_tr1_km")->AsString;
		FrxRprtDoc13->Script->Variables["prob_to3_km"]   = cds->FieldByName("prob_to3_km")->AsString;
		FrxRprtDoc13->Script->Variables["p_fio"]         = cds->Params->ParamByName("p_fio")->AsString;
	}
	catch (Exception &e)
	{
		throw Exception ("< ULR-13 > : Ошибка загрузки информации.\n" + e.Message);
	}

	t13_1->Close();
	t13_1->Open();
	t13_2->Close();
	t13_2->Open();
	t13_3->Close();
	t13_3->Open();
	t13_1->First();
	t13_2->First();
	t13_3->First();
	cds->First();
	dsa->First();

	if (cds->RecordCount == 0)
	{
		int Index = 0;
		while (Index != LineMax)
		{
			TableInsert(t13_1, "class_name",   " ");
			TableInsert(t13_2, "obstoyat_inc", " ");
			TableInsert(t13_3, "oborud",       " ");
			Index++;
		}
	}
	else
	{
		while (!dsa->Eof)
		{
			TableInsert(t13_1, "class_name", dsa->FieldByName("class_name")->AsString);
			dsa->Next();
		}

		while (!cds->Eof)
		{
			switch (cds->FieldByName("idx")->AsInteger)
			{
				case 1:	{
							t13_2->Insert();
							t13_2->FieldByName("obstoyat_inc")->AsString  =  cds->FieldByName("obstoyat_inc")->AsString;
							t13_2->FieldByName("date_fail")->AsString     =  cds->FieldByName("date_fail")->AsString;
							t13_2->Next();
							break;
						}
				case 2: {
							TableInsert(t13_3, "oborud", cds->FieldByName("oborud")->AsString);
							break;
						}
			}
			cds->Next();
		}
	}
	if (t13_2->RecordCount == 0)
	{
		int Index = 0;
		while (Index != LineMax)
		{
			TableInsert(t13_2, "obstoyat_inc", " ");
			Index++;
		}
	}
	if (t13_3->RecordCount == 0)
	{
		int Index = 0;
		while (Index != LineMax)
		{
			TableInsert(t13_3, "oborud", " ");
			Index++;
		}
	}

	frxDS13_1->DataSource = ds13_1;
	frxDS13_2->DataSource = ds13_2;
	frxDS13_3->DataSource = ds13_3;

	prgsMain->Properties->Max = 1;
	prgsMain->Position = 1;
}
//---------------------------------------------------------------------------
void __fastcall TfrmListReports::TableInsert(TFDMemTable* tb, AnsiString Param, AnsiString Value)
{
	tb->Insert();
	tb->FieldByName(Param)->AsString = Value;
	tb->Next();
}
//---------------------------------------------------------------------------
