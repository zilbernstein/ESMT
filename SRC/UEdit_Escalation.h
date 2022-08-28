//---------------------------------------------------------------------------

#ifndef UEdit_EscalationH
#define UEdit_EscalationH
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
#include "cxInplaceContainer.hpp"
#include "cxStyles.hpp"
#include "cxVGrid.hpp"
#include "cxClasses.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxTL.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include <System.Actions.hpp>

//---------------------------------------------------------------------------
struct Strct_Escalation
{
    int	sheet_id;
    int	escal_id;
    int kod_firm;
    TDateTime date_begin;
    TDateTime date_finish;
    int	user_id;
    int reason_id;
    AnsiString descr;
};
//---------------------------------------------------------------------------
class TfrmEdit_Escalation : public TForm
{
__published:
	TTimer *tmr;
	TActionList *alEscalation;
	TAction *aSave;
	TAction *aCancel;
	TPanel *Panel6;
	TcxButton *cxButton9;
	TcxButton *cxButton10;
	TAction *aLoad_Firm;
	TdxStatusBar *dxStatusBar1;
	TAction *aLoad_User;
	TAction *aLoad_Reason;
	TcxVerticalGrid *vg;
	TcxCategoryRow *cxCategoryRow1;
	TcxEditorRow *rwUser;
	TcxEditorRow *rwFirm;
	TcxEditorRow *rwDescr;
	TcxEditorRow *rwReason;
	void __fastcall aLoad_FirmExecute(TObject *Sender);
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall FormKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall aLoad_UserExecute(TObject *Sender);
	void __fastcall aLoad_ReasonExecute(TObject *Sender);
private:
	Strct_Escalation* te_;
public:
	TModalResult __fastcall Show( Strct_Escalation* te );
	__fastcall TfrmEdit_Escalation(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEdit_Escalation *frmEdit_Escalation;
//---------------------------------------------------------------------------
#endif
