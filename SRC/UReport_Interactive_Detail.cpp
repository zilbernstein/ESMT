#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include "uBinFunction.h"
#include "UDMMain.h"
#include "config.h"
#include "public.h"
#include "Utils_JK.h"
//#include "UException.h"
#include "UReport_Interactive_Detail.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxNavigator"
#pragma resource "*.dfm"
TfrmReport_Interactive_Detail *frmReport_Interactive_Detail;
//---------------------------------------------------------------------------
__fastcall TfrmReport_Interactive_Detail::TfrmReport_Interactive_Detail(TComponent* Owner)
	: TForm(Owner)
{

}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmReport_Interactive_Detail::Show( strctRID* rid )
{
	rid_ = rid;

    TClientDataSet	*cds = cdsDetail;
    TDataSource *ds = dsDetail;
    TcxGridDBBandedTableView *btv = btvReportDetail;

    try
    {
    	btv->DataController->DataSource = 0;
        TDMMain::ClearDataSet(cds);

        switch ( rid_->detail_type )
        {
            case DT_DEPO_EQ:
                cds->CommandText = "SMT.SMT_REPORT_PKG.tche_eq_detail_cur";
                cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime = rid_->date_begin;
                cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime = rid_->date_finish;
                cds->Params->CreateParam(ftInteger, "p_system_id", ptInput)->AsInteger = rid_->system_id;
                cds->Params->CreateParam(ftInteger, "p_kod_tjaga", ptInput)->AsInteger	= rid_->kod_tjaga;
                cds->Params->CreateParam(ftInteger, "p_kod_firm_service", ptInput)->AsInteger	= rid_->kod_firm_service;
                cds->Params->CreateParam(ftInteger, "p_kod_depo", ptInput)->AsInteger	= rid_->kod_depo;

            	break;
            case DT_DEPARTMENT_REASON:
                cds->CommandText = "SMT.SMT_REPORT_PKG.reason_detail_cur";
                cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime = rid_->date_begin;
                cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime = rid_->date_finish;
                cds->Params->CreateParam(ftInteger, "p_reason_id", ptInput)->AsInteger = rid_->reason_id;
                cds->Params->CreateParam(ftInteger, "p_kod_tjaga", ptInput)->AsInteger	= rid_->kod_tjaga;
                cds->Params->CreateParam(ftInteger, "p_kod_firm_service", ptInput)->AsInteger	= rid_->kod_firm_service;
                cds->Params->CreateParam(ftInteger, "p_kod_firm_department", ptInput)->AsInteger	= rid_->kod_firm_department;

            	break;

			case DT_NR_AUTO:
                cds->CommandText = "SMT.SMT_REPORT_PKG.nr_auto_detail_cur";
                cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime = rid_->date_begin;
                cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime = rid_->date_finish;
                cds->Params->CreateParam(ftInteger, "p_kod_tjaga", ptInput)->AsInteger	= rid_->kod_tjaga;
                cds->Params->CreateParam(ftInteger, "p_kod_firm_service", ptInput)->AsInteger	= rid_->kod_firm_service;

            	break;

            case DT_STATE:
                cds->CommandText = "SMT.SMT_REPORT_PKG.state_graph_detail_cur";
                cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime = rid_->date_begin;
                cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime = rid_->date_finish;
                cds->Params->CreateParam(ftInteger, "p_kod_firm_service", ptInput)->AsInteger	= rid_->kod_firm_service;
                cds->Params->CreateParam(ftInteger, "p_state_id", ptInput)->AsInteger	= rid_->filter_value_id;
                cds->Params->CreateParam(ftInteger, "p_kod_tjaga", ptInput)->AsInteger	= rid_->kod_tjaga;

            	break;

            case DT_SOURCE_TYPE:
                cds->CommandText = "SMT.SMT_REPORT_PKG.source_graph_detail_cur";
                cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime = rid_->date_begin;
                cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime = rid_->date_finish;
                cds->Params->CreateParam(ftInteger, "p_kod_firm_service", ptInput)->AsInteger	= rid_->kod_firm_service;
                cds->Params->CreateParam(ftInteger, "p_source_type_id", ptInput)->AsInteger	= rid_->filter_value_id;
                cds->Params->CreateParam(ftInteger, "p_kod_tjaga", ptInput)->AsInteger	= rid_->kod_tjaga;

            	break;

            case DT_SERIA:
                cds->CommandText = "SMT.SMT_REPORT_PKG.seria_graph_detail_cur";
                cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime = rid_->date_begin;
                cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime = rid_->date_finish;
                cds->Params->CreateParam(ftInteger, "p_kod_firm_service", ptInput)->AsInteger	= rid_->kod_firm_service;
                cds->Params->CreateParam(ftInteger, "p_kod_ser", ptInput)->AsInteger	= rid_->filter_value_id;

            	break;
    	}

        cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        btv->DataController->DataSource = ds;
    }
    catch ( Exception &e )
    {
    	throw Exception("< URID-1 > : Ошибка обновления данных.\n" + e.Message);
    }
	TDMMain::LogEvenEnterExit("Вход. Интерактивные отчеты. Детализация.");
	return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive_Detail::cxButton9Click(TObject *Sender)
{
	TDMMain::LogEvenEnterExit("Выход. Интерактивные отчеты. Детализация.");
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive_Detail::cxButton1Click(TObject *Sender)
{
	/*
		Экспорт в Excel
	*/

	TcxGrid *grd = grdIncident;
	/*AnsiString vFileName = TemporaryFolder + "interactive_detail_" + FormatDateTime("ddmmyy_hhnnss", Now()) + ".xls";
    ExportGridToExcel(vFileName, grd, true, true, true, "xls");
    char buf_str[2000];
    sprintf(buf_str, vFileName.c_str());
    ShellExecute(Application->Handle, NULL, buf_str, NULL, NULL, SW_MAXIMIZE);
    */

    dlgSave->FileName = rid_->filename;
	dlgSave->FileName = dlgSave->FileName + ".xls";

	if ( dlgSave->Execute() )
	{
		ExportGridToExcel(dlgSave->FileName, grd, true, true, true, "xls");

		char buf_str[2000];
		sprintf(buf_str, AnsiString(dlgSave->FileName).c_str() );
		ShellExecute(Application->Handle, NULL, buf_str, NULL, NULL, SW_MAXIMIZE);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmReport_Interactive_Detail::btvReportDetailCustomDrawCell(TcxCustomGridTableView *Sender,
          TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
          bool &ADone)
{
	if	( 	(int) AViewInfo->GridRecord->Values[clmn_repeatable->Index] > 2 )
	{
    	ACanvas->Font->Color = DMMain->stlAttention->TextColor;
        ACanvas->Brush->Color = clWindow;
    }
}
//---------------------------------------------------------------------------


void __fastcall TfrmReport_Interactive_Detail::btvReportDetailColumn2GetDisplayText(TcxCustomGridTableItem *Sender,
          TcxCustomGridRecord *ARecord, UnicodeString &AText)

{
	if ( ARecord != NULL && !AText.IsEmpty() )
		AText = FormatDateTime("dd.mm  hh:nn", StrToDateTime(AText));
}
//---------------------------------------------------------------------------

