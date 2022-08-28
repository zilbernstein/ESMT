//---------------------------------------------------------------------------

#ifndef ULocParkH
#define ULocParkH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxDBLookupComboBox.hpp"
#include "cxDBLookupEdit.hpp"
#include "cxDropDownEdit.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxLookupEdit.hpp"
#include "cxMaskEdit.hpp"
#include "cxTextEdit.hpp"
#include <ActnList.hpp>
#include <ExtCtrls.hpp>
#include "cxClasses.hpp"
#include "dxBar.hpp"
#include "dxBarExtItems.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxFilter.hpp"
#include "cxGrid.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBBandedTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxStyles.hpp"
#include <DB.hpp>
#include "cxButtons.hpp"
#include <ImgList.hpp>
#include <Menus.hpp>
#include <DBClient.hpp>
#include "cxImageComboBox.hpp"
#include "cxLabel.hpp"
#include "cxCheckBox.hpp"
#include "cxGridExportLink.hpp"
#include "cxPC.hpp"
#include "cxDBTL.hpp"
#include "cxInplaceContainer.hpp"
#include "cxTL.hpp"
#include "cxTLData.hpp"
#include "dxStatusBar.hpp"
#include "cxVGrid.hpp"
#include "cxBarEditItem.hpp"
#include "cxNavigator.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include <System.Actions.hpp>
#include "dxSkinsCore.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include "dxSkinscxPCPainter.hpp"
//---------------------------------------------------------------------------
class TfrmLocPark : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel2;
	TActionList *alLocParkIncident;
	TdxBarManager *bmLocPark;
	TdxBar *tbCommonButtons;
	TdxBar *bmLegend;
	TdxBarStatic *dxBarStatic2;
	TdxBarGroup *dxBarGroup1;
	TdxBarGroup *dxBarGroup2;
	TdxBarDockControl *dxBarDockControl2;
	TcxStyleRepository *stlrpLocPark;
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
	TcxGridBandedTableViewStyleSheet *stlshtBTV;
	TAction *aRefresh;
	TcxImageList *imlSmall;
	TdxBarButton *dxBarButton1;
	TDataSource *dsLocPark;
	TClientDataSet *cdsLocPark;
	TAction *aLoad_NSI_FirmTree;
	TDataSource *dsFirmTree;
	TClientDataSet *cdsFirmTree;
	TTimer *tmr;
	TdxBarStatic *lblLegend_InDepo;
	TdxBarStatic *lblLegend_InDepo_NR;
	TcxStyle *stlAttention_Middle;
	TdxBarPopupMenu *bpmLocPark;
	TdxBarButton *dxBarButton2;
	TdxBarButton *dxBarButton3;
	TAction *aEdit;
	TdxBarStatic *dxBarStatic1;
	TcxStyle *stlLocInDepoNR;
	TcxStyle *stlLocInDepo;
	TcxStyle *stlLocInWork;
	TAction *aSetAction;
	TAction *aExportXLS;
	TcxStyle *stlRunningRed;
	TAction *aLoad_NSI_LocSer;
	TClientDataSet *cdsLocSer;
	TDataSource *dsLocSer;
	TcxStyle *stlRunningYellow;
	TcxStyle *stlRunningGreen;
	TcxStyle *stlGrayText_Italic;
	TdxBarStatic *dxBarStatic3;
	TdxBarStatic *dxBarStatic4;
	TdxBarStatic *dxBarStatic5;
	TdxBarStatic *dxBarStatic6;
	TAction *aDeleteFromService;
	TDataSource *dsDepoList;
	TClientDataSet *cdsDepoList;
	TAction *aLoad_NSI_DepoList;
	TcxPageControl *pc;
	TcxTabSheet *tsRunning;
	TcxTabSheet *tsOthers;
	TPanel *Panel3;
	TdxBarButton *dxBarButton4;
	TdxBarButton *dxBarButton5;
	TdxBarButton *dxBarButton6;
	TdxBarControlContainerItem *dxBarControlContainerItem1;
	TPanel *pnlFirmTree;
	TcxDBTreeList *tlFirmTree;
	TcxDBTreeListColumn *clmn_FirmName;
	TcxDBTreeListColumn *clmn_FirmTypeMnemo;
	TcxDBTreeListColumn *clmn_KodFirm;
	TdxStatusBar *dxStatusBar4;
	TcxImageList *imlFirmTreeState;
	TAction *aSelect_FirmTree;
	TcxStyleRepository *stlrpEditing;
	TcxStyle *cxStyle2;
	TcxStyle *cxStyle3;
	TcxStyle *cxStyle4;
	TcxStyle *cxStyle5;
	TcxStyle *cxStyle6;
	TcxStyle *cxStyle7;
	TcxStyle *cxStyle8;
	TcxStyle *cxStyle9;
	TcxStyle *cxStyle10;
	TcxStyle *stlGrayFont;
	TcxVerticalGridStyleSheet *stlshtVG;
	TcxGridBandedTableViewStyleSheet *cxGridBandedTableViewStyleSheet1;
	TcxTreeListStyleSheet *stlshtTL_;
	TcxTreeListStyleSheet *stlTL;
	TPanel *pnlConditions;
	TcxImageComboBox *cbLocSer;
	TcxImageComboBox *cbDepoList;
	TcxPopupEdit *cbFirmTree_;
	TdxBarControlContainerItem *beichbShowAll;
	TPanel *Panel1;
	TcxCheckBox *chbShowAll;
	TPanel *Panel4;
	TdxBarDockControl *dxBarDockControl1;
	TcxLabel *lblTitle;
	TcxGrid *grdLocPark;
	TcxGridDBBandedTableView *btvLocPark;
	TcxGridDBBandedColumn *clmnRN;
	TcxGridDBBandedColumn *clmnCheck;
	TcxGridDBBandedColumn *clmnSeria;
	TcxGridDBBandedColumn *clmnNomTPE;
	TcxGridDBBandedColumn *clmnSectionName;
	TcxGridDBBandedColumn *btvLocParkColumn2;
	TcxGridDBBandedColumn *btvLocParkColumn23;
	TcxGridDBBandedColumn *btvLocParkColumn6;
	TcxGridDBBandedColumn *btvLocParkColumn1;
	TcxGridDBBandedColumn *btvLocParkColumn7;
	TcxGridDBBandedColumn *btvLocParkColumn5;
	TcxGridDBBandedColumn *clmnSostCategory;
	TcxGridDBBandedColumn *clmnLastEventDate;
	TcxGridDBBandedColumn *btvLocParkColumn8;
	TcxGridDBBandedColumn *clmnSostName;
	TcxGridDBBandedColumn *btvLocParkColumn11;
	TcxGridDBBandedColumn *clmnTO2_Vr;
	TcxGridDBBandedColumn *clmnTO2_Date;
	TcxGridDBBandedColumn *btvLocParkColumn3;
	TcxGridDBBandedColumn *btvLocParkColumn4;
	TcxGridDBBandedColumn *clmnTO3_Date;
	TcxGridDBBandedColumn *btvLocParkColumn14;
	TcxGridDBBandedColumn *btvLocParkColumn16;
	TcxGridDBBandedColumn *btvLocParkColumn17;
	TcxGridDBBandedColumn *btvLocParkColumn9;
	TcxGridDBBandedColumn *btvLocParkColumn12;
	TcxGridDBBandedColumn *btvLocParkColumn13;
	TcxGridDBBandedColumn *btvLocParkColumn18;
	TcxGridDBBandedColumn *btvLocParkColumn19;
	TcxGridDBBandedColumn *btvLocParkColumn20;
	TcxGridDBBandedColumn *btvLocParkColumn21;
	TcxGridDBBandedColumn *btvLocParkColumn22;
	TcxGridDBBandedColumn *btvLocParkColumn24;
	TcxGridDBBandedColumn *clmn_PRIZN_PROB_TO2_KM;
	TcxGridDBBandedColumn *clmn_PRIZN_PROB_TO2_VR;
	TcxGridDBBandedColumn *clmn_PRIZN_PROB_TO3_KM;
	TcxGridDBBandedColumn *clmn_PRIZN_PROB_TO3_VR;
	TcxGridDBBandedColumn *clmn_PRIZN_PROB_TR1_KM;
	TcxGridDBBandedColumn *clmn_PRIZN_PROB_TR1_VR;
	TcxGridDBBandedColumn *clmn_PRIZN_PROB_TR2_KM;
	TcxGridDBBandedColumn *clmn_PRIZN_PROB_TR2_VR;
	TcxGridDBBandedColumn *clmn_PRIZN_PROB_TR3_KM;
	TcxGridDBBandedColumn *clmn_PRIZN_PROB_TR3_VR;
	TcxGridDBBandedColumn *clmn_PRIZN_PROB_SR_KM;
	TcxGridDBBandedColumn *clmn_PRIZN_PROB_SR_VR;
	TcxGridDBBandedColumn *clmn_PRIZN_PROB_KR_KM;
	TcxGridDBBandedColumn *clmn_PRIZN_PROB_KR_VR;
	TcxGridDBBandedColumn *clmn_NORM_PROB_TO2_KM;
	TcxGridDBBandedColumn *clmn_NORM_PROB_TO2_VR;
	TcxGridDBBandedColumn *clmn_NORM_PROB_TO3_KM;
	TcxGridDBBandedColumn *clmn_NORM_PROB_TO3_VR;
	TcxGridDBBandedColumn *clmn_NORM_PROB_TR1_KM;
	TcxGridDBBandedColumn *clmn_NORM_PROB_TR1_VR;
	TcxGridDBBandedColumn *clmn_NORM_PROB_TR2_KM;
	TcxGridDBBandedColumn *clmn_NORM_PROB_TR2_VR;
	TcxGridDBBandedColumn *clmn_NORM_PROB_TR3_KM;
	TcxGridDBBandedColumn *clmn_NORM_PROB_TR3_VR;
	TcxGridDBBandedColumn *clmn_NORM_PROB_SR_KM;
	TcxGridDBBandedColumn *clmn_NORM_PROB_SR_VR;
	TcxGridDBBandedColumn *clmn_NORM_PROB_KR_KM;
	TcxGridDBBandedColumn *clmn_NORM_PROB_KR_VR;
	TcxGridLevel *lvlLocPark;
	TcxGridDBBandedColumn *btvLocParkColumn10;
	TcxBarEditItem *chbLess;
	TcxBarEditItem *chbEqualy;
	TcxBarEditItem *chbMore;
	TcxBarEditItem *cxBarEditItem1;
	TdxBarButton *dxBarButton7;
	TdxBarButton *dxBarButton8;
	TAction *aCreateTemplate;
	TAction *aViewTemplate;
	TcxBarEditItem *cbRepairType;
	TcxBarEditItem *cxBarEditItem3;
	TcxBarEditItem *cxBarEditItem2;
	TdxBarStatic *dxBarStatic7;
	TdxBarStatic *dxBarStatic8;
	TdxBarStatic *dxBarStatic9;
	TdxBarButton *dxBarButton10;
	TAction *aClearAll;
	TcxBarEditItem *cxBarEditItem4;
	TdxBarStatic *dxBarStatic10;
	TcxBarEditItem *lblTemplateName;
	TTimer *Timer1;
	TdxBarButton *btnViltrLRZ;
	TAction *aViltrLRZ;
	TAction *aSetForm;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aRefreshExecute(TObject *Sender);
	void __fastcall aLoad_NSI_FirmTreeExecute(TObject *Sender);
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aEditExecute(TObject *Sender);
	void __fastcall clmnTO2_VrGetDisplayText(TcxCustomGridTableItem *Sender,
          TcxCustomGridRecord *ARecord, UnicodeString &AText);
	void __fastcall clmnTO2_DateGetDisplayText(TcxCustomGridTableItem *Sender,
          TcxCustomGridRecord *ARecord, UnicodeString &AText);
	void __fastcall clmnSeriaCompareRowValuesForCellMerging(TcxGridColumn *Sender,
          TcxGridDataRow *ARow1, TcxCustomEditProperties *AProperties1,
          const Variant &AValue1, TcxGridDataRow *ARow2,
          TcxCustomEditProperties *AProperties2, const Variant &AValue2,
          bool &AAreEqual);
	void __fastcall btvLocParkCustomDrawCell(TcxCustomGridTableView *Sender, TcxCanvas *ACanvas,
          TcxGridTableDataCellViewInfo *AViewInfo, bool &ADone);
	void __fastcall clmnTO3_DateGetDisplayText(TcxCustomGridTableItem *Sender,
          TcxCustomGridRecord *ARecord, UnicodeString &AText);
	void __fastcall btvLocParkStylesGetGroupSummaryStyle(TcxGridTableView *Sender,
          TcxGridGroupRow *ARow, TcxGridColumn *AColumn, TcxDataSummaryItem *ASummaryItem,
          TcxStyle *&AStyle);
	void __fastcall btvLocParkCanSelectRecord(TcxCustomGridTableView *Sender, TcxCustomGridRecord *ARecord,
          bool &AAllow);
	void __fastcall btvLocParkBandPosChanged(TcxGridBandedTableView *Sender, TcxGridBand *ABand);
	void __fastcall aSetActionExecute(TObject *Sender);
	void __fastcall btvLocParkFocusedRecordChanged(TcxCustomGridTableView *Sender,
          TcxCustomGridRecord *APrevFocusedRecord, TcxCustomGridRecord *AFocusedRecord,
          bool ANewItemRecordFocusingChanged);
	void __fastcall clmnCheckPropertiesEditValueChanged(TObject *Sender);
	void __fastcall aExportXLSExecute(TObject *Sender);
	void __fastcall btvLocParkKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall aLoad_NSI_LocSerExecute(TObject *Sender);
	void __fastcall btvLocParkColumn11CustomDrawCell(TcxCustomGridTableView *Sender,
          TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
          bool &ADone);
	void __fastcall clmnTO2_VrCustomDrawCell(TcxCustomGridTableView *Sender, TcxCanvas *ACanvas,
          TcxGridTableDataCellViewInfo *AViewInfo, bool &ADone);
	void __fastcall btvLocParkColumn3CustomDrawCell(TcxCustomGridTableView *Sender,
          TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
          bool &ADone);
	void __fastcall btvLocParkColumn4CustomDrawCell(TcxCustomGridTableView *Sender,
          TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
          bool &ADone);
	void __fastcall btvLocParkColumn14CustomDrawCell(TcxCustomGridTableView *Sender,
          TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
          bool &ADone);
	void __fastcall btvLocParkColumn16CustomDrawCell(TcxCustomGridTableView *Sender,
          TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
          bool &ADone);
	void __fastcall btvLocParkColumn9CustomDrawCell(TcxCustomGridTableView *Sender,
          TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
          bool &ADone);
	void __fastcall btvLocParkColumn12CustomDrawCell(TcxCustomGridTableView *Sender,
          TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
          bool &ADone);
	void __fastcall btvLocParkColumn18CustomDrawCell(TcxCustomGridTableView *Sender,
          TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
          bool &ADone);
	void __fastcall btvLocParkColumn19CustomDrawCell(TcxCustomGridTableView *Sender,
          TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
          bool &ADone);
	void __fastcall aDeleteFromServiceExecute(TObject *Sender);
	void __fastcall aLoad_NSI_DepoListExecute(TObject *Sender);
	void __fastcall aSelect_FirmTreeExecute(TObject *Sender);
	void __fastcall tlFirmTreeCustomDrawCell(TObject *Sender, TcxCanvas *ACanvas,
          TcxTreeListEditCellViewInfo *AViewInfo, bool &ADone);
	void __fastcall tlFirmTreeKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall tlFirmTreeKeyDown(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall clmnCheckCustomDrawFooterCell(TcxGridTableView *Sender, TcxCanvas *ACanvas,
          TcxGridColumnHeaderViewInfo *AViewInfo, bool &ADone);
	void __fastcall clmnSectionNameCustomDrawCell(TcxCustomGridTableView *Sender,
          TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
          bool &ADone);
	void __fastcall btvLocParkColumn8CustomDrawCell(TcxCustomGridTableView *Sender,
          TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
          bool &ADone);
	void __fastcall btvLocParkColumn5GetCellHint(TcxCustomGridTableItem *Sender,
          TcxCustomGridRecord *ARecord, TcxGridTableDataCellViewInfo *ACellViewInfo,
          const TPoint &AMousePos, TCaption &AHintText,
          bool &AIsHintMultiLine, TRect &AHintTextRect);
	void __fastcall clmnSostCategoryGetCellHint(TcxCustomGridTableItem *Sender,
          TcxCustomGridRecord *ARecord, TcxGridTableDataCellViewInfo *ACellViewInfo,
          const TPoint &AMousePos, TCaption &AHintText,
          bool &AIsHintMultiLine, TRect &AHintTextRect);
	void __fastcall clmnLastEventDateGetDisplayText(TcxCustomGridTableItem *Sender,
          TcxCustomGridRecord *ARecord, UnicodeString &AText);
	void __fastcall aCreateTemplateExecute(TObject *Sender);
	void __fastcall aViewTemplateExecute(TObject *Sender);
	void __fastcall aClearAllExecute(TObject *Sender);
	void __fastcall Timer1Timer(TObject *Sender);
	void __fastcall cbFirmTree_PropertiesEditValueChanged(TObject *Sender);
	void __fastcall cbLocSerPropertiesEditValueChanged(TObject *Sender);
	void __fastcall cbDepoListPropertiesEditValueChanged(TObject *Sender);
	void __fastcall aViltrLRZExecute(TObject *Sender);
	void __fastcall aSetFormExecute(TObject *Sender);
private:	// User declarations
	config	cfg;
    void __fastcall OverRunning_CustomDrawCell( int clmn_value, TcxCanvas *ACanvas );
public:		// User declarations
	__fastcall TfrmLocPark(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmLocPark *frmLocPark;
//---------------------------------------------------------------------------
#endif

