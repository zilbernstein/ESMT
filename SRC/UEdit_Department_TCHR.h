//---------------------------------------------------------------------------

#ifndef UEdit_Department_TCHRH
#define UEdit_Department_TCHRH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "cxButtons.hpp"
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxImageComboBox.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxMemo.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include "dxSkinBlack.hpp"
#include "dxSkinBlue.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinCoffee.hpp"
#include "dxSkinDarkRoom.hpp"
#include "dxSkinDarkSide.hpp"
#include "dxSkinFoggy.hpp"
#include "dxSkinGlassOceans.hpp"
#include "dxSkiniMaginary.hpp"
#include "dxSkinLilian.hpp"
#include "dxSkinLiquidSky.hpp"
#include "dxSkinLondonLiquidSky.hpp"
#include "dxSkinMcSkin.hpp"
#include "dxSkinMoneyTwins.hpp"
#include "dxSkinOffice2007Black.hpp"
#include "dxSkinOffice2007Blue.hpp"
#include "dxSkinOffice2007Green.hpp"
#include "dxSkinOffice2007Pink.hpp"
#include "dxSkinOffice2007Silver.hpp"
#include "dxSkinOffice2010Black.hpp"
#include "dxSkinOffice2010Blue.hpp"
#include "dxSkinOffice2010Silver.hpp"
#include "dxSkinPumpkin.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsDefaultPainters.hpp"
#include "dxSkinSeven.hpp"
#include "dxSkinSharp.hpp"
#include "dxSkinSilver.hpp"
#include "dxSkinSpringTime.hpp"
#include "dxSkinStardust.hpp"
#include "dxSkinSummer2008.hpp"
#include "dxSkinValentine.hpp"
#include "dxSkinXmas2008Blue.hpp"

#include <Menus.hpp>
#include "cxDBLookupComboBox.hpp"
#include <ExtCtrls.hpp>
#include <DB.hpp>
#include <DBClient.hpp>
#include "cxCustomData.hpp"
#include "cxDBTL.hpp"
#include "cxMaskEdit.hpp"
#include "cxPC.hpp"
#include "cxTLData.hpp"
#include "dxSkinscxPCPainter.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <ImgList.hpp>
#include <ActnList.hpp>
#include "cxDropDownEdit.hpp"
#include "cxTextEdit.hpp"
#include "cxContainer.hpp"
#include "cxGroupBox.hpp"
#include "cxProgressBar.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include <System.Actions.hpp>
//---------------------------------------------------------------------------
struct StrctEditDepartmentTCHR
{
	int KodFirm;
    int	KodFirmParent;
    int KodFirmType;
    int	KodRoad;
    AnsiString FirmName;
    AnsiString Mnemo;
    int PredID;
};
//---------------------------------------------------------------------------
class TfrmEdit_Department_TCHR : public TForm
{
__published:	// IDE-managed Components
	TTimer *tmr;
	TDataSource *dsFirmTree;
	TClientDataSet *cdsFirmTree;
	TcxPageControl *pc;
	TcxTabSheet *tsEdit;
	TcxTabSheet *cxTabSheet2;
	TcxVerticalGrid *vg;
	TcxEditorRow *rwTCHR;
	TcxEditorRow *rwFirmTree;
	TPanel *Panel1;
	TcxButton *cxButton1;
	TPanel *pnlFirmTree;
	TcxDBTreeList *tlFirmTree;
	TcxDBTreeListColumn *clmn_FirmName;
	TdxStatusBar *dxStatusBar4;
	TActionList *ActionList1;
	TAction *aSelect_FirmTree;
	TcxDBTreeListColumn *clmn_FirmTypeMnemo;
	TAction *aCancel;
	TcxButton *cxButton2;
	TcxEditorRow *rwRoad;
	TcxEditorRow *rwFirmName;
	TcxEditorRow *rwMnemo;
	TcxEditorRow *rwFirmType;
	TcxCategoryRow *vgCategoryRow1;
	TAction *aLoadFirmType;
	TAction *aLoadRoad;
	TDataSource *dsTCHR;
	TClientDataSet *cdsTCHR;
	TAction *aLoadTCHR;
	TAction *aLoadFirmTree;
	TAction *aSave;
	TcxTabSheet *tsProgress;
	TcxGroupBox *gbLoading;
	TcxProgressBar *pb;
	TcxDBTreeListColumn *clmn_KodFirm;
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aSelect_FirmTreeExecute(TObject *Sender);
	void __fastcall tlFirmTreeKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall tlFirmTreeCustomDrawCell(TObject *Sender, TcxCanvas *ACanvas,
          TcxTreeListEditCellViewInfo *AViewInfo, bool &ADone);
	void __fastcall aLoadFirmTypeExecute(TObject *Sender);
	void __fastcall aLoadRoadExecute(TObject *Sender);
	void __fastcall aLoadTCHRExecute(TObject *Sender);
	void __fastcall aLoadFirmTreeExecute(TObject *Sender);
	void __fastcall aSaveExecute(TObject *Sender);
private:	// User declarations
	StrctEditDepartmentTCHR *ep_;
public:		// User declarations
    TModalResult __fastcall Show( StrctEditDepartmentTCHR* ep );
	__fastcall TfrmEdit_Department_TCHR(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEdit_Department_TCHR *frmEdit_Department_TCHR;
//---------------------------------------------------------------------------
#endif
