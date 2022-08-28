//---------------------------------------------------------------------------
#include <vcl.h>
#include "Log.h"
#include "UException.h"
#pragma hdrstop

#include <memory>
#include <stdio.h>
#include "config.h"
#include "public.h"
#include "UDMMain.h"

#include "uActivUsers.h"
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
#pragma link "cxBarEditItem"
#pragma link "cxCalendar"
#pragma link "cxLabel"
#pragma link "dxBar"
#pragma link "dxSkinsdxBarPainter"
#pragma link "cxGridBandedTableView"
#pragma link "dxBarExtItems"
#pragma link "cxGridDBBandedTableView"
#pragma link "cxTL"
#pragma link "cxVGrid"
#pragma resource "*.dfm"
TfrmActivUsers *frmActivUsers;
//---------------------------------------------------------------------------
__fastcall TfrmActivUsers::TfrmActivUsers(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmActivUsers::aLoadInfoExecute(TObject *Sender)
{
	/* Загрузка данных */
	TClientDataSet           *cds = cdsActivUser;
	TDataSource              *ds  = dsActivUser;
	TcxGridDBBandedTableView *btv = btvActivUsers;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.SMT_ADM_PKG.activ_users_cur_tree";
		cds->Params->CreateParam(ftCursor,   "o_cur",        ptInputOutput);
		cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime = dDateBegin->Date;
		cds->Params->CreateParam(ftDateTime, "p_date_end",   ptInput)->AsDateTime = bDateEnd->Date;

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btv->OptionsView->NoDataToDisplayInfoText 	= NoDataTextDefault;
		btv->DataController->DataSource = ds;
		btv->ViewData->Expand(true);
	}
	catch ( Exception &e )
	{
		throw Exception ("< UAU-1 > : Ошибка загрузки списка по активности пользователей.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmActivUsers::FormClose(TObject *Sender, TCloseAction &Action)
{
	/* Закрываем форму */

	Action = caFree;
}
//---------------------------------------------------------------------------

void __fastcall TfrmActivUsers::aExitExecute(TObject *Sender)
{
	/* Закрываем форму */

	Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmActivUsers::aExportExecute(TObject *Sender)
{
	/* Экспорт в Excel */
	TcxGrid *grd = grdActivUsers;
	AnsiString vFileName = TemporaryFolder + "ActivUsers_list_" + FormatDateTime("ddmmyy_hhnnss", Now()) + ".xls";
	ExportGridToExcel(vFileName, grd, true, true, true, "xls");

	char buf_str[2000];
	sprintf(buf_str, vFileName.c_str() );
	ShellExecute(Application->Handle, NULL, buf_str, NULL, NULL, SW_MAXIMIZE);
}
//---------------------------------------------------------------------------

