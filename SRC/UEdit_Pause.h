//---------------------------------------------------------------------------

#ifndef UEdit_PauseH
#define UEdit_PauseH
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
#include "cxDateUtils.hpp"
#include "dxCore.hpp"
#include <System.Actions.hpp>
#include <Vcl.ComCtrls.hpp>
#include "cxInplaceContainer.hpp"
#include "cxStyles.hpp"
#include "cxVGrid.hpp"
#include "cxClasses.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxTL.hpp"

//---------------------------------------------------------------------------
struct Strct_Pause
{
    int	sheet_id;
    int	pause_id;
    int reason_id;
    TDateTime date_begin;
    TDateTime date_finish;
};
//---------------------------------------------------------------------------
class TfrmEdit_Pause : public TForm
{
__published:
	TTimer *tmr;
	TActionList *alPause;
	TAction *aSave;
	TAction *aCancel;
	TPanel *Panel6;
	TcxButton *cxButton9;
	TcxButton *cxButton10;
	TAction *aLoadReason;
	TdxStatusBar *dxStatusBar1;
	TcxVerticalGrid *vg;
	TcxCategoryRow *cxCategoryRow1;
	TcxEditorRow *rwFirm;
	TcxEditorRow *rwUser;
	TcxEditorRow *rwReason;
	TcxEditorRow *rwDescr;
	TcxEditorRow *rwDateBegin;
	TcxEditorRow *rwDateEnd;
	void __fastcall aLoadReasonExecute(TObject *Sender);
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall FormKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall aSaveExecute(TObject *Sender);
private:
	Strct_Pause* te_;
public:
	TModalResult __fastcall Show(Strct_Pause* te);
	__fastcall TfrmEdit_Pause(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEdit_Pause *frmEdit_Pause;
//---------------------------------------------------------------------------
#endif
