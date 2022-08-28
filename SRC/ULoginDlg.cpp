#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>

#include <idhashsha.hpp>
#include <idsslopenssl.hpp>

#include "Log.h"
#pragma hdrstop

#include <memory>

#include "UDMMain.h"
#include "config.h"
#include "public.h"
#include "ULoginDlg.h"

#pragma resource "*.dfm"
using namespace std;
//---------------------------------------------------------------------------

__fastcall TfrmLoginDlg::~TfrmLoginDlg()
{
}
//---------------------------------------------------------------------------

__fastcall TfrmLoginDlg::TfrmLoginDlg(TComponent* Owner) : TForm(Owner)
{
	LoginEdit->Text = cfg.UserName;
    chbIsInternet->EditValue = cfg_.ini->ReadBool("UserOptions", "IsInternet", true);
}
//---------------------------------------------------------------------------

void __fastcall TfrmLoginDlg::LoginEditKeyUp(TObject *Sender, WORD &Key, TShiftState Shift)

{
	if (VK_RETURN == Key && true != LoginEdit->Text.IsEmpty())
		PassEdit->SetFocus();
}
//---------------------------------------------------------------------------
void __fastcall TfrmLoginDlg::PassEditKeyUp(TObject *Sender, WORD &Key, TShiftState Shift)

{
	if (VK_RETURN == Key && true != PassEdit->Text.IsEmpty())
	{
		OKBtn->SetFocus();
		OKBtnClick(Sender);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmLoginDlg::OKBtnClick(TObject *Sender)
{
	OKBtn->Enabled = false;
    TClientDataSet *cdsUF = DMMain->cdsUserFunction;
    std::auto_ptr<TClientDataSet> cds (new TClientDataSet(NULL));

	try
	{
		Idsslopenssl::LoadOpenSSLLibrary();
		TIdHashSHA256 *sha256 = new TIdHashSHA256;

		if (sha256->IsAvailable()) {
			cfg_.hashedPwd	= sha256->HashStringAsHex(PassEdit->Text);
            cfg_.hashedPwd	= cfg_.hashedPwd.LowerCase();
		}
		else
			ShowMessage("���������� OpenSSL �� ��������, ������� ��� ���������� ����� ���������� ����������");

		cfg_.userLogin	= LoginEdit->Text;
		cfg_.IsInternet = chbIsInternet->Checked;
//		printf("login = %s \r\n", cfg_.userLogin.c_str());
//		printf("pwd = %s \r\n", cfg_.hashedPwd.c_str());
		StatusBar->Panels->Items[0]->Text = "����������� ...";
		Update();

		TDMMain::ClearDataSet(cds.get());

		cds->CommandText = "SMT.SMT_ADM_PKG.authusr";

		cds->Params->CreateParam(ftString,  "p_login", ptInput )->AsString = LoginEdit->Text;
		cds->Params->CreateParam(ftString,  "p_pwd", ptInput )->AsString   = PassEdit->Text;
		cds->Params->CreateParam(ftInteger, "p_kod_firm", ptInputOutput);
		cds->Params->CreateParam(ftString,  "p_firm_name", ptInputOutput);
		cds->Params->CreateParam(ftString,  "p_dol_name", ptInputOutput);
		cds->Params->CreateParam(ftInteger, "p_user_id", ptInputOutput);
		cds->Params->CreateParam(ftInteger, "p_access_pred_id", ptInputOutput);
		cds->Params->CreateParam(ftString,  "p_access_level_name", ptInputOutput);
		cds->Params->CreateParam(ftLargeint, "p_id_session", ptInputOutput);

		cds->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput )->AsInteger;
		cds->Params->CreateParam(ftString,  "o_Err_Msg", ptInputOutput );

		TDMMain::OpenDS(cds.get(), "EXEC", "CT", 1);
		//TDMMain::OpenDS(cds.get(), "EXEC", "WEB-01", 1); // ���� �� ����� ���������

		// �������� �����/������
		if (cds->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (cds->Params->ParamByName("o_Err_Msg")->AsString);

		DepotID		= cds->Params->ParamByName("p_access_pred_id")->AsInteger;
		DepotName	= cds->Params->ParamByName("p_dol_name")->AsString + " - " + cds->Params->ParamByName("p_firm_name")->AsString;
		UserID		= cds->Params->ParamByName("p_user_id")->AsInteger;
		UserSes     = cds->Params->ParamByName("p_id_session")->AsLargeInt;

		cfg.UserName  = LoginEdit->Text;
		cfg_.UserName = DepotName;
		cfg.save();

		cfg.DepotID  = cds->Params->ParamByName("p_access_pred_id")->AsInteger; // ��������
		cfg_.DepotID = cds->Params->ParamByName("p_access_pred_id")->AsInteger;
		cfg_.ini->WriteBool("UserOptions", "IsInternet", cfg_.IsInternet);
		cfg_.UserID  = cds->Params->ParamByName("p_user_id")->AsInteger;

		StatusBar->Panels->Items[0]->Text = "����������� ��������� �������";

		delete sha256;
	}
	catch (Exception &e)
	{
		StatusBar->Panels->Items[0]->Text = "����������� �� ���������";
		Update();

		OKBtn->Enabled = true;

		StatusBar->Panels->Items[0]->Text = "�������� ����������� ...";
		Update();

        // ���� �������� �����/������, �������� �������, ����� - ��������
		if ( cds->Params->ParamByName("o_Err_Code")->AsInteger < 0 )
			TDMMain::ShowAppException(AET_RESTRICTION, "< ULDLG-1 > : �� ������� ��������� �����������.\n", cds->Params->ParamByName("o_Err_Msg")->AsString);
        else
			TDMMain::ShowAppException(AET_EXCEPTION, "< ULDLG-2 > : ������ �����������.\n", e.Message);

        return;
	}

	try
    {
		StatusBar->Panels->Items[0]->Text = "�������� ��������� �������";
		Update();

        TDMMain::ClearDataSet(cdsUF);
		cdsUF->CommandText = "SMT.ASUT_PERMISSION_PKG.get_user_functions";
        cdsUF->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
        cdsUF->Params->CreateParam(ftInteger, "i_asut_user_id", ptInput)->AsInteger = UserID;
		TDMMain::OpenDS(cdsUF, "OPEN", "CT", 1);
    }
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< ULDLG-3 > : ������ �������� ��������� �������.\n", e.Message);
        return;
    }

    ModalResult = mrOk;

	LoginPanel->BringToFront();
}
//---------------------------------------------------------------------------

void __fastcall TfrmLoginDlg::CancelBtnClick(TObject *Sender)
{
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmLoginDlg::FormShow(TObject *Sender)
{
	if (LoginEdit->Text.Length() > 0)
		PassEdit->SetFocus();
	else
		LoginEdit->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TfrmLoginDlg::chbIsInternetPropertiesChange(TObject *Sender)
{
	if (chbIsInternet->Checked) {
		cfg_.ini->WriteString("UserOptions", "IsInternet", "1");
	} else {
		cfg_.ini->WriteString("UserOptions", "IsInternet", "0");
	}
}
//---------------------------------------------------------------------------

