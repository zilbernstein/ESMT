//---------------------------------------------------------------------------

#ifndef USql_ExecuteH
#define USql_ExecuteH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include "cxButtons.hpp"
#include "cxGraphics.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Menus.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
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
#include "cxGridBandedTableView.hpp"
#include "cxGridDBBandedTableView.hpp"
//---------------------------------------------------------------------------
class TfrmSqlExecute : public TForm
{
__published:	// IDE-managed Components
	TClientDataSet *cds;
	TDataSource *ds;
	TPanel *Panel6;
	TcxButton *cxButton9;
	TcxButton *cxButton10;
	TcxGridLevel *grdLevel;
	TcxGrid *grd;
	TcxGridDBBandedTableView *grdView;
	TcxGridDBBandedColumn *grdViewColumn1;
	TButton *Button1;
	void __fastcall cxButton10Click(TObject *Sender);
	void __fastcall cxButton9Click(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmSqlExecute(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmSqlExecute *frmSqlExecute;
//---------------------------------------------------------------------------
#endif
