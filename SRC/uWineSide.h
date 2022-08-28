//---------------------------------------------------------------------------

#ifndef uWineSideH
#define uWineSideH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
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
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxNavigator.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include "dxBar.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinscxPCPainter.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.ImgList.hpp>
#include "cxDBTL.hpp"
#include "cxInplaceContainer.hpp"
#include "cxTLData.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include <Vcl.ExtCtrls.hpp>
#include "cxMaskEdit.hpp"
#include "cxTextEdit.hpp"
//---------------------------------------------------------------------------
class TfrmWineSide : public TForm
{
__published:	// IDE-managed Components
	TdxBarDockControl *dxBarDockControl1;
	TPanel *pnlWineSide;
	TdxBarManager *bmWineSide;
	TdxBar *tbCommonButtons;
	TdxBar *bmLegend;
	TdxBarLargeButton *btnAdd;
	TdxBarLargeButton *btnRefresh;
	TdxBarLargeButton *btnEdit;
	TdxBarLargeButton *btnDelete;
	TClientDataSet *cdsWineSide;
	TDataSource *dsWineSide;
	TActionList *al;
	TAction *aRefreshLrg;
	TAction *aAddLrg;
	TAction *aEditLrg;
	TAction *aDeleteLrg;
	TcxDBTreeList *tlWineSide;
	TcxDBTreeListColumn *clmn_WineSide;
	TcxDBTreeListColumn *clmn_parent_new;
	TcxDBTreeListColumn *clmn_child;
	TAction *aQueryDelete;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aRefreshExecute(TObject *Sender);
	void __fastcall aAddLrgExecute(TObject *Sender);
	void __fastcall aEditLrgExecute(TObject *Sender);
	void __fastcall aDeleteLrgExecute(TObject *Sender);
	void __fastcall aQueryDeleteExecute(TObject *Sender);
private:	// User declarations
	int check_children();
public:		// User declarations
	__fastcall TfrmWineSide(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmWineSide *frmWineSide;
//---------------------------------------------------------------------------
#endif
