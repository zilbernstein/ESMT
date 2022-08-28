//---------------------------------------------------------------------------

#ifndef UDic_EquipmentH
#define UDic_EquipmentH
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
//---------------------------------------------------------------------------
class TfrmDic_Equipment : public TForm
{
__published:	// IDE-managed Components
	TdxBarDockControl *dxBarDockControl1;
	TcxDBTreeList *tlEqwipmentTree;
	TcxDBTreeListColumn *clmn_EqName;
	TcxDBTreeListColumn *clmn_EqSD;
	TcxDBTreeListColumn *clmn_EqId;
	TdxBarManager *bmEqwipment;
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
	TClientDataSet *cdsEqwipmentTree;
	TDataSource *dsEqwipmentTree;
	TdxBarPopupMenu *pmEqwipmentTree;
	TActionList *ActionList2;
	TAction *aRefreshLrg;
	TAction *aAddLrg;
	TAction *aEditLrg;
	TAction *aDeleteLrg;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aRefreshLrgExecute(TObject *Sender);
	void __fastcall aAddLrgExecute(TObject *Sender);
	void __fastcall aEditLrgExecute(TObject *Sender);
	void __fastcall aDeleteLrgExecute(TObject *Sender);
	void __fastcall aFirmTreeCollapseExecute(TObject *Sender);
	void __fastcall aFirmTreeExpandExecute(TObject *Sender);
private:	// User declarations
	int if_child();
public:		// User declarations
	__fastcall TfrmDic_Equipment(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmDic_Equipment *frmDic_Equipment;
//---------------------------------------------------------------------------
#endif
