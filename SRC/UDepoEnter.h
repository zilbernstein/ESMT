//---------------------------------------------------------------------------

#ifndef UDepoEnterH
#define UDepoEnterH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "cxClasses.hpp"
#include "cxGraphics.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxStyles.hpp"
#include "dxBar.hpp"
#include "dxBarExtItems.hpp"
#include "dxSkinCaramel.hpp"
#include <ExtCtrls.hpp>
#include <ImgList.hpp>
#include "cxBarEditItem.hpp"
#include "cxDBLookupComboBox.hpp"
#include "cxRadioGroup.hpp"
#include <ActnList.hpp>
#include "cxControls.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "dxRibbon.hpp"
#include "dxSkinsdxRibbonPainter.hpp"
#include "cxCheckComboBox.hpp"
#include "dxBarExtDBItems.hpp"
#include "dxRibbonGallery.hpp"
#include <System.Actions.hpp>
#include "dxSkinsCore.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include "cxCheckBox.hpp"
#include "cxContainer.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxDBTL.hpp"
#include "cxDropDownEdit.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGrid.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBBandedTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxImageComboBox.hpp"
#include "cxInplaceContainer.hpp"
#include "cxMaskEdit.hpp"
#include "cxNavigator.hpp"
#include "cxPC.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "cxTextEdit.hpp"
#include "cxTL.hpp"
#include "cxTLData.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include "dxSkinscxPCPainter.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <Data.DB.hpp>
#include "cxLabel.hpp"
#include "cxMemo.hpp"
#include <Datasnap.DBClient.hpp>
#include "cxGridDBTableView.hpp"
//---------------------------------------------------------------------------
class TfrmDepoEnter : public TForm
{
__published:	// IDE-managed Components
	TcxPageControl *pcMain;
	TcxTabSheet *tsMain;
	TcxTabSheet *tsOther;
	TcxGridLevel *lvlDepoEnter;
	TcxGrid *grdDepoEnter;
	TcxGridDBBandedTableView *btvDepoEnter;
	TcxGridDBBandedColumn *btvDepoEnterColumn1;
	TcxGridDBBandedColumn *btvDepoEnterColumn2;
	TcxGridDBBandedColumn *btvDepoEnterColumn3;
	TcxGridDBBandedColumn *btvDepoEnterColumn4;
	TcxGridDBBandedColumn *btvDepoEnterColumn5;
	TcxGridDBBandedColumn *btvDepoEnterColumn6;
	TcxGridDBBandedColumn *btvDepoEnterColumn7;
	TcxGridDBBandedColumn *btvDepoEnterColumn8;
	TdxBarManager *bmDepoEnter;
	TdxBar *tbButtons;
	TdxBarDockControl *dxBarDockControl1;
	TPanel *Panel1;
	TdxBarButton *dxBarButton1;
	TActionList *ActionList;
	TAction *aRefresh;
	TcxBarEditItem *cxBarEditItem1;
	TdxBarDateCombo *deDateBegin;
	TdxBarDateCombo *deDateFinish;
	TAction *aDetail;
	TAction *aNew;
	TcxGridDBBandedColumn *btvDepoEnterColumn9;
	TTimer *tmr;
	TdxBarButton *dxBarButton2;
	TAction *aExport;
	TClientDataSet *cdsDepoEnter;
	TDataSource *dsDepoEnter;
	TcxGridDBBandedColumn *btvDepoEnterColumn10;
	TPanel *pnlCombo;
	TcxImageComboBox *cbLocSer;
	TdxBarControlContainerItem *dxBarControlContainerItem1;
	TAction *aLoadLocSer;
	TPanel *Panel2;
	TdxBarDockControl *dxBarDockControl2;
	TdxBar *bmDepoEnterBar1;
	TdxBarStatic *dxBarStatic1;
	TdxBarStatic *dxBarStatic2;
	TdxBarStatic *dxBarStatic3;
	TdxBarStatic *dxBarStatic4;
	TdxBarButton *dxBarButton3;
	TdxBarButton *dxBarButton4;
	TAction *aEdit;
	TcxGridDBBandedColumn *btvDepoEnterColumn11;
	TcxGridDBBandedColumn *btvDepoEnterColumn12;
	TcxGridDBBandedColumn *btvDepoEnterColumn13;
	TAction *aSetForm;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aRefreshExecute(TObject *Sender);
	void __fastcall aExportExecute(TObject *Sender);
	void __fastcall btvDepoEnterDblClick(TObject *Sender);
	void __fastcall aDetailExecute(TObject *Sender);
	void __fastcall aLoadLocSerExecute(TObject *Sender);
	void __fastcall aNewExecute(TObject *Sender);
	void __fastcall deDateBeginChange(TObject *Sender);
	void __fastcall deDateFinishChange(TObject *Sender);
	void __fastcall aEditExecute(TObject *Sender);
	void __fastcall cbLocSerPropertiesEditValueChanged(TObject *Sender);
	void __fastcall aSetFormExecute(TObject *Sender);
private:	// User declarations
	config	cfg;
public:		// User declarations
	__fastcall TfrmDepoEnter(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmDepoEnter *frmDepoEnter;
//---------------------------------------------------------------------------
#endif
