//---------------------------------------------------------------------------

#ifndef uDicCloseDepoIncidentH
#define uDicCloseDepoIncidentH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxDBTL.hpp"
#include "cxGraphics.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxMaskEdit.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxTLData.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include "cxVGrid.hpp"
#include "dxBar.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ImgList.hpp>
#include "dxBarExtItems.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGrid.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBBandedTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxNavigator.hpp"
#include "dxSkinscxPCPainter.hpp"
#include "cxBarEditItem.hpp"
#include "cxImageComboBox.hpp"
//---------------------------------------------------------------------------
class TfrmDicCloseDepoIncident : public TForm
{
__published:	// IDE-managed Components
	TdxBarManager *bmThree;
	TdxBar *bmThreeBar;
	TdxBarButton *btnAdd;
	TdxBarButton *btnEdit;
	TdxBarButton *btnDelete;
	TActionList *al;
	TAction *aAdd;
	TAction *aEdit;
	TAction *aDelete;
	TcxGrid *grdThree;
	TcxGridDBBandedTableView *btvThree;
	TcxGridDBBandedColumn *clmnType;
	TcxGridDBBandedColumn *clmnName;
	TcxGridDBBandedColumn *clmnNote;
	TcxGridLevel *lvlThree;
	TDataSource *dsThree;
	TClientDataSet *cdsThree;
	TdxBarButton *btnReshresh;
	TAction *aRefresh;
	TcxBarEditItem *icbb;
	TcxGridDBBandedColumn *btvThreeColumn1;
	TcxGridDBBandedColumn *btvThreeColumn2;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aAddExecute(TObject *Sender);
	void __fastcall aEditExecute(TObject *Sender);
	void __fastcall aDeleteExecute(TObject *Sender);
	void __fastcall aRefreshExecute(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmDicCloseDepoIncident(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmDicCloseDepoIncident *frmDicCloseDepoIncident;
//---------------------------------------------------------------------------
#endif
