//---------------------------------------------------------------------------

#ifndef UReasonH
#define UReasonH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxDBTL.hpp"
#include "cxGraphics.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxMaskEdit.hpp"
#include "cxStyles.hpp"
#include "cxTextEdit.hpp"
#include "cxTL.hpp"
#include "cxTLData.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include "cxVGrid.hpp"
#include "dxBar.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.ImgList.hpp>
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class Tfrm_Reason : public TForm
{
__published:	// IDE-managed Components
	TdxBarDockControl *dxBarDockControl1;
	TdxBarManager *bm_Reason;
	TdxBar *tbCommonButtons;
	TdxBar *bmLegend;
	TdxBarButton *dxBarButton2;
	TdxBarButton *dxBarButton3;
	TdxBarButton *dxBarButton6;
	TdxBarLargeButton *dxBarLargeButton1;
	TdxBarLargeButton *dxBarLargeButton2;
	TdxBarLargeButton *dxBarLargeButton3;
	TdxBarLargeButton *dxBarLargeButton4;
	TdxBarGroup *dxBarGroup1;
	TdxBarGroup *dxBarGroup2;
	TActionList *ActionList1;
	TAction *aRefresh;
	TAction *aAdd;
	TAction *aEdit;
	TAction *aDelete;
	TAction *aFirmTreeExpand;
	TAction *aFirmTreeCollapse;
	TClientDataSet *cdsReasonTree;
	TDataSource *dsReasonTree;
	TdxBarPopupMenu *pm_reason;
	TActionList *ActionList2;
	TAction *aRefreshLrg;
	TAction *aAddLrg;
	TAction *aEditLrg;
	TAction *aDeleteLrg;
	TAction *aLoad_Reason;
	TPanel *pnlReasonTree;
	TcxDBTreeList *tlReasonTree;
	TcxDBTreeListColumn *clmn_NSI_ReasonName;
	TcxDBTreeListColumn *clmn_NSI_ReasonMNEMO;
	TAction *aSelect_for_Delete;
	TcxDBTreeListColumn *clmn_NSI_ReasonDescr;
	TAction *aQueryDelete;
	void __fastcall aAddLrgExecute(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aFirmTreeCollapseExecute(TObject *Sender);
	void __fastcall aFirmTreeExpandExecute(TObject *Sender);
	void __fastcall aRefreshExecute(TObject *Sender);
	void __fastcall aEditExecute(TObject *Sender);
	void __fastcall aDeleteExecute(TObject *Sender);
	void __fastcall aQueryDeleteExecute(TObject *Sender);
private:	// User declarations
	int check_children();
public:		// User declarations
	__fastcall Tfrm_Reason(TComponent* Owner);

};
//---------------------------------------------------------------------------
extern PACKAGE Tfrm_Reason *frm_Reason;
//---------------------------------------------------------------------------
#endif
