//---------------------------------------------------------------------------

#ifndef uIncidentExportH
#define uIncidentExportH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include "cxButtons.hpp"
#include "cxGraphics.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include <Vcl.Menus.hpp>
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.Dialogs.hpp>
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxEdit.hpp"
#include "cxGroupBox.hpp"
#include "cxProgressBar.hpp"
#include "cxCalendar.hpp"
#include "cxDateUtils.hpp"
#include "cxDropDownEdit.hpp"
#include "cxMaskEdit.hpp"
#include "cxTextEdit.hpp"
#include "dxCore.hpp"
#include <Vcl.ComCtrls.hpp>
#include "cxLabel.hpp"
#include "cxDBLookupComboBox.hpp"
#include "cxDBLookupEdit.hpp"
#include "cxImageComboBox.hpp"
#include "cxLookupEdit.hpp"
#include "cxPC.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "dxSkinscxPCPainter.hpp"
#include "cxCustomData.hpp"
#include "cxDBTL.hpp"
#include "cxInplaceContainer.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxTLData.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
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
#include "cxNavigator.hpp"
#include "cxCheckBox.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxGridDBBandedTableView.hpp"
//---------------------------------------------------------------------------
class TfrmIncidentExport : public TForm
{
__published:
	TPanel *pnlButtons;
	TPanel *pnlMain;
	TcxButton *btnCancel;
	TcxButton *btnExport;
	TSaveDialog *SaveDialog;
	TActionList *ActionList;
	TClientDataSet *cdsExport;
	TDataSource *dsExport;
	TAction *aExport;
	TcxPageControl *pc;
	TcxTabSheet *tsMain;
	TcxTabSheet *tsOther;
	TPanel *pnlConditions;
	TcxDateEdit *deDateFrom;
	TcxDateEdit *deDateTo;
	TcxPopupEdit *cbFirmTree;
	TcxImageComboBox *cbSer;
	TcxLookupComboBox *cbNum;
	TPanel *pnlFirmTree;
	TcxDBTreeList *tlFirmTree;
	TdxStatusBar *sbFirmTree;
	TTimer *tmrLoad;
	TcxGroupBox *gbProgressBar;
	TcxProgressBar *pbProgressBar;
	TAction *aLoadFirmTree;
	TAction *aLoadSerList;
	TAction *aLoadNumList;
	TcxDBTreeListColumn *clmn_FirmName;
	TcxDBTreeListColumn *clmn_FirmTypeMnemo;
	TcxDBTreeListColumn *clmn_KodFirm;
	TPanel *pnlColumns;
	TAction *aLoadColumns;
	TcxGrid *grdColumns;
	TcxGridDBBandedTableView *btvColumns;
	TcxGridDBBandedColumn *clmnCheck;
	TcxGridDBBandedColumn *btvColumnsColumn1;
	TcxGridLevel *lvlColumns;
	TGroupBox *gbFirmTree;
	TGroupBox *gbPeriod;
	TGroupBox *gbLoc;
	TAction *aSelect_FirmTree;
	void __fastcall aExportExecute(TObject *Sender);
	void __fastcall tmrLoadTimer(TObject *Sender);
	void __fastcall aLoadFirmTreeExecute(TObject *Sender);
	void __fastcall aLoadSerListExecute(TObject *Sender);
	void __fastcall aLoadNumListExecute(TObject *Sender);
	void __fastcall aLoadColumnsExecute(TObject *Sender);
	void __fastcall tlFirmTreeKeyDown(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall tlFirmTreeKeyPress(TObject *Sender, System::WideChar &Key);
	void __fastcall aSelect_FirmTreeExecute(TObject *Sender);
	void __fastcall cbNumPropertiesEditValueChanged(TObject *Sender);
	void __fastcall cbSerPropertiesEditValueChanged(TObject *Sender);

private:
	int FKodFirm, FKodSer, FLocNum, FLocSec, FLocObj;
	config	cfg;
public:
	void SetKodFirm(int nKodFirm) {FKodFirm = nKodFirm;}
	void SetKodSer(int nKodSer) {FKodSer = nKodSer;}
	void SetLocSec(int nLocSec) {FLocSec = nLocSec;}
	void SetLocNum(int nLocNum) {FLocNum = nLocNum;}
	void SetLocObj(int nLocObj) {FLocObj = nLocObj;}
	__property int KodFirm = {read = FKodFirm, write = SetKodFirm};
	__property int KodSer = {read = FKodSer, write = SetKodSer};
	__property int LocNum = {read = FLocNum, write = SetLocNum};
	__property int LocSec = {read = FLocSec, write = SetLocSec};
	__property int LocObj = {read = FLocObj, write = SetLocObj};
	__fastcall TfrmIncidentExport(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmIncidentExport *frmIncidentExport;
//---------------------------------------------------------------------------
#endif
