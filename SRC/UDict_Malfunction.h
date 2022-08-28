//---------------------------------------------------------------------------

#ifndef UDict_MalfunctionH
#define UDict_MalfunctionH
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
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ImgList.hpp>
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include "cxGridDBTableView.hpp"
#include "cxImageComboBox.hpp"
//---------------------------------------------------------------------------
class TfrmDict_Malfunction : public TForm
{
__published:	// IDE-managed Components
	TdxBarDockControl *dxBarDockControl1;
	TPanel *pnlReasonTree;
	TdxBarManager *bm_Dict_Malf;
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
	TClientDataSet *cdsDict_Malf;
	TDataSource *dsDict_Malf;
	TActionList *ActionList1;
	TAction *aAdd;
	TAction *aEdit;
	TAction *aDelete;
	TAction *aRefresh;
	TcxGridDBTableView *btvMalfunction;
	TcxGridLevel *lvlMalfunction;
	TcxGrid *grdMalfunction;
	TcxGridDBColumn *btvMalfunctionColumn1;
	TcxGridDBColumn *btvMalfunctionColumn2;
	void __fastcall aAddExecute(TObject *Sender);
	void __fastcall aEditExecute(TObject *Sender);
	void __fastcall aDeleteExecute(TObject *Sender);
	void __fastcall aRefreshExecute(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmDict_Malfunction(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmDict_Malfunction *frmDict_Malfunction;
//---------------------------------------------------------------------------
#endif
