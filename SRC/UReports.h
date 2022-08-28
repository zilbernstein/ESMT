#ifndef UReportsH
#define UReportsH
#include "cxBarEditItem.hpp"
#include "cxCalendar.hpp"
#include "cxCheckBox.hpp"
#include "cxClasses.hpp"
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxDropDownEdit.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxGridTableView.hpp"
#include "cxImageComboBox.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLabel.hpp"
#include "cxMaskEdit.hpp"
#include "cxPC.hpp"
#include "cxProgressBar.hpp"
#include "cxStyles.hpp"
#include "cxTextEdit.hpp"
#include "cxTL.hpp"
#include "dxBar.hpp"
#include "dxBarExtItems.hpp"
#include "dxStatusBar.hpp"
#include "UfmePreview.h"
#include <ActnList.hpp>
#include <Classes.hpp>
#include <Controls.hpp>
#include <ExtCtrls.hpp>
#include <Forms.hpp>
#include <ImgList.hpp>
#include "dxdbtrel.hpp"
#include "cxButtons.hpp"
#include "cxLookAndFeelPainters.hpp"
#include <Menus.hpp>
#include <StdCtrls.hpp>
#include "cxDBTL.hpp"
#include "cxTLData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxFilter.hpp"
#include "cxGrid.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBTableView.hpp"
#include "cxGridLevel.hpp"
#include <DB.hpp>
#include <DBClient.hpp>
#include "cxDBLookupComboBox.hpp"
#include "cxDBLookupEdit.hpp"
#include "cxLookupEdit.hpp"
#include "frxClass.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinscxPCPainter.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "cxDateUtils.hpp"
#include "cxNavigator.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "dxCore.hpp"
#include <System.Actions.hpp>
#include <Vcl.ComCtrls.hpp>
#include "frxChart.hpp"

// Константы для показа текущей операции (Current Operation)
const AnsiString coQueryExecutable	= "Выполнение запроса";
const AnsiString coReportBuilding	= "Построение отчета";

const int imgReportCustom	= 31;

struct ReportsParam
{
	TDateTime	p_date_begin;	// дата начала отчетного периода
	TDateTime	p_date_end;		// дата окончания отчетного периода
	int			p_kod_firm;    // предприятие (топливный склад)
	int			p_fuel_id;
	bool		p_need2saveINI;
};

class TfrmReports : public TForm
{
__published:
	TActionList *alReports;
	TTimer *tmrReports;
	TAction *aGetTemplates;
	TAction *aSimpleUpdateStatus;
	TAction *aInitiatorUpdateStatus;
	TAction *aPrepareOutParams;
	TdxBarManager *brmngReports;
	TdxBarGroup *dxBarGroup1;
	TdxBarGroup *dxBarGroup2;
	TcxPageControl *pcMain;
	TcxTabSheet *tsReportMain;
	TcxTabSheet *tsReportPreview;
	TPanel *Panel2;
	TPanel *Panel5;
	TAction *aStoreIniSettings;
	TAction *aRestoreIniSettings;
	TAction *aExit;
	TdxStatusBar *stsCommon;
	TAction *aGetFirmList;
	TAction *aSelectFirm;
	TdxBar *tbTools;
	TcxBarEditItem *cxBarEditItem1;
	TcxBarEditItem *cxBarEditItem2;
	TdxBar *brmngReportBrowserBar2;
	TcxBarEditItem *cxBarEditItem3;
	TcxBarEditItem *cxBarEditItem4;
	TAction *aGetRepair;
	TAction *aGetSeria;
	TAction *aPrepareParam_Tjaga;
	TAction *aHelpSupport;
	TAction *aGoOnForum;
	TAction *aViewHelp;
	TAction *aSendMail;
	TAction *aShowVersion;
	TdxBarButton *dxBarButton2;
	TdxBarButton *dxBarButton3;
	TdxBarButton *dxBarButton4;
	TAction *aLocSearch;
	TAction *aPrepareFilterString;
	TActionList *alReportsLrg;
	TdxBarLargeButton *dxBarLargeButton1;
	TdxStatusBarContainerControl *stsCommonContainer1;
	TcxProgressBar *prgsMain;
	TAction *aPrepareReports;
	TcxTabSheet *tsOthers;
	TPanel *pnlPeriodConditions;
	TcxDateEdit *bdcDateBegin;
	TcxLabel *cxLabel3;
	TcxDateEdit *bdcDateEnd;
	TdxBarDockControl *bdcReportCommon;
	TPanel *Panel6;
	TPanel *pnlFuelConditions;
	TcxImageComboBox *cmFuel;
	TAction *aFillFuelList;
	TdxBarControlContainerItem *dxBarControlContainerItem2;
	TdxBarDateCombo *deDateBegin_;
	TdxBarDateCombo *deDateFinish_;
	TdxBarStatic *dxBarStatic1;
	TdxBarStatic *dxBarStatic2;
	TPanel *Panel1;
	TcxButton *cxButton9;
	TdxBarStatic *dxBarStatic3;
	TcxGrid *grd;
	TcxGridDBTableView *btvReportTree;
	TcxGridDBColumn *clmnCheck;
	TcxGridDBColumn *btvReportTreeColumn1;
	TcxGridDBColumn *btvReportTreeColumn2;
	TcxGridDBColumn *btvReportTreeColumn3;
	TcxGridLevel *lvl;
	TcxLabel *cxLabel18;
	TcxTextEdit *eSelectedCount;
	TClientDataSet *cdsR;
	TDataSource *dsR;
	TPanel *Panel3;
	TcxDateEdit *deDateFinish;
	TcxDateEdit *deDateBegin;
	TdxLookupTreeView *cbFirmTree;
	TcxLookupComboBox *cbFirmTree_;
	TfrxReport *rprt;
	TfmePreview *fmePreviewReport;
	TfrxChartObject *frxChartObject1;
   void __fastcall FormMouseWheel(TObject *Sender, TShiftState Shift,
          int WheelDelta, TPoint &MousePos, bool &Handled);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall tmrReportsTimer(TObject *Sender);
	void __fastcall aGetTemplatesExecute(TObject *Sender);
	void __fastcall aPrepareOutParamsExecute(TObject *Sender);
	void __fastcall aStoreIniSettingsExecute(TObject *Sender);
	void __fastcall aRestoreIniSettingsExecute(TObject *Sender);
	void __fastcall aExitExecute(TObject *Sender);
	void __fastcall aHelpSupportExecute(TObject *Sender);
	void __fastcall aGoOnForumExecute(TObject *Sender);
	void __fastcall aViewHelpExecute(TObject *Sender);
	void __fastcall aSendMailExecute(TObject *Sender);
	void __fastcall fmePreview1bbtnExitClick(TObject *Sender);
	void __fastcall aPrepareReportsExecute(TObject *Sender);
	void __fastcall FormKeyPress(TObject *Sender, char &Key);
	void __fastcall aGetFirmListExecute(TObject *Sender);
	void __fastcall btvReportTreeCustomDrawCell(TcxCustomGridTableView *Sender, TcxCanvas *ACanvas,
          TcxGridTableDataCellViewInfo *AViewInfo, bool &ADone);
	void __fastcall clmnCheckPropertiesEditValueChanged(TObject *Sender);
private:

	config	cfg;

	int				level_;

	//TcxTreeListNode* __fastcall FindNodeByKey( TcxTreeList *TreeList, TcxTreeListColumn *Column, int Key );

	void __fastcall CheckedOnOff(TcxTreeList *tl, TcxTreeListColumn *clmn, bool SetToAll, bool MultiSelect, bool AllowAllUncheck);
    void __fastcall InitialData(AnsiString procname_, int templid_);
    int __fastcall GetValue_Firm();

public:

	void __fastcall Start( );
	__fastcall TfrmReports(TComponent* Owner);
	__fastcall ~TfrmReports();
};
#endif
