//---------------------------------------------------------------------------

#ifndef uDictStandartsH
#define uDictStandartsH
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
#include "cxGridDBTableView.hpp"
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
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ImgList.hpp>
#include "cxGridDBBandedTableView.hpp"
//---------------------------------------------------------------------------
class TfrmStandarts : public TForm
{
__published:	// IDE-managed Components
	TdxBarDockControl *dxBarDockControl1;
	TPanel *pnlReasonTree;
	TdxBarManager *bm_Dict_Stand;
	TdxBar *tbCommonButtons;
	TdxBarButton *dxBarButton2;
	TdxBarButton *dxBarButton3;
	TdxBarButton *dxBarButton6;
	TdxBarLargeButton *btnAdd;
	TdxBarLargeButton *dxBarLargeButton2;
	TdxBarLargeButton *btnEdit;
	TdxBarLargeButton *btnDelete;
	TdxBarGroup *dxBarGroup1;
	TdxBarGroup *dxBarGroup2;
	TClientDataSet *cdsDict_Stand;
	TDataSource *dsDict_Stand;
	TActionList *ActionList;
	TAction *aAdd;
	TAction *aEdit;
	TAction *aDelete;
	TAction *aRefresh;
	TcxGrid *grdStandart;
	TcxGridDBBandedTableView *btvStandart;
	TcxGridDBBandedColumn *clmn_KM;
	TcxGridDBBandedColumn *clmn_HH;
	TcxGridLevel *lvlStandart;
	TcxGridDBBandedColumn *clmn_Type_Repairs;
	TcxGridDBBandedColumn *clmnDepo;
	TcxGridDBBandedColumn *clmn_Ser_Nam;
	TcxGridDBBandedColumn *clmn_Exp_Depo;
	TcxGridDBBandedColumn *clmn_Lim;
	TcxGridDBBandedColumn *clmn_Note;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aRefreshExecute(TObject *Sender);
	void __fastcall aAddExecute(TObject *Sender);
	void __fastcall aEditExecute(TObject *Sender);
	void __fastcall aDeleteExecute(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmStandarts(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmStandarts *frmStandarts;
//---------------------------------------------------------------------------
#endif
