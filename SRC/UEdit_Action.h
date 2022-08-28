//---------------------------------------------------------------------------

#ifndef UEdit_ActionH
#define UEdit_ActionH
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
struct Strct_Action
{
    int	sheet_id;
    int action_id;
    int leader_id;	// исполнитель
	int	action_type_id;
    AnsiString	action_descr;
    int	result_id;
    AnsiString non_execute_descr;
    int rating;
	TDateTime date_performance;
	int Flag; //Задача 3.9.3
};
//---------------------------------------------------------------------------
class TfrmEdit_Action : public TForm
{
__published:
	TTimer *tmr;
	TActionList *alAction;
	TAction *aSave;
	TAction *aCancel;
	TPanel *Panel6;
	TcxButton *cxButton9;
	TcxButton *cxButton10;
	TcxLabel *cxLabel8;
	TcxExtLookupComboBox *cbLeader;
	TcxLabel *cxLabel1;
	TcxLabel *cxLabel21;
	TcxDateEdit *deDatePerformance;
	TAction *aLoadLeader;
	TAction *aLoadActionType;
	TdxStatusBar *dxStatusBar1;
	TcxLabel *cxLabel2;
	TcxMemo *mmActionDescr;
	TcxLabel *lblRating;
	TcxImageComboBox *cbRating;
	TcxLabel *cxLabel4;
	TcxLabel *lblNonExecuteDescr;
	TcxMemo *mmNonExecuteDescr;
	TAction *aLoadResult;
	TcxLookupComboBox *cbActionType;
	TcxImageComboBox *cbResult;
	void __fastcall aLoadLeaderExecute(TObject *Sender);
	void __fastcall aLoadActionTypeExecute(TObject *Sender);
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall FormKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall aLoadResultExecute(TObject *Sender);
	void __fastcall cbResultPropertiesEditValueChanged(TObject *Sender);
private:
	Strct_Action* te_;
    int vDefaultActionType;
    int vDefaultResult;
public:
	TModalResult __fastcall Show( Strct_Action* te );
	__fastcall TfrmEdit_Action(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEdit_Action *frmEdit_Action;
//---------------------------------------------------------------------------
#endif
