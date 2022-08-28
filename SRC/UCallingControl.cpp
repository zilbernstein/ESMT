//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UDMMain.h"
#include "config.h"
#include "public.h"
#include <stdio.h>

#include "UCallingControl.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxClasses"
#pragma link "cxGraphics"
#pragma link "dxBar"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsdxBarPainter"
#pragma link "dxBarExtItems"
#pragma link "cxControls"
#pragma link "cxCustomData"
#pragma link "cxData"
#pragma link "cxDataStorage"
#pragma link "cxDBData"
#pragma link "cxEdit"
#pragma link "cxFilter"
#pragma link "cxGrid"
#pragma link "cxGridCustomTableView"
#pragma link "cxGridCustomView"
#pragma link "cxGridDBTableView"
#pragma link "cxGridLevel"
#pragma link "cxGridTableView"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxNavigator"
#pragma link "cxStyles"
#pragma link "dxSkinscxPCPainter"
#pragma link "cxGridBandedTableView"
#pragma link "cxGridDBBandedTableView"
#pragma link "cxTL"
#pragma link "cxBarEditItem"
#pragma link "cxLabel"
#pragma link "cxCheckComboBox"
#pragma link "cxPC"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "cxCheckBox"
#pragma link "cxButtons"
#pragma link "cxContainer"
#pragma link "cxDropDownEdit"
#pragma link "cxMaskEdit"
#pragma link "cxTextEdit"
#pragma resource "*.dfm"
TfrmCallingControl *frmCallingControl;

const CheckedNull = 0;
const CheckedAll  = 1;

//---------------------------------------------------------------------------
__fastcall TfrmCallingControl::TfrmCallingControl(TComponent* Owner)
	: TForm(Owner)
{
	pc->ActivePage = tsMain;
	pc->HideTabs = true;
	peDepo->EditingText = "Количество: 0";
	ListDepoID = "";
	countS = 0;
	TDMMain::LogEvenEnterExit("Вход. Контроль заходов/выходов.");
	aSetForm->Execute();
	aLoadDepo->Execute();
}
//---------------------------------------------------------------------------
void __fastcall TfrmCallingControl::FormClose(TObject *Sender, TCloseAction &Action)
{
	TDMMain::LogEvenEnterExit("Выход. Контроль заходов/выходов.");
	Action = caFree;
}
//---------------------------------------------------------------------------

void __fastcall TfrmCallingControl::btvCallingControlDblClick(TObject *Sender)
{
	aDetail->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmCallingControl::aExportExecute(TObject *Sender)
{
	/* Экспорт в Excel */
    try
    {
		btvCallingControl->OptionsCustomize->ColumnGrouping = false;
		TcxGrid *grd = grdCallingControl;

		AnsiString vFileName = TemporaryFolder + "callcontrol_" + "_" + FormatDateTime("ddmmyy_hhnnss", Now()) + ".xls";
		ExportGridToExcel(vFileName, grd, true, true, true, "xls");

		char buf_str[2000];
        sprintf(buf_str, vFileName.c_str() );
        ShellExecute(Application->Handle, NULL, buf_str, NULL, NULL, SW_MAXIMIZE);
    }
	__finally
	{
		btvCallingControl->OptionsCustomize->ColumnGrouping = true;
	}
}
//---------------------------------------------------------------------------


void __fastcall TfrmCallingControl::clmnKodSostCustomDrawCell(TcxCustomGridTableView *Sender,
          TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
          bool &ADone)
{
	switch ((int) AViewInfo->GridRecord->Values[clmnKodSost->Index])
    {
		case 308:
			//ACanvas->Font->Color	= stlAttention_Middle->TextColor;
			ACanvas->Brush->Color	= DMMain->stlRunningRed->Color;
			break;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmCallingControl::aRefreshExecute(TObject *Sender)
{
	/* Обновить */

	if (countS == 0)
	{
		throw Exception ("Не отмеченно ни одного депо.");
	}
	else
	{
		if (countS == countM)
		{
			ListDepoID = "0";
		}
		else
		{
			ListDepoID = "";
			cdsDepo->First();
			while (!cdsDepo->Eof)
			{
				if (cdsDepo->FieldByName("checked")->AsInteger == 1)
				{
					ListDepoID = ListDepoID + cdsDepo->FieldByName("otr_kod")->AsString + ",";
				}
				cdsDepo->Next();
				Application->ProcessMessages();
			}
			cdsDepo->First();
		}
	}

	TcxGridDBBandedTableView *btv = btvCallingControl;
	TClientDataSet *cds = cdsCallingControl;
	TDataSource *ds 	= dsCallingControl;

   try
   {
		btv->OptionsView->NoDataToDisplayInfoText = RefreshText;
		btv->DataController->DataSource = 0;
		Update();
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "calling_control_pkg.smt_calling_control_2_0_cur";
		cds->Params->CreateParam(ftDateTime, "p_date_begin",  ptInput)->AsDateTime  = deDateBegin->Date;
		cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime  = deDateFinish->Date;
		cds->Params->CreateParam(ftDateTime, "p_depo_op",     ptInput)->AsString    = ListDepoID;
		cds->Params->CreateParam(ftCursor,  "O_CUR", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btv->OptionsView->NoDataToDisplayInfoText = NoDataTextDefault;
		btv->DataController->DataSource = ds;
   }
	catch (Exception &e)
	{
		btv->OptionsView->NoDataToDisplayInfoText = ErrorRefreshText;
		TDMMain::ShowAppException(AET_EXCEPTION, "< UCC-1 > : Ошибка загрузки заходов/выходов.", e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmCallingControl::aSetFormExecute(TObject *Sender)
{
	/* Установка прав доступа */
	aRefresh->Enabled  =  DMMain->IsFunction("f_code", "aControlCalling_aRefresh");  //Обновить
	aDetail->Enabled   =  DMMain->IsFunction("f_code", "aControlCalling_aRefresh");  //Просмотр
	aExport->Enabled   =  DMMain->IsFunction("f_code", "aControlCalling_aExport");   //Экспорт
}
//---------------------------------------------------------------------------
void __fastcall TfrmCallingControl::aLoadDepoExecute(TObject *Sender)
{
	/**/
	ListDepoCur(CheckedNull);
}
//---------------------------------------------------------------------------
void __fastcall TfrmCallingControl::clmnCheckedPropertiesChange(TObject *Sender)
{
	TClientDataSet *cds  =  cdsDepo;

	if (cds->FieldByName("checked")->AsInteger == 1)
	{
		countS++;
		if (countS == 15) TDMMain::ShowAppException(AET_WARNING, "Предупреждение", "Вы выбрали более 14 записей.");
	}
	else countS--;

	peDepo->EditValue = "Количество: " + IntToStr(countS);
}
//---------------------------------------------------------------------------

void __fastcall TfrmCallingControl::aCheckedAllNullExecute(TObject *Sender)
{
	/*Отмечаем все или убираем*/
	TClientDataSet *cds  =  cdsDepo;

	int val;
	if (countS == 0)
	{
		ListDepoCur(CheckedAll);
		ListDepo   = "Количество: " + IntToStr(cds->RecordCount) + " (все)";
		countS     = cds->RecordCount;
	}
	else
	{
		ListDepoCur(CheckedNull);
		ListDepo   = "Количество: 0";
		countS     = 0;
	}

	peDepo->EditValue = ListDepo;
	if (countS > 14) TDMMain::ShowAppException(AET_WARNING, "Предупреждение", "Вы выбрали более 14 записей.");
}
//---------------------------------------------------------------------------
void __fastcall TfrmCallingControl::ListDepoCur(int CheckedIndex)
{
	TcxGridDBTableView  *btv  =  btvDepo;
	TClientDataSet      *cds  =  cdsDepo;
	TDataSource         *ds   =  dsDepo;
	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "calling_control_pkg.smt_calling_control_depo_cur";
		cds->Params->CreateParam(ftCursor, "o_cur",     ptInputOutput);
		cds->Params->CreateParam(ftCursor, "p_checked", ptInput)->AsInteger = CheckedIndex;
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btv->DataController->DataSource = ds;
		countM = cds->RecordCount;
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UCC-2 > : Ошибка загрузки списка депо.", e.Message);
	}
}


