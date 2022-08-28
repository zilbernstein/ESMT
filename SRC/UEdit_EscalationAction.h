//---------------------------------------------------------------------------

#ifndef uEdit_EscalationActionH
#define uEdit_EscalationActionH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxButtonEdit.hpp"
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
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Menus.hpp>
//---------------------------------------------------------------------------
struct Strct_EscalationAction
{
    int	action_id;
	int	escal_id;
	int user_id;
    AnsiString	file_descr;
    AnsiString	file_name;
};
class TfrmEdit_EscalationAction : public TForm
{
__published:	// IDE-managed Components
	TdxStatusBar *dxStatusBar1;
	TPanel *Panel6;
	TcxButton *cxButton9;
	TcxButton *cxButton10;
	TcxVerticalGrid *vg;
	TcxCategoryRow *cxCategoryRow1;
	TcxEditorRow *rwFileName;
	TcxEditorRow *rwAction;
	TActionList *alAction;
	TAction *aSave;
	TAction *aCancel;
	TAction *aSelectFile;
	TAction *aLoadFileExtension;
	TTimer *tmr;
	TOpenDialog *dlgOpen;
	TcxEditorRow *rwDescription;
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aSelectFileExecute(TObject *Sender);
	void __fastcall rwFileNameEditPropertiesButtonClick(TObject *Sender, int AButtonIndex);
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);

private:
	Strct_EscalationAction* tea_;
public:
	TModalResult __fastcall Show(Strct_EscalationAction* tea);
	__fastcall TfrmEdit_EscalationAction(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEdit_EscalationAction *frmEdit_EscalationAction;
//---------------------------------------------------------------------------
#endif
