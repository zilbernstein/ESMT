//---------------------------------------------------------------------------
#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include <memory>
#include <stdio.h>
#include "config.h"
#include "public.h"
#include "UDMMain.h"
#include "uBinFunction.h"
#include "Utils_JK.h"
#include "UUsers.h"
#include <stdio.h>

#include "uAdminUserEdit.h"
#include "uAddFunction.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxDBVGrid"
#pragma link "cxEdit"
#pragma link "cxGraphics"
#pragma link "cxGridBandedTableView"
#pragma link "cxInplaceContainer"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxStyles"
#pragma link "cxTextEdit"
#pragma link "cxTL"
#pragma link "cxVGrid"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "cxButtons"
#pragma link "cxPC"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "dxSkinscxPCPainter"
#pragma link "cxImageComboBox"
#pragma link "cxCustomData"
#pragma link "cxDBTL"
#pragma link "cxDropDownEdit"
#pragma link "cxMaskEdit"
#pragma link "cxTLData"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma link "dxStatusBar"
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
#pragma link "cxButtonEdit"
#pragma link "cxCheckBox"
#pragma link "cxContainer"
#pragma link "cxGroupBox"
#pragma link "cxProgressBar"
#pragma link "cxGridDBBandedTableView"
#pragma resource "*.dfm"
TfrmAdminUserEdit *frmAdminUserEdit;
//---------------------------------------------------------------------------
const int NullUserId      = -1; //Пользователь не создан
const int RandomInterval  = 15; //Максимавльное значение
//---------------------------------------------------------------------------
enum ACIIDec  {bA=65, bZ=90, sA=97, sZ=122, n0=48, n9=57};
enum Interval {iBegin=6, iEnd=12};
//---------------------------------------------------------------------------
__fastcall TfrmAdminUserEdit::TfrmAdminUserEdit(TComponent* Owner)
	: TForm(Owner)
{
	pc->ActivePage	= tsMain;
	pc->HideTabs	= true;
	Edit_ = false;
}
//---------------------------------------------------------------------------
TModalResult __fastcall TfrmAdminUserEdit::Show(TParamAdmin* pAdmin_)
{
	/* Показываем форму */

	pAdmin = pAdmin_;

	tmr->Enabled = true;

	return ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TfrmAdminUserEdit::FormClose(TObject *Sender, TCloseAction &Action)
{
	/* Закрываем форму */
	aCancel->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAdminUserEdit::aSaveExecute(TObject *Sender)
{
	/* Сохранить */
	std::auto_ptr<TClientDataSet> cds (new TClientDataSet(NULL));

	try
	{
		cds->CommandText = "SMT.U_USERS_ADMIN.u_users_iu";
		cds->Params->CreateParam(ftInteger, "o_user_id",           ptInputOutput)->AsInteger = pAdmin->id_user;
		cds->Params->CreateParam(ftInteger, "p_tab_nom",           ptInputOutput)->AsInteger = pAdmin->id_tam;
		cds->Params->CreateParam(ftString,  "p_password",          ptInput)->AsString        = VarToStr(rwUPassword->Properties->Value);
		cds->Params->CreateParam(ftString,  "p_user_name",         ptInput)->AsString        = VarToStr(rwULogin->Properties->Value);
		cds->Params->CreateParam(ftInteger, "p_pred_id",           ptInput)->AsInteger       = pAdmin->id_firm;
		if ((Pos("@", VarToStr(rwUEMail->Properties->Value)) != 0)||(VarToStr(rwUEMail->Properties->Value) == ""))
		{
			cds->Params->CreateParam(ftString,  "p_email",             ptInput)->AsString   = VarToStr(rwUEMail->Properties->Value);
		}
		else
		{
			throw Exception ("Некорректно указан E-Mail.");
		}
		cds->Params->CreateParam(ftString,  "p_last_name",         ptInput)->AsString        = VarToStr(rwULastName->Properties->Value);
		cds->Params->CreateParam(ftString,  "p_first_name",        ptInput)->AsString        = VarToStr(rwUFirstName->Properties->Value);
		cds->Params->CreateParam(ftString,  "p_patr_name",         ptInput)->AsString        = VarToStr(rwUPatrName->Properties->Value);
		cds->Params->CreateParam(ftInteger, "p_dol_id",            ptInput)->AsInteger       = rwUDol->Properties->Value;
		cds->Params->CreateParam(ftInteger, "p_asut_user_type_id", ptInput)->AsInteger       = 2;

		if ((VarToStr(rwUMPhone->Properties->Value)=="")&&(VarToStr(rwUWPhone->Properties->Value)==""))
		{
			throw Exception ("Не введен номер телефона.");
		}

		cds->Params->CreateParam(ftString,  "p_phone",             ptInput)->AsString        = VarToStr(rwUMPhone->Properties->Value);
		cds->Params->CreateParam(ftString,  "p_work_phone",        ptInput)->AsString        = VarToStr(rwUWPhone->Properties->Value);
		cds->Params->CreateParam(ftInteger, "p_admin_id",          ptInput)->AsInteger       = pAdmin->id_admin;
		cds->Params->CreateParam(ftInteger, "p_id_role",           ptInput)->AsInteger       = rwURole->Properties->Value;
		cds->Params->CreateParam(ftInteger, "p_role_kod_firm",     ptInput)->AsInteger       = pAdmin->id_firm_role;
		cds->Params->CreateParam(ftInteger, "o_err_code",          ptInputOutput);
		cds->Params->CreateParam(ftString,  "o_err_msg",           ptInputOutput);
		TDMMain::OpenDS(cds.get(), "EXEC", "CT", 1);

		pAdmin->id_user = cds->Params->ParamByName("o_user_id")->AsInteger;
		pAdmin->id_tam  = cds->Params->ParamByName("p_tab_nom")->AsInteger;

		if (cds->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (cds->Params->ParamByName("o_Err_Msg")->AsString);

		aRole->Execute();
		aLoadFunctionTree->Execute();
		Edit_ = true;
	}
	catch ( Exception &e )
	{
		throw Exception ("< UAUE-1 > : Сохранение пользователя: " + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmAdminUserEdit::aCancelExecute(TObject *Sender)
{
	/* Отмена */
	if (Edit_ == true)
		ModalResult = mrOk;
	else
		ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmAdminUserEdit::aLoadDolExecute(TObject *Sender)
{
	/* Загрузка справочника должностей */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	TcxEditorRow                *rw	   =  rwUDol;
	TcxImageComboBoxItem 		*itm   =  NULL;
	TcxImageComboBoxProperties  *cbep  =  (TcxImageComboBoxProperties*)rw->Properties->EditProperties;
	try
	{
		cbep->Items->Clear();

		dsa->CommandText = "SMT.U_USERS_ADMIN.u_nsi_dol_cur";
		dsa->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UAUE-2 > : Ошибка загрузки должностей.\n" + e.Message);
	}

	try
	{
		itm = cbep->Items->Add();
		if (itm)
		{
			itm->Description = " ";
			itm->Value		 = 0;
		}

		for (int i = 0; i < dsa->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if (itm)
			{
				itm->Description = dsa->FieldByName("dol_name")->AsString;
				itm->Value		 = dsa->FieldByName("dol_id")->AsInteger;
			}
			dsa->Next();
		}
		rw->Properties->Value = 0;
	}
	catch (Exception &e)
	{
		throw Exception ("< UAUE-3 > : Ошибка заполнения списка должностей.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmAdminUserEdit::aLoadUserExecute(TObject *Sender)
{
	/* Загрузка о пользователе */
	pAdmin->id_tam                  =  pAdmin->id_tam;      //Табельный номер
	rwULastName->Properties->Value  =  pAdmin->fam;         //Фамилия
	rwUFirstName->Properties->Value =  pAdmin->nam;         //Имя
	rwUPatrName->Properties->Value  =  pAdmin->mid;         //Отчество
	rwUDol->Properties->Value       =  pAdmin->id_dol;      //ID должность
	rwUTypeFirm->Properties->Value  =  pAdmin->tpFirm;      //Наименования типа предприятия
	rwUEMail->Properties->Value     =  pAdmin->email;       //E-mail
	rwUMPhone->Properties->Value    =  pAdmin->mphone;      //Моб.Телефон
	rwUWPhone->Properties->Value    =  pAdmin->wphone;      //Раб.Телефон
	rwULogin->Properties->Value     =  pAdmin->login;       //Логин
	rwUPassword->Properties->Value  =  pAdmin->pas;         //Пароль
	rwURole->Properties->Value      =  pAdmin->id_role;     //ID должности
}
//---------------------------------------------------------------------------

void __fastcall TfrmAdminUserEdit::aLoadFirmTreeExecute(TObject *Sender)
{
	/* Загрузка предприятия */
	TClientDataSet *cds =   cdsFirmTree;
	TcxTreeListNode *node = NULL;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.U_USERS_ADMIN.u_all_firm_tree_cur";
		cds->Params->CreateParam(ftCursor,  "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch ( Exception &e )
	{
		throw Exception ("< UAUE-5 > : Ошибка загрузки дерева предприятия.\n" + e.Message);
	}

	tlFirmTree->DataController->DataSource = dsFirmTree;

	if ( tlFirmTree->AbsoluteCount > 0 )
		tlFirmTree->TopVisibleNode->Expand(false);

	node = tlFirmTree->FindNodeByKeyValue(pAdmin->id_firm, tlFirmTree->Root, false, true);
	if ( node != NULL )
		node->Focused = true;

	rwUFirmTree->Properties->Value = cds->Lookup("kod_firm", pAdmin->id_firm, "firm_name");

}
//---------------------------------------------------------------------------

void __fastcall TfrmAdminUserEdit::aSelect_FirmExecute(TObject *Sender)
{
	// Выбор предприятия в дереве

	TcxTreeListNode *ln = NULL;
	ln = tlFirmTree->FocusedNode;

	if ( ln != NULL /*&& !ln->HasChildren*/ )
	{
		pAdmin->id_firm                = cdsFirmTree->FieldByName("kod_firm")->AsInteger;
		pAdmin->id_tp_firm             = cdsFirmTree->FieldByName("kod_firm_type")->AsInteger;
		rwUFirmTree->Properties->Value = cdsFirmTree->FieldByName("firm_name")->AsString;
		rwUTypeFirm->Properties->Value = cdsFirmTree->FieldByName("firm_type_mnemo")->AsString;
		vg->SetFocus();
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmAdminUserEdit::tlFirmTreeKeyPress(TObject *Sender, System::WideChar &Key)
{
	if ( Key == VK_RETURN ) aSelect_Firm->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAdminUserEdit::aGenPasExecute(TObject *Sender)
{
	/* Сгенерировать пароль */
	AnsiString  tmp  =  "";
	int Num;
	bool flag = false;
	int Len;

	while (flag!=true)
	{
		Len = Random(RandomInterval);
		if ((Len>=iBegin)&(Len<=iEnd))
		{
			flag = true;
		}
	}

	while (tmp.Length()!=Len)
	{
		Num = Random(125);
		if (((Num>=n0)&(Num<=n9))||
			((Num>=bA)&(Num<=bZ))||
			((Num>=sA)&(Num<=sZ)))
		{
			tmp = tmp + AnsiChar(Num);
		}
	}
	rwUPassword->Properties->Value =  tmp;
	rwUPassword->Focused           =  false;
}
//---------------------------------------------------------------------------


void __fastcall TfrmAdminUserEdit::aAddFunctionExecute(TObject *Sender)
{
	/* Добавить функцию */
	if (pAdmin->id_user == NullUserId)
	{
		throw Exception ("< UAUE-5 > : Ошибка добавлении функции. Перед добавлением новой функции, необходимо сохранить ранее введенные данные.\n");
		return;
	}
	std::auto_ptr<TfrmAddFunction> dlg (new TfrmAddFunction(this));
	if (mrOk == dlg->Show(pAdmin->id_user))
	{
		aLoadFunctionTree->Execute();
	}
}
//---------------------------------------------------------------------------


void __fastcall TfrmAdminUserEdit::aLoadRoleExecute(TObject *Sender)
{
	/* Правочника - загрузка ролей */
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	TcxEditorRow                *rw	   =  rwURole;
	TcxImageComboBoxItem 		*itm   =  NULL;
	TcxImageComboBoxProperties  *cbep  =  (TcxImageComboBoxProperties*)rw->Properties->EditProperties;
	try
	{
		cbep->Items->Clear();

		dsa->CommandText = "SMT.U_USERS_ADMIN.u_roles_cur";
		dsa->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UAUE-5 > : Ошибка загрузки справочника ролей.\n" + e.Message);
	}

	try
	{
		itm = cbep->Items->Add();
		if (itm)
		{
			itm->Description = " ";
			itm->Value		 = 0;
		}

		for (int i = 0; i < dsa->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if (itm)
			{
				itm->Description = dsa->FieldByName("name")->AsString;
				itm->Value		 = dsa->FieldByName("id_role")->AsInteger;
			}
			dsa->Next();
		}
		rw->Properties->Value = 0;
	}
	catch (Exception &e)
	{
		throw Exception ("< UAUE-6 > : Ошибка заполнения списка ролей.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmAdminUserEdit::aSelect_FirmRoleExecute(TObject *Sender)
{
	/* Выбор предприятия для роли */
	TcxTreeListNode *ln = NULL;
	ln = tlFirmRole->FocusedNode;

	if ( ln != NULL /*&& !ln->HasChildren*/ )
	{
		pAdmin->id_firm_role           = cdsFirmTreeRole->FieldByName("kod_firm")->AsInteger;
		rwUFirmRole->Properties->Value = cdsFirmTreeRole->FieldByName("firm_name")->AsString;
		vg->SetFocus();
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmAdminUserEdit::tlFirmRoleKeyPress(TObject *Sender, System::WideChar &Key)
{
	aSelect_FirmRole->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAdminUserEdit::aLoadFirmRoleExecute(TObject *Sender)
{
	/* Загрузка предприятий для ролей */
	TClientDataSet *cds =   cdsFirmTreeRole;
	TcxTreeListNode *node = NULL;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.APP_NSI_PKG.firm_tree_cur";

		cds->Params->CreateParam(ftInteger, "p_access", ptInput )->AsInteger = cfg_.DepotID;
		cds->Params->CreateParam(ftCursor,  "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch ( Exception &e )
	{
		throw Exception ("< UAUE-7 > : Ошибка загрузки дерева предприятий ролей.\n" + e.Message);
	}

	tlFirmRole->DataController->DataSource = dsFirmTreeRole;

	if ( tlFirmRole->AbsoluteCount > 0 )
		tlFirmRole->TopVisibleNode->Expand(false);

	node = tlFirmRole->FindNodeByKeyValue(pAdmin->id_firm_role, tlFirmRole->Root, false, true);
	if ( node != NULL )
		node->Focused = true;

	rwUFirmRole->Properties->Value = cds->Lookup("kod_firm", pAdmin->id_firm_role, "firm_name");
}
//---------------------------------------------------------------------------

void __fastcall TfrmAdminUserEdit::aRoleExecute(TObject *Sender)
{
	/* Загрузка функии роли */
	TClientDataSet           *cds = cdsRole;
	TDataSource              *ds  = dsRole;

	try
	{
		TDMMain::ClearDataSet(cds);

		tlRole->DataController->DataSource = 0;
		cds->CommandText = "SMT.U_USERS_ADMIN.u_user_role_cur";
		cds->Params->CreateParam(ftCursor, "o_cur",     ptInputOutput);
		cds->Params->CreateParam(ftInteger, "p_user_id", ptInput)->AsInteger = pAdmin->id_user;
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		tlRole->DataController->DataSource = ds;
	}
	catch ( Exception &e )
	{
		throw Exception ("< UAUE-8 > : Ошибка загрузки роли пользователя.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmAdminUserEdit::aLoadFunctionTreeExecute(TObject *Sender)
{
	/* Загрузка функций */

	TClientDataSet           *cds = cdsFunctionTree;
	TDataSource              *ds  = dsFunctionTree;

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT.U_USERS_ADMIN.u_user_function_cur";
		cds->Params->CreateParam(ftCursor, "o_cur",      ptInputOutput);
		cds->Params->CreateParam(ftInteger, "p_user_id", ptInput)->AsInteger = pAdmin->id_user;
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

	}
	catch ( Exception &e )
	{
		throw Exception ("< UAUE-9 > : Ошибка загрузки списка функций пользователя.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmAdminUserEdit::aDeleteFunctionExecute(TObject *Sender)
{
	/* Удаление функции у пользователя */

	TClientDataSet  *cds = cdsFunctionTree;

	cds->Filter    =  "checked = 1";
	cds->Filtered  =  true;

	if (btvFunction->DataController->RecordCount == 0)
	{
		cds->Filter    =  "";
		cds->Filtered  =  true;
		return;
	}

	cds->First();

	gb->Visible = true;
    gb->Caption = "Удаление...";
	pb->Properties->Max = cds->RecordCount;
	pb->Position = 0;

	while (!cds->Eof)
	{
		if (cds->FieldByName("checked")->AsInteger == 1)
		{
			std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
			try
			{
				dsa->CommandText = "SMT.U_USERS_ADMIN.u_user_function_del";
				dsa->Params->CreateParam(ftInteger, "p_user_id",     ptInput)->AsInteger  = pAdmin->id_user;
				dsa->Params->CreateParam(ftInteger, "p_id_function", ptInput)->AsInteger  = cdsFunctionTree->FieldByName("id_function")->AsInteger;
				dsa->Params->CreateParam(ftInteger, "p_kod_firm",    ptInput)->AsInteger  = cdsFunctionTree->FieldByName("kod_firm")->AsInteger;
				dsa->Params->CreateParam(ftInteger, "o_err_code",    ptInputOutput);
				dsa->Params->CreateParam(ftString,  "o_err_msg",     ptInputOutput);
				TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);
			}
			catch (Exception &e)
			{
				cds->Filter   = "";
				cds->Filtered = false;
				gb->Visible   = true;
				throw Exception ("< UAUE-10 > : Ошибка удалении функций пользователя.\n" + e.Message);
			}
		}
		cds->Next();
		pb->Position++;
		Application->ProcessMessages();
	}

	cds->Filter   = "";
	cds->Filtered = false;
	gb->Visible   = false;
	aLoadFunctionTree->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAdminUserEdit::tmrTimer(TObject *Sender)
{
	tmr->Enabled = false;
	try
	{
		gb->Visible         = true;
		pb->Properties->Max = 6;
		pb->Position        = 0;
		Update();

		gb->Caption = "Загрузка должностей";
		Update();
		aLoadDol->Execute();       // Загрузка должностей
		pb->Position++;
		Update();

		gb->Caption = "Загрузка дерева предприятий";
		Update();
		aLoadFirmTree->Execute();  //Загрузка девера предприятий
		pb->Position++;
		Update();

		gb->Caption = "Загрузка дерева предприятия ролей";
		Update();
		aLoadFirmRole->Execute();  //Загрузка дерева предприятия для ролей
		pb->Position++;
		Update();

		gb->Caption = "Загрузка ролей";
		Update();
		aLoadRole->Execute();      //Загрузка ролей
		pb->Position++;
		Update();

		gb->Caption = "Загрузка пользователя";
		Update();
		aLoadUser->Execute();      //Загрузка Пользователя
		pb->Position++;
		Update();

		gb->Caption = "Загрузка роли пользователя";
		Update();
		aRole->Execute();
		pb->Position++;
		Update();

		gb->Caption = "Загрузка функции пользователя";
		Update();
		aLoadFunctionTree->Execute();
		pb->Position++;
		Update();

		gb->Visible = false;

	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "Ошибка выполнения предварительных операций", e.Message);
		Application->Terminate();
	}
}
//---------------------------------------------------------------------------


