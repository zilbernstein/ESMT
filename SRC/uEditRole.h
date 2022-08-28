//---------------------------------------------------------------------------

#ifndef uEditRoleH
#define uEditRoleH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxButtons.hpp"
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.Menus.hpp>
#include "cxPC.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "dxSkinscxPCPainter.hpp"
#include "cxCustomData.hpp"
#include "cxDBTL.hpp"
#include "cxMaskEdit.hpp"
#include "cxTextEdit.hpp"
#include "cxTLData.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include "cxMemo.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxFilter.hpp"
#include "cxGrid.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxNavigator.hpp"
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include "cxCheckBox.hpp"
#include "cxGridDBBandedTableView.hpp"
#include "cxContainer.hpp"
#include "cxMCListBox.hpp"
//---------------------------------------------------------------------------
class TfrmEditRole : public TForm
{
__published:	// IDE-managed Components
	TActionList *al;
	TPanel *pnlSvCn;
	TcxButton *btnSave;
	TcxButton *btnCancel;
	TAction *aSave;
	TAction *aCancel;
	TcxPageControl *pc;
	TcxTabSheet *tsRole;
	TcxVerticalGrid *vg;
	TcxEditorRow *rwRoleName;
	TcxEditorRow *rwRoleNote;
	TAction *aAddFuntion;
	TAction *aDeleteFunction;
	TClientDataSet *cdsFunctionGet;
	TDataSource *dsFunctionGet;
	TAction *aLoadRole;
	TAction *aLoadFunctionGet;
	TClientDataSet *cdsFunctionSet;
	TDataSource *dsFunctionSet;
	TAction *aLoadFunctionSet;
	TAction *aSaveInfoRole;
	TAction *aSaveClose;
	TAction *aBegin;
	TPanel *Panel1;
	TcxGrid *grdFnctSet;
	TcxGridDBBandedTableView *btvFnctSet;
	TcxGridDBBandedColumn *cxGridDBBandedColumn1;
	TcxGridDBBandedColumn *cxGridDBBandedColumn2;
	TcxGridDBBandedColumn *cxGridDBBandedColumn3;
	TcxGridLevel *lvlFnctSet;
	TSplitter *Splitter1;
	TPanel *Panel2;
	TcxGrid *grdFnctGet;
	TcxGridDBBandedTableView *btvFnctGet;
	TcxGridDBBandedColumn *btvFnctGetColumn1;
	TcxGridDBBandedColumn *btvFnctGetColumn2;
	TcxGridDBBandedColumn *clmnCheck;
	TcxGridLevel *lvlFnctGet;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall aDeleteFunctionExecute(TObject *Sender);
	void __fastcall aLoadRoleExecute(TObject *Sender);
	void __fastcall aLoadFunctionGetExecute(TObject *Sender);
	void __fastcall aLoadFunctionSetExecute(TObject *Sender);
	void __fastcall aSaveInfoRoleExecute(TObject *Sender);
	void __fastcall aAddFuntionExecute(TObject *Sender);
	void __fastcall aBeginExecute(TObject *Sender);





private:	// User declarations
	int id_function;
public:		// User declarations
	int id_role;
	TModalResult __fastcall Show();
	int __fastcall CheckRole();
	__fastcall TfrmEditRole(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEditRole *frmEditRole;
//---------------------------------------------------------------------------
#endif
