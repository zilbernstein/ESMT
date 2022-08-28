//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "config.h"
#include "public.h"
#include "UException.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmException *frmException;
//---------------------------------------------------------------------------
__fastcall TfrmException::TfrmException(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TfrmException::ShowAppException_(int exception_type, AnsiString info_text, AnsiString exception_text/*AppException &app_excpt*/)
{
	switch ( /*app_excpt.*/exception_type )
    {
        case AET_EXCEPTION:
        	this->Caption = "Ошибка";
        	break;
        case AET_WARNING:
        	this->Caption = "Внимание";
        	break;
        case AET_INFO:
        	this->Caption = "Информация";
        	break;
        case AET_RESTRICTION:
        	this->Caption = "Действие недоступно";
        	break;
    }

    aImage->ImageIndex = /*app_excpt.*/exception_type;
    mmInfoText->Text = /*app_excpt.*/info_text;
    mmExceptionText->Text = /*app_excpt.*/exception_text;


    ShowModal();
}

void __fastcall TfrmException::aImageExecute(TObject *Sender)
{
	/**/
}
//---------------------------------------------------------------------------




