//---------------------------------------------------------------------------

#ifndef uAnalyticsBMZH
#define uAnalyticsBMZH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxClasses.hpp"
#include "dxBar.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include "cxBarEditItem.hpp"
#include "cxControls.hpp"
#include "cxDropDownEdit.hpp"
#include "cxGraphics.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxPC.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "dxBarExtItems.hpp"
#include "dxSkinscxPCPainter.hpp"
#include <Vcl.ExtCtrls.hpp>
#include "cxImageComboBox.hpp"
#include "cxLabel.hpp"
#include "cxCustomData.hpp"
#include "cxDBTL.hpp"
#include "cxInplaceContainer.hpp"
#include "cxMaskEdit.hpp"
#include "cxStyles.hpp"
#include "cxTextEdit.hpp"
#include "cxTL.hpp"
#include "cxTLData.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include "cxContainer.hpp"
#include "cxEdit.hpp"
#include "cxCheckBox.hpp"
#include "cxDBLookupComboBox.hpp"
#include "cxDBLookupEdit.hpp"
#include "cxLookupEdit.hpp"
#include "cxButtons.hpp"
#include <Vcl.Menus.hpp>
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
#include "cxCalendar.hpp"
#include "cxDateUtils.hpp"
#include "dxCore.hpp"
#include <Vcl.ComCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmAnalyticsBMZ : public TForm
{
__published:	// IDE-managed Components
	TActionList *al;
	TAction *aLoadSerial;
	TAction *aLoadNumber;
	TAction *aLoadTreeFirm;
	TAction *aGenDoc;
	TClientDataSet *cdsTreeFirm;
	TDataSource *dsTreeFirm;
	TAction *aSetNumber;
	TPanel *Panel1;
	TcxPageControl *pg;
	TcxTabSheet *tsDaileReference;
	TcxButton *cxButton1;
	TcxButton *cxButton2;
	TAction *aLoadSerTree;
	TDataSource *dsSerTree;
	TClientDataSet *cdsSerTree;
	TPanel *Panel2;
	TcxImageComboBox *cbbFirm;
	TAction *aClose;
	TAction *aLoadTreeFirmAll;
	TAction *aEveryDay;
	TAction *aOverall;
	TcxLabel *LabelPeriod;
	TcxDateEdit *deBegin;
	TcxDateEdit *deEnd;
	TAction *aClearSer;
	TAction *aClearFirm;
	TPanel *Panel3;
	TcxDBTreeList *tlFirm;
	TcxDBTreeListColumn *cxDBTreeList1cxDBTreeListColumn1;
	TcxDBTreeListColumn *cxDBTreeList1cxDBTreeListColumn2;
	TSplitter *Splitter1;
	TPanel *Panel4;
	TcxGrid *grdSer;
	TcxGridDBTableView *btvSer;
	TcxGridDBColumn *btvSerColumn1;
	TcxGridDBColumn *btvSerColumn2;
	TcxGridLevel *lvlSer;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aLoadTreeFirmExecute(TObject *Sender);
	void __fastcall aGenDocExecute(TObject *Sender);
	void __fastcall aLoadSerTreeExecute(TObject *Sender);
	void __fastcall aCloseExecute(TObject *Sender);
	void __fastcall aEveryDayExecute(TObject *Sender);
	void __fastcall aOverallExecute(TObject *Sender);
	void __fastcall btvSerColumn2PropertiesChange(TObject *Sender);
	void __fastcall cxDBTreeList1cxDBTreeListColumn2PropertiesChange(TObject *Sender);
	void __fastcall btvSerColumn2HeaderClick(TObject *Sender);
	void __fastcall tlFirmColumnHeaderClick(TcxCustomTreeList *Sender, TcxTreeListColumn *AColumn);

private:	// User declarations
	AnsiString tmpFirm, tmpDepo, tmpSer, tmpSerNam, tmpFirmName;
	int nDoc, CountS, CountF;
	AnsiString __fastcall DelComma(AnsiString tmp);
	AnsiString GetCaption(int* Index);
	void SelOverDail(int* Index);
	void __fastcall CreateListSer();
	void __fastcall CreateListFirmDepo();

	void __fastcall LoadListSer(int checked);
	void __fastcall LoadListFrim(int checked);
public:		// User declarations
	__fastcall TfrmAnalyticsBMZ(TComponent* Owner);
	TModalResult __fastcall Show(int Index);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmAnalyticsBMZ *frmAnalyticsBMZ;
//---------------------------------------------------------------------------
#endif
