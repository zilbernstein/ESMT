//---------------------------------------------------------------------------

#ifndef UIncidentH
#define UIncidentH
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
#include "cxStyles.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinscxPCPainter.hpp"
#include <DB.hpp>
#include "dxBar.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include <ActnList.hpp>
#include "dxBarExtItems.hpp"
#include "cxBarEditItem.hpp"
#include "cxCalendar.hpp"
#include "cxButtonEdit.hpp"
#include "cxButtons.hpp"
#include "cxContainer.hpp"
#include "cxDBLookupComboBox.hpp"
#include "cxDBLookupEdit.hpp"
#include "cxDBVGrid.hpp"
#include "cxDropDownEdit.hpp"
#include "cxGroupBox.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLabel.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookupEdit.hpp"
#include "cxMaskEdit.hpp"
#include "cxMemo.hpp"
#include "cxPC.hpp"
#include "cxSpinEdit.hpp"
#include "cxTextEdit.hpp"
#include "cxVGrid.hpp"
#include <ExtCtrls.hpp>
#include <Menus.hpp>
#include "cxCheckGroup.hpp"
#include "cxRadioGroup.hpp"
#include "cxGridChartView.hpp"
#include "cxGridDBChartView.hpp"
#include "cxSplitter.hpp"
#include <DBClient.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include "cxGridDBTableView.hpp"
#include "cxDBEdit.hpp"
#include "cxLookAndFeels.hpp"
#include <Dialogs.hpp>
#include "cxGridExportLink.hpp"
#include "dxSkinCaramel.hpp"
#include "cxHyperLinkEdit.hpp"
#include "cxDBTL.hpp"
#include "cxTL.hpp"
#include "cxTLData.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <ImgList.hpp>
#include "cxNavigator.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include <System.Actions.hpp>
#include "cxProgressBar.hpp"

//---------------------------------------------------------------------------
const int cState_New = 3; // Статус - Новый
const int cState_Storage = 5; // Статус - Склад
const int arrayIDState4CheckTime [] = { cState_New, cState_Storage };

enum enumFilterPeriodType { rFilterActive, rFilterPeriod };
enum enumRelationType { rtParent, rtChild, rtAll };
//---------------------------------------------------------------------------
class TfrmIncident : public TForm
{
__published:	// IDE-managed Components
	TdxBarManager *bmIncident;
	TdxBar *tbCommonButtons;
	TdxBarGroup *dxBarGroup1;
	TdxBarGroup *dxBarGroup2;
	TdxBarButton *btnRefresh;
	TdxBarButton *dxBarButton2;
	TdxBarButton *dxBarButton3;
	TdxBarButton *dxBarButton4;
	TActionList *ActionList;
	TAction *aRefresh;
	TAction *aNew;
	TAction *aEdit;
	TAction *aDelete;
	TdxBarButton *dxBarButton5;
	TAction *aDetail;
	TdxBarDateCombo *deDateBegin;
	TdxBarDateCombo *deDateFinish;
	TdxBar *bmLegend;
	TdxBarStatic *dxBarStatic1;
	TdxBarStatic *dxBarStatic2;
	TdxBarStatic *dxBarStatic3;
	TdxBarStatic *dxBarStatic4;
	TdxBarStatic *dxBarStatic5;
	TdxBarStatic *dxBarStatic6;
	TdxBarStatic *dxBarStatic7;
	TdxBarStatic *dxBarStatic8;
	TdxBarStatic *dxBarStatic9;
	TAction *aRefreshRcvDinamic;
	TcxGridViewRepository *GridViewRepository;
	TcxGridDBChartView *chvRcvDynamic;
	TcxGridDBChartSeries *chvRcvDynamicSeries1;
	TdxBarButton *btnFilter_Active;
	TdxBarButton *btnFilter_Period;
	TAction *aFilter_Active;
	TAction *aFilter_Period;
	TTimer *tmr;
	TAction *aLoad_FTP_Params;
	TAction *aStore_Column_Customization;
	TAction *aRestore_Column_Customization;
	TAction *aSetAction;
	TAction *aExport2Excel;
	TDataSource *dsIncidentList;
	TClientDataSet *cdsIncidentList;
	TDataSource *dsIncidentListChild;
	TClientDataSet *cdsIncidentListChild;
	TClientDataSet *cdsFirmTree;
	TDataSource *dsFirmTree;
	TAction *aFill_ProfileList;
	TAction *aSaveProfile;
	TAction *aApplyProfile;
	TcxBarEditItem *cbProfile;
	TdxBarButton *dxBarButton6;
	TAction *aNewProblem;
	TAction *aNewSystem;
	TAction *aNewInstr;
	TAction *aDeleteProfile;
	TdxBarButton *dxBarButton9;
	TdxBarStatic *dxBarStatic10;
	TdxBarPopupMenu *pmIncident;
	TdxBarButton *dxBarButton10;
	TAction *aMultiAttach;
	TSaveDialog *dlgSave;
	TdxBarButton *dxBarButton11;
	TdxBarStatic *dxBarStatic11;
	TdxBarButton *dxBarButton12;
	TAction *aCloseHandly;
	TdxBarButton *dxBarButton13;
	TAction *aAudit;
	TdxBarButton *dxBarButton14;
	TcxPageControl *pc;
	TcxTabSheet *tsMain;
	TcxTabSheet *tsOthers;
	TcxGroupBox *cxGroupBox3;
	TcxLabel *cxLabel7;
	TcxDBMemo *mmIncident_Descr;
	TcxGrid *grdIncident;
	TcxGridDBBandedTableView *btvIncident;
	TcxGridDBBandedColumn *btvIncidentColumn1;
	TcxGridDBBandedColumn *btvIncidentColumn2;
	TcxGridDBBandedColumn *btvIncidentColumn3;
	TcxGridDBBandedColumn *clmnIncidentTime;
	TcxGridDBBandedColumn *btvIncidentColumn6;
	TcxGridDBBandedColumn *btvIncidentColumn7;
	TcxGridDBBandedColumn *btvIncidentColumn8;
	TcxGridDBBandedColumn *btvIncidentColumn9;
	TcxGridDBBandedColumn *btvIncidentColumn11;
	TcxGridDBBandedColumn *clmnIncident_StateName;
	TcxGridDBBandedColumn *btvIncidentColumn12;
	TcxGridDBBandedColumn *btvIncidentColumn13;
	TcxGridDBBandedColumn *btvIncidentColumn14;
	TcxGridDBBandedColumn *btvIncidentColumn15;
	TcxGridDBBandedColumn *btvIncidentColumn17;
	TcxGridDBBandedColumn *btvIncidentColumn18;
	TcxGridDBBandedColumn *btvIncidentColumn19;
	TcxGridDBBandedColumn *btvIncidentColumn20;
	TcxGridDBBandedColumn *btvIncidentColumn21;
	TcxGridDBBandedColumn *btvIncidentColumn22;
	TcxGridDBBandedColumn *clmnIncident_Create_Mode;
	TcxGridDBBandedColumn *btvIncidentColumn23;
	TcxGridDBBandedColumn *clmnStateID;
	TcxGridDBBandedColumn *btvIncidentColumn4;
	TcxGridDBBandedColumn *btvIncidentColumn24;
	TcxGridDBBandedColumn *clmnIncident_Can_Delete;
	TcxGridDBBandedColumn *clmnIncident_Info_Source_Type;
	TcxGridDBBandedColumn *btvIncidentColumn10;
	TcxGridDBBandedColumn *btvIncidentColumn16;
	TcxGridDBBandedColumn *btvIncidentColumn25;
	TcxGridDBBandedColumn *btvIncidentColumn26;
	TcxGridDBBandedColumn *btvIncidentColumn27;
	TcxGridDBBandedColumn *btvIncidentColumn28;
	TcxGridDBBandedColumn *btvIncidentColumn29;
	TcxGridDBBandedColumn *btvIncidentColumn30;
	TcxGridDBBandedColumn *btvIncidentColumn31;
	TcxGridDBBandedColumn *btvIncidentColumn32;
	TcxGridDBBandedColumn *btvIncidentColumn34;
	TcxGridDBBandedColumn *btvIncidentColumn35;
	TcxGridDBBandedColumn *btvIncidentColumn5;
	TcxGridDBBandedColumn *btvIncidentColumn36;
	TcxGridDBBandedColumn *btvIncidentColumn33;
	TcxGridDBBandedColumn *btvIncidentColumn37;
	TcxGridDBBandedColumn *btvIncidentColumn38;
	TcxGridDBBandedColumn *btvIncidentColumn39;
	TcxGridDBBandedColumn *btvIncidentColumn40;
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
	TcxGridLevel *lvlIncident;
	TcxGridLevel *lvlIncidentChild;
	TcxGrid *grdStatistic;
	TcxGridLevel *lvlReceiveIncidentDynamic;
	TPanel *pnlGridTitle;
	TcxLabel *lblNeed2Refresh;
	TcxSplitter *spltrGraph;
	TdxBarDockControl *dxBarDockControl1;
	TdxBarDockControl *dxBarDockControl2;
	TPanel *pnlFirmTree;
	TcxDBTreeList *tlFirmTree;
	TcxDBTreeListColumn *clmn_FirmName;
	TcxDBTreeListColumn *clmn_FirmTypeMnemo;
	TcxDBTreeListColumn *clmn_KodFirm;
	TdxStatusBar *dxStatusBar4;
	TPanel *pnlConditions;
	TcxPopupEdit *cbFirmTree_;
	TcxImageList *imlFirmTreeState;
	TdxBarControlContainerItem *dxBarControlContainerItem1;
	TAction *aLoad_NSI_FirmTree;
	TcxStyleRepository *stlrp;
	TcxStyle *stlBackground;
	TcxStyle *stlGroup;
	TcxStyle *stlContent;
	TcxStyle *stlHeader;
	TcxStyle *stlBandHeader;
	TcxStyle *stlContentProgress;
	TcxStyle *stlSmallFont7;
	TcxStyle *stlContent8;
	TcxStyle *stlSeriesElder;
	TcxStyle *stlHeaderBlack;
	TcxStyle *stlHotTrack;
	TcxStyle *stlLegendSmall;
	TcxStyle *stlLegendSmallBold;
	TcxStyle *stlLargeFont;
	TcxStyle *stlAttention;
	TcxStyle *stlLegend;
	TcxStyle *stlArial13;
	TcxStyle *stlCategory;
	TcxStyle *stlRowDisabled;
	TcxStyle *stlBackgroundLight;
	TcxStyle *stlSelection;
	TcxStyle *stlContentNonEditing;
	TcxStyle *stlToolbar;
	TcxStyle *stlLineSeries_1;
	TcxStyle *stlContentOdd;
	TcxStyle *stlBackgroundLightBlue;
	TcxStyle *stlGrayText_LightGreenBg;
	TcxStyle *stlBackgroundLightGreen;
	TcxStyle *stlBackgroundLightRed;
	TcxStyle *stlBandHeadet11Green;
	TcxStyle *stlNeed2Refresh;
	TcxStyle *cxStyle1;
	TcxStyle *stlSystemInfo;
	TcxStyle *stlAttention_Middle;
	TcxStyle *stlLocInDepoNR;
	TcxStyle *stlLocInDepo;
	TcxStyle *stlLocInWork;
	TcxStyle *stlRunningRed;
	TcxStyle *stlRunningYellow;
	TcxStyle *stlRunningGreen;
	TcxStyle *stlGrayText_Italic;
	TcxGridBandedTableViewStyleSheet *stlshtBTV;
	TcxTreeListStyleSheet *stlTL;
	TAction *aSelect_FirmTree;
	TdxBarSubItem *dxBarSubItem1;
	TdxBarButton *dxBarButton1;
	TdxBarButton *dxBarButton7;
	TAction *aCreateTemplate;
	TdxBarButton *dxBarButton8;
	TAction *aViewTemplate;
	TcxBarEditItem *lblTemplateName;
	TcxGridDBBandedColumn *btvIncidentColumn41;
	TcxGridDBBandedColumn *btvIncidentColumn42;
	TTimer *Timer1;
	TcxGridDBBandedColumn *btvIncidentColumn43;
	TcxGridDBBandedColumn *btvIncidentColumn44;
	TcxBarEditItem *cxBarEditItem1;
	TcxBarEditItem *bListDoc;
	TdxBarButton *btnDoc;
	TActionList *alDoc;
	TAction *aSelDoc;
	TAction *aDoc;
	TAction *aLoadDoc;
	TdxBarButton *dxBarButton15;
	TAction *Action1;
	TdxBarSubItem *dxBarSubItem2;
	TdxBarButton *btnProblemIncident;
	TAction *aProblemIncident;
	TcxGroupBox *gbPrograssAddProblem;
	TcxProgressBar *pgAddProblem;
	TAction *aLoadSer;
	TcxImageComboBox *cbSer;
	TAction *aLoadNum;
	TClientDataSet *cdsFiltr;
	TDataSource *dsFiltr;
	TcxLookupComboBox *cbNum;
	TAction *aActionFuntion;
	TdxBarButton *dxBarButton16;
	TcxGridDBBandedColumn *clmnchecked;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aRefreshExecute(TObject *Sender);
	void __fastcall aDetailExecute(TObject *Sender);
	void __fastcall aNewExecute(TObject *Sender);
	void __fastcall aEditExecute(TObject *Sender);
	void __fastcall aDeleteExecute(TObject *Sender);
	void __fastcall btvIncidentColumn2GetDisplayText(TcxCustomGridTableItem *Sender,
          TcxCustomGridRecord *ARecord, UnicodeString &AText);
	void __fastcall deDateBeginChange(TObject *Sender);
	void __fastcall btvIncidentCustomDrawCell(TcxCustomGridTableView *Sender, TcxCanvas *ACanvas,
          TcxGridTableDataCellViewInfo *AViewInfo, bool &ADone);
	void __fastcall aRefreshRcvDinamicExecute(TObject *Sender);
	void __fastcall chvRcvDynamicCategoriesGetValueDisplayText(TObject *Sender, const Variant &AValue,
          UnicodeString &ADisplayText);
	void __fastcall aFilter_ActiveExecute(TObject *Sender);
	void __fastcall aFilter_PeriodExecute(TObject *Sender);
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aLoad_FTP_ParamsExecute(TObject *Sender);
	void __fastcall aStore_Column_CustomizationExecute(TObject *Sender);
	void __fastcall aRestore_Column_CustomizationExecute(TObject *Sender);
	void __fastcall FormDestroy(TObject *Sender);
	void __fastcall aSetActionExecute(TObject *Sender);
	void __fastcall btvIncidentFocusedRecordChanged(TcxCustomGridTableView *Sender,
          TcxCustomGridRecord *APrevFocusedRecord, TcxCustomGridRecord *AFocusedRecord,
          bool ANewItemRecordFocusingChanged);
	void __fastcall btvIncidentDblClick(TObject *Sender);
	void __fastcall aExport2ExcelExecute(TObject *Sender);
	void __fastcall deDateFinishChange(TObject *Sender);
	void __fastcall aFill_ProfileListExecute(TObject *Sender);
	void __fastcall aSaveProfileExecute(TObject *Sender);
	void __fastcall aApplyProfileExecute(TObject *Sender);
	void __fastcall btvIncidentChildDblClick(TObject *Sender);
	void __fastcall btvIncidentChildFocusedRecordChanged(TcxCustomGridTableView *Sender,
          TcxCustomGridRecord *APrevFocusedRecord, TcxCustomGridRecord *AFocusedRecord,
          bool ANewItemRecordFocusingChanged);
	void __fastcall aNewProblemExecute(TObject *Sender);
	void __fastcall aNewSystemExecute(TObject *Sender);
	void __fastcall aNewInstrExecute(TObject *Sender);
	void __fastcall aDeleteProfileExecute(TObject *Sender);
	void __fastcall aMultiAttachExecute(TObject *Sender);
	void __fastcall aExportToExcelExecute(TObject *Sender);
	void __fastcall btvIncidentColumn5PropertiesStartClick(TObject *Sender);
	void __fastcall aCloseHandlyExecute(TObject *Sender);
	void __fastcall aLoad_NSI_FirmTreeExecute(TObject *Sender);
	void __fastcall tlFirmTreeCustomDrawCell(TObject *Sender, TcxCanvas *ACanvas,
          TcxTreeListEditCellViewInfo *AViewInfo, bool &ADone);
	void __fastcall aSelect_FirmTreeExecute(TObject *Sender);
	void __fastcall tlFirmTreeKeyDown(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall tlFirmTreeKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall aCreateTemplateExecute(TObject *Sender);
	void __fastcall aViewTemplateExecute(TObject *Sender);
	void __fastcall Timer1Timer(TObject *Sender);
	void __fastcall aDocExecute(TObject *Sender);
	void __fastcall aLoadDocExecute(TObject *Sender);
	void __fastcall aProblemIncidentExecute(TObject *Sender);
	void __fastcall aLoadSerExecute(TObject *Sender);
	void __fastcall aLoadNumExecute(TObject *Sender);
	void __fastcall cbSerPropertiesEditValueChanged(TObject *Sender);
	void __fastcall cbNumPropertiesEditValueChanged(TObject *Sender);
	void __fastcall aActionFuntionExecute(TObject *Sender);
  	void __fastcall btvIncidentCellClick(TcxCustomGridTableView *Sender, TcxGridTableDataCellViewInfo *ACellViewInfo,
		  TMouseButton AButton, TShiftState AShift,
		  bool &AHandled);
	void __fastcall btvIncidentCellDblClick(TcxCustomGridTableView *Sender, TcxGridTableDataCellViewInfo *ACellViewInfo,
          TMouseButton AButton, TShiftState AShift,
          bool &AHandled);
	void __fastcall clmncheckedPropertiesEditValueChanged(TObject *Sender);
	void __fastcall clmncheckedHeaderClick(TObject *Sender);



private:
	int LocSer, LocNum, LocSec, LocObj;
	AnsiString ListId;
	config	cfg;
    enumFilterPeriodType CurrentPeriodType;
	void __fastcall BTV_LocateRecord (TcxGridDBBandedTableView *btv, int id);
    void __fastcall UniversalRefresh(enumRelationType p_relation_type, TClientDataSet *cds);
	void __fastcall UniversalBTVApplyRefresh(TDataSource *ds, TcxGridDBBandedTableView *btv, int key_value, bool DoLocate);
	AnsiString __fastcall ProblemCondition();
	AnsiString __fastcall GetIpAddress();
	void __fastcall SetLocValues();
	bool __fastcall IfFrx6();
	bool __fastcall IfMoreDoc(int Count, int IndexDoc);
public:
	__fastcall TfrmIncident(TComponent* Owner);
	int __fastcall IfZeroAll();
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmIncident *frmIncident;
//---------------------------------------------------------------------------
#endif
