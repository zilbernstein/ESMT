//---------------------------------------------------------------------------

#ifndef UTextEditDialogH
#define UTextEditDialogH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "cxButtons.hpp"
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxEdit.hpp"
#include "cxLabel.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxTextEdit.hpp"
#include "dxSkinsCore.hpp"
#include <Menus.hpp>
#include <ExtCtrls.hpp>
#include "cxGraphics.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
//---------------------------------------------------------------------------
struct StrctTextEdit
{
    AnsiString res;
    AnsiString lbltxt;
    TStrings* mru_list;
};

class TfrmTextEditDialog : public TForm
{
__published:	// IDE-managed Components
	TcxTextEdit *edt;
	TcxLabel *lbl;
	TPanel *Panel1;
	TcxButton *btnOk;
	TcxButton *cxButton2;
	void __fastcall cxButton2Click(TObject *Sender);
	void __fastcall btnOkClick(TObject *Sender);
	void __fastcall edtKeyUp(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall edtKeyPress(TObject *Sender, wchar_t &Key);
private:	// User declarations
	StrctTextEdit* t;
public:		// User declarations
	TModalResult __fastcall TextEditDialogShow( StrctTextEdit *tt );
	__fastcall TfrmTextEditDialog(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmTextEditDialog *frmTextEditDialog;
//---------------------------------------------------------------------------
#endif
