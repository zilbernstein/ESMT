
//---------------------------------------------------------------------------

#ifndef UCallingControlH
#define UCallingControlH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxClasses.hpp"
#include "cxGraphics.hpp"
#include "dxBar.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include <Vcl.ImgList.hpp>
#include <Vcl.ExtCtrls.hpp>
#include "dxBarExtItems.hpp"
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGrid.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxNavigator.hpp"
#include "cxStyles.hpp"
#include "dxSkinscxPCPainter.hpp"
#include <Data.DB.hpp>
#include "cxGridBandedTableView.hpp"
#include "cxGridDBBandedTableView.hpp"
#include "cxTL.hpp"
#include <Datasnap.DBClient.hpp>
#include "cxBarEditItem.hpp"
#include "cxLabel.hpp"
#include "cxGridExportLink.hpp"
#include "cxCheckComboBox.hpp"
#include "cxPC.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "cxCheckBox.hpp"
#include "cxButtons.hpp"
#include <Vcl.Menus.hpp>
#include "cxContainer.hpp"
#include "cxDropDownEdit.hpp"
#include "cxMaskEdit.hpp"
#include "cxTextEdit.hpp"
//---------------------------------------------------------------------------
class TfrmCallingControl : public TForm
{
__published:	// IDE-managed Components
	TdxBarManager *bmCallingControl;
	TdxBarGroup *dxBarGroup1;
	TdxBarDockControl *dxBarDockControl1;
	TPanel *Panel1;
	TdxBar *tbCommonButtons;
	TdxBarControlContainerItem *dxBarControlContainerItem1;
	TdxBarButton *btnRefresh;
	TActionList *ActionList;
	TAction *aRefresh;
	TClientDataSet *cdsCallingControl;
	TDataSource *dsCallingControl;
	TAction *aDetail;
	TcxBarEditItem *cxBarEditItem1;
	TdxBarDateCombo *deDateBegin;
	TdxBarDateCombo *deDateFinish;
	TdxBarButton *dxBarButton1;
	TAction *aExport;
	TAction *aSetForm;
	TdxBarControlContainerItem *dxBarControlContainerItem2;
	TcxPageControl *pc;
	TcxTabSheet *tsMain;
	TcxTabSheet *tsOther;
	TcxGrid *grdCallingControl;
	TcxGridDBBandedTableView *btvCallingControl;
	TcxGridDBBandedColumn *btvCallingControlColumn7;
	TcxGridDBBandedColumn *btvCallingControlColumn2;
	TcxGridDBBandedColumn *btvCallingControlColumn3;
	TcxGridDBBandedColumn *btvCallingControlColumn8;
	TcxGridDBBandedColumn *btvCallingControlColumn4;
	TcxGridDBBandedColumn *clmnStatsBefrCondtn;
	TcxGridDBBandedColumn *clmnDepot;
	TcxGridDBBandedColumn *clmnCodeConstn;
	TcxGridDBBandedColumn *clmnDeptOpertnInp;
	TcxGridDBBandedColumn *clmnCodStatusIn;
	TcxGridDBBandedColumn *clmnDtOprtnIn;
	TcxGridDBBandedColumn *clmnDeptOpertnOut;
	TcxGridDBBandedColumn *clmnCodStatusOut;
	TcxGridDBBandedColumn *clmnDtOprtnŸ„Â;
	TcxGridDBBandedColumn *clmnTmEcpt;
	TcxGridDBBandedColumn *clmnKodSost;
	TcxGridDBBandedColumn *clmnSheetID;
	TcxGridLevel *lvlCallingControl;
	TPanel *pnl1;
	TcxGridDBTableView *btvDepo;
	TcxGridLevel *lvlDepo;
	TcxGrid *grdDepo;
	TcxGridDBColumn *clmnChecked;
	TcxGridDBColumn *clmnDepo;
	TClientDataSet *cdsDepo;
	TDataSource *dsDepo;
	TAction *aLoadDepo;
	TAction *aCheckedAllNull;
	TcxPopupEdit *peDepo;
	TcxBarEditItem *cxBarEditItem2;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall btvCallingControlDblClick(TObject *Sender);
	void __fastcall aExportExecute(TObject *Sender);
	void __fastcall clmnKodSostCustomDrawCell(TcxCustomGridTableView *Sender, TcxCanvas *ACanvas,
          TcxGridTableDataCellViewInfo *AViewInfo, bool &ADone);
	void __fastcall aRefreshExecute(TObject *Sender);
	void __fastcall aSetFormExecute(TObject *Sender);
	void __fastcall aLoadDepoExecute(TObject *Sender);
	void __fastcall clmnCheckedPropertiesChange(TObject *Sender);
	void __fastcall aCheckedAllNullExecute(TObject *Sender);

private:	// User declarations
	AnsiString ListDepoID, ListDepo;
	int countS;
	int countM;

	void __fastcall ListDepoCur(int CheckedIndex);
public:		// User declarations
	__fastcall TfrmCallingControl(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmCallingControl *frmCallingControl;
//---------------------------------------------------------------------------
#endif
