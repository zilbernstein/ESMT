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

#include "uAddFunction.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxGraphics"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "cxControls"
#pragma link "cxCustomData"
#pragma link "cxDBTL"
#pragma link "cxInplaceContainer"
#pragma link "cxMaskEdit"
#pragma link "cxStyles"
#pragma link "cxTL"
#pragma link "cxTLData"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "cxClasses"
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
#pragma link "dxSkinscxPCPainter"
#pragma link "dxBar"
#pragma link "dxSkinsdxBarPainter"
#pragma link "cxPC"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "cxContainer"
#pragma link "cxDropDownEdit"
#pragma link "cxGridBandedTableView"
#pragma link "cxTextEdit"
#pragma link "dxBarExtItems"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma link "dxStatusBar"
#pragma link "cxCheckBox"
#pragma link "cxGroupBox"
#pragma link "cxProgressBar"
#pragma resource "*.dfm"
TfrmAddFunction *frmAddFunction;
//---------------------------------------------------------------------------
__fastcall TfrmAddFunction::TfrmAddFunction(TComponent* Owner)
	: TForm(Owner)
{
	pc->ActivePage	= tsMain;
    pc->HideTabs	= true;
}
//---------------------------------------------------------------------------
TModalResult __fastcall TfrmAddFunction::Show(int id_user)
{
	/* Показываем форму */

	id_usr = id_user;

	aLoadFunction->Execute();  //Загрузка функций

	aLoadFirmTree->Execute();

	return ShowModal();
}
void __fastcall TfrmAddFunction::FormClose(TObject *Sender, TCloseAction &Action)
{
	/* Закрываем форму */
	Action = caFree;
}
//---------------------------------------------------------------------------
void __fastcall TfrmAddFunction::aCancelExecute(TObject *Sender)
{
	/* Отмена */
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------
void __fastcall TfrmAddFunction::aSaveExecute(TObject *Sender)
{
	/* Сохранить */
	TClientDataSet      *cds  =  cdsFunctionTree;
	TDataSource         *ds   =  dsFunctionTree;
	std::auto_ptr<TClientDataSet> cda (new TClientDataSet(NULL));
	TcxGridDBTableView  *btv  =  btvFunction;

	cds->Filter = "checked = 1";
	cds->Filtered = true;

	gb->Visible         = true;
	pb->Properties->Max = cds->RecordCount;
	pb->Position        = 0;

	cds->First();

	while (!cds->Eof)
	{
		if ((cds->FieldByName("checked")->AsInteger == 1)&&(cds->FieldByName("FirmId")->AsInteger != 0))
		{
			try
			{
				TDMMain::ClearDataSet(cda.get());
				cda->CommandText = "SMT.U_USERS_ADMIN.u_user_function_iu";
				cda->Params->CreateParam(ftInteger, "o_user_id",     ptInput)->AsInteger  =  id_usr;
				cda->Params->CreateParam(ftInteger, "p_id_function", ptInput)->AsInteger  =  cds->FieldByName("id_function")->AsInteger;
				cda->Params->CreateParam(ftInteger, "p_kod_firm",    ptInput)->AsInteger  =  cds->FieldByName("FirmId")->AsInteger;
				cda->Params->CreateParam(ftInteger, "o_err_code",    ptInputOutput);
				cda->Params->CreateParam(ftString,  "o_err_msg",     ptInputOutput);
				TDMMain::OpenDS(cda.get(), "EXEC", "CT", 1);

				if (cda->Params->ParamByName("o_Err_Code")->AsInteger < 0)
					throw Exception ("< UAUE-16 > : Добавление функции: " + cda->Params->ParamByName("o_Err_Msg")->AsString);
			}
			catch ( Exception &e )
			{
				cds->Filter   = "";
				cds->Filtered = false;
				gb->Visible   = false;
				throw Exception (e.Message);
			}
		}
		cds->Next();
	}
	cds->Filter   = "";
	cds->Filtered = false;
	gb->Visible   = false;

	ModalResult   = mrOk;
}
//---------------------------------------------------------------------------
void __fastcall TfrmAddFunction::aLoadFunctionExecute(TObject *Sender)
{
	/* Загрузка функций */
	TClientDataSet      *cds  =  cdsFunctionTree;
	TDataSource         *ds   =  dsFunctionTree;
	TcxGridDBTableView  *btv  =  btvFunction;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.U_USERS_ADMIN.u_functions_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btv->DataController->DataSource = ds;

		cds->First();
		while(!cds->Eof)
			cds->Next();
		cds->First();

	}
	catch (Exception &e)
    {
		TDMMain::ShowAppException(AET_EXCEPTION, "< UWS-1 > : Ошибка загрузки дерева виновных сторон. ", e.Message);
		ModalResult = mrAbort;
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmAddFunction::aLoadFirmTreeExecute(TObject *Sender)
{
	/*  */
	TClientDataSet *cds = cdsFirmTree;
	TDataSource *ds = dsFirmTree;
	int vKodFirm = 0;
	TcxTreeListNode *node = NULL;

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT.APP_NSI_PKG.firm_tree_cur";
		cds->Params->CreateParam(ftInteger, "p_access", ptInput )->AsInteger = cfg_.DepotID;
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		tlFirmTree->DataController->DataSource = dsFirmTree;

		try
		{
			vKodFirm = cfg.ini->ReadInteger("frmIncident", "KodFirm", cfg_.DepotID); //DMMain->Get_CDS_Value(cds, "kod_firm", cfg.ini->ReadInteger("TfrmLocPark", "KodFirm", DepotID), "kod_firm" );
		}
		catch (Exception &e)
		{
			vKodFirm = cfg_.DepotID;
		}

	if (vKodFirm == 0)
		vKodFirm = cfg_.DepotID;

	if (tlFirmTree->AbsoluteCount > 0)
		tlFirmTree->TopVisibleNode->Expand(false);

	node = tlFirmTree->FindNodeByKeyValue(vKodFirm, tlFirmTree->Root, false, true);
	if (node != NULL)
		node->Focused = true;

	if (cds->Locate("kod_firm", vKodFirm, TLocateOptions()) == false)
		cds->First();

	cbFirmTree_->Text = cds->FieldByName("firm_name")->AsString;
	cbFirmTree_->Tag = cds->FieldByName("kod_firm")->AsInteger;

	}
	catch (Exception &e)
	{
		// эксепшен ловим в вызывающем методе
		throw Exception ("< UI-11 > : Ошибка загрузки дерева предприятий.\n" + e.Message);
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmAddFunction::aSelect_FrimExecute(TObject *Sender)
{
	/* Выбор предприятия в дереве */

	TcxTreeListNode *ln = NULL;
	ln = tlFirmTree->FocusedNode;

	if (ln != NULL /*&& !ln->HasChildren*/)
	{
		clmnFirm->EditValue   = cdsFirmTree->FieldByName("firm_name")->AsString;
		clmnFirmId->EditValue = cdsFirmTree->FieldByName("kod_firm")->AsInteger;

		cbFirmTree_->DroppedDown = false;
        btnSave->SetFocus();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmAddFunction::tlFirmTreeKeyPress(TObject *Sender, System::WideChar &Key)
{
	/* Выбор предприятия в дереве */
	aSelect_Frim->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAddFunction::clmCheckHeaderClick(TObject *Sender)
{
	TClientDataSet      *cds  =  cdsFunctionTree;
	TDataSource         *ds   =  dsFunctionTree;
	TcxGridDBTableView  *btv  =  btvFunction;

	int index;

	index = btv->Controller->FocusedRecordIndex;
	tmp = cds->FieldByName("object_name")->AsString;
	int val;

	if (IfZero() == 0)
		val = 1;
	else
		val = 0;

	cds->First();
	while (!cds->Eof)
	{
		if (cds->FieldByName("object_name")->AsString == tmp)
		{
			clmCheck->EditValue = val;
		}
		cds->Next();
	}
	btv->Controller->FocusedRowIndex = index;
}
//---------------------------------------------------------------------------
int __fastcall TfrmAddFunction::IfZero()
{
	TClientDataSet      *cds  =  cdsFunctionTree;
	TDataSource         *ds   =  dsFunctionTree;

	int count = 0;

	cds->First();

	while (!cds->Eof)
	{
		if (cds->FieldByName("object_name")->AsString == tmp)
		{
			if (cds->FieldByName("checked")->AsInteger == 1)
			{
				count++;
			}
		}
		cds->Next();
	}

	if (count == 0 )
		return 0;
	else
		return 1;
}

void __fastcall TfrmAddFunction::aChekedAllExecute(TObject *Sender)
{
	/* отметить все */
	TClientDataSet      *cds  =  cdsFunctionTree;
	TDataSource         *ds   =  dsFunctionTree;

	int val;

	if (IfZeroAll() == 0)
		val = 1;
	else
		val = 0;

	cds->First();
	while (!cds->Eof)
	{
		clmCheck->EditValue = val;
		cds->Next();
	}
	btvFunction->Controller->FocusedRowIndex = 1;
}
//---------------------------------------------------------------------------
int __fastcall TfrmAddFunction::IfZeroAll()
{
	TClientDataSet      *cds  =  cdsFunctionTree;
	TDataSource         *ds   =  dsFunctionTree;

	int count = 0;

	cds->First();

	while (!cds->Eof)
	{
		if (cds->FieldByName("checked")->AsInteger == 1)
		{
				count++;
		}
		cds->Next();
	}

	if (count == 0 )
		return 0;
	else
		return 1;
}
