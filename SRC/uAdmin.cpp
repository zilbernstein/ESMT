//---------------------------------------------------------------------------
#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include <memory>
#include <stdio.h>

#include "uAdmin.h"
#include "config.h"
#include "public.h"
#include "UDMMain.h"
#include "uBinFunction.h"
#include "Utils_JK.h"
#include "UUsers.h"
#include <stdio.h>
#include "uAdminUserEdit.h"
#include "uEditRole.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxClasses"
#pragma link "dxBar"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsdxBarPainter"
#pragma link "cxButtons"
#pragma link "cxGraphics"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxControls"
#pragma link "cxCustomData"
#pragma link "cxData"
#pragma link "cxDataStorage"
#pragma link "cxDBData"
#pragma link "cxEdit"
#pragma link "cxFilter"
#pragma link "cxGrid"
#pragma link "cxGridBandedTableView"
#pragma link "cxGridCustomTableView"
#pragma link "cxGridCustomView"
#pragma link "cxGridDBBandedTableView"
#pragma link "cxGridLevel"
#pragma link "cxGridTableView"
#pragma link "cxNavigator"
#pragma link "cxStyles"
#pragma link "dxSkinscxPCPainter"
#pragma link "cxTL"
#pragma link "cxPC"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "cxContainer"
#pragma link "cxGroupBox"
#pragma link "cxProgressBar"
#pragma link "cxDropDownEdit"
#pragma link "cxGridDBTableView"
#pragma link "cxImageComboBox"
#pragma link "cxLabel"
#pragma link "cxMaskEdit"
#pragma link "cxTextEdit"
#pragma link "cxBarEditItem"
#pragma resource "*.dfm"
TfrmAdmin *frmAdmin;
//---------------------------------------------------------------------------
const int NullUserId = -1; //Пользователь не создан
//---------------------------------------------------------------------------
__fastcall TfrmAdmin::TfrmAdmin(TComponent* Owner)
	: TForm(Owner)
{
	aSetForm->Execute();
}
//---------------------------------------------------------------------------
void __fastcall TfrmAdmin::FormClose(TObject *Sender, TCloseAction &Action)
{
	Action = caFree;
}
//---------------------------------------------------------------------------
void __fastcall TfrmAdmin::aLoadUsersExecute(TObject *Sender)
{
	/* Загрузка пользователей */

	TClientDataSet           *cds = cdsUsers;
	TDataSource              *ds  = dsUsers;
	TcxGridDBBandedTableView *btv = btvAdmin;

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT.U_USERS_ADMIN.user_search";
		cds->Params->CreateParam(ftString, "p_lastname", ptInput)->AsString = edLastName->Text;
		cds->Params->CreateParam(ftString, "p_firstname", ptInput)->AsString = edFirstName->Text;
		cds->Params->CreateParam(ftString, "p_patrname", ptInput)->AsString	= edPatrName->Text;
		cds->Params->CreateParam(ftString, "p_login", ptInput)->AsString = edLogin->Text;
		cds->Params->CreateParam(ftInteger, "p_user_id", ptInput)->AsInteger = 0; // RTFM!!! - https://en.wikipedia.org/wiki/Magic_number_(programming)
		cds->Params->CreateParam(ftCursor, "o_cur",     ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btv->DataController->DataSource = ds;
		btv->ViewData->Expand(true);
	}
	catch ( Exception &e )
	{
		throw Exception ("< UU-3 > : Ошибка загрузки списка пользователей.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmAdmin::aAddExecute(TObject *Sender)
{
	/* Создать */
	switch (pc->ActivePageIndex)
	{
		case 0: {
					TParamAdmin pAdmin;
					pAdmin.id_admin = UserID;
					pAdmin.id_user  = NullUserId;
					pAdmin.id_firm, pAdmin.id_firm_role, pAdmin.id_tam, pAdmin.id_dol, pAdmin.id_role = 0;
					pAdmin.fam, pAdmin.nam, pAdmin.mid, pAdmin.login, pAdmin.pas, pAdmin.mphone, pAdmin.wphone, pAdmin.email =  "";
					std::auto_ptr<TfrmAdminUserEdit> dlg (new TfrmAdminUserEdit(this));
					dlg->Caption = "Создание нового пользователя";
					if (mrOk == dlg->Show(&pAdmin))
					{
						aRefresh->Execute();
					}
					break;
				}
		case 1: {
					std::auto_ptr<TfrmEditRole> dlg (new TfrmEditRole(this));
					dlg->Caption = "Создание новой роли";
					dlg->id_role = 0;
					if (mrOk == dlg->Show())
					{
						aRefresh->Execute();
					}
					break;
				}
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmAdmin::aEditExecute(TObject *Sender)
{
	/* Редактировать */

	switch (pc->ActivePageIndex)
	{
		case 0: {
					if (((TcxGridDBBandedTableView*)grdAdmin->ActiveView)->Controller->FocusedRow == NULL)
						return;
					TParamAdmin pAdmin;
					pAdmin.id_user       =  cdsUsers->FieldByName("UserID")->AsInteger;
					pAdmin.id_admin      =  cdsUsers->FieldByName("aUserID")->AsInteger;;
					pAdmin.id_firm       =  cdsUsers->FieldByName("KodFirm")->AsInteger;
					pAdmin.id_firm_role  =  cdsUsers->FieldByName("FirmRol")->AsInteger;
					pAdmin.id_tam        =  cdsUsers->FieldByName("TabNom")->AsInteger;
					pAdmin.fam           =  cdsUsers->FieldByName("LastName")->AsString;
					pAdmin.nam           =  cdsUsers->FieldByName("FirstName")->AsString;
					pAdmin.mid           =  cdsUsers->FieldByName("PatrName")->AsString;
					pAdmin.id_dol        =  cdsUsers->FieldByName("DolID")->AsInteger;
					pAdmin.id_role       =  cdsUsers->FieldByName("id_role")->AsInteger;
					pAdmin.login         =  cdsUsers->FieldByName("uLogin")->AsString;
					pAdmin.pas           =  cdsUsers->FieldByName("uPassword")->AsString;
					pAdmin.mphone        =  cdsUsers->FieldByName("MPhone")->AsString;
					pAdmin.wphone        =  cdsUsers->FieldByName("WPhone")->AsString;
					pAdmin.email         =  cdsUsers->FieldByName("EMail")->AsString;
					pAdmin.tpFirm        =  cdsUsers->FieldByName("TypeFirm")->AsString;

					std::auto_ptr<TfrmAdminUserEdit> dlg (new TfrmAdminUserEdit(this));
					dlg->Caption = "Редактирование пользователя";
					if (mrOk == dlg->Show(&pAdmin))
					{
						aRefresh->Execute();
					}
					break;
				}
		case 1: {
					if (((TcxGridDBBandedTableView*)gdRole->ActiveView)->Controller->FocusedRow == NULL)
						return;
					std::auto_ptr<TfrmEditRole> dlg (new TfrmEditRole(this));
					dlg->Caption = "Редактирование роли";
					dlg->id_role = cdsRole->FieldByName("id_role")->AsInteger;
					if (mrOk == dlg->Show())
					{
						aRefresh->Execute();
					}
					break;
				}
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmAdmin::aDeleteExecute(TObject *Sender)
{
	/* Удалить */
	switch (pc->ActivePageIndex)
	{
		case 0: {
					aUserDelete->Execute();
					break;
				}
		case 1: {
					aRoleDelete->Execute();
					break;
				}
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmAdmin::aExportExecute(TObject *Sender)
{
	/* Экспорт */
	switch (pc->ActivePageIndex)
	{
		case 0: {
					AnsiString vFileName = TemporaryFolder + "AdminUsers_list_" + FormatDateTime("ddmmyy_hhnnss", Now()) + ".xls";
					ExportExcel(grdAdmin, vFileName);
					break;
				}
		case 1: {
					AnsiString vFileName = TemporaryFolder + "Role_list_" + FormatDateTime("ddmmyy_hhnnss", Now()) + ".xls";
					ExportExcel(gdRole, vFileName);
					break;
				}
	}
}
//---------------------------------------------------------------------------
void TfrmAdmin::ExportExcel(TcxGrid* grd, AnsiString str)
{
	char buf_str[2000];
	TcxGrid *tgrd = grd;

	ExportGridToExcel(str, grd, true, true, true, "xls");
	sprintf(buf_str, str.c_str());
	ShellExecute(Application->Handle, NULL, buf_str, NULL, NULL, SW_MAXIMIZE);
}
//---------------------------------------------------------------------------
void __fastcall TfrmAdmin::aLoadRoleExecute(TObject *Sender)
{
	/* Загрузка ролей */
	TClientDataSet           *cds = cdsRole;
	TDataSource              *ds  = dsRole;
	TcxGridDBTableView       *btv = btvRole;

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT.U_USERS_ADMIN.u_roles_cur";
		cds->Params->CreateParam(ftCursor, "o_cur",     ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btv->DataController->DataSource = ds;
	}
	catch ( Exception &e )
	{
		throw Exception ("< UU-4 > : Ошибка загрузки списка ролей.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmAdmin::aUserDeleteExecute(TObject *Sender)
{
	/* Удалить пользователя */

	TClientDataSet    *cds = cdsUsers;
	TDataSource       *ds  = dsUsers;

	int id;

	try
	{
		id = cds->FieldByName("UserID")->AsInteger;
	}
	catch (Exception &e)
	{
		throw Exception ("< UA-1 > : Ошибка удаления пользователя."
						 "Обновите данные и выберите пользователя.\n");
	}

	int qr = MessageBox(NULL, "Вы уверены, что хотите удалить данного пользователя?\n", "Подтверждение", MB_YESNO);
	if (IDYES == qr)
	{
		try
		{
			std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
			dsa->CommandText = "SMT.U_USERS_ADMIN.u_users_del";
			dsa->Params->CreateParam(ftInteger, "p_user_id",     ptInput)->AsInteger  = id;
			dsa->Params->CreateParam(ftInteger, "o_err_code",    ptInputOutput);
			dsa->Params->CreateParam(ftString,  "o_err_msg",     ptInputOutput);
			TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

			aLoadUsers->Execute();
		}
		catch (Exception &e)
		{
			throw Exception ("< UA-2 > : Ошибка удаления пользователя.\n" + e.Message);
		}
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmAdmin::edLastNameKeyPress(TObject *Sender, System::WideChar &Key)
{
	if (Key == VK_RETURN)
		aLoadUsers->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAdmin::aSetFormExecute(TObject *Sender)
{
	/* Установка прав */
	aLoadUsers->Enabled =  DMMain->IsFunction("f_code", "aAdminNew_aRefresh"); //Обновить пользователей
	aLoadRole->Enabled  =  DMMain->IsFunction("f_code", "aAdminNew_aRefresh"); //Обновить роли
	aAdd->Enabled       =  DMMain->IsFunction("f_code", "aAdminNew_aAdd");     //Создать
	aEdit->Enabled      =  DMMain->IsFunction("f_code", "aAdminNew_aEdit");    //Редактировать
	aDelete->Enabled    =  DMMain->IsFunction("f_code", "aAdminNew_aDelete");  //Удалить
	aExport->Enabled    =  DMMain->IsFunction("f_code", "aAdminNew_aExport");  //Экспорт в XLS
}
//---------------------------------------------------------------------------
void __fastcall TfrmAdmin::aRoleDeleteExecute(TObject *Sender)
{
	/* Удаление роли */
	TClientDataSet    *cds = cdsRole;
	TDataSource       *ds  = dsRole;

	int id;

	try
	{
		id = cds->FieldByName("id_role")->AsInteger;
	}
	catch (Exception &e)
	{
		throw Exception ("< UA-5 > : Ошибка удаления роли."
						 "Обновите данные и выберите роль.\n");
	}

	int qr = MessageBox(NULL, "Вы уверены, что хотите удалить данную роль?\n", "Подтверждение", MB_YESNO);
	if (IDYES == qr)
	{
		try
		{
			std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
			dsa->CommandText = "SMT.U_USERS_ADMIN.u_roles_del";
			dsa->Params->CreateParam(ftInteger, "p_id_role",     ptInput)->AsInteger  = id;
			dsa->Params->CreateParam(ftInteger, "o_err_code",    ptInputOutput);
			dsa->Params->CreateParam(ftString,  "o_err_msg",     ptInputOutput);
			TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

			aLoadRole->Execute();
		}
		catch (Exception &e)
		{
			throw Exception ("< UA-6 > : Ошибка удаления роли.\n" + e.Message);
		}
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmAdmin::aRefreshExecute(TObject *Sender)
{
	aLoadUsers->Execute();
	aLoadRole->Execute();
}
//---------------------------------------------------------------------------

