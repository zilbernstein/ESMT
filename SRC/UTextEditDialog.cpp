//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UTextEditDialog.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxGraphics"
#pragma link "cxLookAndFeels"
#pragma link "dxSkinCaramel"
#pragma resource "*.dfm"
TfrmTextEditDialog *frmTextEditDialog;
//---------------------------------------------------------------------------
__fastcall TfrmTextEditDialog::TfrmTextEditDialog(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmTextEditDialog::TextEditDialogShow( StrctTextEdit *tt )
{
	t = tt;
    edt->Text = t->res;
    lbl->Caption = t->lbltxt;
    edt->Properties->LookupItems = t->mru_list;

    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmTextEditDialog::cxButton2Click(TObject *Sender)
{
    t->res = "";
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------
void __fastcall TfrmTextEditDialog::btnOkClick(TObject *Sender)
{
	t->res = edt->Text;
    ModalResult = mrOk;
}
//---------------------------------------------------------------------------
void __fastcall TfrmTextEditDialog::edtKeyUp(TObject *Sender, WORD &Key, TShiftState Shift)

{
    btnOk->Enabled = ( edt->Text.Length() > 0 );
}
//---------------------------------------------------------------------------
void __fastcall TfrmTextEditDialog::edtKeyPress(TObject *Sender, wchar_t &Key)
{
	//if ( false == (Key >= 65 && Key <= 90) && false == (Key >= 96 && Key <= 105) )
    //	Key = 0;

   // Можт можно и получше сделать, но я пока не придумала, как...
   AnsiString prev_char = (edt->Text).SubString((edt->Text).Length(),1) ;
   if ( (	   Key != VK_BACK	&& Key != VK_CLEAR
   			&& Key != '1' && Key != '2' && Key != '3' && Key != '4' && Key != '5'
        	&& Key != '6' && Key != '7' && Key != '8' && Key != '9' && Key != '0'
            && Key != '_'
            && !( Key > L'а' && Key < L'я')
            && !( Key > L'А' && Key < L'Я')
            && !( Key > L'a' && Key < L'z')
            && !( Key > L'A' && Key < L'Z')

         )

   	  )
      Key = NULL ;

}
//---------------------------------------------------------------------------
