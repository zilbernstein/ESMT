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

#include "UEdit_Work.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmEdit_Work *frmEdit_Work;
//---------------------------------------------------------------------------
__fastcall TfrmEdit_Work::TfrmEdit_Work(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmEdit_Work::Show( Strct_Work* te )
{
	te_ = te;
    tmr->Enabled = true;
    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Work::tmrTimer(TObject *Sender)
{
    tmr->Enabled = false;

    try
    {
        if ( te_->sheet_id == 0 )
			throw Exception ("< UEWRK-1 > : Исходная информация по инциденту еще не сохранена. Редактирование работ невозможно.\n");

        try
        {
            rwDateFinish->Properties->Value = DateTimeToVariant(te_->date_finish);
            rwRate->Properties->Value = te_->rating;
            rwDateFinish->Focused = true;
        }
        catch ( Exception &e )
        {
			throw Exception ("< UEWRK-2 > : Ошибка установки ключевых значений.\nРекомендуем сделать снимок экрана и обратиться к разработчикам.\n" + e.Message);
		}
    }
    catch ( Exception &e )
    {
        MessageBox(Handle, AnsiString(e.Message).c_str(), "Операция прервана", MB_ICONSTOP);
    	ModalResult = mrAbort;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Work::aCancelExecute(TObject *Sender)
{
	/*Отмена*/

    ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Work::FormKeyPress(TObject *Sender, wchar_t &Key)

{
  if ( Key == VK_RETURN )
		FindNextControl((TWinControl*)Sender,true,true, false)->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Work::aSaveExecute(TObject *Sender)
{
	/*Сохранить работу*/

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    try
    {
        dsa->CommandText = "SMT.INCIDENT_PKG.work_iu";

        dsa->Params->CreateParam(ftInteger, "o_team_id", ptInputOutput )->AsInteger = te_->team_id;
        dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput )->AsInteger 		= te_->sheet_id;
        dsa->Params->CreateParam(ftDateTime, "p_date_finish", ptInput )->AsDateTime = GetDateTimeFromValue(rwDateFinish->Properties->Value);
        dsa->Params->CreateParam(ftInteger, "p_rating", ptInput )->AsInteger 		= (int)rwRate->Properties->Value;

        dsa->Params->CreateParam( ftInteger, "p_change_user_id", ptInput )->AsInteger	= UserID;
        dsa->Params->CreateParam( ftInteger, "o_Err_Code", ptInputOutput );
        dsa->Params->CreateParam( ftString, "o_Err_Msg", ptInputOutput );

        TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

        if ( dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0 )
            throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
    }
    catch ( Exception &e )
    {
    	throw Exception ("< UEWRK-3 > : Ошибка сохранения работы.\n" + e.Message);
    }

    ModalResult = mrOk;
}
//---------------------------------------------------------------------------

