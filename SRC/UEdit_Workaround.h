//---------------------------------------------------------------------------

#ifndef UEdit_WorkaroundH
#define UEdit_WorkaroundH
#include "cxButtons.hpp"
#include "cxCalendar.hpp"
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxDBExtLookupComboBox.hpp"
#include "cxDBLookupComboBox.hpp"
#include "cxDBLookupEdit.hpp"
#include "cxDropDownEdit.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxImageComboBox.hpp"
#include "cxLabel.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookupEdit.hpp"
#include "cxMaskEdit.hpp"
#include "cxMemo.hpp"
#include "cxTextEdit.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <ActnList.hpp>
#include <Classes.hpp>
#include <Controls.hpp>
#include <ExtCtrls.hpp>
#include <Menus.hpp>
#include <StdCtrls.hpp>
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include <System.Actions.hpp>
#include <Vcl.ComCtrls.hpp>
#include "cxDateUtils.hpp"
#include "dxCore.hpp"

//---------------------------------------------------------------------------
struct Strct_Workaround
{
    int	sheet_id;
    int	wa_id;
    int wa_type_id;
    TDateTime date_begin;
    TDateTime date_finish;
};
//---------------------------------------------------------------------------
class TfrmEdit_Workaround : public TForm
{
__published:
	TTimer *tmr;
	TActionList *alWorkaround;
	TAction *aSave;
	TAction *aCancel;
	TPanel *Panel6;
	TcxButton *cxButton9;
	TcxButton *cxButton10;
	TcxLabel *cxLabel8;
	TcxLabel *cxLabel21;
	TcxDateEdit *deDateFinish;
	TAction *aLoad_WA_Type;
	TdxStatusBar *dxStatusBar1;
	TcxLabel *cxLabel1;
	TcxDateEdit *deDateBegin;
	TcxLookupComboBox *cbWAType;
	void __fastcall aLoad_WA_TypeExecute(TObject *Sender);
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall FormKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall aSaveExecute(TObject *Sender);
private:
	Strct_Workaround* te_;
public:
	TModalResult __fastcall Show( Strct_Workaround* te );
	__fastcall TfrmEdit_Workaround(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEdit_Workaround *frmEdit_Workaround;
//---------------------------------------------------------------------------
#endif
