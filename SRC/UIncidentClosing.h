#ifndef UIncidentClosingH
#define UIncidentClosingH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "cxButtons.hpp"
#include "cxClasses.hpp"
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxImageComboBox.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxMemo.hpp"
#include "cxProgressBar.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <ActnList.hpp>
#include <ExtCtrls.hpp>
#include <ImgList.hpp>
#include <Menus.hpp>
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include <System.Actions.hpp>

//--------------------------------------------------------------------------
struct Strct_IncidentClosing
{
    int	sheet_id;
	int close_reason_id;
	int close_reason_new;
	AnsiString descr;
	int Flag;
	int row_id;	// привязка к ЛРЗ
};
//--------------------------------------------------------------------------
class TfrmIncidentClosing : public TForm
{
__published:
	TcxVerticalGrid *vg;
	TcxCategoryRow *cxCategoryRow1;
	TcxEditorRow *rwReason;
	TcxEditorRow *rwDescr;
	TPanel *Panel5;
	TcxButton *cxButton6;
	TcxButton *cxButton7;
	TdxStatusBar *dxStatusBar1;
	TdxStatusBarContainerControl *dxStatusBar1Container2;
	TcxProgressBar *pbLoading;
	TActionList *al;
	TAction *aCancel;
	TAction *aSave;
	TAction *aFillReason;
	TTimer *tmr;
	TcxCategoryRow *vgCategoryRow1;
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aFillReasonExecute(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall aSaveExecute(TObject *Sender);
private:
	Strct_IncidentClosing* te_;
public:
    TModalResult __fastcall Show( Strct_IncidentClosing* te );
	__fastcall TfrmIncidentClosing(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmIncidentClosing *frmIncidentClosing;
//---------------------------------------------------------------------------
#endif
