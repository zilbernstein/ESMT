//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include <memory>

#include "UDMMain.h"
#include "config.h"
#include "public.h"
#include "Utils_JK.h"
#include "USql_Execute.h"
#include "Log.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxGraphics"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "cxClasses"
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
#pragma link "cxNavigator"
#pragma link "cxStyles"
#pragma link "dxSkinscxPCPainter"
#pragma link "cxGridBandedTableView"
#pragma link "cxGridDBBandedTableView"
#pragma resource "*.dfm"
TfrmSqlExecute *frmSqlExecute;
//---------------------------------------------------------------------------
__fastcall TfrmSqlExecute::TfrmSqlExecute(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmSqlExecute::cxButton10Click(TObject *Sender)
{
	/* Запустить запрос */

	TcxGridDBBandedTableView  *btv = grdView;
	TClientDataSet *cds            = cds;
	TDataSource *ds                = ds;

	btv->OptionsView->NoDataToDisplayInfoText = RefreshText;
	btv->DataController->DataSource = 0;

	//TDMMain::ClearDataSet(cds);

	try
	{
		cds->CommandText = "SELECT sheet_id FROM smt.smt_incident WHERE sheet_id = 315123;";
		//ShowMessage(cds->CommandText);
		//cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 0);

		btv->OptionsView->NoDataToDisplayInfoText = NoDataTextDefault;
		btv->DataController->DataSource = ds;

		ShowMessage("SqlRows was return: " + IntToStr(cds->RecordCount));
	}
	catch (Exception &e)
	{
		// кипиш пока устраивать не будем, попытаемся потом еще раз загрузить эти настройки
        throw Exception(e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmSqlExecute::cxButton9Click(TObject *Sender)
{
	/*Отмена*/

    ModalResult = mrCancel;
}
//---------------------------------------------------------------------------
void __fastcall TfrmSqlExecute::Button1Click(TObject *Sender)
{
  grdView->DataController->Filter->BeginUpdate();
  try {
	grdView->DataController->Filter->Root->Clear();
	grdView->DataController->Filter->Root->AddItem(grdViewColumn1, foLess, 1000, "1000");
	//TcxFilterCriteriaItemList *AItemList = grdView->DataController->Filter->Root->AddItemList(fboOr);
	//AItemList->AddItem(grdView, foLike, "A%", "A%");
	//AItemList->AddItem(grdView, foLike, "Z%", "Z%");
	String AText = grdView->DataController->Filter->FilterText;
	ShowMessage(AText);
  } __finally {
    grdView->DataController->Filter->EndUpdate();
  }
}
//---------------------------------------------------------------------------

