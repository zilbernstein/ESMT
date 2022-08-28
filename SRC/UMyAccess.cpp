//---------------------------------------------------------------------------

#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include "UDMMain.h"
#include "config.h"
#include "public.h"
#include "UMyAccess.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxCustomData"
#pragma link "cxDBTL"
#pragma link "cxInplaceContainer"
#pragma link "cxMaskEdit"
#pragma link "cxTLData"
#pragma link "cxTLdxBarBuiltInMenu"
//#pragma link "dxSkinsCore"
#pragma resource "*.dfm"
TfrmMyAccess *frmMyAccess;
//---------------------------------------------------------------------------
__fastcall TfrmMyAccess::TfrmMyAccess(TComponent* Owner)
	: TForm(Owner)
{
	this->Caption = "������� ������� ������������: " + cfg_.UserName;
	aRefresh->Execute();
	TDMMain::LogEvenEnterExit("����. ������� ������� ������������.");
}
//---------------------------------------------------------------------------

void __fastcall TfrmMyAccess::aCancelExecute(TObject *Sender)
{
    TDMMain::LogEvenEnterExit("�����. ������� ������� ������������.");
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMyAccess::aRefreshExecute(TObject *Sender)
{
	aLoadRole->Execute();
	aLoadFunction->Execute();
	/*
	TClientDataSet *cds = cdsRole;

	try
	{

		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.ASUT_PERMISSION_PKG.get_user_role";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		cds->Params->CreateParam(ftInteger, "i_asut_user_id", ptInput)->AsInteger = cfg_.UserID;
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
		tlRole->DataController->DataSource = dsRole;

		if ( cdsRole->RecordCount == 0 )
			clmnRole->Caption->Text = "��� �� ��������� ����� � �������. ���������� � ���������������.";
		else
			clmnRole->Caption->Text = "����";

		tlFunction->DataController->DataSource = DMMain->dsUserFunction;

		if ( DMMain->cdsUserFunction->RecordCount == 0 )
			clmnFunction->Caption->Text = "��� �� ��������� ������� � �������";
		else
			clmnFunction->Caption->Text = "�������";

	}
	catch ( Exception &e )
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UMA-1 > : ������ �������� ������ �����. ���������� � ���������������.\n", e.Message);
	}
	*/
}
//---------------------------------------------------------------------------

void __fastcall TfrmMyAccess::aLoadRoleExecute(TObject *Sender)
{
	/* �������� ���� */
	TClientDataSet *cds = cdsRole;
	TDataSource    *ds  = dsRole;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.U_USERS_ADMIN.u_user_role_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		cds->Params->CreateParam(ftInteger, "i_asut_user_id", ptInput)->AsInteger = UserID;
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
		tlRole->DataController->DataSource = ds;
	}
	catch ( Exception &e )
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UMA-1 > : ������ �������� ������ �����. ���������� � ���������������.\n", e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmMyAccess::aLoadFunctionExecute(TObject *Sender)
{
	/* �������� ������� */
	TClientDataSet *cds = cdsFunction;
	TDataSource    *ds  = dsFunction;
	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.U_USERS_ADMIN.u_user_function_cur_tree";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		cds->Params->CreateParam(ftInteger, "i_asut_user_id", ptInput)->AsInteger = UserID;
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
		tlFunction->DataController->DataSource = ds;
	}
	catch ( Exception &e )
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UMA-2 > : ������ �������� ������ �������. ���������� � ���������������.\n", e.Message);
	}
}
//---------------------------------------------------------------------------

