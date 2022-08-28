//---------------------------------------------------------------------------

#ifndef uAdminH
#define uAdminH
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
#include <Vcl.ExtCtrls.hpp>
#include "cxButtons.hpp"
#include "cxGraphics.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include <Vcl.Menus.hpp>
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGrid.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBBandedTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxNavigator.hpp"
#include "cxStyles.hpp"
#include "dxSkinscxPCPainter.hpp"
#include <Data.DB.hpp>
#include "cxTL.hpp"
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Datasnap.DBClient.hpp>
#include "cxPC.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include <Vcl.ImgList.hpp>
#include "cxContainer.hpp"
#include "cxGroupBox.hpp"
#include "cxProgressBar.hpp"
#include "cxDropDownEdit.hpp"
#include "cxGridDBTableView.hpp"
#include "cxImageComboBox.hpp"
#include "cxLabel.hpp"
#include "cxMaskEdit.hpp"
#include "cxTextEdit.hpp"
#include "cxBarEditItem.hpp"
#include "cxGridExportLink.hpp"
//---------------------------------------------------------------------------
class TfrmAdmin : public TForm
{
__published:	// IDE-managed Components
	TPanel *pnlMain;
	TActionList *ActionList;
	TAction *aLoadUsers;
	TClientDataSet *cdsUsers;
	TDataSource *dsUsers;
	TcxPageControl *pc;
	TcxTabSheet *tbUsers;
	TcxTabSheet *tbRole;
	TcxGrid *grdAdmin;
	TcxGridBandedTableView *grdAdminBandedTableView1;
	TcxGridDBBandedTableView *grdAdminDBBandedTableView1;
	TcxGridTableView *grdAdminTableView1;
	TcxGridDBBandedTableView *btvAdmin;
	TcxGridDBBandedColumn *btvAdminColumn8;
	TcxGridDBBandedColumn *btvAdminColumn1;
	TcxGridDBBandedColumn *btvAdminColumn2;
	TcxGridDBBandedColumn *btvAdminColumn3;
	TcxGridDBBandedColumn *btvAdminColumn6;
	TcxGridDBBandedColumn *btvAdminColumn4;
	TcxGridDBBandedColumn *btvAdminColumn10;
	TcxGridDBBandedColumn *btvAdminColumn11;
	TcxGridDBBandedColumn *btvAdminColumn9;
	TcxGridLevel *lvlAdmin;
	TdxBarManager *bm;
	TdxBar *bmAdminBar1;
	TdxBarButton *btnAdd;
	TdxBarButton *btnEdit;
	TdxBarButton *btnDelete;
	TAction *aRefresh;
	TcxGridDBBandedColumn *btvAdminColumn7;
	TcxGridDBBandedColumn *btvAdminColumn12;
	TcxGroupBox *gbProcess;
	TcxProgressBar *pg;
	TAction *aAdd;
	TAction *aEdit;
	TAction *aDelete;
	TcxGridLevel *lvlRole;
	TcxGrid *gdRole;
	TAction *aExport;
	TdxBarButton *btnExport;
	TcxGridDBBandedColumn *btvAdminColumn13;
	TClientDataSet *cdsRole;
	TDataSource *dsRole;
	TAction *aLoadRole;
	TcxGridDBTableView *btvRole;
	TcxGridDBColumn *btvRoleColumn1;
	TcxGridDBColumn *btvRoleColumn2;
	TAction *aUserDelete;
	TPanel *Panel1;
	TGroupBox *GroupBox1;
	TcxButton *btnRefreshUsers;
	TcxTextEdit *edLastName;
	TcxTextEdit *edFirstName;
	TcxTextEdit *edPatrName;
	TcxTextEdit *edLogin;
	TcxLabel *cxLabel1;
	TcxLabel *cxLabel2;
	TcxLabel *cxLabel3;
	TcxLabel *cxLabel4;
	TPanel *Panel2;
	TcxButton *btnRefreshRoles;
	TAction *aSetForm;
	TAction *aRoleDelete;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aLoadUsersExecute(TObject *Sender);
	void __fastcall aAddExecute(TObject *Sender);
	void __fastcall aEditExecute(TObject *Sender);
	void __fastcall aDeleteExecute(TObject *Sender);
	void __fastcall aExportExecute(TObject *Sender);
	void __fastcall aLoadRoleExecute(TObject *Sender);
	void __fastcall aUserDeleteExecute(TObject *Sender);
	void __fastcall edLastNameKeyPress(TObject *Sender, System::WideChar &Key);
	void __fastcall aSetFormExecute(TObject *Sender);
	void __fastcall aRoleDeleteExecute(TObject *Sender);
	void __fastcall aRefreshExecute(TObject *Sender);
private:	// User declarations
	void ExportExcel(TcxGrid* grd, AnsiString str);
public:		// User declarations
	__fastcall TfrmAdmin(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmAdmin *frmAdmin;
//---------------------------------------------------------------------------
#endif
