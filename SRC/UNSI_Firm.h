//---------------------------------------------------------------------------

#ifndef UNSI_FirmH
#define UNSI_FirmH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "cxCheckBox.hpp"
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGraphics.hpp"
#include "cxGrid.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBBandedTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxImageComboBox.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxStyles.hpp"
#include "cxTextEdit.hpp"
#include "dxSkinCaramel.hpp"
#include <DB.hpp>
#include <ImgList.hpp>
#include "dxBar.hpp"
#include "dxBarExtItems.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include <ActnList.hpp>
#include "cxDBTL.hpp"
#include "cxInplaceContainer.hpp"
#include "cxMaskEdit.hpp"
#include "cxTL.hpp"
#include "cxTLData.hpp"
#include <DBClient.hpp>
#include "cxVGrid.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include "dxSkinsCore.hpp"
#include <System.Actions.hpp>
//---------------------------------------------------------------------------
class TfrmNSI_Firm : public TForm
{
__published:	// IDE-managed Components
	TdxBarManager *bmNSI_Firm;
	TdxBar *tbCommonButtons;
	TdxBar *bmLegend;
	TdxBarGroup *dxBarGroup1;
	TdxBarGroup *dxBarGroup2;
	TdxBarDockControl *dxBarDockControl1;
	TActionList *ActionList1;
	TAction *aRefresh;
	TAction *aAdd;
	TAction *aEdit;
	TcxDBTreeList *tlFirmTree;
	TcxDBTreeListColumn *clmn_FirmName;
	TcxDBTreeListColumn *clmn_FirmTypeMnemo;
	TClientDataSet *cdsFirmTree;
	TDataSource *dsFirmTree;
	TcxDBTreeListColumn *clmn_FirmType;
	TAction *aFirmTreeExpand;
	TAction *aFirmTreeCollapse;
	TdxBarPopupMenu *pmFirmTree;
	TdxBarButton *dxBarButton2;
	TdxBarButton *dxBarButton3;
	TdxBarButton *dxBarButton6;
	TcxDBTreeListColumn *tlFirmTreecxDBTreeListColumn1;
	TAction *aDelete;
	TActionList *ActionList2;
	TAction *aRefreshLrg;
	TAction *aAddLrg;
	TAction *aEditLrg;
	TAction *aDeleteLrg;
	TdxBarLargeButton *dxBarLargeButton1;
	TdxBarLargeButton *dxBarLargeButton2;
	TdxBarLargeButton *dxBarLargeButton3;
	TdxBarLargeButton *dxBarLargeButton4;
	TcxDBTreeListColumn *clmn_KodFirm;
	void __fastcall aRefreshExecute(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aAddExecute(TObject *Sender);
	void __fastcall aEditExecute(TObject *Sender);
	void __fastcall aFirmTreeExpandExecute(TObject *Sender);
	void __fastcall aFirmTreeCollapseExecute(TObject *Sender);
	void __fastcall aDeleteExecute(TObject *Sender);
private:	// User declarations
	int check_children();
public:		// User declarations
	__fastcall TfrmNSI_Firm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmNSI_Firm *frmNSI_Firm;
//---------------------------------------------------------------------------
#endif
