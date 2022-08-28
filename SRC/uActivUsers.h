//---------------------------------------------------------------------------

#ifndef uActivUsersH
#define uActivUsersH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxButtons.hpp"
#include "cxGraphics.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Menus.hpp>
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGrid.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxNavigator.hpp"
#include "cxStyles.hpp"
#include "dxSkinscxPCPainter.hpp"
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include "cxBarEditItem.hpp"
#include "cxCalendar.hpp"
#include "cxLabel.hpp"
#include "dxBar.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include "cxGridBandedTableView.hpp"
#include "dxBarExtItems.hpp"
#include "cxGridDBBandedTableView.hpp"
#include "cxGridExportLink.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
//---------------------------------------------------------------------------
class TfrmActivUsers : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TcxButton *btnExport;
	TcxButton *btnCancel;
	TClientDataSet *cdsActivUser;
	TDataSource *dsActivUser;
	TActionList *al;
	TAction *aLoadInfo;
	TdxBarManager *bm;
	TdxBar *bmBar1;
	TcxBarEditItem *cxBarEditItem1;
	TcxBarEditItem *cxBarEditItem2;
	TcxBarEditItem *cxBarEditItem3;
	TdxBarButton *btnRefresh;
	TAction *aExit;
	TAction *aExport;
	TdxBarDateCombo *dDateBegin;
	TdxBarDateCombo *bDateEnd;
	TcxGrid *grdActivUsers;
	TcxGridDBBandedTableView *btvActivUsers;
	TcxGridLevel *lvlActivUsers;
	TcxGridDBBandedColumn *btvActivUsersColumn1;
	TcxGridDBBandedColumn *btvActivUsersColumn2;
	TcxGridDBBandedColumn *btvActivUsersColumn3;
	TcxGridDBBandedColumn *btvActivUsersColumn4;
	TcxBarEditItem *cxBarEditItem4;
	TcxGridDBBandedColumn *btvActivUsersColumn5;
	TcxGridDBBandedColumn *btvActivUsersColumn6;
	TcxGridDBBandedColumn *btvActivUsersColumn7;
	void __fastcall aLoadInfoExecute(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aExitExecute(TObject *Sender);
	void __fastcall aExportExecute(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmActivUsers(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmActivUsers *frmActivUsers;
//---------------------------------------------------------------------------
#endif
