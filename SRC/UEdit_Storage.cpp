#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include <memory>

#include "UDMMain.h"
#include "config.h"
#include "public.h"
#include "Utils_JK.h"

#include "UEdit_Storage.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxDateUtils"
#pragma link "dxCore"
#pragma resource "*.dfm"
TfrmEdit_Storage *frmEdit_Storage;
//---------------------------------------------------------------------------
__fastcall TfrmEdit_Storage::TfrmEdit_Storage(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmEdit_Storage::Show( Strct_Storage* te )
{
	te_ = te;
    tmr->Enabled = true;
    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Storage::aLoad_FirmExecute(TObject *Sender)
{
	/* Загрузить список предприятий */

	TClientDataSet *cds		= DMMain->cdsRSh_NSI_Storage_Firm;
	TDataSource *ds			= DMMain->dsRSh_NSI_Storage_Firm;
	TcxLookupComboBox *cb	= cbFirm;

    TDMMain::ClearDataSet(cds);
    cds->CommandText = "SMT.smt_nsi_pkg.smt_nsi_storage_cur";
//	cds->Params->CreateParam(ftInteger, "p_access",      ptInput)->AsInteger = DepotID;
	cds->Params->CreateParam(ftInteger, "p_id_user",     ptInput)->AsInteger = DepotID;
	cds->Params->CreateParam(ftString,  "p_code_object", ptInput)->AsString  = "aIncident";
	cds->Params->CreateParam(ftCursor,  "o_cur",         ptInputOutput);

	try
	{
        cb->Properties->ListSource = 0;
        TDMMain::OpenDS(cds, "OPEN", "CT", 1);
        cb->Properties->ListSource = ds;
    }
	catch ( Exception &e )
	{
		throw Exception ("< UES-1 > : Ошибка загрузки списка предприятий-складов.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Storage::tmrTimer(TObject *Sender)
{
    tmr->Enabled = false;

    try
	{
        if (te_->sheet_id == 0)
			throw Exception ("< UES-2 > : Исходная информация по инциденту еще не сохранена. Добавление склада невозможно.\n");

    	aLoad_Firm->Execute();

        try
		{
            if (te_->firm_id == 0)
				cbFirm->EditValue		= DMMain->cdsRSh_NSI_Storage_Firm->FieldByName("kod_firm")->AsInteger;
			else
				cbFirm->EditValue		= te_->firm_id;

			deDate_Receive->EditValue	= DateTimeToVariant(te_->date_receive);
			mmDetail_Name->Text			= te_->detail_name;
        }
        catch (Exception &e)
        {
			throw Exception ("< UES-3 > : Ошибка установки ключевых значений.\nРекоменуем сделать снимок экрана и обратиться к разработчикам.\n" + e.Message);
		}
    }
    catch (Exception &e)
    {
        MessageBox(Handle, AnsiString(e.Message).c_str(), "Операция прервана", MB_ICONSTOP);
    	ModalResult = mrAbort;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Storage::aCancelExecute(TObject *Sender)
{
	/* Отмена */

    ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Storage::FormKeyPress(TObject *Sender, wchar_t &Key)

{
  if (Key == VK_RETURN)
  	FindNextControl((TWinControl*)Sender,true,true, false)->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Storage::aSaveExecute(TObject *Sender)
{
	/* Сохранить */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    try
    {
        dsa->CommandText = "SMT.INCIDENT_PKG.storage_iu";

		dsa->Params->CreateParam(ftInteger, "o_storage_id", ptInputOutput)->AsInteger	= te_->storage_id;
		dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger			= te_->sheet_id;
		dsa->Params->CreateParam(ftDateTime, "p_date_receive", ptInput)->AsDateTime		= deDate_Receive->EditValue;
		dsa->Params->CreateParam(ftInteger, "p_firm_id", ptInput)->AsInteger			= (int)cbFirm->EditValue;
		dsa->Params->CreateParam(ftString, "p_detail_name", ptInput)->AsString			= mmDetail_Name->Text;
		dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput)->AsInteger		= UserID;
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

        if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
            throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
    }
    catch (Exception &e)
    {
    	throw Exception ("< UES-4 > : Ошибка сохранения Склада.\n" + e.Message);
    }

    te_->storage_id = dsa->Params->ParamByName("o_storage_id")->AsInteger;

    ModalResult = mrOk;
}
//---------------------------------------------------------------------------

