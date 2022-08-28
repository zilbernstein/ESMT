#ifndef UMainH
#define UMainH
#include <cxClasses.hpp>
#include <cxControls.hpp>
#include <cxLookAndFeels.hpp>
#include <dxBar.hpp>
#include <dxRibbonStatusBar.hpp>
#include <dxStatusBar.hpp>
#include <ActnList.hpp>
#include <Classes.hpp>
#include <Controls.hpp>
#include <Menus.hpp>
#include "cxContainer.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxImage.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "dxGDIPlusClasses.hpp"
#include <ExtCtrls.hpp>
#include "cxProgressBar.hpp"
#include "cxGroupBox.hpp"
#include "dxCustomHint.hpp"
#include "dxScreenTip.hpp"
#include <System.Actions.hpp>
#include "SysUtils.hpp"
#include "cxHint.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include "dxSkinsForm.hpp"
#include "cxCustomData.hpp"
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
#include "cxNavigator.hpp"
#include "cxStyles.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinscxPCPainter.hpp"
#include <Data.DB.hpp>
#include <Soap.InvokeRegistry.hpp>
#include <Soap.Rio.hpp>
#include <Soap.SOAPHTTPClient.hpp>
#include "cxBarEditItem.hpp"
#include "cxButtonEdit.hpp"
#include "cxCheckComboBox.hpp"
#include "cxDBExtLookupComboBox.hpp"
#include "cxDropDownEdit.hpp"
#include "cxShellComboBox.hpp"
#include "cxCalc.hpp"
#include "cxLabel.hpp"
#include "cxTrackBar.hpp"
#include "cxCheckBox.hpp"
#include "cxImageComboBox.hpp"
#include "cxCalendar.hpp"
#include "cxDBLookupComboBox.hpp"


//---------------------------------------------------------------------------
class TfrmMain : public TForm
{
__published:
	TdxBarManager *bmMain;
	TdxBar *tbCommonButtons;
	TdxBarGroup *dxBarGroup1;
	TdxBarGroup *dxBarGroup2;
	TdxBarDockControl *bdcMain;
	TdxSkinController *dxSkinController1;
	TActionList *alLarge;
	TAction *aServiceLrg;
	TAction *aSettingsLrg;
	TdxBarLargeButton *dxBarLargeButton1;
	TdxBarPopupMenu *pmService;
	TdxBarButton *dxBarButton1;
	TdxBarButton *dxBarButton2;
	TdxBarButton *dxBarButton3;
	TActionList *alSmall;
	TAction *aForum;
	TAction *aAdmin;
	TAction *aLibrary;
	TdxBarLargeButton *dxBarLargeButton2;
	TdxBarPopupMenu *pmSettings;
	TdxBarButton *dxBarButton4;
	TdxBarButton *dxBarButton5;
	TAction *aInterfaceSettings;
	TAction *aManageComponent;
	TdxBarLargeButton *dxBarLargeButton3;
	TAction *aAnalyzeLrg;
	TdxBarPopupMenu *pmAnalyze;
	TdxBarButton *dxBarButton6;
	TdxBarButton *dxBarButton7;
	TAction *aReports;
	TAction *aAnalyze;
	TdxBarLargeButton *dxBarLargeButton4;
	TAction *aIncidentLrg;
	TMainMenu *MainMenu1;
	TdxBarButton *dxBarButton8;
	TdxBarSubItem *dxBarSubItem1;
	TdxBarSubItem *dxBarSubItem2;
	TdxBarSubItem *dxBarSubItem3;
	TdxBarButton *dxBarButton9;
	TdxBarButton *dxBarButton10;
	TdxBarButton *dxBarButton11;
	TdxBarButton *dxBarButton12;
	TdxBarButton *dxBarButton13;
	TdxBarButton *dxBarButton14;
	TdxBarButton *dxBarButton15;
	TAction *aIncident;
	TAction *aAnalyzeSubmenu;
	TAction *aSettings;
	TAction *aService;
	TAction *aClose;
	TcxHintStyleController *cxHintStyleController1;
	TAction *aUserManual;
	TdxBarButton *dxBarButton16;
	TAction *aInteractive_Reports;
	TdxBarButton *dxBarButton17;
	TAction *aSetAction;
	TAction *aReportConstructor;
	TdxBarButton *dxBarButton18;
	TAction *aProblemManagment;
	TdxBarButton *dxBarButton19;
	TAction *aQualityManagment;
	TdxBarButton *dxBarButton20;
	TAction *aUsers;
	TdxBarButton *dxBarButton21;
	TAction *aUserSettings;
	TdxBarButton *dxBarButton22;
	TAction *aLocPark;
	TdxBarButton *dxBarButton23;
	TdxBarSubItem *dxBarSubItem4;
	TdxBarButton *dxBarButton24;
	TdxBarButton *dxBarButton25;
	TAction *aProjectWebsite;
	TdxBarButton *dxBarButton26;
	TAction *aLoad_NSI_RQ_Mfr;
	TAction *aLoad_NSI_Responsible;
	TAction *aLoad_NSI_IncidentReasonTree;
	TAction *aLoad_NSI_Univ;
	TdxBarButton *dxBarButton27;
	TAction *aAbout;
	TAction *aDepoEnter;
	TdxBarButton *dxBarButton28;
	TAction *aLoad_NSI_Pred_Full_List;
	TAction *aLoad_NSI_EnterDepot_Reason;
	TAction *aLoad_NSI_Kasant_ENSI;
	TAction *aLoad_NSI_TCHR;
	TAction *aPortal;
	TAction *aLoad_NSI_AggType;
	TAction *aNSI_Firm;
	TdxBarButton *dxBarButton29;
	TTimer *tmrLoad;
	TcxGroupBox *gbLoading;
	TcxProgressBar *pb;
	TdxBarSubItem *dxBarSubItem5;
	TAction *aMyAccess;
	TdxBarButton *dxBarButton30;
	TdxBarButton *dxBarButton31;
	TdxBarButton *dxBarButton32;
	TAction *aReportsWeb;
	TAction *aESMT_Portal;
	TdxBarButton *dxBarButton33;
	TdxBarSeparator *dxBarSeparator1;
	TdxBarButton *dxBarButton34;
	TdxBarSubItem *dxBarSubItem6;
	TdxBarButton *dxBarButton35;
	TAction *aMonitor;
	TdxBarButton *dxBarButton36;
	TdxBarButton *dxBarButton37;
	TdxBarButton *dxBarButton38;
	TAction *aControlCalling;
	TAction *aNSI;
	TdxBarButton *dxBarButton39;
	TdxBarSubItem *dxBarSubItem7;
	TdxBarSubItem *dxBarSubItem8;
	TdxBarListItem *dxBarListItem1;
	TdxBarButton *dxBarButton40;
	TcxBarEditItem *cxBarEditItem1;
	TdxBarLargeButton *dxBarLargeButton5;
	TdxBarSubItem *dxBarSubItem9;
	TdxBarSeparator *dxBarSeparator2;
	TdxBarSubItem *dxBarSubItem10;
	TdxBarSeparator *dxBarSeparator3;
	TdxBarSubItem *dxBarSubItem11;
	TdxBarButton *dxBarButton41;
	TdxBarButton *dxBarButton42;
	TdxBarButton *dxBarButton43;
	TdxBarButton *btn_Reason;
	TAction *aReason;
	TdxBarSubItem *btnEnter;
	TdxBarButton *btnEnterDepot;
	TdxBarButton *btnControlInOut;
	TdxBarButton *btnMalfunction;
	TAction *aMalfunction;
	TdxBarButton *btnDictStandarts;
	TAction *aDictStandarts;
	TdxBarButton *dxBarButton44;
	TdxBarButton *btnEquipment;
	TAction *aEquipment;
	TAction *aReportLRZ;
	TdxBarButton *btnReportLRZ;
	TdxBarButton *btnNSI;
	TAction *aWineSide;
	TdxBarButton *btnWineSide;
	TdxBarButton *btnControlProblem;
	TAction *aControlProblem;
	TAction *aActivUsers;
	TdxBarButton *btnActivUsers;
	TdxBarSubItem *dxBarSubItem12;
	TdxBarButton *btnAdmin;
	TAction *aAdminNew;
	TAction *aKiparProg;
	TAction *aLoad_Role;
	TAction *aSetForm;
	TdxBarSubItem *dxBarSubItem13;
	TdxBarButton *dxBarButton45;
	TdxBarButton *dxBarButton46;
	TAction *aOverallReference;
	TAction *aDailyReference;
	TdxBarButton *dxBarButton47;
	TAction *aExportExcel;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aReportsExecute(TObject *Sender);
	void __fastcall aForumExecute(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall aIncidentExecute(TObject *Sender);
	void __fastcall aCloseExecute(TObject *Sender);
	void __fastcall aAdminExecute(TObject *Sender);
	void __fastcall aLibraryExecute(TObject *Sender);
	void __fastcall aUserManualExecute(TObject *Sender);
	void __fastcall aInteractive_ReportsExecute(TObject *Sender);
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall aSetActionExecute(TObject *Sender);
	void __fastcall aReportConstructorExecute(TObject *Sender);
	void __fastcall aProblemManagmentExecute(TObject *Sender);
	void __fastcall aQualityManagmentExecute(TObject *Sender);
	void __fastcall aUsersExecute(TObject *Sender);
	void __fastcall aLocParkExecute(TObject *Sender);
	void __fastcall dxBarButton24Click(TObject *Sender);
	void __fastcall dxBarButton25Click(TObject *Sender);
	void __fastcall aProjectWebsiteExecute(TObject *Sender);
	void __fastcall aLoad_NSI_ResponsibleExecute(TObject *Sender);
	void __fastcall aLoad_NSI_IncidentReasonTreeExecute(TObject *Sender);
	void __fastcall aLoad_NSI_UnivExecute(TObject *Sender);
	void __fastcall aAboutExecute(TObject *Sender);
	void __fastcall aDepoEnterExecute(TObject *Sender);
	void __fastcall aLoad_NSI_Pred_Full_ListExecute(TObject *Sender);
	void __fastcall aLoad_NSI_EnterDepot_ReasonExecute(TObject *Sender);
	void __fastcall aLoad_NSI_Kasant_ENSIExecute(TObject *Sender);
	void __fastcall aLoad_NSI_TCHRExecute(TObject *Sender);
	void __fastcall aPortalExecute(TObject *Sender);
	void __fastcall aLoad_NSI_AggTypeExecute(TObject *Sender);
	void __fastcall aNSI_FirmExecute(TObject *Sender);
	void __fastcall tmrLoadTimer(TObject *Sender);
	void __fastcall aMyAccessExecute(TObject *Sender);
	void __fastcall aReportsWebExecute(TObject *Sender);
	void __fastcall aESMT_PortalExecute(TObject *Sender);
	void __fastcall dxBarButton34Click(TObject *Sender);
	void __fastcall dxBarButton35Click(TObject *Sender);
	void __fastcall aMonitorExecute(TObject *Sender);
	void __fastcall dxBarButton37Click(TObject *Sender);
	void __fastcall aReasonExecute(TObject *Sender);
	void __fastcall aControlCallingExecute(TObject *Sender);
	void __fastcall aMalfunctionExecute(TObject *Sender);
	void __fastcall aDictStandartsExecute(TObject *Sender);
	void __fastcall aEquipmentExecute(TObject *Sender);
	void __fastcall aReportLRZExecute(TObject *Sender);
	void __fastcall aNSIExecute(TObject *Sender);
	void __fastcall aWineSideExecute(TObject *Sender);
	void __fastcall aControlProblemExecute(TObject *Sender);
	void __fastcall aActivUsersExecute(TObject *Sender);
	void __fastcall aAdminNewExecute(TObject *Sender);
	void __fastcall aKiparProgExecute(TObject *Sender);
	void __fastcall aLoad_RoleExecute(TObject *Sender);
	void __fastcall aOverallReferenceExecute(TObject *Sender);
	void __fastcall aDailyReferenceExecute(TObject *Sender);
	void __fastcall aAnalyzeExecute(TObject *Sender);
	void __fastcall aExportExcelExecute(TObject *Sender);
private:
	config	cfg;
	void __fastcall LoadLink(char *str);
	void __fastcall ShowForm(AnsiString classname, int IndxForm);
public:
	__fastcall TfrmMain(TComponent* Owner);

	void __fastcall ShowAppException(TObject *Sender, Exception *e);
	//void __fastcall ShowAppException_(int exception_type, AnsiString info_text, AnsiString exception_text);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmMain *frmMain;
//---------------------------------------------------------------------------
#endif
