//---------------------------------------------------------------------------

#ifndef U_Edit_ReasonH
#define U_Edit_ReasonH
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
#include "cxPC.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinscxPCPainter.hpp"
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.Menus.hpp>
#include "cxDropDownEdit.hpp"
#include "cxContainer.hpp"
#include "cxCustomData.hpp"
#include "cxDBLookupComboBox.hpp"
#include "cxDBTL.hpp"
#include "cxGroupBox.hpp"
#include "cxImageComboBox.hpp"
#include "cxMaskEdit.hpp"
#include "cxProgressBar.hpp"
#include "cxTextEdit.hpp"
#include "cxTLData.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include "cxMemo.hpp"



struct RecordReason
{
	int n_s, reason_id, parent_id;
	AnsiString sDescr;
	AnsiString sMnemo;
	AnsiString sReasonName;
};
//---------------------------------------------------------------------------
class Tfrm_Edit_Reason : public TForm
{
__published:	// IDE-managed Components
	TcxPageControl *pc;
	TcxTabSheet *tsEdit;
	TcxVerticalGrid *vg;
	TcxEditorRow *rwNameReason;
	TcxEditorRow *rwMnemo;
	TcxEditorRow *rwReasonParentTree;
	TPanel *Panel1;
	TcxButton *btnSave;
	TcxButton *btnCancel;
	TcxTabSheet *cxTabSheet2;
	TPanel *pnlFirmTree;
	TcxDBTreeList *tlReason_Tree;
	TcxDBTreeListColumn *clmnReasonName;
	TcxDBTreeListColumn *clmnParentReasonID;
	TcxDBTreeListColumn *clmnReasonID;
	TdxStatusBar *dxStatusBar4;
	TcxTabSheet *tsProgress;
	TcxGroupBox *gbLoading;
	TcxProgressBar *pb;
	TTimer *tmr;
	TDataSource *dsReasonTreeParent;
	TClientDataSet *cdsReasonTreeParent;
	TActionList *ActionList;
	TAction *aSelect_ReasonTree;
	TAction *aCancel;
	TAction *aLoadReasonTree;
	TAction *aSave;
	TDataSource *dsTCHR;
	TClientDataSet *cdsTCHR;
	TcxEditorRow *rwDescr;
	TAction *aLoadFields;
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall aLoadReasonTreeExecute(TObject *Sender);
	void __fastcall aSelect_ReasonTreeExecute(TObject *Sender);
	void __fastcall tlReason_TreeKeyPress(TObject *Sender, System::WideChar &Key);
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aLoadFieldsExecute(TObject *Sender);
private:
	RecordReason* ep_;
public:
	__fastcall Tfrm_Edit_Reason(TComponent* Owner);

	TModalResult __fastcall Show(RecordReason* srtReason);
};
//---------------------------------------------------------------------------
extern PACKAGE Tfrm_Edit_Reason *frm_Edit_Reason;
//---------------------------------------------------------------------------
#endif
