#ifndef ULoginDlgH
#define ULoginDlgH
#include "cxButtons.hpp"
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxLabel.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxTextEdit.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <Classes.hpp>
#include <Controls.hpp>
#include <ExtCtrls.hpp>
#include <Menus.hpp>
#include <StdCtrls.hpp>
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include "cxCheckBox.hpp"
//---------------------------------------------------------------------------
class TfrmLoginDlg : public TForm
{
	config cfg;

__published:

	TPanel *LoginPanel;
	TcxLabel *Label1;
	TcxLabel *cxLabel1;
	TcxTextEdit *LoginEdit;
	TcxTextEdit *PassEdit;
	TcxButton *OKBtn;
	TcxButton *CancelBtn;
	TdxStatusBar *StatusBar;
	TcxCheckBox *chbIsInternet;
	void __fastcall LoginEditKeyUp(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall PassEditKeyUp(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall OKBtnClick(TObject *Sender);
	void __fastcall CancelBtnClick(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall chbIsInternetPropertiesChange(TObject *Sender);

private:

public:

	virtual __fastcall TfrmLoginDlg(TComponent* Owner);
    virtual __fastcall ~TfrmLoginDlg();
};
//---------------------------------------------------------------------------
#endif
