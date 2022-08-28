//---------------------------------------------------------------------------

#ifndef uChronologyH
#define uChronologyH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxButtons.hpp"
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxDBExtLookupComboBox.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxImageComboBox.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxMemo.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.Menus.hpp>
#include "cxTextEdit.hpp"

struct RecordChronoNRE
{
	int chrono_id;
	int sheet_id;
	int user_id;
};

//---------------------------------------------------------------------------
class TfrmChronology : public TForm
{
__published:	// IDE-managed Components
	TPanel *pnl1;
	TcxButton *btnSave;
	TcxButton *btnCancel;
	TActionList *alChronology;
	TcxVerticalGrid *vgChronology;
	TcxEditorRow *rwMemo;
	TAction *aSave;
	TAction *aCancel;
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
private:
	RecordChronoNRE* te_;
public:
	__fastcall TfrmChronology(TComponent* Owner);
	TModalResult __fastcall Show(RecordChronoNRE* te);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmChronology *frmChronology;
//---------------------------------------------------------------------------
#endif
