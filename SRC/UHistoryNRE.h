//---------------------------------------------------------------------------

#ifndef UHistoryNREH
#define UHistoryNREH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxButtons.hpp"
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxMemo.hpp"
#include "cxStyles.hpp"
#include "cxTextEdit.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.Menus.hpp>
#include "cxCalendar.hpp"
#include "cxDropDownEdit.hpp"
#include "cxContainer.hpp"
#include "cxDBEdit.hpp"
#include "cxImageComboBox.hpp"
#include "cxMaskEdit.hpp"

struct RecordHistoryNRE
{
	int hist_id;
	int sheet_id;
	int notice_sent;
	int rarse_spend;
	int error_apply;
	int user_id;
	TDateTime notice_date;
	AnsiString notice_num, date_apply;
};

//---------------------------------------------------------------------------
class TfrmHistoryNRE : public TForm
{
__published:	// IDE-managed Components
	TPanel *pnl1;
	TActionList *alHistoryNRE;
	TAction *aSave;
	TAction *aCancel;
	TcxVerticalGrid *vgHistoryNRE;
	TcxEditorRow *rwNoticeSent;
	TcxEditorRow *rwRarseSpend;
	TcxEditorRow *rwNumNotice;
	TcxEditorRow *rwDatetNotice;
	TcxEditorRow *rwErrApply;
	TcxEditorRow *rwDateApply;
	TcxButton *btnSave;
	TcxButton *btnCancel;
	void __fastcall rwWriterEditPropertiesChange(TObject *Sender);
	void __fastcall rwErrApplyEditPropertiesChange(TObject *Sender);
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
private:
	RecordHistoryNRE* te_;
public:
	__fastcall TfrmHistoryNRE(TComponent* Owner);
	TModalResult __fastcall Show(RecordHistoryNRE* te);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmHistoryNRE *frmHistoryNRE;
//---------------------------------------------------------------------------
#endif
