#ifndef UStateHistoryH
#define UStateHistoryH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
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
#include "cxStyles.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinscxPCPainter.hpp"
#include <DB.hpp>
#include <DBClient.hpp>
#include "cxButtons.hpp"
#include "cxLookAndFeelPainters.hpp"
#include <ExtCtrls.hpp>
#include <Menus.hpp>
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include "cxNavigator.hpp"

//---------------------------------------------------------------------------
class TfrmStateHistory : public TForm
{
__published:	// IDE-managed Components
	TcxGrid *grdStateHistory;
	TcxGridDBBandedTableView *btvStateHistory;
	TcxGridLevel *lvlStateHistory;
	TcxGridDBBandedColumn *btvStateHistoryColumn1;
	TcxGridDBBandedColumn *btvStateHistoryColumn2;
	TcxGridDBBandedColumn *btvStateHistoryColumn3;
	TClientDataSet *cdsStateHistory;
	TDataSource *dsStateHistory;
	TcxGridDBBandedColumn *btvStateHistoryColumn4;
	TcxGridDBBandedColumn *btvStateHistoryColumn5;
	TPanel *Panel6;
	TcxButton *cxButton9;
	void __fastcall btvStateHistoryColumn3GetDisplayText(TcxCustomGridTableItem *Sender,
          TcxCustomGridRecord *ARecord, UnicodeString &AText);
	void __fastcall cxButton9Click(TObject *Sender);

private:	// User declarations
public:		// User declarations
    TModalResult __fastcall Show( int p_sheet_id );
	__fastcall TfrmStateHistory(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmStateHistory *frmStateHistory;
//---------------------------------------------------------------------------
#endif
