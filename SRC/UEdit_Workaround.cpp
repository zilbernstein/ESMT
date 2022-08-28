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

#include "UEdit_Workaround.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxDateUtils"
#pragma link "dxCore"
#pragma link "cxDateUtils"
#pragma link "dxCore"
#pragma resource "*.dfm"
TfrmEdit_Workaround *frmEdit_Workaround;
//---------------------------------------------------------------------------
__fastcall TfrmEdit_Workaround::TfrmEdit_Workaround(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmEdit_Workaround::Show( Strct_Workaround* te )
{
	te_ = te;
    tmr->Enabled = true;
    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Workaround::aLoad_WA_TypeExecute(TObject *Sender)
{
	/*Загрузить список типов обходных решений*/

    TClientDataSet *cds = DMMain->cdsRSh_NSI_Workaround_Type;
    TDataSource *ds = DMMain->dsRSh_NSI_Workaround_Type;
    TcxLookupComboBox *cb = cbWAType;

    TDMMain::ClearDataSet(cds);
    cds->CommandText = "SMT.smt_nsi_pkg.smt_nsi_workaround_type_cur";
    cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

	try
	{
        cb->Properties->ListSource = 0;
        TDMMain::OpenDS(cds, "OPEN", "CT", 1);
        cb->Properties->ListSource = ds;
    }
	catch ( Exception &e )
	{
		throw Exception ("< UEWA-1 > : Ошибка загрузки списка типов обходных решений.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Workaround::tmrTimer(TObject *Sender)
{
    tmr->Enabled = false;

	try
    {
        if ( te_->sheet_id == 0 )
			throw Exception ("< UEWA-2 > : Исходная информация по инциденту еще не сохранена. Добавление обходного решения невозможно.\n");

    	aLoad_WA_Type->Execute();

        try
		{
            if ( te_->wa_type_id == 0 )
            	cbWAType->EditValue = DMMain->cdsRSh_NSI_Workaround_Type->FieldByName("id")->AsInteger;
            else
            	cbWAType->EditValue = te_->wa_type_id;

            deDateBegin->EditValue = DateTimeToVariant(te_->date_begin);
            deDateFinish->EditValue = DateTimeToVariant(te_->date_finish);
        }
        catch ( Exception &e )
        {
			throw Exception ("< UEWA-3 > : Ошибка установки ключевых значений.\nРекомендуем сделать снимок экрана и обратиться к разработчикам.\n" + e.Message);
        }
    }
	catch ( Exception &e )
    {
        MessageBox(Handle, AnsiString(e.Message).c_str(), "Операция прервана", MB_ICONSTOP);
    	ModalResult = mrAbort;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Workaround::aCancelExecute(TObject *Sender)
{
	/*Отмена*/

    ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Workaround::FormKeyPress(TObject *Sender, wchar_t &Key)

{
  if ( Key == VK_RETURN )
		FindNextControl((TWinControl*)Sender,true,true, false)->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Workaround::aSaveExecute(TObject *Sender)
{
	/*Сохранить обходное решение */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    try
    {
        dsa->CommandText = "SMT.INCIDENT_PKG.workaround_iu";

        dsa->Params->CreateParam(ftInteger, "o_wa_id", ptInputOutput )->AsInteger 	= te_->wa_id;
        dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput )->AsInteger 		= te_->sheet_id;
        dsa->Params->CreateParam(ftDateTime, "p_date_begin", ptInput )->AsDateTime 	= GetDateTimeFromValue(deDateBegin->EditValue);
		dsa->Params->CreateParam(ftDateTime, "p_date_finish", ptInput )->AsDateTime = GetDateTimeFromValue(deDateFinish->EditValue);
        dsa->Params->CreateParam(ftInteger, "p_wa_type_id", ptInput )->AsInteger 	= (int)cbWAType->EditValue;

        dsa->Params->CreateParam( ftInteger, "p_change_user_id", ptInput )->AsInteger	= UserID;
        dsa->Params->CreateParam( ftInteger, "o_Err_Code", ptInputOutput );
        dsa->Params->CreateParam( ftString, "o_Err_Msg", ptInputOutput );

        TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

        if ( dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0 )
            throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
    }
    catch ( Exception &e )
    {
    	throw Exception ("< UEWA-4 > : Ошибка сохранения Обходного решения.\n" + e.Message);
    }

    te_->wa_id = dsa->Params->ParamByName("o_wa_id")->AsInteger;

    ModalResult = mrOk;
}
//---------------------------------------------------------------------------

