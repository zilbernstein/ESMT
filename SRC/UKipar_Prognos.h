//---------------------------------------------------------------------------

#ifndef UKipar_PrognosH
#define UKipar_PrognosH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxControls.hpp"
#include "cxGraphics.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include "cxClasses.hpp"
#include "cxContainer.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxDBEdit.hpp"
#include "cxDBTL.hpp"
#include "cxDropDownEdit.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGrid.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBBandedTableView.hpp"
#include "cxGridExportLink.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxGroupBox.hpp"
#include "cxHyperLinkEdit.hpp"
#include "cxImageComboBox.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLabel.hpp"
#include "cxMaskEdit.hpp"
#include "cxMemo.hpp"
#include "cxNavigator.hpp"
#include "cxPC.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "cxSplitter.hpp"
#include "cxStyles.hpp"
#include "cxTextEdit.hpp"
#include "cxTL.hpp"
#include "cxTLData.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include "dxBar.hpp"
#include "dxSkinscxPCPainter.hpp"
#include <Data.DB.hpp>
#include <Vcl.ExtCtrls.hpp>
#include "cxBarEditItem.hpp"
#include "cxGridChartView.hpp"
#include "cxGridDBChartView.hpp"
#include "dxBarExtItems.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include <Vcl.ImgList.hpp>
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include "cxCheckComboBox.hpp"
#include "cxDBExtLookupComboBox.hpp"
#include "cxShellComboBox.hpp"
#include "cxCalc.hpp"
#include "cxTrackBar.hpp"
#include <Datasnap.DBClient.hpp>
//---------------------------------------------------------------------------
class TfrmKiparPrognos : public TForm
{
__published:	// IDE-managed Components
	TdxStatusBar *StatusBar;
	TcxPageControl *pc;
	TcxTabSheet *tsMain;
	TcxGrid *grdKipar_Prognos;
	TcxGridDBBandedTableView *btvKipar_Prognos;
	TcxGridDBBandedTableView *btvIncidentChild;
	TcxGridDBBandedColumn *btvIncidentChildColumn1;
	TcxGridDBBandedColumn *btvIncidentChildColumn2;
	TcxGridDBBandedColumn *btvIncidentChildColumn3;
	TcxGridDBBandedColumn *btvIncidentChildColumn4;
	TcxGridDBBandedColumn *btvIncidentChildColumn5;
	TcxGridDBBandedColumn *btvIncidentChildColumn6;
	TcxGridDBBandedColumn *btvIncidentChildColumn7;
	TcxGridDBBandedColumn *btvIncidentChildColumn8;
	TcxGridDBBandedColumn *clmnIncidentChild_Criticality;
	TcxGridDBBandedColumn *btvIncidentChildColumn10;
	TcxGridDBBandedColumn *btvIncidentChildColumn11;
	TcxGridDBBandedColumn *btvIncidentChildColumn12;
	TcxGridDBBandedColumn *btvIncidentChildColumn13;
	TcxGridDBBandedColumn *btvIncidentChildColumn14;
	TcxGridDBBandedColumn *btvIncidentChildColumn15;
	TcxGridDBBandedColumn *btvIncidentChildColumn16;
	TcxGridDBBandedColumn *btvIncidentChildColumn17;
	TcxGridDBBandedColumn *btvIncidentChildColumn18;
	TcxGridDBBandedColumn *btvIncidentChildColumn19;
	TcxGridDBBandedColumn *btvIncidentChildColumn20;
	TcxGridDBBandedColumn *btvIncidentChildColumn21;
	TcxGridDBBandedColumn *clmnIncidentChild_Create_Mode;
	TcxGridDBBandedColumn *btvIncidentChildColumn23;
	TcxGridDBBandedColumn *btvIncidentChildColumn24;
	TcxGridDBBandedColumn *btvIncidentChildColumn25;
	TcxGridDBBandedColumn *btvIncidentChildColumn26;
	TcxGridDBBandedColumn *clmnIncidentChild_Can_Delete;
	TcxGridDBBandedColumn *btvIncidentChildColumn28;
	TcxGridDBBandedColumn *btvIncidentChildColumn29;
	TcxGridDBBandedColumn *btvIncidentChildColumn30;
	TcxGridLevel *lvlKipar_Prognos;
	TPanel *pnlGridTitle;
	TcxLabel *lblNeed2Refresh;
	TdxBarDockControl *dxBarDockControl1;
	TdxBarDockControl *dxBarDockControl2;
	TcxTabSheet *tsOthers;
	TPanel *pnlFirmTree;
	TdxStatusBar *dxStatusBar4;
	TPanel *pnlConditions;
	TcxPopupEdit *cbFirmTree_;
	TdxBarManager *bmIncident;
	TdxBar *tbCommonButtons;
	TdxBar *bmLegend;
	TdxBarButton *dxBarButton3;
	TdxBarDateCombo *deDateBegin;
	TdxBarDateCombo *deDateFinish;
	TdxBarStatic *dxBarStatic1;
	TdxBarStatic *dxBarStatic2;
	TdxBarStatic *dxBarStatic3;
	TdxBarStatic *dxBarStatic4;
	TdxBarStatic *dxBarStatic5;
	TdxBarStatic *dxBarStatic6;
	TdxBarStatic *dxBarStatic7;
	TdxBarStatic *dxBarStatic8;
	TdxBarStatic *dxBarStatic9;
	TdxBarButton *btnFilter_Period;
	TcxBarEditItem *cbProfile;
	TdxBarStatic *dxBarStatic10;
	TdxBarButton *dxBarButton10;
	TdxBarStatic *dxBarStatic11;
	TdxBarButton *dxBarButton12;
	TdxBarButton *dxBarButton14;
	TdxBarControlContainerItem *dxBarControlContainerItem1;
	TdxBarSubItem *dxBarSubItem1;
	TdxBarGroup *dxBarGroup1;
	TdxBarGroup *dxBarGroup2;
	TcxGridViewRepository *GridViewRepository;
	TcxGridDBChartView *chvRcvDynamic;
	TcxGridDBChartSeries *chvRcvDynamicSeries1;
	TdxBarPopupMenu *pmIncident;
	TdxBarControlContainerItem *dxBarControlContainerItem2;
	TdxBarControlContainerItem *dxBarControlContainerItem3;
	TcxBarEditItem *cxBarEditItem1;
	TcxBarEditItem *cxBarEditItem2;
	TdxBarSubItem *dxBarSubItem2;
	TcxBarEditItem *cxBarEditItem3;
	TcxBarEditItem *cxBarEditItem4;
	TdxBarContainerItem *dxBarContainerItem1;
	TdxBarSubItem *dxBarSubItem3;
	TdxBarEdit *dxBarEdit1;
	TcxBarEditItem *cxBarEditItem5;
	TdxBarCombo *dxBarCombo1;
	TdxBarCombo *dxBarCombo2;
	TdxBarSubItem *dxBarSubItem4;
	TdxBarButton *dxBarButton1;
	TcxBarEditItem *cxBarEditItem6;
	TdxBarLargeButton *dxBarLargeButton1;
	TcxBarEditItem *cxBarEditItem7;
	TdxBarSpinEdit *dxBarSpinEdit1;
	TcxGridDBBandedColumn *clmnSerLocom;
	TcxGridDBBandedColumn *clmnNumLocom;
	TcxGridDBBandedColumn *clmnSectLocom;
	TcxGridDBBandedColumn *clmnFil;
	TcxGridDBBandedColumn *clmnSLD;
	TcxGridDBBandedColumn *clmnNumListReg;
	TcxGridDBBandedColumn *clmnBsCmpnSO;
	TcxGridDBBandedColumn *clmnFIOOprtrPstDgnstcs;
	TcxGridDBBandedColumn *clmnTpScr;
	TcxGridDBBandedColumn *clmnDtTmIncident;
	TcxGridDBBandedColumn *clmnDtTmDgnstcstMsg;
	TcxGridDBBandedColumn *clmnFctIncdnt;
	TcxGridDBBandedColumn *clmnPlcEmrgnc;
	TcxGridDBBandedColumn *clmnCritcl;
	TcxGridDBBandedColumn *clmnCatgr;
	TcxImageComboBox *cbLocSer;
	TcxImageComboBox *cbDepoList;
	TClientDataSet *cdsIncident;
	TDataSource *dsIncident;
	TdxBarButton *btnRefresh;
	TActionList *ActionList;
	TAction *aRefresh;
	TcxGridDBBandedColumn *clmnFullName;
	TAction *aExport;
	TdxBarButton *dxBarButton2;
	TAction *aLoad_NSI_FirmTree;
	TClientDataSet *cdsFirmTree;
	TDataSource *dsFirmTree;
	TTimer *tmr;
	TcxDBTreeList *tlFirmTree;
	TcxDBTreeListColumn *clmn_FirmName;
	TcxDBTreeListColumn *clmn_FirmTypeMnemo;
	TcxDBTreeListColumn *clmn_KodFirm;
	TAction *aLoad_NSI_LocSer;
	TAction *aLoad_NSI_DepoList;
	TcxGridDBBandedColumn *clmnDepoName;
	TAction *aFilter_Period;
	TAction *ShowEdit_Kip_Prog;
	TcxGridDBBandedColumn *clmnFile;
	TcxGridDBBandedColumn *clmnIncidentID;
	TcxGridDBBandedColumn *clmnNode;
	TAction *aSelect_FirmTree;
	TAction *aSetForm;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aRefreshExecute(TObject *Sender);
	void __fastcall aExportExecute(TObject *Sender);
	void __fastcall aLoad_NSI_FirmTreeExecute(TObject *Sender);
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aLoad_NSI_LocSerExecute(TObject *Sender);
	void __fastcall aLoad_NSI_DepoListExecute(TObject *Sender);
	void __fastcall aFilter_PeriodExecute(TObject *Sender);
	void __fastcall ShowEdit_Kip_ProgExecute(TObject *Sender);
	void __fastcall btvIncidentDblClick(TObject *Sender);
	void __fastcall deDateBeginChange(TObject *Sender);
	void __fastcall deDateFinishChange(TObject *Sender);
	void __fastcall aSelect_FirmTreeExecute(TObject *Sender);
	void __fastcall aSetFormExecute(TObject *Sender);
	void __fastcall cbLocSerClick(TObject *Sender);
	void __fastcall cbDepoListPropertiesChange(TObject *Sender);
private:
	config	cfg;
public:
	__fastcall TfrmKiparPrognos(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmKiparPrognos *frmKiparPrognos;
//---------------------------------------------------------------------------
#endif
