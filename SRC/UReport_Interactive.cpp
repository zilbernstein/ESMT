#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include <memory>
#include "uBinFunction.h"
#include "UDMMain.h"
#include "config.h"
#include "public.h"
#include "Utils_JK.h"
#include "UReport_Interactive_Detail.h"
#include "UReport_Interactive.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxDateUtils"
#pragma link "cxDrawTextUtils"
#pragma link "cxNavigator"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "dxCore"
#pragma link "dxPScxEditorProducers"
#pragma link "dxPScxExtEditorProducers"
#pragma link "dxPScxGridLayoutViewLnk"
#pragma link "dxPScxPageControlProducer"
#pragma link "dxPSPDFExport"
#pragma link "dxPSPDFExportCore"
#pragma link "dxPSPrVwAdv"
#pragma link "dxPSPrVwRibbon"
#pragma link "dxPSPrVwStd"
#pragma link "dxSkinsdxBarPainter"
#pragma link "dxSkinsdxNavBarPainter"
#pragma link "dxSkinsdxRibbonPainter"
#pragma resource "*.dfm"
TfrmReport_Interactive *frmReport_Interactive;
//---------------------------------------------------------------------------
__fastcall TfrmReport_Interactive::TfrmReport_Interactive(TComponent* Owner)
	: TForm(Owner)
{
    PageControl->HideTabs = true;
    PageControl->ActivePage = tsInteractiveReport;
	switch ( cfg.ini->ReadInteger("INTERACTIVE_REPORT_SETTINGS", "PeriodType", PT_CURRENT_MONTH) )
    {
        case PT_CURRENT_DAY:
            btnCurrentDay->Down = true;
            aCurrentDay->Execute();
        	break;
        case PT_CURRENT_MONTH:
            btnCurrentMonth->Down = true;
            aCurrentMonth->Execute();
        	break;
        case PT_PERIOD:
        	btnPeriod->Down = true;
        	aPeriod->Execute();
    		deDateBegin->Date = cfg.ini->ReadDate("INTERACTIVE_REPORT_SETTINGS", "DateBegin", Date() - 10);
    		deDateFinish->Date = cfg.ini->ReadDate("INTERACTIVE_REPORT_SETTINGS", "DateFinish", Date());
        	break;
        case PT_CURRENT_YEAR:
        	btnCurrentYear->Down = true;
        	aCurrentYear->Execute();
        	break;

    }
	aLoad_Firm_Tree->Execute();
    pcReport->ActivePageIndex = cfg.ini->ReadInteger("INTERACTIVE_REPORT_SETTINGS", "ActivePageIndex", tsDepo_Eq->PageIndex);
	pcFilial_Eq->ActivePageIndex = 0;
	TDMMain::LogEvenEnterExit("Вход. Интерактивные отчеты.");
}
//---------------------------------------------------------------------------
void __fastcall TfrmReport_Interactive::FormClose(TObject *Sender, TCloseAction &Action)
{
	TDMMain::LogEvenEnterExit("Выход. Интерактивные отчеты.");

	Action = caFree;
}
//---------------------------------------------------------------------------

Shortint __fastcall TfrmReport_Interactive::Get_Selected_Period_Type()
{
	// Получить значение выбранного типа отчетного периода
    Shortint vResult = -1;
    try
    {
    	if ( btnCurrentDay->Down == true )
        	vResult = PT_CURRENT_DAY;
        else
        	if ( btnCurrentMonth->Down == true )
            	vResult = PT_CURRENT_MONTH;
            else
            	if ( btnPeriod->Down == true )
                	vResult = PT_PERIOD;
    	return vResult;
    }
    catch ( Exception &e )
    {
        throw Exception("RPT-01: Тип периода не определен [" + IntToStr(vResult) + "]\n\nСрочно обратитесь к разработчикам\n\n" + e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::aLoad_Firm_TreeExecute(TObject *Sender)
{
	/*Загрузить дерево предприятий*/

    TClientDataSet *cds = cdsFirmTree;
    TDataSource *ds = dsFirmTree;
   // TcxDBTreeList *tl = tlFirmTree;

    TDMMain::ClearDataSet(cds);
    cds->CommandText = "SMT.SMT_REPORT_PKG.firm_tree_cur";
    cds->Params->CreateParam(ftInteger, "p_access", ptInput )->AsInteger = DepotID;
    cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

	try
	{
        //tl->DataController->DataSource = 0;
        cbFirmTree_->Properties->ListSource = 0;
        TDMMain::OpenDS(cds, "OPEN", "CT", 1);
        //tl->DataController->DataSource = ds;
		cbFirmTree_->Properties->ListSource = ds;
        cbFirmTree_->EditValue = DepotID;

        //cds->Locate(tl->DataController->KeyField, DepotID, TLocateOptions());

    }
	catch ( Exception &e )
	{
		throw Exception ("<TE-50>: Ошибка загрузки дерева предприятий\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::tlFirmTreeDblClick(TObject *Sender)
{
	//cbFirmTree->DroppedDown = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::aCurrentDayExecute(TObject *Sender)
{
    deDateBegin->Date = Date() - 1;
    deDateBegin->Date = Date();

    deDateBegin->Enabled = false;
    deDateFinish->Enabled = deDateBegin->Enabled;

    cfg.ini->WriteInteger("INTERACTIVE_REPORT_SETTINGS", "PeriodType", PT_CURRENT_DAY);

    vPeriodType = PT_CURRENT_DAY;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::aCurrentMonthExecute(TObject *Sender)
{
	Word Year, Month, Day;
    DecodeDate(Date(), Year, Month, Day);

    deDateBegin->Date = EncodeDate(Year, Month, 1);
    deDateFinish->Date = Date();

    deDateBegin->Enabled = false;
    deDateFinish->Enabled = deDateBegin->Enabled;

    cfg.ini->WriteInteger("INTERACTIVE_REPORT_SETTINGS", "PeriodType", PT_CURRENT_MONTH);

	vPeriodType = PT_CURRENT_MONTH;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::aCurrentYearExecute(TObject *Sender)
{
	Word Year, Month, Day;
    DecodeDate(Date(), Year, Month, Day);

    deDateBegin->Date = EncodeDate(Year, 1, 1);
    deDateFinish->Date = Date();

    deDateBegin->Enabled = false;
    deDateFinish->Enabled = deDateBegin->Enabled;

    cfg.ini->WriteInteger("INTERACTIVE_REPORT_SETTINGS", "PeriodType", PT_CURRENT_YEAR);

    vPeriodType = PT_CURRENT_YEAR;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::aPeriodExecute(TObject *Sender)
{
    deDateBegin->Enabled = true;
    deDateFinish->Enabled = deDateBegin->Enabled;

    cfg.ini->WriteInteger("INTERACTIVE_REPORT_SETTINGS", "PeriodType", PT_PERIOD);

    vPeriodType = PT_PERIOD;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::deDateBeginPropertiesChange(TObject *Sender)
{
	cfg.ini->WriteDate("INTERACTIVE_REPORT_SETTINGS", "DateBegin", deDateBegin->Date);
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::deDateFinishPropertiesChange(TObject *Sender)
{
	cfg.ini->WriteDate("INTERACTIVE_REPORT_SETTINGS", "DateFinish", deDateFinish->Date);
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::aRefreshExecute(TObject *Sender)
{
	/* Обновить: Общая кнопка */

    deDateBegin->PostEditValue();
    if ( pcReport->ActivePage == tsDepo_Eq )
    {
        if ( pcFilial_Eq->ActivePage == tsFilial_Eq_Graph )
        {
    		aRefresh_Filial_Eq_Graph->Execute();
            aExportXLS->Enabled = false;
        }

        if ( pcFilial_Eq->ActivePage == tsFilial_Eq_Table )
        {
        	aRefresh_Depo_Eq->Execute();
            aExportXLS->Enabled = ( cdsDepo_Eq->Active == true && cdsDepo_Eq->RecordCount > 0 );
        }

        if ( pcFilial_Eq->ActivePage == tsFilial_Eq_Graph_DrillDown )
        {
        	aRefresh_Filial_Eq_Graph_->Execute();
            aExportXLS->Enabled = ( cdsDepo_Eq->Active == true && cdsDepo_Eq->RecordCount > 0 );
        }

    }

    if ( pcReport->ActivePage == tsNR_Dynamic )
    {
        aRefresh_NR_Dynamic->Execute();
        aExportXLS->Enabled = ( cdsNR_Dynamic->Active == true && cdsNR_Dynamic > 0 );
    }

    if ( pcReport->ActivePage == tsFilial_Reason )
    {
        if ( pcFilial_Reason->ActivePage == tsFilial_Reason_Graph )
        	aRefresh_Filial_Reason_Graph->Execute();
        else
        	aRefresh_Filial_Reason_Table->Execute();

        aExportXLS->Enabled = ( cds_Reason_Graph->Active == true && cds_Reason_Graph > 0 );
    }

    if ( pcReport->ActivePage == tsFilial_Seria )
    {
        if ( pcFilial_Seria->ActivePage == tsSeria_Graph )
        	aRefresh_Seria_Graph->Execute();
        //else
        //	aRefresh_Filial_Reason_Table->Execute();

        aExportXLS->Enabled = false;
    }

    if ( pcReport->ActivePage == tsFilial_State )
    {
        if ( pcFilial_State->ActivePage == tsState_Graph )
        	aRefresh_State_Graph->Execute();

        aExportXLS->Enabled = false;
    }

    if ( pcReport->ActivePage == tsFilial_Source )
    {
        if ( pcFilial_Source->ActivePage == tsSource_Graph )
        	aRefresh_Source_Graph->Execute();

        aExportXLS->Enabled = false;
    }
    /*int lvl = grdReport->ActiveLevel->Index;
	if ( lvl == lvl_Filial_Eq->Index )
    	aRefresh_Filial_Eq->Execute();
    */
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::aRefresh_Filial_EqExecute(TObject *Sender)
{
	/* Обновить: Филиалы-Оборудование */
    TClientDataSet	*cds = cdsFilial_Eq;
    TDataSource *ds = dsFilial_Eq;
    TcxGridDBBandedTableView *btv = btv_Filial_Eq;

    try
    {
    	btv->DataController->DataSource = 0;
        TDMMain::ClearDataSet(cds);
        cds->CommandText = "SMT.SMT_REPORT_PKG.filial_eq_cur";
        cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime = deDateBegin->Date;
        cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime = deDateFinish->Date;
        cds->Params->CreateParam(ftString, "p_status", ptInput)->AsString = "";
        cds->Params->CreateParam(ftInteger, "p_access", ptInput)->AsInteger	= (int)cbFirmTree_->EditValue;//cdsFirmTree->FieldByName("kod_firm")->AsInteger;
        cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        btv->DataController->DataSource = ds;
        btv->ViewData->Expand(true);
    }
    catch ( Exception &e )
    {
    	throw Exception("RI-100: Ошибка обновления данных\n" + e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btv_Filial_EqColumn3GetDisplayText(TcxCustomGridTableItem *Sender,
          TcxCustomGridRecord *ARecord, UnicodeString &AText)

{
	if ( AText == "0" ) AText = "";
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::aShowDetail_Filial_EqExecute(TObject *Sender)
{
	TcxGridDBBandedTableView *v;// = btv_Filial_Eq;
	AnsiString BandCaption = "";
	AnsiString Str4FileName = "";
    strctRID r;
    std::auto_ptr<TfrmReport_Interactive_Detail> det_frm ( new TfrmReport_Interactive_Detail(this) );

    if ( pcReport->ActivePage == tsFilial_Eq )
    	v = btv_Filial_Eq;
    else
    	if ( pcReport->ActivePage == tsDepo_Eq )
    		v = btv_Depo_Eq;

	 if	(	   v->DataController->DataSource != NULL
			&& v->DataController->DataSource->DataSet->Active
			&& v->DataController->DataSource->DataSet->RecordCount > 0
			&& !v->Controller->FocusedRow->Expandable
			&& v->Controller->FocusedColumn->Tag >= -1
			&& !v->Controller->FocusedRow->Values[v->Controller->FocusedColumn->Index].IsNull()
			&& v->Controller->FocusedRow->Values[v->Controller->FocusedColumn->Index] > 0
     	)
	 {
            r.date_begin = deDateBegin->Date;
            r.date_finish = deDateFinish->Date;
            r.kod_firm_service = v->DataController->DataSet->FieldByName("kod_firm_service")->AsInteger;
            r.system_id = v->Controller->FocusedColumn->Tag;
            r.kod_tjaga = v->DataController->DataSet->FieldByName("kod_tjaga")->AsInteger;

				BandCaption = ((TcxGridDBBandedColumn*)v->Controller->FocusedColumn)->Position->Band->Caption;
				Str4FileName = ((TcxGridDBBandedColumn*)v->Controller->FocusedColumn)->AlternateCaption;
            r.filename = BandCaption + " - " + ((TcxGridDBBandedColumn*)v->Controller->FocusedColumn)->Caption;

				if ( !BandCaption.IsEmpty() )
					BandCaption = BandCaption + ": ";

				//det_frm->btvReportDetail->Bands->Items[0]->Caption = BandCaption + v->Controller->FocusedColumn->Caption;
                det_frm->Caption = BandCaption + v->Controller->FocusedColumn->Caption;

                det_frm->Show(&r);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::aExportXLSExecute(TObject *Sender)
{
    TcxGrid *g = NULL;

    // Депо-Оборудование
    if ( pcReport->ActivePage == tsDepo_Eq )
    {
    	if ( pcFilial_Eq->ActivePage == tsFilial_Eq_Graph )
        	g = grdEq_Graph;
        else
        	g = grd_Depo_Eq;
    }

    // Динамика НР
    if ( pcReport->ActivePage == tsNR_Dynamic )
    {
        g = grdNR_Dynamic;
    }

    // Причины
    if ( pcReport->ActivePage == tsFilial_Reason )
    {
        if ( pcFilial_Reason->ActivePage == tsFilial_Reason_Graph )
        	g = grd_Reason;
        else
        	g = grd_Reason_Table;
    }

    // Серии
    if ( pcReport->ActivePage == tsFilial_Seria )
    {
        if ( pcFilial_Seria->ActivePage == tsSeria_Graph )
        	g = grd_Seria;
        else
        	g = grd_Seria_Table;
    }

    // Статусы
    if ( pcReport->ActivePage == tsFilial_State )
    {
        if ( pcFilial_State->ActivePage == tsState_Graph )
        	g = grd_State;
    }

    // Типы источников информации
    if ( pcReport->ActivePage == tsFilial_Source )
    {
        if ( pcFilial_Source->ActivePage == tsSource_Graph )
        	g = grd_SourceType;
    }

	SaveDialog1->FileName = g->ActiveLevel->Caption;

    if ( g != NULL && SaveDialog1->Execute() )
    {
    	ExportGridToExcel(SaveDialog1->FileName, g, true, true, true, "xls");
    	ShellExecute(Application->Handle, NULL, AnsiString(SaveDialog1->FileName).c_str(), NULL, NULL, SW_SHOW);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btv_Filial_EqColumn3GetDataText(TcxCustomGridTableItem *Sender,
          int ARecordIndex, UnicodeString &AText)
{
	if ( AText == "0" ) AText = "";
}
//---------------------------------------------------------------------------


void __fastcall TfrmReport_Interactive::aRefresh_Depo_EqExecute(TObject *Sender)
{
	/* Обновить: Депо-Оборудование */
    TClientDataSet	*cds = cdsDepo_Eq;
    TDataSource *ds = dsDepo_Eq;
    TcxGridDBBandedTableView *btv = btv_Depo_Eq;

    try
    {
    	btv->DataController->DataSource = 0;
        TDMMain::ClearDataSet(cds);
        cds->CommandText = "SMT.SMT_REPORT_PKG.tche_eq_cur";
        cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime = deDateBegin->Date;
        cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime = deDateFinish->Date;
        cds->Params->CreateParam(ftString, "p_status", ptInput)->AsString = "";
        cds->Params->CreateParam(ftInteger, "p_access", ptInput)->AsInteger	= (int)cbFirmTree_->EditValue;//cdsFirmTree->FieldByName("kod_firm")->AsInteger;
        cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        btv->DataController->DataSource = ds;
        btv->ViewData->Expand(true);
    }
    catch ( Exception &e )
    {
    	throw Exception("RI-105: Ошибка обновления данных\n" + e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::clmnDepoEq_TjagaCustomDrawCell(TcxCustomGridTableView *Sender,
          TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
          bool &ADone)
{
	ACanvas->Brush->Color = clWindow;
    ACanvas->Font->Color = clBlack;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btv_Depo_EqCustomDrawCell(TcxCustomGridTableView *Sender,
          TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
          bool &ADone)
{
    if	( 	(int) AViewInfo->GridRecord->Values[clmnDepoEq_Gid->Index] == 1 )
    	ACanvas->Brush->Color = DMMain->stlBackgroundLightGreen->Color;
    if	( 	(int) AViewInfo->GridRecord->Values[clmnDepoEq_Gid->Index] == 3 )
    	ACanvas->Brush->Color = DMMain->stlBackgroundLight->Color;
    if	( 	(int) AViewInfo->GridRecord->Values[clmnDepoEq_Gid->Index] == 7 )
    	ACanvas->Brush->Color = DMMain->stlBackgroundLightBlue->Color;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::aRefresh_NR_DynamicExecute(TObject *Sender)
{
	/* Обновить: Динамика постановок в НР (= автоматические из АСУТ) */
    TClientDataSet	*cds = cdsNR_Dynamic;
    TDataSource *ds = dsNR_Dynamic;
    TcxGridDBChartView *btv = btv_NR_Dynamic_Chart;
    AnsiString vTitle = "";

    try
    {
    	btv->DataController->DataSource = 0;
        TDMMain::ClearDataSet(cds);
        cds->CommandText = "SMT.SMT_REPORT_PKG.nr_auto_tjaga_cur";
        cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime = deDateBegin->Date;
        cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime = deDateFinish->Date;
        cds->Params->CreateParam(ftInteger, "p_access", ptInput)->AsInteger	= (int)cbFirmTree_->EditValue;//cdsFirmTree->FieldByName("kod_firm")->AsInteger;
        cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        btv->DataController->DataSource = ds;
        vTitle = "Динамика постановок в неплановый ремонт за ";
        switch ( vPeriodType )
        {
            case PT_CURRENT_DAY:
            	vTitle = vTitle + "текущие сутки [" + FormatDateTime("dd.mm.yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_CURRENT_MONTH:
            	vTitle = vTitle + "текущий месяц [" + FormatDateTime("mmmm yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_CURRENT_YEAR:
            	vTitle = vTitle + "текущий год [" + FormatDateTime("yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_PERIOD:
            	vTitle = vTitle + "период [" + FormatDateTime("dd.mm.yyyy", deDateBegin->Date) + " - " + FormatDateTime("dd.mm.yyyy", deDateFinish->Date) + "]";
            	break;
        }

        btv->Title->Text = vTitle;
    }
    catch ( Exception &e )
    {
    	throw Exception("RI-106: Ошибка обновления данных\n" + e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btv_NR_Dynamic_ChartValueClick(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, bool &AHandled)
{
    if ( ASeries->Tag == 0 )
    	return;


	TClientDataSet *cds = cdsNR_Dynamic;
    strctRID r;
    AnsiString BandCaption = "";
	//AnsiString Str4FileName = "";
    std::auto_ptr<TfrmReport_Interactive_Detail> det_frm ( new TfrmReport_Interactive_Detail(this) );

    r.detail_type = DT_NR_AUTO;

    // чтоб не вылезать за края отчетного периода (при подборке алендарных недель и т.д.), чуть обкручиваем
    r.date_begin = GetDateTimeFromValue(ASeries->GridView->DataGroups[btv_NR_Dynamic_ChartDataGroup2->Index]->Values[AValueIndex]);
    if ( r.date_begin < deDateBegin->Date )
    	r.date_begin = deDateBegin->Date;
    r.date_finish = GetDateTimeFromValue(ASeries->GridView->DataGroups[btv_NR_Dynamic_ChartDataGroup3->Index]->Values[AValueIndex]);

    if ( r.date_finish > deDateFinish->Date )
    	r.date_finish = deDateFinish->Date;

    r.kod_firm_service = (int)cbFirmTree_->EditValue;
    r.kod_tjaga = ASeries->Tag;

    BandCaption = "Динамика постановок в НР";
    //Str4FileName = BandCaption;
    r.filename = "Динамика_НР_" + ASeries->DisplayText;

    if ( !BandCaption.IsEmpty() )
        BandCaption = BandCaption + ": " + ASeries->DisplayText;

    det_frm->Caption = BandCaption;

    det_frm->Show(&r);
}
//---------------------------------------------------------------------------


void __fastcall TfrmReport_Interactive::btv_NR_Dynamic_Series_Avg_TeploCustomDrawValue(TcxGridChartSeries *Sender,
          TcxCanvas *ACanvas, TcxGridChartDiagramValueViewInfo *AViewInfo,
          bool &ADone)
{
	ACanvas->Font->Size = 10;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::aRefresh_Filial_Reason_GraphExecute(TObject *Sender)
{
	// Обновить: диаграмма по причинам

	TClientDataSet	*cds = cds_Reason_Graph;
    TDataSource *ds = ds_Reason_Graph;
    TcxGridDBChartView *btv = btv_Reason;
    AnsiString vTitle = "";

    try
    {
    	btv_T_Reason->DataController->DataSource = 0;
        btv_E_Reason->DataController->DataSource = 0;
        btv_Reason->DataController->DataSource = 0;

        TDMMain::ClearDataSet(cds);
        cds->CommandText = "SMT.SMT_REPORT_PKG.reason_graph_cur_v1";
        cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime = deDateBegin->Date;
        cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime = deDateFinish->Date;
        cds->Params->CreateParam(ftInteger, "p_access", ptInput)->AsInteger	= (int)cbFirmTree_->EditValue;//cdsFirmTree->FieldByName("kod_firm")->AsInteger;
        cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        try
        {
            cds_Reason_Graph_E->Data = cds_Reason_Graph->Data;
            cds_Reason_Graph_E->Filter = "kod_tjaga = 2";
            cds_Reason_Graph_E->Filtered = true;
            btv_E_Reason->DataController->DataSource = ds_Reason_Graph_E;
        }
        catch ( Exception &e )
        {
            throw Exception ("<IR-71>: Электровозы: Назначение датасета:\n" + e.Message);
        }

        try
        {
            cds_Reason_Graph_T->Data = cds_Reason_Graph->Data;
            cds_Reason_Graph_T->Filter = "kod_tjaga = 1";
            cds_Reason_Graph_T->Filtered = true;
            btv_T_Reason->DataController->DataSource = ds_Reason_Graph_T;
        }
        catch ( Exception &e )
        {
            throw Exception ("<IR-72>: Тепловозы: Назначение датасета:\n" + e.Message);
        }

        try
        {
            cds_Reason_Graph->Filter = "kod_tjaga = 0";
            cds_Reason_Graph->Filtered = true;
            btv_Reason->DataController->DataSource = ds_Reason_Graph;
        }
        catch ( Exception &e )
        {
            throw Exception ("<IR-73>: Все локомотивы: Назначение датасета:\n" + e.Message);
        }

        vTitle = "Распределение Инцидентов по причинам за ";
        switch ( vPeriodType )
        {
            case PT_CURRENT_DAY:
            	vTitle = vTitle + "текущие сутки [" + FormatDateTime("dd.mm.yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_CURRENT_MONTH:
            	vTitle = vTitle + "текущий месяц [" + FormatDateTime("mmmm yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_CURRENT_YEAR:
            	vTitle = vTitle + "текущий год [" + FormatDateTime("yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_PERIOD:
            	vTitle = vTitle + "период [" + FormatDateTime("dd.mm.yyyy", deDateBegin->Date) + " - " + FormatDateTime("dd.mm.yyyy", deDateFinish->Date) + "]";
            	break;
        }

        lblReason_Graph->Caption = vTitle;
    }
    catch ( Exception &e )
    {
        TDMMain::ShowAppException(AET_EXCEPTION, "Причины: Диаграмма: Ошибка загрузки данных", e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::Refresh_Filial_Reason_Graph(int p_tjaga)
{
	// Обновить: диаграмма по причинам

    TClientDataSet	*cds = cds_Reason_Graph;
    TDataSource *ds = ds_Reason_Graph;
    TcxGridDBChartView *btv = btv_Reason;
    AnsiString vTitle = "";

    switch ( p_tjaga )
    {
        case 1:
        	cds = cds_T_Reason_Graph;
            ds = ds_T_Reason_Graph;
            btv = btv_T_Reason;
        	break;
        case 2:
        	cds = cds_E_Reason_Graph;
            ds = ds_E_Reason_Graph;
            btv = btv_E_Reason;
        	break;
        default:
        	cds = cds_Reason_Graph;
            ds = ds_Reason_Graph;
            btv = btv_Reason;
        	break;
    }

    try
    {
    	btv->DataController->DataSource = 0;
        TDMMain::ClearDataSet(cds);
        cds->CommandText = "SMT.SMT_REPORT_PKG.reason_graph_cur_v1";
        cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime = deDateBegin->Date;
        cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime = deDateFinish->Date;
        //cds->Params->CreateParam(ftInteger, "p_tjaga", ptInput)->AsInteger = p_tjaga;
        cds->Params->CreateParam(ftInteger, "p_access", ptInput)->AsInteger	= (int)cbFirmTree_->EditValue;//cdsFirmTree->FieldByName("kod_firm")->AsInteger;
        cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        btv->DataController->DataSource = ds;
        vTitle = "Распределение Инцидентов по причинам за ";
        switch ( vPeriodType )
        {
            case PT_CURRENT_DAY:
            	vTitle = vTitle + "текущие сутки [" + FormatDateTime("dd.mm.yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_CURRENT_MONTH:
            	vTitle = vTitle + "текущий месяц [" + FormatDateTime("mmmm yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_CURRENT_YEAR:
            	vTitle = vTitle + "текущий год [" + FormatDateTime("yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_PERIOD:
            	vTitle = vTitle + "период [" + FormatDateTime("dd.mm.yyyy", deDateBegin->Date) + " - " + FormatDateTime("dd.mm.yyyy", deDateFinish->Date) + "]";
            	break;
        }

        lblReason_Graph->Caption = vTitle;
    }
    catch ( Exception &e )
    {
        TDMMain::ShowAppException(AET_EXCEPTION, "Причины: Диаграмма: Ошибка загрузки данных", e.Message);
    	throw Exception("RI-107: Ошибка обновления данных\n" + e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btvseries_T_ReasonCustomDrawValue(TcxGridChartSeries *Sender,
          TcxCanvas *ACanvas, TcxGridChartDiagramValueViewInfo *AViewInfo,
          bool &ADone)
{
	if 	( (int)AViewInfo->Series->GridView->DataGroups[btvdg_E_Reason_pers_cumulative->Index]->Values[AViewInfo->ValueIndex] < 90
        || (int)AViewInfo->Series->GridView->DataGroups[btvdg_E_Reason_pers_of_total->Index]->Values[AViewInfo->ValueIndex] > 80
    	)
    	ACanvas->Brush->Color = clRed;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btv_T_ReasonGetValueHint(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, UnicodeString &AHint)

{
		AHint = AHint +
            	"\n\nНакопленная сумма: " + VarToStr(ASeries->GridView->DataGroups[btvdg_T_Reason_cnt_cumulative->Index]->Values[AValueIndex]) +
                "\n" + "Общее количество: " + VarToStr(ASeries->GridView->DataGroups[btvdg_T_Reason_cnt_total->Index]->Values[AValueIndex]) +
                "\n-------" +
        		"\nПроцент от общей суммы: " + VarToStr(ASeries->GridView->DataGroups[btvdg_T_Reason_pers_of_total->Index]->Values[AValueIndex]) + "%" +
				"\nНакопленный процент: " + VarToStr(ASeries->GridView->DataGroups[btvdg_T_Reason_pers_cumulative->Index]->Values[AValueIndex]) + "%";
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::aRefresh_Filial_Reason_TableExecute(TObject *Sender)

{
	// Обновить: Причины: Табличное представление

    TClientDataSet	*cds = cdsFilial_Reason_Table;
    TDataSource *ds = dsFilial_Reason_Table;
    TcxGridDBBandedTableView *btv = btvFilial_Reason_Table;
    AnsiString vTitle = "";

    try
    {
    	btv->DataController->DataSource = 0;
        TDMMain::ClearDataSet(cds);
        cds->CommandText = "SMT.SMT_REPORT_PKG.reason_table_cur";
        cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime = deDateBegin->Date;
        cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime = deDateFinish->Date;
        cds->Params->CreateParam(ftString, "p_status", ptInput)->AsString = "";
        cds->Params->CreateParam(ftInteger, "p_access", ptInput)->AsInteger	= (int)cbFirmTree_->EditValue;//cdsFirmTree->FieldByName("kod_firm")->AsInteger;
        cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        btv->DataController->DataSource = ds;
        btv->ViewData->Expand(true);

        vTitle = "Распределение Инцидентов по причинам за ";
        switch ( vPeriodType )
        {
            case PT_CURRENT_DAY:
            	vTitle = vTitle + "текущие сутки [" + FormatDateTime("dd.mm.yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_CURRENT_MONTH:
            	vTitle = vTitle + "текущий месяц [" + FormatDateTime("mmmm yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_CURRENT_YEAR:
            	vTitle = vTitle + "текущий год [" + FormatDateTime("yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_PERIOD:
            	vTitle = vTitle + "период [" + FormatDateTime("dd.mm.yyyy", deDateBegin->Date) + " - " + FormatDateTime("dd.mm.yyyy", deDateFinish->Date) + "]";
            	break;
        }

        Label1->Caption = vTitle;
    }
    catch ( Exception &e )
    {
    	throw Exception("RI-108: Ошибка обновления данных\n" + e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btvFilial_Reason_TableCustomDrawCell(TcxCustomGridTableView *Sender,
          TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
          bool &ADone)
{
    if	( 	(int) AViewInfo->GridRecord->Values[clmnFilial_Reason_Table_Gid->Index] == 1 )
    	ACanvas->Brush->Color = DMMain->stlBackgroundLightGreen ->Color;
    if	( 	(int) AViewInfo->GridRecord->Values[clmnFilial_Reason_Table_Gid->Index] == 3 )
    	ACanvas->Brush->Color = DMMain->stlBackgroundLight->Color;
    if	( 	(int) AViewInfo->GridRecord->Values[clmnFilial_Reason_Table_Gid->Index] == 7 )
    	ACanvas->Brush->Color = DMMain->stlBackgroundLightBlue->Color;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::tsFilial_Reason_GraphShow(TObject *Sender)

{
	if ( btv_Reason->DataController->DataSource != ds_Reason_Graph )
    	aRefresh_Filial_Reason_Graph->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::tsFilial_Reason_TableShow(TObject *Sender)

{
	if ( btvFilial_Reason_Table->DataController->DataSource != dsFilial_Reason_Table )
    	aRefresh_Filial_Reason_Table->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::aRefresh_Seria_GraphExecute(TObject *Sender)
{
	// Обновить: диаграмма по сериям

    Refresh_Seria_Graph(1);
    Refresh_Seria_Graph(2);
    Refresh_Seria_Graph(0);
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::Refresh_Seria_Graph(int p_tjaga)
{
	// Обновить: диаграмма по сериям

    TClientDataSet	*cds;
    TDataSource *ds;
    TcxGridDBChartView *btv;
    AnsiString vTitle = "";

    switch ( p_tjaga )
    {
        case 1:
        	cds = cdsSeria_Teplo_Graph;
            ds = dsSeria_Teplo_Graph;
            btv = btvSeria_Teplo_Graph;
        	break;
        case 2:
        	cds = cdsSeria_Electro_Graph;
            ds = dsSeria_Electro_Graph;
            btv = btvSeria_Electro_Graph;
        	break;
        default:
        	cds = cdsSeria_Graph;
            ds = dsSeria_Graph;
            btv = btvSeria_Graph;
        	break;
    }

    try
    {
    	btv->DataController->DataSource = 0;
        TDMMain::ClearDataSet(cds);
        cds->CommandText = "SMT.SMT_REPORT_PKG.seria_graph_cur";
        cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime = deDateBegin->Date;
        cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime = deDateFinish->Date;
        cds->Params->CreateParam(ftInteger, "p_tjaga", ptInput)->AsInteger = p_tjaga;
        cds->Params->CreateParam(ftInteger, "p_access", ptInput)->AsInteger	= (int)cbFirmTree_->EditValue;//cdsFirmTree->FieldByName("kod_firm")->AsInteger;
        cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        btv->DataController->DataSource = ds;
        vTitle = "Распределение Инцидентов по сериям за ";
        switch ( vPeriodType )
        {
            case PT_CURRENT_DAY:
            	vTitle = vTitle + "текущие сутки [" + FormatDateTime("dd.mm.yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_CURRENT_MONTH:
            	vTitle = vTitle + "текущий месяц [" + FormatDateTime("mmmm yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_CURRENT_YEAR:
            	vTitle = vTitle + "текущий год [" + FormatDateTime("yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_PERIOD:
            	vTitle = vTitle + "период [" + FormatDateTime("dd.mm.yyyy", deDateBegin->Date) + " - " + FormatDateTime("dd.mm.yyyy", deDateFinish->Date) + "]";
            	break;
        }

        lblSeria_Graph->Caption = vTitle;
    }
    catch ( Exception &e )
    {
    	throw Exception("RI-109: Ошибка обновления данных\np_tjaga = " + IntToStr(p_tjaga) + "\n" + e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::cxGridDBChartSeries15CustomDrawValue(TcxGridChartSeries *Sender,
          TcxCanvas *ACanvas, TcxGridChartDiagramValueViewInfo *AViewInfo,
          bool &ADone)
{
	if ( 	(int)AViewInfo->Series->GridView->DataGroups[btv_Filial_Seria_E_datagroup_pers_cumulative->Index]->Values[AViewInfo->ValueIndex] < 90
       || 	(int)AViewInfo->Series->GridView->DataGroups[btv_Filial_Seria_E_datagroup_pers_of_total->Index]->Values[AViewInfo->ValueIndex] > 80
       )
    	ACanvas->Brush->Color = clRed;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btvSeria_Electro_GraphGetValueHint(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, UnicodeString &AHint)

{
		AHint = VarToStr(ASeries->GridView->DataGroups[btvSeria_Electro_Graph_SerName->Index]->Values[AValueIndex]) +
        		":\n\nАбсолютное значение: " + VarToStr(ASeries->GridView->DataGroups[btvSeria_Electro_Graph_Cnt->Index]->Values[AValueIndex]) +
                "\nПриведенное значение: " + VarToStr(ASeries->GridView->DataGroups[btvSeria_Electro_Graph_CntRelative->Index]->Values[AValueIndex]) +
                "\n\nУникальных секций: " + VarToStr(ASeries->GridView->DataGroups[btvSeria_Electro_Graph_CntUnqLoc->Index]->Values[AValueIndex]) +
                "\nСервисный парк: " + VarToStr(ASeries->GridView->DataGroups[btvSeria_Electro_Graph_CntPark->Index]->Values[AValueIndex]) +

                "\n-------" +
            	"\n\nНакопленная сумма: " + VarToStr(ASeries->GridView->DataGroups[btv_Filial_Seria_E_datagroup_cumulative->Index]->Values[AValueIndex]) +
                "\n" + "Общее количество: " + VarToStr(ASeries->GridView->DataGroups[btv_Filial_Seria_E_datagroup_total->Index]->Values[AValueIndex]) +
                "\n-------" +
        		"\nПроцент от общей суммы: " + VarToStr(ASeries->GridView->DataGroups[btv_Filial_Seria_E_datagroup_pers_of_total->Index]->Values[AValueIndex]) + "%" +
				"\nНакопленный процент: " + VarToStr(ASeries->GridView->DataGroups[btv_Filial_Seria_E_datagroup_pers_cumulative->Index]->Values[AValueIndex]) + "%";
}
//---------------------------------------------------------------------------


void __fastcall TfrmReport_Interactive::tsNR_DynamicShow(TObject *Sender)
{
	if ( btv_NR_Dynamic_Chart->DataController->DataSource != dsNR_Dynamic )
    	aRefresh_NR_Dynamic->Execute();

    prntr->CurrentLink = prntr_lnk_grdEq_Electro_Graph;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::tsSeria_GraphShow(TObject *Sender)
{
	if ( btvSeria_Electro_Graph->DataController->DataSource != dsSeria_Electro_Graph )
    	aRefresh_Seria_Graph->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::cxGridDBChartSeries12CustomDrawValue(TcxGridChartSeries *Sender,
          TcxCanvas *ACanvas, TcxGridChartDiagramValueViewInfo *AViewInfo,
          bool &ADone)
{
	if 	( (int)AViewInfo->Series->GridView->DataGroups[btv_Filial_Seria_T_datagroup_pers_cumulative->Index]->Values[AViewInfo->ValueIndex] < 90
        || (int)AViewInfo->Series->GridView->DataGroups[btv_Filial_Seria_T_datagroup_pers_of_total->Index]->Values[AViewInfo->ValueIndex] > 80
    	)
    	ACanvas->Brush->Color = clRed;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::cxGridDBChartSeries9CustomDrawValue(TcxGridChartSeries *Sender,
          TcxCanvas *ACanvas, TcxGridChartDiagramValueViewInfo *AViewInfo,
          bool &ADone)
{
	if 	( (int)AViewInfo->Series->GridView->DataGroups[btv_Filial_Seria_datagroup_pers_cumulative->Index]->Values[AViewInfo->ValueIndex] < 90
        || (int)AViewInfo->Series->GridView->DataGroups[btv_Filial_Seria_datagroup_pers_of_total->Index]->Values[AViewInfo->ValueIndex] > 80
    	)
    	ACanvas->Brush->Color = clRed;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::tsDepo_EqShow(TObject *Sender)
{
	if ( btv_Depo_Eq->DataController->DataSource != dsDepo_Eq )
    	aRefresh_Depo_Eq->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::aRefresh_State_GraphExecute(TObject *Sender)
{
	// Обновить: диаграмма по статусам

    Refresh_State_Graph(1);
    Refresh_State_Graph(2);
    Refresh_State_Graph(0);
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::Refresh_State_Graph(int p_tjaga)
{
	// Обновить: диаграмма по статусам

    TClientDataSet	*cds;
    TDataSource *ds;
    TcxGridDBChartView *btv;
    AnsiString vTitle = "";

    switch ( p_tjaga )
    {
        case 1:
        	cds = cdsState_Teplo_Graph;
            ds = dsState_Teplo_Graph;
            btv = btvState_Teplo_Graph;
        	break;
        case 2:
        	cds = cdsState_Electro_Graph;
            ds = dsState_Electro_Graph;
            btv = btvState_Electro_Graph;
        	break;
        default:
        	cds = cdsState_Graph;
            ds = dsState_Graph;
            btv = btvState_Graph;
        	break;
    }

    try
    {
    	btv->DataController->DataSource = 0;
        TDMMain::ClearDataSet(cds);
        cds->CommandText = "SMT.SMT_REPORT_PKG.state_graph_cur";
        cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime = deDateBegin->Date;
        cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime = deDateFinish->Date;
        cds->Params->CreateParam(ftInteger, "p_tjaga", ptInput)->AsInteger = p_tjaga;
        cds->Params->CreateParam(ftInteger, "p_access", ptInput)->AsInteger	= (int)cbFirmTree_->EditValue;//cdsFirmTree->FieldByName("kod_firm")->AsInteger;
        cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        btv->DataController->DataSource = ds;
        vTitle = "Распределение Инцидентов по статусам за ";
        switch ( vPeriodType )
        {
            case PT_CURRENT_DAY:
            	vTitle = vTitle + "текущие сутки [" + FormatDateTime("dd.mm.yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_CURRENT_MONTH:
            	vTitle = vTitle + "текущий месяц [" + FormatDateTime("mmmm yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_CURRENT_YEAR:
            	vTitle = vTitle + "текущий год [" + FormatDateTime("yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_PERIOD:
            	vTitle = vTitle + "период [" + FormatDateTime("dd.mm.yyyy", deDateBegin->Date) + " - " + FormatDateTime("dd.mm.yyyy", deDateFinish->Date) + "]";
            	break;
        }

        lblState_Graph->Caption = vTitle;
    }
    catch ( Exception &e )
    {
    	throw Exception("RI-110: Ошибка обновления данных\np_tjaga = " + IntToStr(p_tjaga) + e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::tsState_GraphShow(TObject *Sender)
{
	if ( btvState_Electro_Graph->DataController->DataSource != dsState_Electro_Graph )
    	aRefresh_State_Graph->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btvState_Teplo_GraphGetValueHint(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, UnicodeString &AHint)

{
		AHint = AHint +
                "\n-------" +
                "\n" + "Общее количество: " + VarToStr(ASeries->GridView->DataGroups[btv_Filial_Seria_E_datagroup_total->Index]->Values[AValueIndex]) +
                "\n-------" +
        		"\nПроцент от общей суммы: " + VarToStr(ASeries->GridView->DataGroups[btv_Filial_Seria_E_datagroup_pers_of_total->Index]->Values[AValueIndex]) + "%";
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::aRefresh_Source_GraphExecute(TObject *Sender)
{
	// Обновить: диаграмма по статусам

    Refresh_Source_Graph(1);
    Refresh_Source_Graph(2);
    Refresh_Source_Graph(0);
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::Refresh_Source_Graph(int p_tjaga)
{
	// Обновить: диаграмма по источникам информации

    TClientDataSet	*cds;
    TDataSource *ds;
    TcxGridDBChartView *btv;
    AnsiString vTitle = "";

    switch ( p_tjaga )
    {
        case 1:
        	cds = cdsSource_Teplo_Graph;
            ds = dsSource_Teplo_Graph;
            btv = btvSource_Teplo_Graph;
        	break;
        case 2:
        	cds = cdsSource_Electro_Graph;
            ds = dsSource_Electro_Graph;
            btv = btvSource_Electro_Graph;
        	break;
        default:
        	cds = cdsSource_Graph;
            ds = dsSource_Graph;
            btv = btvSource_Graph;
        	break;
    }

    try
    {
    	btv->DataController->DataSource = 0;
        TDMMain::ClearDataSet(cds);
        cds->CommandText = "SMT.SMT_REPORT_PKG.source_graph_cur";
        cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime = deDateBegin->Date;
        cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime = deDateFinish->Date;
        cds->Params->CreateParam(ftInteger, "p_tjaga", ptInput)->AsInteger = p_tjaga;
        cds->Params->CreateParam(ftInteger, "p_access", ptInput)->AsInteger	= (int)cbFirmTree_->EditValue;//cdsFirmTree->FieldByName("kod_firm")->AsInteger;
        cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        btv->DataController->DataSource = ds;
        vTitle = "Распределение Инцидентов по источникам информации за ";
        switch ( vPeriodType )
        {
            case PT_CURRENT_DAY:
            	vTitle = vTitle + "текущие сутки [" + FormatDateTime("dd.mm.yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_CURRENT_MONTH:
            	vTitle = vTitle + "текущий месяц [" + FormatDateTime("mmmm yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_CURRENT_YEAR:
            	vTitle = vTitle + "текущий год [" + FormatDateTime("yyyy", deDateFinish->Date) + "]";
            	break;
            case PT_PERIOD:
            	vTitle = vTitle + "период [" + FormatDateTime("dd.mm.yyyy", deDateBegin->Date) + " - " + FormatDateTime("dd.mm.yyyy", deDateFinish->Date) + "]";
            	break;
        }

        lblSource_Graph->Caption = vTitle;
    }
    catch ( Exception &e )
    {
    	throw Exception("RI-111: Ошибка обновления данных\np_tjaga = " + IntToStr(p_tjaga) + e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::tsSource_GraphShow(TObject *Sender)
{
	if ( btvSource_Electro_Graph->DataController->DataSource != dsSource_Electro_Graph )
    	aRefresh_Source_Graph->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::aRefresh_Filial_Eq_GraphExecute(TObject *Sender)

{
	// Обновить: диаграмма по видам оборудования

    Refresh_Eq_Graph(1);
    Refresh_Eq_Graph(2);
    Refresh_Eq_Graph(0);
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::Refresh_Eq_Graph(int p_tjaga)
{
	// Обновить: диаграмма по видам оборудования

    TClientDataSet	*cds;
    TDataSource *ds;
    TcxGridDBChartView *btv;
    AnsiString vTitle = "";

    switch ( p_tjaga )
    {
        case 1:
        	cds = cdsEq_Teplo_Graph;
            ds = dsEq_Teplo_Graph;
            btv = btvEq_Teplo_Graph;
        	break;
        case 2:
        	cds = cdsEq_Electro_Graph;
            ds = dsEq_Electro_Graph;
            btv = btvEq_Electro_Graph;
        	break;
        default:
        	cds = cdsEq_Graph;
            ds = dsEq_Graph;
            btv = btvEq_Graph;
        	break;
    }

    try
    {
    	btv->DataController->DataSource = 0;
        TDMMain::ClearDataSet(cds);
        cds->CommandText = "SMT.SMT_REPORT_PKG.eq_graph_cur";
        cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime = deDateBegin->Date;
        cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime = deDateFinish->Date;
        cds->Params->CreateParam(ftInteger, "p_tjaga", ptInput)->AsInteger = p_tjaga;
        cds->Params->CreateParam(ftInteger, "p_access", ptInput)->AsInteger	= (int)cbFirmTree_->EditValue;//cdsFirmTree->FieldByName("kod_firm")->AsInteger;
        cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        btv->DataController->DataSource = ds;
        cxGridDBChartView1->DataController->DataSource = ds;

       	SetTitleText(lblEq_Graph);
    }
    catch ( Exception &e )
    {
    	throw Exception("RI-111: Ошибка обновления данных\np_tjaga = " + IntToStr(p_tjaga) + e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::tsFilial_Eq_TableShow(TObject *Sender)
{
	if ( btv_Depo_Eq->DataController->DataSource != dsDepo_Eq )
    	aRefresh_Depo_Eq->Execute();

	prntr->CurrentLink = prntr_lnk_grd_Depo_Eq;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::tsFilial_Eq_GraphShow(TObject *Sender)
{
	if ( btvEq_Graph->DataController->DataSource != dsEq_Graph )
    	aRefresh_Filial_Eq_Graph->Execute();

    prntr->CurrentLink = prntr_lnk_grdEq_Electro_Graph;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::SetTitleText( TLabel *lbl )
{
	// Установить заголовок над диграммой, таблицей

    AnsiString vTitle;


    if ( pcReport->ActivePage == tsDepo_Eq )
        vTitle = "Распределение Инцидентов по видам оборудования";

    if ( pcReport->ActivePage == tsNR_Dynamic )
		vTitle = "Динамика постановок в неплановый ремонт";

    if ( pcReport->ActivePage == tsFilial_Reason )
		vTitle = "Распределение Инцидентов по причинам неисправности";

    if ( pcReport->ActivePage == tsFilial_Seria )
    	vTitle = "Распределение Инцидентов по сериям";

    if ( pcReport->ActivePage == tsFilial_State )
    	vTitle = "Распределение Инцидентов по статусам";

    if ( pcReport->ActivePage == tsFilial_Source )
    	vTitle = "Распределение Инцидентов по источникам информации";


    switch ( vPeriodType )
    {
        case PT_CURRENT_DAY:
            vTitle = vTitle + " за текущие сутки [" + FormatDateTime("dd.mm.yyyy", deDateFinish->Date) + "]";
            break;
        case PT_CURRENT_MONTH:
            vTitle = vTitle + " за текущий месяц [" + FormatDateTime("mmmm yyyy", deDateFinish->Date) + "]";
            break;
        case PT_CURRENT_YEAR:
            vTitle = vTitle + " за текущий год [" + FormatDateTime("yyyy", deDateFinish->Date) + "]";
            break;
        case PT_PERIOD:
            vTitle = vTitle + " за период [" + FormatDateTime("dd.mm.yyyy", deDateBegin->Date) + " - " + FormatDateTime("dd.mm.yyyy", deDateFinish->Date) + "]";
            break;
    }

        lbl->Caption = vTitle;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::aDepo_Eq_DetailExecute(TObject *Sender)
{
	TcxGridDBBandedTableView *v = btv_Depo_Eq;
	AnsiString BandCaption = "";
	AnsiString Str4FileName = "";
    strctRID r;
    std::auto_ptr<TfrmReport_Interactive_Detail> det_frm ( new TfrmReport_Interactive_Detail(this) );

	 if	(	   v->DataController->DataSource != NULL
			&& v->DataController->DataSource->DataSet->Active
			&& v->DataController->DataSource->DataSet->RecordCount > 0
			&& !v->Controller->FocusedRow->Expandable
			&& v->Controller->FocusedColumn->Tag >= -1
			&& !v->Controller->FocusedRow->Values[v->Controller->FocusedColumn->Index].IsNull()
			&& v->Controller->FocusedRow->Values[v->Controller->FocusedColumn->Index] > 0
     	)
	 {
        r.detail_type = DT_DEPO_EQ;

        r.date_begin = deDateBegin->Date;
        r.date_finish = deDateFinish->Date;
        r.kod_firm_service = v->DataController->DataSet->FieldByName("kod_firm_service")->AsInteger;
        r.kod_depo = v->DataController->DataSet->FieldByName("kod_depo")->AsInteger;
        r.system_id = v->Controller->FocusedColumn->Tag;
        r.kod_tjaga = v->DataController->DataSet->FieldByName("kod_tjaga")->AsInteger;

        BandCaption = ((TcxGridDBBandedColumn*)v->Controller->FocusedColumn)->Position->Band->Caption;
        Str4FileName = ((TcxGridDBBandedColumn*)v->Controller->FocusedColumn)->AlternateCaption;
        r.filename = BandCaption + " - " + ((TcxGridDBBandedColumn*)v->Controller->FocusedColumn)->Caption;

        if ( !BandCaption.IsEmpty() )
            BandCaption = BandCaption + ": ";

        det_frm->Caption = BandCaption + v->Controller->FocusedColumn->Caption;

        det_frm->Show(&r);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::aReason_DetailExecute(TObject *Sender)
{
	TcxGridDBBandedTableView *v = btvFilial_Reason_Table;
	AnsiString BandCaption = "";
	AnsiString Str4FileName = "";
    strctRID r;
    std::auto_ptr<TfrmReport_Interactive_Detail> det_frm ( new TfrmReport_Interactive_Detail(this) );

	 if	(	   v->DataController->DataSource != NULL
			&& v->DataController->DataSource->DataSet->Active
			&& v->DataController->DataSource->DataSet->RecordCount > 0
			&& !v->Controller->FocusedRow->Expandable
			&& v->Controller->FocusedColumn->Tag >= -1
			&& !v->Controller->FocusedRow->Values[v->Controller->FocusedColumn->Index].IsNull()
			&& v->Controller->FocusedRow->Values[v->Controller->FocusedColumn->Index] > 0
     	)
	 {
        r.detail_type = DT_DEPARTMENT_REASON;

        r.date_begin = deDateBegin->Date;
        r.date_finish = deDateFinish->Date;
        r.kod_firm_service = v->DataController->DataSet->FieldByName("kod_firm_service")->AsInteger;
        r.kod_firm_department = v->DataController->DataSet->FieldByName("kod_firm")->AsInteger;
        r.reason_id = v->Controller->FocusedColumn->Tag;
        r.kod_tjaga = v->DataController->DataSet->FieldByName("kod_tjaga")->AsInteger;

        BandCaption = ((TcxGridDBBandedColumn*)v->Controller->FocusedColumn)->Position->Band->Caption;
        Str4FileName = ((TcxGridDBBandedColumn*)v->Controller->FocusedColumn)->AlternateCaption;
        r.filename = BandCaption + " - " + ((TcxGridDBBandedColumn*)v->Controller->FocusedColumn)->Caption;

        if ( !BandCaption.IsEmpty() )
            BandCaption = BandCaption + ": ";

        det_frm->Caption = BandCaption + v->Controller->FocusedColumn->Caption;

        det_frm->Show(&r);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::pcReportChange(TObject *Sender)
{
	cfg.ini->WriteInteger("INTERACTIVE_REPORT_SETTINGS", "ActivePageIndex", pcReport->ActivePageIndex);
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btvEq_Electro_GraphValueClick(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, bool &AHandled)
{
	// Диаграмма по видам оборудования: Электровозы: Детализация

    TcxGridDBChartView *v = btvEq_Electro_Graph;

    try
    {
        if	(	   v->DataController->DataSource != NULL
                && v->DataController->DataSource->DataSet->Active == true
                && v->DataController->DataSource->DataSet->RecordCount > 0
            )
            Eq_Value_Detail	((int)ASeries->GridView->DataGroups[btvdgEq_Electro_Graph_GroupClassID->Index]->Values[AValueIndex]
                                ,(int)ASeries->GridView->DataGroups[btvdgEq_Electro_Graph_KodTjaga->Index]->Values[AValueIndex]
                                ,"ЭЛЕКТРОВОЗЫ: " + VarToStr(ASeries->GridView->DataGroups[btvdgEq_Electro_Graph_SystemName->Index]->Values[AValueIndex])
                                );
    }
    catch ( Exception &e )
    {
        TDMMain::ShowAppException(AET_EXCEPTION, "Оборудование: Диаграмма: Электровозы: Ошибка получения детализации", e.Message);
    }
}

//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::Eq_Value_Detail( int system_id, int kod_tjaga, AnsiString caption )
{
	// Виды оборудования: Детализация

    strctRID r;
    std::auto_ptr<TfrmReport_Interactive_Detail> det_frm ( new TfrmReport_Interactive_Detail(this) );

    r.detail_type = DT_DEPO_EQ;
    r.date_begin = deDateBegin->Date;
    r.date_finish = deDateFinish->Date;
    r.kod_firm_service = (int)cbFirmTree_->EditValue;
    r.kod_depo = 0;
    r.kod_firm_department = 0;
    r.reason_id = 0;
    r.system_id = system_id;
    r.kod_tjaga = kod_tjaga;
    r.filename = caption;

    det_frm->Caption = caption;
    det_frm->Show(&r);
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::Reason_Value_Detail( int reason_id, int kod_tjaga, AnsiString caption )
{
	// Причины: Детализация

    strctRID r;
    std::auto_ptr<TfrmReport_Interactive_Detail> det_frm ( new TfrmReport_Interactive_Detail(this) );

    r.detail_type = DT_DEPARTMENT_REASON;;
    r.date_begin = deDateBegin->Date;
    r.date_finish = deDateFinish->Date;
    r.kod_firm_service = (int)cbFirmTree_->EditValue;
    r.kod_firm_department = 0;
    r.reason_id = reason_id;
    r.kod_tjaga = kod_tjaga;
    r.filename = caption;

    det_frm->Caption = caption;
    det_frm->Show(&r);
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btv_ReasonValueClick(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, bool &AHandled)

{
    TcxGridDBChartView *v = btv_Reason;

    try
    {
        if	(	   v->DataController->DataSource != NULL
                && v->DataController->DataSource->DataSet->Active == true
                && v->DataController->DataSource->DataSet->RecordCount > 0
            )
            Reason_Value_Detail	((int)ASeries->GridView->DataGroups[btvdg_Reason_ReasonID->Index]->Values[AValueIndex]
                                ,(int)ASeries->GridView->DataGroups[btvdg_Reason_KodTjaga->Index]->Values[AValueIndex]
                                ,"ВСЕ ЛОКОМОТИВЫ: " + VarToStr(ASeries->GridView->DataGroups[btvdg_Reason_ReasonName->Index]->Values[AValueIndex])
                                );
    }
    catch ( Exception &e )
    {
        TDMMain::ShowAppException(AET_EXCEPTION, "Причины: Диаграмма: Все локомотивы: Ошибка получения детализации", e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::aPrintPreviewExecute(TObject *Sender)
{
	prntr->Preview(true, NULL);
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btvState_Electro_GraphValueClick(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, bool &AHandled)

{
    TClientDataSet	*cds = cdsState_Electro_Graph;
    TDataSource *ds = dsState_Electro_Graph;
    TcxGridDBChartView *v = btvState_Electro_Graph;
    strctRID r;
    std::auto_ptr<TfrmReport_Interactive_Detail> det_frm ( new TfrmReport_Interactive_Detail(this) );

	 if	(	   v->DataController->DataSource != NULL
			&& v->DataController->DataSource->DataSet->Active
			&& v->DataController->DataSource->DataSet->RecordCount > 0
     	)
	 {
        r.detail_type = DT_STATE;
        r.date_begin = deDateBegin->Date;
        r.date_finish = deDateFinish->Date;
        r.kod_firm_service = (int)cbFirmTree_->EditValue;
        r.kod_firm_department = 0;
        r.reason_id = 0;
        r.filter_value_id = (int)ASeries->GridView->DataGroups[btvState_Electro_GraphDataGroup1->Index]->Values[AValueIndex];
        r.kod_tjaga = 2;

        r.filename = VarToStr(ASeries->GridView->DataGroups[btvState_Electro_GraphDataGroup2->Index]->Values[AValueIndex]); //BandCaption;
        det_frm->Caption = VarToStr(ASeries->GridView->DataGroups[btvState_Electro_GraphDataGroup2->Index]->Values[AValueIndex]);

        det_frm->Show(&r);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btvState_Teplo_GraphValueClick(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, bool &AHandled)

{
    TClientDataSet	*cds = cdsState_Teplo_Graph;
    TDataSource *ds = dsState_Teplo_Graph;
    TcxGridDBChartView *v = btvState_Teplo_Graph;
    strctRID r;
    std::auto_ptr<TfrmReport_Interactive_Detail> det_frm ( new TfrmReport_Interactive_Detail(this) );

	 if	(	   v->DataController->DataSource != NULL
			&& v->DataController->DataSource->DataSet->Active
			&& v->DataController->DataSource->DataSet->RecordCount > 0
     	)
	 {
        r.detail_type = DT_STATE;
        r.date_begin = deDateBegin->Date;
        r.date_finish = deDateFinish->Date;
        r.kod_firm_service = (int)cbFirmTree_->EditValue;
        r.kod_firm_department = 0;
        r.reason_id = 0;
        r.filter_value_id = (int)ASeries->GridView->DataGroups[btvState_Teplo_GraphDataGroup1->Index]->Values[AValueIndex];
        r.kod_tjaga = 1;

        r.filename = VarToStr(ASeries->GridView->DataGroups[btvState_Teplo_GraphDataGroup2->Index]->Values[AValueIndex]);
        det_frm->Caption = VarToStr(ASeries->GridView->DataGroups[btvState_Teplo_GraphDataGroup2->Index]->Values[AValueIndex]);

        det_frm->Show(&r);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btvState_GraphValueClick(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, bool &AHandled)

{
    TClientDataSet	*cds = cdsState_Graph;
    TDataSource *ds = dsState_Graph;
    TcxGridDBChartView *v = btvState_Graph;
    strctRID r;
    std::auto_ptr<TfrmReport_Interactive_Detail> det_frm ( new TfrmReport_Interactive_Detail(this) );

	 if	(	   v->DataController->DataSource != NULL
			&& v->DataController->DataSource->DataSet->Active
			&& v->DataController->DataSource->DataSet->RecordCount > 0
     	)
	 {
        r.detail_type = DT_STATE;
        r.date_begin = deDateBegin->Date;
        r.date_finish = deDateFinish->Date;
        r.kod_firm_service = (int)cbFirmTree_->EditValue;
        r.kod_firm_department = 0;
        r.reason_id = 0;
        r.filter_value_id = (int)ASeries->GridView->DataGroups[btvState_GraphDataGroup1->Index]->Values[AValueIndex];
        r.kod_tjaga = 0;

        r.filename = VarToStr(ASeries->GridView->DataGroups[btvState_GraphDataGroup2->Index]->Values[AValueIndex]);
        det_frm->Caption = VarToStr(ASeries->GridView->DataGroups[btvState_GraphDataGroup2->Index]->Values[AValueIndex]);

        det_frm->Show(&r);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btvSource_Electro_GraphValueClick(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, bool &AHandled)

{
    TClientDataSet	*cds = cdsSource_Electro_Graph;
    TDataSource *ds = dsSource_Electro_Graph;
    TcxGridDBChartView *v = btvSource_Electro_Graph;
    strctRID r;
    std::auto_ptr<TfrmReport_Interactive_Detail> det_frm ( new TfrmReport_Interactive_Detail(this) );

	 if	(	   v->DataController->DataSource != NULL
			&& v->DataController->DataSource->DataSet->Active
			&& v->DataController->DataSource->DataSet->RecordCount > 0
     	)
	 {
        r.detail_type = DT_SOURCE_TYPE;
        r.date_begin = deDateBegin->Date;
        r.date_finish = deDateFinish->Date;
        r.kod_firm_service = (int)cbFirmTree_->EditValue;
        r.kod_firm_department = 0;
        r.reason_id = 0;
        r.filter_value_id = (int)ASeries->GridView->DataGroups[btvSource_Electro_GraphDataGroup1->Index]->Values[AValueIndex];
        r.kod_tjaga = 2;

        r.filename = VarToStr(ASeries->GridView->DataGroups[btvSource_Electro_GraphDataGroup2->Index]->Values[AValueIndex]);
        det_frm->Caption = VarToStr(ASeries->GridView->DataGroups[btvSource_Electro_GraphDataGroup2->Index]->Values[AValueIndex]);

        det_frm->Show(&r);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btvSource_Teplo_GraphValueClick(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, bool &AHandled)

{
    TClientDataSet	*cds = cdsSource_Teplo_Graph;
    TDataSource *ds = dsSource_Teplo_Graph;
    TcxGridDBChartView *v = btvSource_Teplo_Graph;
    strctRID r;
    std::auto_ptr<TfrmReport_Interactive_Detail> det_frm ( new TfrmReport_Interactive_Detail(this) );

	 if	(	   v->DataController->DataSource != NULL
			&& v->DataController->DataSource->DataSet->Active
			&& v->DataController->DataSource->DataSet->RecordCount > 0
     	)
	 {
        r.detail_type = DT_SOURCE_TYPE;
        r.date_begin = deDateBegin->Date;
        r.date_finish = deDateFinish->Date;
        r.kod_firm_service = (int)cbFirmTree_->EditValue;
        r.kod_firm_department = 0;
        r.reason_id = 0;
        r.filter_value_id = (int)ASeries->GridView->DataGroups[btvSource_Teplo_GraphDataGroup1->Index]->Values[AValueIndex];
        r.kod_tjaga = 1;

        r.filename = VarToStr(ASeries->GridView->DataGroups[btvSource_Teplo_GraphDataGroup2->Index]->Values[AValueIndex]);
        det_frm->Caption = VarToStr(ASeries->GridView->DataGroups[btvSource_Teplo_GraphDataGroup2->Index]->Values[AValueIndex]);

        det_frm->Show(&r);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btvSource_GraphValueClick(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, bool &AHandled)

{
    TClientDataSet	*cds = cdsSource_Graph;
    TDataSource *ds = dsSource_Graph;
    TcxGridDBChartView *v = btvSource_Graph;
    strctRID r;
    std::auto_ptr<TfrmReport_Interactive_Detail> det_frm ( new TfrmReport_Interactive_Detail(this) );

	 if	(	   v->DataController->DataSource != NULL
			&& v->DataController->DataSource->DataSet->Active
			&& v->DataController->DataSource->DataSet->RecordCount > 0
     	)
	 {
        r.detail_type = DT_SOURCE_TYPE;
        r.date_begin = deDateBegin->Date;
        r.date_finish = deDateFinish->Date;
        r.kod_firm_service = (int)cbFirmTree_->EditValue;
        r.kod_firm_department = 0;
        r.reason_id = 0;
        r.filter_value_id = (int)ASeries->GridView->DataGroups[btvSource_GraphDataGroup1->Index]->Values[AValueIndex];
        r.kod_tjaga = 0;

        r.filename = VarToStr(ASeries->GridView->DataGroups[btvSource_GraphDataGroup2->Index]->Values[AValueIndex]);
        det_frm->Caption = VarToStr(ASeries->GridView->DataGroups[btvSource_GraphDataGroup2->Index]->Values[AValueIndex]);

        det_frm->Show(&r);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btvSeria_Electro_GraphValueClick(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, bool &AHandled)

{
    TClientDataSet	*cds = cdsSeria_Electro_Graph;
    TDataSource *ds = dsSeria_Electro_Graph;
    TcxGridDBChartView *v = btvSeria_Electro_Graph;
    strctRID r;
    std::auto_ptr<TfrmReport_Interactive_Detail> det_frm ( new TfrmReport_Interactive_Detail(this) );

	 if	(	   v->DataController->DataSource != NULL
			&& v->DataController->DataSource->DataSet->Active
			&& v->DataController->DataSource->DataSet->RecordCount > 0
     	)
	 {
        r.detail_type = DT_SERIA;
        r.date_begin = deDateBegin->Date;
        r.date_finish = deDateFinish->Date;
        r.kod_firm_service = (int)cbFirmTree_->EditValue;
        r.kod_firm_department = 0;
        r.filter_value_id = (int)ASeries->GridView->DataGroups[btvSeria_Electro_GraphDataGroup1->Index]->Values[AValueIndex];

        r.filename = VarToStr(ASeries->GridView->DataGroups[btvSeria_Electro_Graph_SerName->Index]->Values[AValueIndex]);
        det_frm->Caption = VarToStr(ASeries->GridView->DataGroups[btvSeria_Electro_Graph_SerName->Index]->Values[AValueIndex]);

        det_frm->Show(&r);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btvSeria_Teplo_GraphValueClick(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, bool &AHandled)

{
    TClientDataSet	*cds = cdsSeria_Teplo_Graph;
    TDataSource *ds = dsSeria_Teplo_Graph;
    TcxGridDBChartView *v = btvSeria_Teplo_Graph;
    strctRID r;
    std::auto_ptr<TfrmReport_Interactive_Detail> det_frm ( new TfrmReport_Interactive_Detail(this) );

	 if	(	   v->DataController->DataSource != NULL
			&& v->DataController->DataSource->DataSet->Active
			&& v->DataController->DataSource->DataSet->RecordCount > 0
     	)
	 {
        r.detail_type = DT_SERIA;
        r.date_begin = deDateBegin->Date;
        r.date_finish = deDateFinish->Date;
        r.kod_firm_service = (int)cbFirmTree_->EditValue;
        r.kod_firm_department = 0;
        r.filter_value_id = (int)ASeries->GridView->DataGroups[btvSeria_Teplo_GraphDataGroup1->Index]->Values[AValueIndex];

        r.filename = VarToStr(ASeries->GridView->DataGroups[btvSeria_Teplo_Graph_SerName->Index]->Values[AValueIndex]);
        det_frm->Caption = VarToStr(ASeries->GridView->DataGroups[btvSeria_Teplo_Graph_SerName->Index]->Values[AValueIndex]);

        det_frm->Show(&r);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btvSeria_GraphValueClick(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, bool &AHandled)

{
    TClientDataSet	*cds = cdsSeria_Graph;
    TDataSource *ds = dsSeria_Graph;
    TcxGridDBChartView *v = btvSeria_Graph;
    strctRID r;
    std::auto_ptr<TfrmReport_Interactive_Detail> det_frm ( new TfrmReport_Interactive_Detail(this) );

	if	(	   v->DataController->DataSource != NULL
			&& v->DataController->DataSource->DataSet->Active
			&& v->DataController->DataSource->DataSet->RecordCount > 0
     	)
	 {
        r.detail_type = DT_SERIA;
        r.date_begin = deDateBegin->Date;
        r.date_finish = deDateFinish->Date;
        r.kod_firm_service = (int)cbFirmTree_->EditValue;
        r.kod_firm_department = 0;
        r.filter_value_id = (int)ASeries->GridView->DataGroups[btvSeria_GraphDataGroup1->Index]->Values[AValueIndex];

        r.filename = VarToStr(ASeries->GridView->DataGroups[btvSeria_Graph_SerName->Index]->Values[AValueIndex]);
        det_frm->Caption = VarToStr(ASeries->GridView->DataGroups[btvSeria_Graph_SerName->Index]->Values[AValueIndex]);

        det_frm->Show(&r);
    }
}
//---------------------------------------------------------------------------
void __fastcall TfrmReport_Interactive::cxRadioButton2Enter(TObject *Sender)

{
	cxGridDBChartSeries15->DataBinding->FieldName = "cnt_relative";
    cxGridDBChartSeries12->DataBinding->FieldName = "cnt_relative";
    cxGridDBChartSeries9->DataBinding->FieldName = "cnt_relative";
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::cxRadioButton1Enter(TObject *Sender)
{
	cxGridDBChartSeries15->DataBinding->FieldName = "cnt";
    cxGridDBChartSeries12->DataBinding->FieldName = "cnt";
    cxGridDBChartSeries9->DataBinding->FieldName = "cnt";
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::rbDynamic_Value_AbsoluteEnter(TObject *Sender)
{
	btv_NR_Dynamic_Series_Teplo->DataBinding->FieldName = "cnt_nr_teplo";
    btv_NR_Dynamic_Series_Electro->DataBinding->FieldName = "cnt_nr_electro";
    btv_NR_Dynamic_Series_Avg_Teplo->DataBinding->FieldName = "cnt_avg_nr_teplo";
    btv_NR_Dynamic_Series_Avg_Electro->DataBinding->FieldName = "cnt_avg_nr_electro";
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::rbDynamic_Value_RelativeEnter(TObject *Sender)
{
	btv_NR_Dynamic_Series_Teplo->DataBinding->FieldName = "cnt_relative_teplo";
    btv_NR_Dynamic_Series_Electro->DataBinding->FieldName = "cnt_relative_electro";
    btv_NR_Dynamic_Series_Avg_Teplo->DataBinding->FieldName = "cnt_avg_relative_teplo";
    btv_NR_Dynamic_Series_Avg_Electro->DataBinding->FieldName = "cnt_avg_relative_electro";

}
//--------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btv_NR_Dynamic_ChartGetValueHint(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, UnicodeString &AHint)

{
    try
    {
        if ( ASeries->Index == btv_NR_Dynamic_Series_Teplo->Index )
            AHint = "Тепловозы : " + VarToStr(ASeries->GridView->DataGroups[btv_NR_Dynamic_DataGroup_DT->Index]->Values[AValueIndex]) +
                    " :\n\nАбсолютное значение: " + VarToStr(ASeries->GridView->DataGroups[btv_NR_Dynamic_DataGroup_AbsoluteTeplo->Index]->Values[AValueIndex]) +
                    "\nПриведенное значение: " + VarToStr(ASeries->GridView->DataGroups[btv_NR_Dynamic_DataGroup_RelativeTeplo->Index]->Values[AValueIndex]) +
                    "\nСервисный парк: " + VarToStr(ASeries->GridView->DataGroups[btv_NR_Dynamic_DataGroup_ServiceParkTeplo->Index]->Values[AValueIndex]) +
                    "\n-------" +
                    "\n" + "Общее количество: " + VarToStr(ASeries->GridView->DataGroups[btv_NR_Dynamic_DataGroup_CntTotalTeplo->Index]->Values[AValueIndex]);
        if ( ASeries->Index == btv_NR_Dynamic_Series_Electro->Index )
            AHint = "Электровозы : " + VarToStr(ASeries->GridView->DataGroups[btv_NR_Dynamic_DataGroup_DT->Index]->Values[AValueIndex]) +
                    " :\n\nАбсолютное значение: " + VarToStr(ASeries->GridView->DataGroups[btv_NR_Dynamic_DataGroup_AbsoluteElectro->Index]->Values[AValueIndex]) +
                    "\nПриведенное значение: " + VarToStr(ASeries->GridView->DataGroups[btv_NR_Dynamic_DataGroup_RelativeElectro->Index]->Values[AValueIndex]) +
                    "\nСервисный парк: " + VarToStr(ASeries->GridView->DataGroups[btv_NR_Dynamic_DataGroup_ServiceParkElectro->Index]->Values[AValueIndex]) +
                    "\n-------" +
                    "\n" + "Общее количество: " + VarToStr(ASeries->GridView->DataGroups[btv_NR_Dynamic_DataGroup_CntTotalElectro->Index]->Values[AValueIndex]);
    }
    catch ( Exception &e )
    {
        throw Exception ("<RI-31>: Ошибка hint-определения [" + ASeries->DisplayText + "]:\n" + e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btv_E_ReasonGetValueHint(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, UnicodeString &AHint)

{
		AHint = AHint +
            	"\n\nНакопленная сумма: " + VarToStr(ASeries->GridView->DataGroups[btvdg_Reason_cnt_cumulative->Index]->Values[AValueIndex]) +
                "\n" + "Общее количество: " + VarToStr(ASeries->GridView->DataGroups[btvdg_Reason_cnt_total->Index]->Values[AValueIndex]) +
                "\n-------" +
        		"\nПроцент от общей суммы: " + VarToStr(ASeries->GridView->DataGroups[btvdg_Reason_pers_of_total->Index]->Values[AValueIndex]) + "%" +
				"\nНакопленный процент: " + VarToStr(ASeries->GridView->DataGroups[btvdg_Reason_pers_cumulative->Index]->Values[AValueIndex]) + "%";
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btv_E_ReasonValueClick(TcxGridChartView *Sender, TcxGridChartSeries *ASeries, int AValueIndex, bool &AHandled)

{
    TcxGridDBChartView *v = btv_E_Reason;

    try
    {
        if	(	   v->DataController->DataSource != NULL
                && v->DataController->DataSource->DataSet->Active == true
                && v->DataController->DataSource->DataSet->RecordCount > 0
            )
            Reason_Value_Detail	((int)ASeries->GridView->DataGroups[btvdg_E_Reason_ReasonID->Index]->Values[AValueIndex]
                                ,(int)ASeries->GridView->DataGroups[btvdg_E_Reason_KodTjaga->Index]->Values[AValueIndex]
                                ,"ЭЛЕКТРОВОЗЫ: " + VarToStr(ASeries->GridView->DataGroups[btvdg_E_Reason_ReasonName->Index]->Values[AValueIndex])
                                );
    }
    catch ( Exception &e )
    {
        TDMMain::ShowAppException(AET_EXCEPTION, "Причины: Диаграмма: Электровозы: Ошибка получения детализации", e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btv_ReasonGetValueHint(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, UnicodeString &AHint)

{
		AHint = AHint +
            	"\n\nНакопленная сумма: " + VarToStr(ASeries->GridView->DataGroups[btvdg_Reason_cnt_cumulative->Index]->Values[AValueIndex]) +
                "\n" + "Общее количество: " + VarToStr(ASeries->GridView->DataGroups[btvdg_Reason_cnt_total->Index]->Values[AValueIndex]) +
                "\n-------" +
        		"\nПроцент от общей суммы: " + VarToStr(ASeries->GridView->DataGroups[btvdg_Reason_pers_of_total->Index]->Values[AValueIndex]) + "%" +
				"\nНакопленный процент: " + VarToStr(ASeries->GridView->DataGroups[btvdg_Reason_pers_cumulative->Index]->Values[AValueIndex]) + "%";

}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btv_T_ReasonValueClick(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, bool &AHandled)

{
    TcxGridDBChartView *v = btv_T_Reason;

    try
    {
        if	(	   v->DataController->DataSource != NULL
                && v->DataController->DataSource->DataSet->Active == true
                && v->DataController->DataSource->DataSet->RecordCount > 0
            )
            Reason_Value_Detail	((int)ASeries->GridView->DataGroups[btvdg_T_Reason_ReasonID->Index]->Values[AValueIndex]
                                ,(int)ASeries->GridView->DataGroups[btvdg_T_Reason_KodTjaga->Index]->Values[AValueIndex]
                                ,"ТЕПЛОВОЗЫ: " + VarToStr(ASeries->GridView->DataGroups[btvdg_T_Reason_ReasonName->Index]->Values[AValueIndex])
                                );
    }
    catch ( Exception &e )
    {
        TDMMain::ShowAppException(AET_EXCEPTION, "Причины: Диаграмма: Тепловозы: Ошибка получения детализации", e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btvseries_E_ReasonCustomDrawValue(TcxGridChartSeries *Sender,
          TcxCanvas *ACanvas, TcxGridChartDiagramValueViewInfo *AViewInfo,
          bool &ADone)
{
	if 	( (int)AViewInfo->Series->GridView->DataGroups[btvdg_T_Reason_pers_cumulative->Index]->Values[AViewInfo->ValueIndex] < 90
        || (int)AViewInfo->Series->GridView->DataGroups[btvdg_T_Reason_pers_of_total->Index]->Values[AViewInfo->ValueIndex] > 80
    	)
    	ACanvas->Brush->Color = clRed;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btvseries_ReasonCustomDrawValue(TcxGridChartSeries *Sender,
          TcxCanvas *ACanvas, TcxGridChartDiagramValueViewInfo *AViewInfo,
          bool &ADone)
{
	if 	( (int)AViewInfo->Series->GridView->DataGroups[btvdg_Reason_pers_cumulative->Index]->Values[AViewInfo->ValueIndex] < 90
        || (int)AViewInfo->Series->GridView->DataGroups[btvdg_Reason_pers_of_total->Index]->Values[AViewInfo->ValueIndex] > 80
    	)
    	ACanvas->Brush->Color = clRed;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btvEq_Teplo_GraphValueClick(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, bool &AHandled)
{
	// Диаграмма по видам оборудования: Тепловозы: Детализация

    TcxGridDBChartView *v = btvEq_Teplo_Graph;

    try
    {
        if	(	   v->DataController->DataSource != NULL
                && v->DataController->DataSource->DataSet->Active == true
                && v->DataController->DataSource->DataSet->RecordCount > 0
            )
            Eq_Value_Detail	((int)ASeries->GridView->DataGroups[btvdgEq_Teplo_Graph_GroupClassID->Index]->Values[AValueIndex]
                                ,(int)ASeries->GridView->DataGroups[btvdgEq_Teplo_Graph_KodTjaga->Index]->Values[AValueIndex]
                                ,"ТЕПЛОВОЗЫ: " + VarToStr(ASeries->GridView->DataGroups[btvdgEq_Teplo_Graph_SystemName->Index]->Values[AValueIndex])
                                );
    }
    catch ( Exception &e )
    {
        TDMMain::ShowAppException(AET_EXCEPTION, "Оборудование: Диаграмма: Тепловозы: Ошибка получения детализации", e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btvEq_GraphValueClick(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, bool &AHandled)
{
	// Диаграмма по видам оборудования: Все локомотивы: Детализация

    TcxGridDBChartView *v = btvEq_Graph;

    try
    {
        if	(	   v->DataController->DataSource != NULL
                && v->DataController->DataSource->DataSet->Active == true
                && v->DataController->DataSource->DataSet->RecordCount > 0
            )
            Eq_Value_Detail	((int)ASeries->GridView->DataGroups[btvdgEq_Graph_GroupClassID->Index]->Values[AValueIndex]
                                ,(int)ASeries->GridView->DataGroups[btvdgEq_Graph_KodTjaga->Index]->Values[AValueIndex]
                                ,"ВСЕ ЛОКОМОТИВЫ: " + VarToStr(ASeries->GridView->DataGroups[btvdgEq_Graph_SystemName->Index]->Values[AValueIndex])
                                );
    }
    catch ( Exception &e )
    {
        TDMMain::ShowAppException(AET_EXCEPTION, "Оборудование: Диаграмма: Тепловозы: Ошибка получения детализации", e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive::btvEq_GraphGetValueHint(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, UnicodeString &AHint)

{
    AHint = AHint +
            "\n\nНакопленная сумма: " + VarToStr(ASeries->GridView->DataGroups[btvdg_Reason_cnt_cumulative->Index]->Values[AValueIndex]) +
            "\n" + "Общее количество: " + VarToStr(ASeries->GridView->DataGroups[btvdg_Reason_cnt_total->Index]->Values[AValueIndex]) +
            "\n-------" +
            "\nПроцент от общей суммы: " + VarToStr(ASeries->GridView->DataGroups[btvdg_Reason_pers_of_total->Index]->Values[AValueIndex]) + "%" +
            "\nНакопленный процент: " + VarToStr(ASeries->GridView->DataGroups[btvdg_Reason_pers_cumulative->Index]->Values[AValueIndex]) + "%";

}
//---------------------------------------------------------------------------

