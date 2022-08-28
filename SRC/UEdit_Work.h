//---------------------------------------------------------------------------

#ifndef UEdit_WorkH
#define UEdit_WorkH
#include "cxButtons.hpp"
#include "cxCalendar.hpp"
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxDropDownEdit.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxImageComboBox.hpp"
#include "cxLabel.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxMaskEdit.hpp"
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
#include "cxClasses.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxInplaceContainer.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include <System.Actions.hpp>

//---------------------------------------------------------------------------
struct Strct_Work
{
    int	sheet_id;
    int team_id;
    TDateTime date_finish;
    int rating;
};
//---------------------------------------------------------------------------
class TfrmEdit_Work : public TForm
{
__published:
	TTimer *tmr;
	TActionList *alWork;
	TAction *aSave;
	TAction *aCancel;
	TPanel *Panel6;
	TcxButton *cxButton9;
	TcxButton *cxButton10;
	TdxStatusBar *dxStatusBar1;
	TcxVerticalGrid *vg;
	TcxCategoryRow *cxCategoryRow1;
	TcxEditorRow *rwDateFinish;
	TcxEditorRow *rwRate;
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall FormKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall aSaveExecute(TObject *Sender);
private:
	Strct_Work* te_;
public:
	TModalResult __fastcall Show( Strct_Work* tp );
	__fastcall TfrmEdit_Work(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEdit_Work *frmEdit_Work;
//---------------------------------------------------------------------------
#endif
