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
#include "UDMMain.h"
#include "Utils_JK.h"
#include "UUsers.h"
#include <stdio.h>
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxNavigator"
#pragma link "cxNavigator"
#pragma resource "*.dfm"
TfrmUsers *frmUsers;
int user_id;
//---------------------------------------------------------------------------
__fastcall TfrmUsers::TfrmUsers(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmUsers::Show( int p_user_id )
{
	user_id = p_user_id;

	aLoadInfo->Execute();

	TDMMain::LogEvenEnterExit("Вход. Адресная книга пользователей.");

    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmUsers::aLoadInfoExecute(TObject *Sender)
{
	/* Обновить */
	TClientDataSet           *cds = cdsUsers;
	TDataSource              *ds = dsUsers;
	TcxGridDBBandedTableView *btv = btvUsers;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.asut_user_pkg.users_cur";
		cds->Params->CreateParam(ftInteger, "p_user_id", ptInput)->AsInteger = user_id;
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btv->OptionsView->NoDataToDisplayInfoText 	= NoDataTextDefault;
		btv->DataController->DataSource = ds;
		btv->ViewData->Expand(true);
	}
	catch ( Exception &e )
	{
		throw Exception ("< UU-1 > : Ошибка загрузки списка пользователей.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmUsers::aCloseExecute(TObject *Sender)
{
	/* Закрыть форму */
	TDMMain::LogEvenEnterExit("Выход. Адресная книга пользователей.");
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmUsers::aExpExcelExecute(TObject *Sender)
{
	/* Экспорт в эксель */

	TcxGrid *grd = grdUsers;
	AnsiString vFileName = TemporaryFolder + "users_list_" + FormatDateTime("ddmmyy_hhnnss", Now()) + ".xls";
	ExportGridToExcel(vFileName, grd, true, true, true, "xls");

	char buf_str[2000];
	sprintf(buf_str, vFileName.c_str() );
	ShellExecute(Application->Handle, NULL, buf_str, NULL, NULL, SW_MAXIMIZE);
}
//---------------------------------------------------------------------------

