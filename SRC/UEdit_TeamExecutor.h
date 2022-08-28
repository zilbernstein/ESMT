//---------------------------------------------------------------------------

#ifndef UEdit_TeamExecutorH
#define UEdit_TeamExecutorH
#include "cxButtons.hpp"
#include "cxCalendar.hpp"
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxDBExtLookupComboBox.hpp"
#include "cxDBLookupEdit.hpp"
#include "cxDropDownEdit.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxImageComboBox.hpp"
#include "cxLabel.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookupEdit.hpp"
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
#include "dxdbtrel.hpp"
#include "cxClasses.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxInplaceContainer.hpp"
#include "cxMemo.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include <System.Actions.hpp>

//---------------------------------------------------------------------------
struct Strct_TeamExecutor
{
    int	sheet_id;
    int team_id;
    int	department_id;
    int user_id;	// исполнитель
	int	work_id;
    AnsiString	descr;
    TDateTime date_begin;
};
//---------------------------------------------------------------------------
class TfrmEdit_TeamExecutor : public TForm
{
__published:
	TTimer *tmr;
	TActionList *alTeamExecutor;
	TAction *aSave;
	TAction *aCancel;
	TPanel *Panel6;
	TcxButton *cxButton9;
	TcxButton *cxButton10;
	TAction *aLoadExecutor;
	TAction *aLoadWork;
	TdxStatusBar *dxStatusBar1;
	TcxVerticalGrid *vg;
	TcxCategoryRow *cxCategoryRow1;
	TcxEditorRow *rwExecutor;
	TcxEditorRow *rwDescr;
	TcxEditorRow *rwDateBegin;
	TcxEditorRow *rwWork;
	void __fastcall aLoadExecutorExecute(TObject *Sender);
	void __fastcall aLoadWorkExecute(TObject *Sender);
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall FormKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall aSaveExecute(TObject *Sender);
private:
	Strct_TeamExecutor* te_;
public:
	TModalResult __fastcall Show( Strct_TeamExecutor* te );
	__fastcall TfrmEdit_TeamExecutor(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEdit_TeamExecutor *frmEdit_TeamExecutor;
//---------------------------------------------------------------------------
#endif
