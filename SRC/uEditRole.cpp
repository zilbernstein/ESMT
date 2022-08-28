//---------------------------------------------------------------------------
#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop
#include "UException.h"

#include <memory>
#include <stdio.h>
#include "config.h"
#include "public.h"
#include "UDMMain.h"
#include "uBinFunction.h"
#include "Utils_JK.h"
#include "UUsers.h"
#include <stdio.h>

#include "uEditRole.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxEdit"
#pragma link "cxGraphics"
#pragma link "cxGridBandedTableView"
#pragma link "cxInplaceContainer"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxStyles"
#pragma link "cxTL"
#pragma link "cxVGrid"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "cxPC"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "dxSkinscxPCPainter"
#pragma link "cxCustomData"
#pragma link "cxDBTL"
#pragma link "cxMaskEdit"
#pragma link "cxTextEdit"
#pragma link "cxTLData"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "cxMemo"
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
#pragma link "cxGridDBBandedTableView"
#pragma link "cxContainer"
#pragma link "cxMCListBox"
#pragma resource "*.dfm"
TfrmEditRole *frmEditRole;
//---------------------------------------------------------------------------
__fastcall TfrmEditRole::TfrmEditRole(TComponent* Owner)
	: TForm(Owner)
{
	pc->ActivePage	= tsRole;
	pc->HideTabs	= true;
}
//---------------------------------------------------------------------------
TModalResult __fastcall TfrmEditRole::Show()
{
	/* Показываем форму */

	aLoadRole->Execute();          //Загрузка ролей

	aLoadFunctionSet->Execute();   //Загрузка установленных функций

	aLoadFunctionGet->Execute();   //Загрузка доступных функций

	return ShowModal();
}
void __fastcall TfrmEditRole::FormClose(TObject *Sender, TCloseAction &Action)
{
	/* Закрываем форму */
	if (CheckRole()==1)
	{
        throw Exception ("Ошибка: Не назначенны функции у роли.");
		return;
	}
	Action = caFree;
}
//---------------------------------------------------------------------------
void __fastcall TfrmEditRole::aCancelExecute(TObject *Sender)
{
	/* отмена */

	if (CheckRole()==1)
	{
		throw Exception ("Ошибка: Не назначенны функции у роли.");
		return;
	}
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------
void __fastcall TfrmEditRole::aSaveExecute(TObject *Sender)
{
	/* Сохранить */
	TClientDataSet *cdsGet = cdsFunctionGet;
	TClientDataSet *cdsSet = cdsFunctionSet;

	TcxGridDBBandedTableView  *btnGet = btvFnctGet;
	TcxGridDBBandedTableView  *btnSet = btvFnctSet;

	if (id_role == 0)
	{
		cdsGet->Filter   = "checked = 1";
		cdsGet->Filtered = true;

		if (btvFnctGet->DataController->RecordCount == 0)
		{
			aBegin->Execute();
			throw Exception ("Ошибка: Выберите хотя бы одну функцию.");
		}
	}

	cdsGet->Filter   = "checked = 1";
	cdsGet->Filtered = true;

	cdsSet->Filter   = "checked = 1";
	cdsSet->Filtered = true;

	cdsGet->First();
	while (!cdsGet->Eof)
	{
		if (cdsGet->FieldByName("checked")->AsInteger == 1)
		{
			id_function = cdsGet->FieldByName("id_function")->AsInteger;
			aAddFuntion->Execute();
		}
		cdsGet->Next();
	}

	cdsSet->First();
	while (!cdsSet->Eof)
	{
		if (cdsSet->FieldByName("checked")->AsInteger == 1)
		{
			id_function = cdsSet->FieldByName("id_function")->AsInteger;
			aDeleteFunction->Execute();
		}
		cdsSet->Next();
	}

	aSaveInfoRole->Execute();
//    aLoadRole->Execute();

	aBegin->Execute();
}
//---------------------------------------------------------------------------
void __fastcall TfrmEditRole::aDeleteFunctionExecute(TObject *Sender)
{
	/* Удалить функцию из роли*/
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	try
	{
		dsa->CommandText = "SMT.U_USERS_ADMIN.u_role_function_del";
		dsa->Params->CreateParam(ftInteger, "p_id_role",     ptInput)->AsInteger = id_role;
		dsa->Params->CreateParam(ftInteger, "p_id_function", ptInput)->AsInteger = id_function;
		dsa->Params->CreateParam(ftInteger, "o_err_code",    ptInputOutput);
		dsa->Params->CreateParam(ftString,  "o_err_msg",     ptInputOutput);
		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		aLoadFunctionGet->Execute();
	}
	catch (Exception &e)
	{
		throw Exception (e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmEditRole::aLoadRoleExecute(TObject *Sender)
{
	/* Роль */
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	try
	{
		dsa->CommandText = "SMT.U_USERS_ADMIN.u_roles_cur_rec";
		dsa->Params->CreateParam(ftCursor, "o_cur",      ptInputOutput);
		dsa->Params->CreateParam(ftInteger, "p_id_role", ptInput)->AsInteger = id_role;
		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);

		rwRoleName->Properties->Value  =  dsa->FieldByName("name")->AsString;
		rwRoleNote->Properties->Value  =  dsa->FieldByName("descr")->AsString;
	}
	catch (Exception &e)
	{
		throw Exception (e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditRole::aLoadFunctionGetExecute(TObject *Sender)
{
	/* Доступные функции */
	TClientDataSet            *cds = cdsFunctionGet;
	TDataSource               *ds  = dsFunctionGet;
	TcxGridDBBandedTableView  *btv = btvFnctGet;

	btv->DataController->DataSource = 0;
	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT.U_USERS_ADMIN.u_role_not_function_cur";
		cds->Params->CreateParam(ftCursor,  "o_cur",     ptInputOutput);
		cds->Params->CreateParam(ftInteger, "p_role_id", ptInput)->AsInteger = id_role;
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btv->DataController->DataSource = ds;
	}
	catch ( Exception &e )
	{
		throw Exception ("< UU-1 > : Ошибка загрузки доступных функций.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmEditRole::aLoadFunctionSetExecute(TObject *Sender)
{
	/* Загрузка установленных функций */
	TClientDataSet            *cds = cdsFunctionSet;
	TDataSource               *ds  = dsFunctionSet;
	TcxGridDBBandedTableView  *btv = btvFnctSet;

	btv->DataController->DataSource = 0;
	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT.U_USERS_ADMIN.u_role_function_cur";
		cds->Params->CreateParam(ftCursor,  "o_cur",     ptInputOutput);
		cds->Params->CreateParam(ftInteger, "p_role_id", ptInput)->AsInteger = id_role;
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btv->DataController->DataSource = ds;
	}
	catch ( Exception &e )
	{
		throw Exception ("< UU-1 > : Ошибка загрузки установленных функций.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditRole::aSaveInfoRoleExecute(TObject *Sender)
{
	/* Сохранение инфрмации о роли без добавление функций */
	std::auto_ptr<TClientDataSet> cds (new TClientDataSet(NULL));

	try
	{
		TDMMain::ClearDataSet(cds.get());
		cds->CommandText = "SMT.U_USERS_ADMIN.u_roles_iu";
		cds->Params->CreateParam(ftInteger, "o_id_role",     ptInputOutput)->AsInteger  =  id_role;
		cds->Params->CreateParam(ftString,  "p_name",        ptInput)->AsString         =  rwRoleName->Properties->Value;
		cds->Params->CreateParam(ftString,  "p_descr",       ptInput)->AsString         =  rwRoleNote->Properties->Value;
		cds->Params->CreateParam(ftInteger, "o_err_code",    ptInputOutput);
		cds->Params->CreateParam(ftString,  "o_err_msg",     ptInputOutput);
		TDMMain::OpenDS(cds.get(), "EXEC", "CT", 1);

		id_role = cds->Params->ParamByName("o_id_role")->AsInteger;

		if (cds->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (cds->Params->ParamByName("o_Err_Msg")->AsString);
	}
	catch (Exception &e)
	{
		throw Exception (e.Message);
	}
}
//---------------------------------------------------------------------------
int __fastcall TfrmEditRole::CheckRole()
{
	TClientDataSet *cdsSet = cdsFunctionSet;

	if ((id_role != 0)&&(btvFnctSet->DataController->RecordCount == 0))
	{
		return 1;
	}
	else
	{
		return 0;
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmEditRole::aAddFuntionExecute(TObject *Sender)
{
	/* Соханить роль с функцией */
	std::auto_ptr<TClientDataSet> cds (new TClientDataSet(NULL));

	try
	{
		TDMMain::ClearDataSet(cds.get());
		cds->CommandText = "SMT.U_USERS_ADMIN.u_roles_iu";
		cds->Params->CreateParam(ftInteger, "o_id_role",     ptInputOutput)->AsInteger  =  id_role;
		cds->Params->CreateParam(ftString,  "p_name",        ptInput)->AsString         =  rwRoleName->Properties->Value;
		cds->Params->CreateParam(ftString,  "p_descr",       ptInput)->AsString         =  rwRoleNote->Properties->Value;
		cds->Params->CreateParam(ftInteger, "p_id_function", ptInput)->AsInteger        =  id_function;
		cds->Params->CreateParam(ftInteger, "o_err_code",    ptInputOutput);
		cds->Params->CreateParam(ftString,  "o_err_msg",     ptInputOutput);
		TDMMain::OpenDS(cds.get(), "EXEC", "CT", 1);

		id_role = cds->Params->ParamByName("o_id_role")->AsInteger;

		if (cds->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (cds->Params->ParamByName("o_Err_Msg")->AsString);
       ModalResult = mrOk;
	}
	catch (Exception &e)
	{
		throw Exception (e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmEditRole::aBeginExecute(TObject *Sender)
{
	/*  */
	cdsFunctionGet->Filter   = "";
	cdsFunctionGet->Filtered = true;

	cdsFunctionSet->Filter   = "";
	cdsFunctionSet->Filtered = true;

	aLoadFunctionGet->Execute();
	aLoadFunctionSet->Execute();
}
//---------------------------------------------------------------------------

