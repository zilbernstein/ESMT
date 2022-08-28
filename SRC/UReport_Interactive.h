//---------------------------------------------------------------------------

#ifndef UReport_InteractiveH
#define UReport_InteractiveH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxDBTL.hpp"
#include "cxGraphics.hpp"
#include "cxInplaceContainer.hpp"
#include "cxMaskEdit.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxTLData.hpp"
#include <ExtCtrls.hpp>
#include "cxCalendar.hpp"
#include "cxContainer.hpp"
#include "cxDropDownEdit.hpp"
#include "cxEdit.hpp"
#include "cxLabel.hpp"
#include "cxTextEdit.hpp"
#include "cxButtons.hpp"
#include "cxLookAndFeelPainters.hpp"
#include <DB.hpp>
#include <DBClient.hpp>
#include <Menus.hpp>
#include <ActnList.hpp>
#include "cxDBEdit.hpp"
#include "cxPC.hpp"
#include "cxClasses.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxFilter.hpp"
#include "cxGrid.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxGridDBBandedTableView.hpp"
#include <Dialogs.hpp>
#include "cxGridExportLink.hpp"
#include "cxSpinEdit.hpp"
#include "cxGridChartView.hpp"
#include "cxGridDBChartView.hpp"
#include "dxStatusBar.hpp"
#include "cxCheckGroup.hpp"
#include "cxGroupBox.hpp"
#include "cxSplitter.hpp"
#include "dxNavBar.hpp"
#include "dxNavBarBase.hpp"
#include "dxNavBarCollns.hpp"
#include "cxDBLookupComboBox.hpp"
#include "cxDBLookupEdit.hpp"
#include "cxLookupEdit.hpp"
#include "cxLookAndFeels.hpp"
#include "dxBkgnd.hpp"
#include "dxPrnDev.hpp"
#include "dxPrnPg.hpp"
#include "dxPSCompsProvider.hpp"
#include "dxPSCore.hpp"
#include "dxPSEdgePatterns.hpp"
#include "dxPSEngn.hpp"
#include "dxPSFillPatterns.hpp"
#include "dxPSGlbl.hpp"
#include "dxPSUtl.hpp"
#include "dxWrap.hpp"
#include "dxPScxCommon.hpp"
#include "dxPScxGridLnk.hpp"
#include "dxPgsDlg.hpp"
#include "dxPSContainerLnk.hpp"
#include "dxSkinCaramel.hpp"
#include "cxDBLabel.hpp"
#include "cxRadioGroup.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinscxPCPainter.hpp"
#include "dxSkinsDefaultPainters.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "cxDateUtils.hpp"
#include "cxDrawTextUtils.hpp"
#include "cxNavigator.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include "dxCore.hpp"
#include "dxPScxEditorProducers.hpp"
#include "dxPScxExtEditorProducers.hpp"
#include "dxPScxGridLayoutViewLnk.hpp"
#include "dxPScxPageControlProducer.hpp"
#include "dxPSPDFExport.hpp"
#include "dxPSPDFExportCore.hpp"
#include "dxPSPrVwAdv.hpp"
#include "dxPSPrVwRibbon.hpp"
#include "dxPSPrVwStd.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include "dxSkinsdxNavBarPainter.hpp"
#include "dxSkinsdxRibbonPainter.hpp"
#include <System.Actions.hpp>
#include <Vcl.ComCtrls.hpp>
//---------------------------------------------------------------------------
/*const Shortint PT_CURRENT_DAY = 0;
const Shortint PT_CURRENT_MONTH = 1;
const Shortint PT_PERIOD = 2;
*/
enum PeriodTypes { PT_CURRENT_DAY, PT_CURRENT_MONTH, PT_CURRENT_YEAR, PT_PERIOD };

//---------------------------------------------------------------------------
class TfrmReport_Interactive : public TForm
{
__published:	// IDE-managed Components
	TDataSource *dsFirmTree;
	TClientDataSet *cdsFirmTree;
	TActionList *al;
	TAction *aCurrentDay;
	TAction *aCurrentMonth;
	TAction *aPeriod;
	TcxPageControl *PageControl;
	TcxTabSheet *tsInteractiveReport;
	TcxTabSheet *cxTabSheet2;
	TPanel *Panel1;
	TcxButton *btnCurrentDay;
	TcxButton *btnCurrentMonth;
	TcxButton *btnPeriod;
	TcxDBTreeList *tlFirmTree;
	TcxDBTreeListColumn *cxDBTreeList1cxDBTreeListColumn1;
	TAction *aLoad_Firm_Tree;
	TAction *aLoad_Report_Tree;
	TcxButton *cxButton1;
	TAction *aRefresh;
	TAction *aRefresh_Filial_Eq;
	TDataSource *dsFilial_Eq;
	TClientDataSet *cdsFilial_Eq;
	TAction *aShowDetail_Filial_Eq;
	TcxButton *cxButton2;
	TAction *aExportXLS;
	TSaveDialog *SaveDialog1;
	TcxPageControl *pcReport;
	TcxTabSheet *tsFilial_Eq;
	TcxTabSheet *tsDepo_Eq;
	TcxGrid *grdReport;
	TcxGridDBTableView *btv_Filial_Eq_;
	TcxGridDBColumn *btv_Filial_Eq_Column1;
	TcxGridDBColumn *btv_Filial_Eq_Column2;
	TcxGridDBColumn *btv_Filial_Eq_Column3;
	TcxGridDBColumn *btv_Filial_Eq_Column4;
	TcxGridDBColumn *btv_Filial_Eq_Column5;
	TcxGridDBColumn *btv_Filial_Eq_Column6;
	TcxGridDBColumn *btv_Filial_Eq_Column7;
	TcxGridDBColumn *btv_Filial_Eq_Column8;
	TcxGridDBColumn *btv_Filial_Eq_Column9;
	TcxGridDBColumn *btv_Filial_Eq_Column10;
	TcxGridDBColumn *btv_Filial_Eq_Column11;
	TcxGridDBColumn *btv_Filial_Eq_Column12;
	TcxGridDBColumn *btv_Filial_Eq_Column13;
	TcxGridDBColumn *btv_Filial_Eq_Column14;
	TcxGridDBColumn *btv_Filial_Eq_Column15;
	TcxGridDBColumn *btv_Filial_Eq_Column16;
	TcxGridDBColumn *btv_Filial_Eq_Column17;
	TcxGridDBColumn *btv_Filial_Eq_Column18;
	TcxGridDBColumn *btv_Filial_Eq_Column19;
	TcxGridDBBandedTableView *btv_Filial_Eq;
	TcxGridDBBandedColumn *btv_Filial_EqColumn1;
	TcxGridDBBandedColumn *btv_Filial_EqColumn2;
	TcxGridDBBandedColumn *btv_Filial_EqColumn3;
	TcxGridDBBandedColumn *btv_Filial_EqColumn4;
	TcxGridDBBandedColumn *btv_Filial_EqColumn5;
	TcxGridDBBandedColumn *btv_Filial_EqColumn6;
	TcxGridDBBandedColumn *btv_Filial_EqColumn7;
	TcxGridDBBandedColumn *btv_Filial_EqColumn8;
	TcxGridDBBandedColumn *btv_Filial_EqColumn9;
	TcxGridDBBandedColumn *btv_Filial_EqColumn10;
	TcxGridDBBandedColumn *btv_Filial_EqColumn11;
	TcxGridDBBandedColumn *btv_Filial_EqColumn12;
	TcxGridDBBandedColumn *btv_Filial_EqColumn13;
	TcxGridDBBandedColumn *btv_Filial_EqColumn14;
	TcxGridDBBandedColumn *btv_Filial_EqColumn15;
	TcxGridDBBandedColumn *btv_Filial_EqColumn16;
	TcxGridDBBandedColumn *btv_Filial_EqColumn17;
	TcxGridDBBandedColumn *btv_Filial_EqColumn18;
	TcxGridDBBandedColumn *btv_Filial_EqColumn19;
	TcxGridDBBandedColumn *btv_Filial_EqColumn20;
	TcxGridDBBandedColumn *btv_Filial_EqColumn21;
	TcxGridLevel *lvl_Filial_Eq;
	TDataSource *dsDepo_Eq;
	TClientDataSet *cdsDepo_Eq;
	TAction *aRefresh_Depo_Eq;
	TcxTabSheet *tsNR_Dynamic;
	TcxGridViewRepository *GridViewRepository;
	TcxGridDBChartView *chvRcvDynamic;
	TcxGridDBChartSeries *chvRcvDynamicSeries1;
	TDataSource *dsNR_Dynamic;
	TClientDataSet *cdsNR_Dynamic;
	TAction *aRefresh_NR_Dynamic;
	TcxStyleRepository *stlrp;
	TcxStyle *stl1;
	TcxGridBandedTableViewStyleSheet *stlshtBTV;
	TcxGridBandedTableViewStyleSheet *stlshtBTV9;
	TcxGridBandedTableViewStyleSheet *stlshtBTV8;
	TcxGridBandedTableViewStyleSheet *stlshtBTV11;
	TcxStyle *stl2;
	TcxStyle *stl3;
	TcxStyle *stl4;
	TcxStyle *stl5;
	TcxStyle *stl6;
	TcxStyle *stl7;
	TcxStyle *cxStyle1;
	TcxButton *btnCurrentYear;
	TPanel *Panel2;
	TcxDateEdit *deDateBegin;
	TcxDateEdit *deDateFinish;
	TAction *aCurrentYear;
	TcxTabSheet *tsFilial_State;
	TcxTabSheet *tsFilial_Source;
	TcxTabSheet *tsFilial_Reason;
	TDataSource *ds_Reason_Graph;
	TClientDataSet *cds_Reason_Graph;
	TAction *aRefresh_Filial_Reason_Graph;
	TcxStyle *cxStyle2;
	TcxPageControl *pcFilial_Reason;
	TcxTabSheet *tsFilial_Reason_Graph;
	TcxTabSheet *tsFilial_Reason_Table;
	TcxGrid *grd_Reason_Table;
	TcxGridDBTableView *cxGridDBTableView2;
	TcxGridDBColumn *cxGridDBColumn20;
	TcxGridDBColumn *cxGridDBColumn21;
	TcxGridDBColumn *cxGridDBColumn22;
	TcxGridDBColumn *cxGridDBColumn23;
	TcxGridDBColumn *cxGridDBColumn24;
	TcxGridDBColumn *cxGridDBColumn25;
	TcxGridDBColumn *cxGridDBColumn26;
	TcxGridDBColumn *cxGridDBColumn27;
	TcxGridDBColumn *cxGridDBColumn28;
	TcxGridDBColumn *cxGridDBColumn29;
	TcxGridDBColumn *cxGridDBColumn30;
	TcxGridDBColumn *cxGridDBColumn31;
	TcxGridDBColumn *cxGridDBColumn32;
	TcxGridDBColumn *cxGridDBColumn33;
	TcxGridDBColumn *cxGridDBColumn34;
	TcxGridDBColumn *cxGridDBColumn35;
	TcxGridDBColumn *cxGridDBColumn36;
	TcxGridDBColumn *cxGridDBColumn37;
	TcxGridDBColumn *cxGridDBColumn38;
	TcxGridDBBandedTableView *btvFilial_Reason_Table;
	TcxGridDBBandedColumn *cxGridDBBandedColumn1;
	TcxGridDBBandedColumn *cxGridDBBandedColumn22;
	TcxGridDBBandedColumn *cxGridDBBandedColumn23;
	TcxGridDBBandedColumn *cxGridDBBandedColumn24;
	TcxGridDBBandedColumn *cxGridDBBandedColumn25;
	TcxGridDBBandedColumn *cxGridDBBandedColumn26;
	TcxGridDBBandedColumn *cxGridDBBandedColumn27;
	TcxGridDBBandedColumn *cxGridDBBandedColumn28;
	TcxGridDBBandedColumn *cxGridDBBandedColumn29;
	TcxGridDBBandedColumn *cxGridDBBandedColumn30;
	TcxGridDBBandedColumn *cxGridDBBandedColumn31;
	TcxGridDBBandedColumn *cxGridDBBandedColumn32;
	TcxGridDBBandedColumn *cxGridDBBandedColumn33;
	TcxGridDBBandedColumn *cxGridDBBandedColumn34;
	TcxGridDBBandedColumn *cxGridDBBandedColumn35;
	TcxGridDBBandedColumn *cxGridDBBandedColumn36;
	TcxGridDBBandedColumn *cxGridDBBandedColumn37;
	TcxGridDBBandedColumn *cxGridDBBandedColumn38;
	TcxGridDBBandedColumn *cxGridDBBandedColumn39;
	TcxGridDBBandedColumn *cxGridDBBandedColumn40;
	TcxGridDBBandedColumn *cxGridDBBandedColumn41;
	TcxGridDBBandedColumn *cxGridDBBandedColumn42;
	TcxGridDBBandedColumn *clmnFilial_Reason_Table_Gid;
	TcxGridLevel *cxGridLevel4;
	TcxGridDBBandedColumn *btvFilial_Reason_TableColumn1;
	TcxGridDBBandedColumn *btvFilial_Reason_TableColumn2;
	TAction *aRefresh_Filial_Reason_Table;
	TDataSource *dsFilial_Reason_Table;
	TClientDataSet *cdsFilial_Reason_Table;
	TLabel *Label1;
	TcxTabSheet *tsFilial_Seria;
	TAction *aRefresh_Seria_Graph;
	TDataSource *dsSeria_Graph;
	TClientDataSet *cdsSeria_Graph;
	TDataSource *dsSeria_Teplo_Graph;
	TClientDataSet *cdsSeria_Teplo_Graph;
	TDataSource *dsSeria_Electro_Graph;
	TClientDataSet *cdsSeria_Electro_Graph;
	TDataSource *ds_T_Reason_Graph;
	TClientDataSet *cds_T_Reason_Graph;
	TDataSource *ds_E_Reason_Graph;
	TClientDataSet *cds_E_Reason_Graph;
	TdxNavBar *dxNavBar1;
	TdxNavBarGroup *dxNavBar1Group1;
	TdxNavBarGroup *dxNavBar1Group2;
	TdxNavBarGroup *dxNavBar1Group3;
	TdxNavBarGroupControl *dxNavBar1Group1Control;
	TdxNavBarGroupControl *dxNavBar1Group2Control;
	TdxNavBarGroupControl *dxNavBar1Group3Control;
	TcxGrid *grd_T_Reason;
	TcxGridDBChartView *btv_T_Reason;
	TcxGridDBChartDataGroup *btvdg_T_Reason_cnt_cumulative;
	TcxGridDBChartDataGroup *btvdg_T_Reason_cnt_total;
	TcxGridDBChartDataGroup *btvdg_T_Reason_pers_of_total;
	TcxGridDBChartDataGroup *btvdg_T_Reason_pers_cumulative;
	TcxGridDBChartSeries *btvseries_T_Reason;
	TcxGridLevel *cxGridLevel3;
	TcxGrid *grd_Reason;
	TcxGridDBChartView *btv_E_Reason;
	TcxGridDBChartDataGroup *btvdg_Reason_cnt_cumulative;
	TcxGridDBChartDataGroup *btvdg_Reason_cnt_total;
	TcxGridDBChartDataGroup *btvdg_Reason_pers_of_total;
	TcxGridDBChartDataGroup *btvdg_Reason_pers_cumulative;
	TcxGridDBChartSeries *btvseries_Reason;
	TcxGridDBChartSeries *btvseries_Reason_T;
	TcxGridDBChartSeries *btvseries_Reason_E;
	TcxGridLevel *cxGridLevel9;
	TcxGrid *grd_E_Reason;
	TcxGridDBChartDataGroup *btvdg_E_Reason_cnt_cumulative;
	TcxGridDBChartDataGroup *btvdg_E_Reason_cnt_total;
	TcxGridDBChartDataGroup *btvdg_E_Reason_pers_of_total;
	TcxGridDBChartDataGroup *btvdg_E_Reason_pers_cumulative;
	TcxGridDBChartSeries *btvseries_E_Reason;
	TcxGridLevel *cxGridLevel10;
	TLabel *lblReason_Graph;
	TcxPageControl *pcFilial_State;
	TcxTabSheet *tsState_Graph;
	TLabel *lblState_Graph;
	TcxTabSheet *tsState_Table;
	TLabel *Label4;
	TAction *aRefresh_State_Graph;
	TDataSource *dsState_Electro_Graph;
	TDataSource *dsState_Teplo_Graph;
	TDataSource *dsState_Graph;
	TClientDataSet *cdsState_Graph;
	TClientDataSet *cdsState_Teplo_Graph;
	TClientDataSet *cdsState_Electro_Graph;
	TcxGrid *grd_T_State;
	TcxGridDBChartView *btvState_Teplo_Graph;
	TcxGridDBChartDataGroup *btvState_Teplo_Graph_datagroup_cumulative;
	TcxGridDBChartDataGroup *btvState_Teplo_Graph_datagroup_total;
	TcxGridDBChartDataGroup *btvState_Teplo_Graph_datagroup_pers_of_total;
	TcxGridDBChartDataGroup *btvState_Teplo_Graph_datagroup_pers_cumulative;
	TcxGridDBChartSeries *cxGridDBChartSeries1;
	TcxGridLevel *cxGridLevel2;
	TcxGrid *grd_E_State;
	TcxGridDBChartView *btvState_Electro_Graph;
	TcxGridDBChartDataGroup *cxGridDBChartDataGroup5;
	TcxGridDBChartDataGroup *cxGridDBChartDataGroup6;
	TcxGridDBChartDataGroup *cxGridDBChartDataGroup7;
	TcxGridDBChartDataGroup *cxGridDBChartDataGroup8;
	TcxGridDBChartSeries *cxGridDBChartSeries4;
	TcxGridLevel *cxGridLevel11;
	TcxGrid *grd_State;
	TcxGridDBChartView *btvState_Graph;
	TcxGridDBChartDataGroup *cxGridDBChartDataGroup9;
	TcxGridDBChartDataGroup *cxGridDBChartDataGroup10;
	TcxGridDBChartDataGroup *cxGridDBChartDataGroup11;
	TcxGridDBChartDataGroup *cxGridDBChartDataGroup12;
	TcxGridDBChartSeries *cxGridDBChartSeries7;
	TcxGridDBChartSeries *cxGridDBChartSeries24;
	TcxGridDBChartSeries *cxGridDBChartSeries25;
	TcxGridLevel *cxGridLevel12;
	TcxPageControl *pcFilial_Source;
	TcxTabSheet *tsSource_Graph;
	TLabel *lblSource_Graph;
	TcxGrid *grd_T_SourceType;
	TcxGridDBChartView *btvSource_Teplo_Graph;
	TcxGridDBChartDataGroup *btvSource_Teplo_Graph_datagroup_cumulative;
	TcxGridDBChartDataGroup *btvSource_Teplo_Graph_datagroup_total;
	TcxGridDBChartDataGroup *btvSource_Teplo_Graph_datagroup_pers_of_total;
	TcxGridDBChartDataGroup *btvSource_Teplo_Graph_datagroup_pers_cumulative;
	TcxGridDBChartSeries *cxGridDBChartSeries26;
	TcxGridLevel *cxGridLevel13;
	TcxGrid *grd_E_SourceType;
	TcxGridDBChartView *btvSource_Electro_Graph;
	TcxGridDBChartDataGroup *btvSource_Electro_Graph_datagroup_cumulative;
	TcxGridDBChartDataGroup *btvSource_Electro_Graph_datagroup_total;
	TcxGridDBChartDataGroup *btvSource_Electro_Graph_datagroup_pers_of_total;
	TcxGridDBChartDataGroup *btvSource_Electro_Graph_datagroup_pers_cumulative;
	TcxGridDBChartSeries *cxGridDBChartSeries29;
	TcxGridLevel *cxGridLevel14;
	TcxGrid *grd_SourceType;
	TcxGridDBChartView *btvSource_Graph;
	TcxGridDBChartDataGroup *cxGridDBChartDataGroup17;
	TcxGridDBChartDataGroup *cxGridDBChartDataGroup18;
	TcxGridDBChartDataGroup *cxGridDBChartDataGroup19;
	TcxGridDBChartDataGroup *cxGridDBChartDataGroup20;
	TcxGridDBChartSeries *cxGridDBChartSeries32;
	TcxGridDBChartSeries *cxGridDBChartSeries33;
	TcxGridDBChartSeries *cxGridDBChartSeries34;
	TcxGridLevel *cxGridLevel15;
	TcxTabSheet *cxTabSheet4;
	TLabel *Label5;
	TAction *aRefresh_Source_Graph;
	TDataSource *dsSource_Graph;
	TClientDataSet *cdsSource_Graph;
	TClientDataSet *cdsSource_Electro_Graph;
	TDataSource *dsSource_Electro_Graph;
	TDataSource *dsSource_Teplo_Graph;
	TClientDataSet *cdsSource_Teplo_Graph;
	TcxPageControl *pcFilial_Eq;
	TcxTabSheet *tsFilial_Eq_Graph;
	TLabel *lblEq_Graph;
	TdxStatusBar *dxStatusBar4;
	TdxNavBar *dxNavBar3;
	TdxNavBarGroup *dxNavBarGroup4;
	TdxNavBarGroup *dxNavBarGroup5;
	TdxNavBarGroup *dxNavBarGroup6;
	TdxNavBarGroupControl *dxNavBarGroupControl4;
	TcxGrid *grdEq_Teplo_Graph;
	TcxGridDBChartView *btvEq_Teplo_Graph;
	TcxGridDBChartDataGroup *btvEq_Teplo_Graph_datagroup_cumulative;
	TcxGridDBChartDataGroup *btvEq_Teplo_Graph_datagroup_total;
	TcxGridDBChartDataGroup *btvEq_Teplo_Graph_datagroup_pers_of_total;
	TcxGridDBChartDataGroup *btvEq_Teplo_Graph_datagroup_pers_cumulative;
	TcxGridDBChartSeries *cxGridDBChartSeries35;
	TcxGridLevel *cxGridLevel16;
	TdxNavBarGroupControl *dxNavBarGroupControl5;
	TcxGrid *grdEq_Electro_Graph;
	TcxGridDBChartView *btvEq_Electro_Graph;
	TcxGridDBChartDataGroup *btvEq_Electro_Graph_datagroup_cumulative;
	TcxGridDBChartDataGroup *btvEq_Electro_Graph_datagroup_total;
	TcxGridDBChartDataGroup *btvEq_Electro_Graph_datagroup_pers_of_total;
	TcxGridDBChartDataGroup *btvEq_Electro_Graph_datagroup_pers_cumulative;
	TcxGridDBChartSeries *cxGridDBChartSeries38;
	TcxGridLevel *cxGridLevel17;
	TdxNavBarGroupControl *dxNavBarGroupControl6;
	TcxGrid *grdEq_Graph;
	TcxGridDBChartView *btvEq_Graph;
	TcxGridDBChartDataGroup *btvEq_Graph_datagroup_cumulative;
	TcxGridDBChartDataGroup *btvEq_Graph_datagroup_total;
	TcxGridDBChartDataGroup *btvEq_Graph_datagroup_pers_of_total;
	TcxGridDBChartDataGroup *btvEq_Graph_datagroup_pers_cumulative;
	TcxGridDBChartSeries *cxGridDBChartSeries41;
	TcxGridDBChartSeries *cxGridDBChartSeries42;
	TcxGridDBChartSeries *cxGridDBChartSeries43;
	TcxGridLevel *cxGridLevel18;
	TcxTabSheet *tsFilial_Eq_Table;
	TLabel *lblEq_Table;
	TcxGrid *grd_Depo_Eq;
	TcxGridDBTableView *cxGridDBTableView1;
	TcxGridDBColumn *cxGridDBColumn1;
	TcxGridDBColumn *cxGridDBColumn2;
	TcxGridDBColumn *cxGridDBColumn3;
	TcxGridDBColumn *cxGridDBColumn4;
	TcxGridDBColumn *cxGridDBColumn5;
	TcxGridDBColumn *cxGridDBColumn6;
	TcxGridDBColumn *cxGridDBColumn7;
	TcxGridDBColumn *cxGridDBColumn8;
	TcxGridDBColumn *cxGridDBColumn9;
	TcxGridDBColumn *cxGridDBColumn10;
	TcxGridDBColumn *cxGridDBColumn11;
	TcxGridDBColumn *cxGridDBColumn12;
	TcxGridDBColumn *cxGridDBColumn13;
	TcxGridDBColumn *cxGridDBColumn14;
	TcxGridDBColumn *cxGridDBColumn15;
	TcxGridDBColumn *cxGridDBColumn16;
	TcxGridDBColumn *cxGridDBColumn17;
	TcxGridDBColumn *cxGridDBColumn18;
	TcxGridDBColumn *cxGridDBColumn19;
	TcxGridDBBandedTableView *btv_Depo_Eq;
	TcxGridDBBandedColumn *clmnDepoEq_Tjaga;
	TcxGridDBBandedColumn *btv_Depo_EqColumn1;
	TcxGridDBBandedColumn *cxGridDBBandedColumn2;
	TcxGridDBBandedColumn *cxGridDBBandedColumn3;
	TcxGridDBBandedColumn *cxGridDBBandedColumn4;
	TcxGridDBBandedColumn *cxGridDBBandedColumn5;
	TcxGridDBBandedColumn *cxGridDBBandedColumn6;
	TcxGridDBBandedColumn *cxGridDBBandedColumn7;
	TcxGridDBBandedColumn *cxGridDBBandedColumn8;
	TcxGridDBBandedColumn *cxGridDBBandedColumn9;
	TcxGridDBBandedColumn *cxGridDBBandedColumn10;
	TcxGridDBBandedColumn *cxGridDBBandedColumn11;
	TcxGridDBBandedColumn *cxGridDBBandedColumn12;
	TcxGridDBBandedColumn *cxGridDBBandedColumn13;
	TcxGridDBBandedColumn *cxGridDBBandedColumn14;
	TcxGridDBBandedColumn *cxGridDBBandedColumn15;
	TcxGridDBBandedColumn *cxGridDBBandedColumn16;
	TcxGridDBBandedColumn *cxGridDBBandedColumn17;
	TcxGridDBBandedColumn *cxGridDBBandedColumn18;
	TcxGridDBBandedColumn *cxGridDBBandedColumn19;
	TcxGridDBBandedColumn *cxGridDBBandedColumn20;
	TcxGridDBBandedColumn *cxGridDBBandedColumn21;
	TcxGridDBBandedColumn *clmnDepoEq_Gid;
	TcxGridLevel *cxGridLevel1;
	TdxStatusBar *StatusBar;
	TAction *aRefresh_Filial_Eq_Graph;
	TDataSource *dsEq_Electro_Graph;
	TClientDataSet *cdsEq_Electro_Graph;
	TDataSource *dsEq_Graph;
	TClientDataSet *cdsEq_Graph;
	TDataSource *dsEq_Teplo_Graph;
	TClientDataSet *cdsEq_Teplo_Graph;
	TAction *aDepo_Eq_Detail;
	TcxTabSheet *tsFilial_Eq_Graph_DrillDown;
	TcxGrid *cxGrid18;
	TcxGridDBChartView *cxGridDBChartView1;
	TcxGridDBChartDataGroup *cxGridDBChartDataGroup1;
	TcxGridDBChartDataGroup *cxGridDBChartDataGroup2;
	TcxGridDBChartDataGroup *cxGridDBChartDataGroup3;
	TcxGridDBChartDataGroup *cxGridDBChartDataGroup4;
	TcxGridDBChartSeries *cxGridDBChartSeries44;
	TcxGridDBChartSeries *cxGridDBChartSeries45;
	TcxGridDBChartSeries *cxGridDBChartSeries46;
	TcxGridLevel *cxGridLevel19;
	TcxGridDBChartDataGroup *cxGridDBChartView1DataGroup1;
	TcxLookupComboBox *cbFirmTree_;
	TAction *aReason_Detail;
	TAction *Action1;
	TcxGridDBChartDataGroup *cxGridDBChartView1DataGroup2;
	TAction *aRefresh_Filial_Eq_Graph_;
	TcxGridDBChartDataGroup *cxGridDBChartView1DataGroup3;
	TcxGridDBChartDataGroup *btvdgEq_Electro_Graph_GroupClassID;
	TcxGridDBChartDataGroup *btvdgEq_Electro_Graph_KodTjaga;
	TcxGridDBChartDataGroup *btvdgEq_Electro_Graph_SystemName;
	TcxGridDBChartDataGroup *btvdgEq_Teplo_Graph_GroupClassID;
	TcxGridDBChartDataGroup *btvdgEq_Teplo_Graph_KodTjaga;
	TcxGridDBChartDataGroup *btvdgEq_Teplo_Graph_SystemName;
	TcxGridDBChartDataGroup *btvdgEq_Graph_GroupClassID;
	TcxGridDBChartDataGroup *btvdgEq_Graph_KodTjaga;
	TcxGridDBChartDataGroup *btvdgEq_Graph_SystemName;
	TcxGridDBChartDataGroup *btvdg_E_Reason_ReasonID;
	TcxGridDBChartDataGroup *btvdg_E_Reason_KodTjaga;
	TcxGridDBChartDataGroup *btvdg_E_Reason_ReasonName;
	TcxGridDBChartDataGroup *btvdg_T_Reason_ReasonID;
	TcxGridDBChartDataGroup *btvdg_T_Reason_KodTjaga;
	TcxGridDBChartDataGroup *btvdg_T_Reason_ReasonName;
	TcxGridDBChartDataGroup *btvdg_Reason_ReasonID;
	TcxGridDBChartDataGroup *btvdg_Reason_KodTjaga;
	TcxGridDBChartDataGroup *btvdg_Reason_ReasonName;
	TdxComponentPrinter *prntr;
	TdxGridReportLink *prntr_lnk_grdEq_Teplo_Graph;
	TdxGridReportLink *prntr_lnk_grdEq_Electro_Graph_;
	TdxGridReportLink *prntr_lnk_grdEq_Graph;
	TcxButton *cxButton3;
	TAction *aPrintPreview;
	TdxGridReportLink *prntr_lnk_grd_Depo_Eq;
	TdxPrintStyleManager *dxPrintStyleManager1;
	TdxPSPrintStyle *dxPrintStyleManager1Style1;
	TdxGridReportLink *prntr_lnk_grdEq_Electro_Graph;
	TdxGridReportLink *prntr_lnk_grdNR_Dynamic;
	TcxGridDBChartDataGroup *btvState_Electro_GraphDataGroup1;
	TcxGridDBChartDataGroup *btvState_Electro_GraphDataGroup2;
	TcxGridDBChartDataGroup *btvState_Teplo_GraphDataGroup1;
	TcxGridDBChartDataGroup *btvState_Teplo_GraphDataGroup2;
	TcxGridDBChartDataGroup *btvState_GraphDataGroup1;
	TcxGridDBChartDataGroup *btvState_GraphDataGroup2;
	TcxGridDBChartDataGroup *btvSource_Electro_GraphDataGroup1;
	TcxGridDBChartDataGroup *btvSource_Electro_GraphDataGroup2;
	TcxGridDBChartDataGroup *btvSource_Teplo_GraphDataGroup1;
	TcxGridDBChartDataGroup *btvSource_Teplo_GraphDataGroup2;
	TcxGridDBChartDataGroup *btvSource_GraphDataGroup1;
	TcxGridDBChartDataGroup *btvSource_GraphDataGroup2;
	TPanel *Panel3;
	TcxLabel *cxLabel1;
	TcxLabel *cxLabel2;
	TcxLabel *cxLabel3;
	TcxLabel *cxLabel4;
	TcxDBLabel *cxDBLabel1;
	TcxDBLabel *cxDBLabel2;
	TcxDBLabel *cxDBLabel3;
	TcxStyle *cxStyle3;
	TPanel *Panel4;
	TcxRadioButton *cxRadioButton1;
	TcxRadioButton *cxRadioButton2;
	TPanel *Panel5;
	TcxPageControl *pcFilial_Seria;
	TcxTabSheet *tsSeria_Graph;
	TLabel *lblSeria_Graph;
	TdxStatusBar *dxStatusBar1;
	TdxNavBar *dxNavBar2;
	TdxNavBarGroup *dxNavBarGroup2;
	TdxNavBarGroup *dxNavBarGroup1;
	TdxNavBarGroup *dxNavBarGroup3;
	TdxNavBarGroupControl *dxNavBarGroupControl2;
	TcxGrid *grd_E_Seria;
	TcxGridDBChartView *btvSeria_Electro_Graph;
	TcxGridDBChartDataGroup *btv_Filial_Seria_E_datagroup_cumulative;
	TcxGridDBChartDataGroup *btv_Filial_Seria_E_datagroup_total;
	TcxGridDBChartDataGroup *btv_Filial_Seria_E_datagroup_pers_of_total;
	TcxGridDBChartDataGroup *btv_Filial_Seria_E_datagroup_pers_cumulative;
	TcxGridDBChartDataGroup *btvSeria_Electro_GraphDataGroup1;
	TcxGridDBChartDataGroup *btvSeria_Electro_Graph_SerName;
	TcxGridDBChartSeries *cxGridDBChartSeries15;
	TcxGridLevel *cxGridLevel8;
	TdxNavBarGroupControl *dxNavBarGroupControl1;
	TcxGrid *grd_T_Seria;
	TcxGridDBChartView *btvSeria_Teplo_Graph;
	TcxGridDBChartDataGroup *btv_Filial_Seria_T_datagroup_cumulative;
	TcxGridDBChartDataGroup *btv_Filial_Seria_T_datagroup_total;
	TcxGridDBChartDataGroup *btv_Filial_Seria_T_datagroup_pers_of_total;
	TcxGridDBChartDataGroup *btv_Filial_Seria_T_datagroup_pers_cumulative;
	TcxGridDBChartDataGroup *btvSeria_Teplo_GraphDataGroup1;
	TcxGridDBChartDataGroup *btvSeria_Teplo_Graph_SerName;
	TcxGridDBChartSeries *cxGridDBChartSeries12;
	TcxGridLevel *cxGridLevel7;
	TdxNavBarGroupControl *dxNavBarGroupControl3;
	TcxGrid *grd_Seria;
	TcxGridDBChartView *btvSeria_Graph;
	TcxGridDBChartDataGroup *btv_Filial_Seria_datagroup_cumulative;
	TcxGridDBChartDataGroup *btv_Filial_Seria_datagroup_total;
	TcxGridDBChartDataGroup *btv_Filial_Seria_datagroup_pers_of_total;
	TcxGridDBChartDataGroup *btv_Filial_Seria_datagroup_pers_cumulative;
	TcxGridDBChartDataGroup *btvSeria_GraphDataGroup1;
	TcxGridDBChartDataGroup *btvSeria_Graph_SerName;
	TcxGridDBChartSeries *cxGridDBChartSeries9;
	TcxGridLevel *cxGridLevel5;
	TcxTabSheet *cxTabSheet5;
	TLabel *Label2;
	TcxGrid *grd_Seria_Table;
	TcxGridDBTableView *cxGridDBTableView3;
	TcxGridDBColumn *cxGridDBColumn39;
	TcxGridDBColumn *cxGridDBColumn40;
	TcxGridDBColumn *cxGridDBColumn41;
	TcxGridDBColumn *cxGridDBColumn42;
	TcxGridDBColumn *cxGridDBColumn43;
	TcxGridDBColumn *cxGridDBColumn44;
	TcxGridDBColumn *cxGridDBColumn45;
	TcxGridDBColumn *cxGridDBColumn46;
	TcxGridDBColumn *cxGridDBColumn47;
	TcxGridDBColumn *cxGridDBColumn48;
	TcxGridDBColumn *cxGridDBColumn49;
	TcxGridDBColumn *cxGridDBColumn50;
	TcxGridDBColumn *cxGridDBColumn51;
	TcxGridDBColumn *cxGridDBColumn52;
	TcxGridDBColumn *cxGridDBColumn53;
	TcxGridDBColumn *cxGridDBColumn54;
	TcxGridDBColumn *cxGridDBColumn55;
	TcxGridDBColumn *cxGridDBColumn56;
	TcxGridDBColumn *cxGridDBColumn57;
	TcxGridDBBandedTableView *cxGridDBBandedTableView1;
	TcxGridDBBandedColumn *cxGridDBBandedColumn43;
	TcxGridDBBandedColumn *cxGridDBBandedColumn44;
	TcxGridDBBandedColumn *cxGridDBBandedColumn45;
	TcxGridDBBandedColumn *cxGridDBBandedColumn46;
	TcxGridDBBandedColumn *cxGridDBBandedColumn47;
	TcxGridDBBandedColumn *cxGridDBBandedColumn48;
	TcxGridDBBandedColumn *cxGridDBBandedColumn49;
	TcxGridDBBandedColumn *cxGridDBBandedColumn50;
	TcxGridDBBandedColumn *cxGridDBBandedColumn51;
	TcxGridDBBandedColumn *cxGridDBBandedColumn52;
	TcxGridDBBandedColumn *cxGridDBBandedColumn53;
	TcxGridDBBandedColumn *cxGridDBBandedColumn54;
	TcxGridDBBandedColumn *cxGridDBBandedColumn55;
	TcxGridDBBandedColumn *cxGridDBBandedColumn56;
	TcxGridDBBandedColumn *cxGridDBBandedColumn57;
	TcxGridDBBandedColumn *cxGridDBBandedColumn58;
	TcxGridDBBandedColumn *cxGridDBBandedColumn59;
	TcxGridDBBandedColumn *cxGridDBBandedColumn60;
	TcxGridDBBandedColumn *cxGridDBBandedColumn61;
	TcxGridDBBandedColumn *cxGridDBBandedColumn62;
	TcxGridDBBandedColumn *cxGridDBBandedColumn63;
	TcxGridDBBandedColumn *cxGridDBBandedColumn64;
	TcxGridDBBandedColumn *cxGridDBBandedColumn65;
	TcxGridDBBandedColumn *cxGridDBBandedColumn66;
	TcxGridDBBandedColumn *cxGridDBBandedColumn67;
	TcxGridLevel *cxGridLevel6;
	TcxLabel *cxLabel5;
	TcxGridDBChartDataGroup *btvSeria_Electro_Graph_CntPark;
	TcxGridDBChartDataGroup *btvSeria_Teplo_Graph_CntPark;
	TcxGridDBChartDataGroup *btvSeria_Graph_CntPark;
	TcxGridDBChartDataGroup *btvSeria_Electro_Graph_Cnt;
	TcxGridDBChartDataGroup *btvSeria_Teplo_Graph_Cnt;
	TcxGridDBChartDataGroup *btvSeria_Graph_Cnt;
	TcxGridDBChartDataGroup *btvSeria_Electro_Graph_CntRelative;
	TcxGridDBChartDataGroup *btvSeria_Teplo_Graph_CntRelative;
	TcxGridDBChartDataGroup *btvSeria_Graph_CntRelative;
	TcxGridDBChartDataGroup *btvSeria_Electro_Graph_CntUnqLoc;
	TcxGridDBChartDataGroup *btvSeria_Teplo_Graph_CntUnqLoc;
	TcxGridDBChartDataGroup *btvSeria_Graph_CntUnqLoc;
	TPanel *Panel6;
	TcxRadioButton *rbDynamic_Value_Absolute;
	TcxRadioButton *rbDynamic_Value_Relative;
	TcxLabel *cxLabel6;
	TPanel *Panel7;
	TcxGrid *grdNR_Dynamic;
	TcxGridDBChartView *btv_NR_Dynamic_Chart;
	TcxGridDBChartDataGroup *btv_NR_Dynamic_ChartDataGroup2;
	TcxGridDBChartDataGroup *btv_NR_Dynamic_ChartDataGroup3;
	TcxGridDBChartSeries *btv_NR_Dynamic_Series_Avg_Teplo;
	TcxGridDBChartSeries *btv_NR_Dynamic_Series_Avg_Electro;
	TcxGridDBChartSeries *btv_NR_Dynamic_Series_Teplo;
	TcxGridDBChartSeries *btv_NR_Dynamic_Series_Electro;
	TcxGridLevel *lvlNR_Dynamic;
	TcxLabel *cxLabel7;
	TcxGridDBChartDataGroup *btv_NR_Dynamic_DataGroup_ServiceParkTeplo;
	TcxGridDBChartDataGroup *btv_NR_Dynamic_DataGroup_ServiceParkElectro;
	TcxGridDBChartDataGroup *btv_NR_Dynamic_DataGroup_AbsoluteTeplo;
	TcxGridDBChartDataGroup *btv_NR_Dynamic_DataGroup_AbsoluteElectro;
	TcxGridDBChartDataGroup *btv_NR_Dynamic_DataGroup_UnqSection;
	TcxGridDBChartDataGroup *btv_NR_Dynamic_DataGroup_RelativeTeplo;
	TcxGridDBChartDataGroup *btv_NR_Dynamic_DataGroup_RelativeElectro;
	TcxGridDBChartDataGroup *btv_NR_Dynamic_DataGroup_DT;
	TcxGridDBChartDataGroup *btv_NR_Dynamic_DataGroup_CntTotalTeplo;
	TcxGridDBChartDataGroup *btv_NR_Dynamic_DataGroup_CntTotalElectro;
	TcxGridDBChartView *btv_Reason;
	TDataSource *ds_Reason_Graph_E;
	TClientDataSet *cds_Reason_Graph_E;
	TDataSource *ds_Reason_Graph_T;
	TClientDataSet *cds_Reason_Graph_T;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aLoad_Firm_TreeExecute(TObject *Sender);
	void __fastcall tlFirmTreeDblClick(TObject *Sender);
	void __fastcall aCurrentDayExecute(TObject *Sender);
	void __fastcall aCurrentMonthExecute(TObject *Sender);
	void __fastcall aPeriodExecute(TObject *Sender);
	void __fastcall deDateBeginPropertiesChange(TObject *Sender);
	void __fastcall deDateFinishPropertiesChange(TObject *Sender);
	void __fastcall aRefreshExecute(TObject *Sender);
	void __fastcall aRefresh_Filial_EqExecute(TObject *Sender);
	void __fastcall btv_Filial_EqColumn3GetDisplayText(TcxCustomGridTableItem *Sender,
          TcxCustomGridRecord *ARecord, UnicodeString &AText);
	void __fastcall aShowDetail_Filial_EqExecute(TObject *Sender);
	void __fastcall aExportXLSExecute(TObject *Sender);
	void __fastcall btv_Filial_EqColumn3GetDataText(TcxCustomGridTableItem *Sender,
          int ARecordIndex, UnicodeString &AText);
	void __fastcall aRefresh_Depo_EqExecute(TObject *Sender);
	void __fastcall clmnDepoEq_TjagaCustomDrawCell(TcxCustomGridTableView *Sender, TcxCanvas *ACanvas,
          TcxGridTableDataCellViewInfo *AViewInfo, bool &ADone);
	void __fastcall btv_Depo_EqCustomDrawCell(TcxCustomGridTableView *Sender, TcxCanvas *ACanvas,
          TcxGridTableDataCellViewInfo *AViewInfo, bool &ADone);
	void __fastcall aRefresh_NR_DynamicExecute(TObject *Sender);
	void __fastcall btv_NR_Dynamic_ChartValueClick(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, bool &AHandled);
	void __fastcall aCurrentYearExecute(TObject *Sender);
	void __fastcall btv_NR_Dynamic_Series_Avg_TeploCustomDrawValue(TcxGridChartSeries *Sender,
          TcxCanvas *ACanvas, TcxGridChartDiagramValueViewInfo *AViewInfo,
          bool &ADone);
	void __fastcall aRefresh_Filial_Reason_GraphExecute(TObject *Sender);
	void __fastcall btvseries_T_ReasonCustomDrawValue(TcxGridChartSeries *Sender,
          TcxCanvas *ACanvas, TcxGridChartDiagramValueViewInfo *AViewInfo,
          bool &ADone);
	void __fastcall btv_T_ReasonGetValueHint(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, UnicodeString &AHint);
	void __fastcall aRefresh_Filial_Reason_TableExecute(TObject *Sender);
	void __fastcall btvFilial_Reason_TableCustomDrawCell(TcxCustomGridTableView *Sender,
          TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
          bool &ADone);
	void __fastcall tsFilial_Reason_GraphShow(TObject *Sender);
	void __fastcall tsFilial_Reason_TableShow(TObject *Sender);
	void __fastcall aRefresh_Seria_GraphExecute(TObject *Sender);
	void __fastcall cxGridDBChartSeries15CustomDrawValue(TcxGridChartSeries *Sender,
          TcxCanvas *ACanvas, TcxGridChartDiagramValueViewInfo *AViewInfo,
          bool &ADone);
	void __fastcall btvSeria_Electro_GraphGetValueHint(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, UnicodeString &AHint);
	void __fastcall tsNR_DynamicShow(TObject *Sender);
	void __fastcall tsSeria_GraphShow(TObject *Sender);
	void __fastcall cxGridDBChartSeries12CustomDrawValue(TcxGridChartSeries *Sender,
          TcxCanvas *ACanvas, TcxGridChartDiagramValueViewInfo *AViewInfo,
          bool &ADone);
	void __fastcall cxGridDBChartSeries9CustomDrawValue(TcxGridChartSeries *Sender,
          TcxCanvas *ACanvas, TcxGridChartDiagramValueViewInfo *AViewInfo,
          bool &ADone);
	void __fastcall tsDepo_EqShow(TObject *Sender);
	void __fastcall aRefresh_State_GraphExecute(TObject *Sender);
	void __fastcall tsState_GraphShow(TObject *Sender);
	void __fastcall btvState_Teplo_GraphGetValueHint(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, UnicodeString &AHint);
	void __fastcall aRefresh_Source_GraphExecute(TObject *Sender);
	void __fastcall tsSource_GraphShow(TObject *Sender);
	void __fastcall aRefresh_Filial_Eq_GraphExecute(TObject *Sender);
	void __fastcall tsFilial_Eq_TableShow(TObject *Sender);
	void __fastcall tsFilial_Eq_GraphShow(TObject *Sender);
	void __fastcall aDepo_Eq_DetailExecute(TObject *Sender);
	void __fastcall aReason_DetailExecute(TObject *Sender);
	void __fastcall pcReportChange(TObject *Sender);
	void __fastcall btvEq_Electro_GraphValueClick(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, bool &AHandled);
	void __fastcall btv_ReasonValueClick(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, bool &AHandled);
	void __fastcall aPrintPreviewExecute(TObject *Sender);
	void __fastcall btvState_Electro_GraphValueClick(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, bool &AHandled);
	void __fastcall btvState_Teplo_GraphValueClick(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, bool &AHandled);
	void __fastcall btvState_GraphValueClick(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, bool &AHandled);
	void __fastcall btvSource_Electro_GraphValueClick(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, bool &AHandled);
	void __fastcall btvSource_Teplo_GraphValueClick(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, bool &AHandled);
	void __fastcall btvSource_GraphValueClick(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, bool &AHandled);
	void __fastcall btvSeria_Electro_GraphValueClick(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, bool &AHandled);
	void __fastcall btvSeria_Teplo_GraphValueClick(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, bool &AHandled);
	void __fastcall btvSeria_GraphValueClick(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, bool &AHandled);
	void __fastcall cxRadioButton2Enter(TObject *Sender);
	void __fastcall cxRadioButton1Enter(TObject *Sender);
	void __fastcall rbDynamic_Value_AbsoluteEnter(TObject *Sender);
	void __fastcall rbDynamic_Value_RelativeEnter(TObject *Sender);
	void __fastcall btv_NR_Dynamic_ChartGetValueHint(TcxGridChartView *Sender,
          TcxGridChartSeries *ASeries, int AValueIndex, UnicodeString &AHint);
	void __fastcall btv_E_ReasonGetValueHint(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, UnicodeString &AHint);
	void __fastcall btv_E_ReasonValueClick(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, bool &AHandled);
	void __fastcall btv_ReasonGetValueHint(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, UnicodeString &AHint);
	void __fastcall btv_T_ReasonValueClick(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, bool &AHandled);
	void __fastcall btvseries_E_ReasonCustomDrawValue(TcxGridChartSeries *Sender,
          TcxCanvas *ACanvas, TcxGridChartDiagramValueViewInfo *AViewInfo,
          bool &ADone);
	void __fastcall btvseries_ReasonCustomDrawValue(TcxGridChartSeries *Sender,
          TcxCanvas *ACanvas, TcxGridChartDiagramValueViewInfo *AViewInfo,
          bool &ADone);
	void __fastcall btvEq_Teplo_GraphValueClick(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, bool &AHandled);
	void __fastcall btvEq_GraphValueClick(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, bool &AHandled);
	void __fastcall btvEq_GraphGetValueHint(TcxGridChartView *Sender, TcxGridChartSeries *ASeries,
          int AValueIndex, UnicodeString &AHint);





private:	// User declarations
	config	cfg;
    Shortint __fastcall Get_Selected_Period_Type();
    PeriodTypes vPeriodType;;
    void __fastcall Refresh_Seria_Graph(int p_tjaga);
    void __fastcall Refresh_Filial_Reason_Graph(int p_tjaga);
    void __fastcall Refresh_State_Graph(int p_tjaga);
    void __fastcall Refresh_Source_Graph(int p_tjaga);
    void __fastcall Refresh_Eq_Graph(int p_tjaga);
    void __fastcall SetTitleText( TLabel *lbl );
    void __fastcall Reason_Value_Detail( int reason_id, int kod_tjaga, AnsiString caption );
    void __fastcall Eq_Value_Detail( int system_id, int kod_tjaga, AnsiString caption );
public:		// User declarations
	__fastcall TfrmReport_Interactive(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmReport_Interactive *frmReport_Interactive;
//---------------------------------------------------------------------------
#endif
