//---------------------------------------------------------------------------

#ifndef uAddFunctionH
#define uAddFunctionH
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
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.ImgList.hpp>
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxDBTL.hpp"
#include "cxInplaceContainer.hpp"
#include "cxMaskEdit.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxTLData.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include "cxClasses.hpp"
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
#include "dxSkinscxPCPainter.hpp"
#include "dxBar.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include "cxPC.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "cxContainer.hpp"
#include "cxDropDownEdit.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxTextEdit.hpp"
#include "dxBarExtItems.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include "cxCheckBox.hpp"
#include "cxGroupBox.hpp"
#include "cxProgressBar.hpp"
//---------------------------------------------------------------------------
class TfrmAddFunction : public TForm
{
__published:	// IDE-managed Components
	TPanel *pnlFuncyion;
	TcxButton *btnSave;
	TcxButton *btnCancel;
	TActionList *al;
	TAction *aSave;
	TAction *aCancel;
	TAction *aLoadFunction;
	TClientDataSet *cdsFunctionTree;
	TDataSource *dsFunctionTree;
	TdxBarManager *brm;
	TdxBar *brmBar1;
	TcxPageControl *pc;
	TcxTabSheet *tsMain;
	TcxTabSheet *tsOther;
	TdxBarControlContainerItem *dxBarControlContainerItem1;
	TPanel *pnlFirmTree;
	TPanel *pnlFirm;
	TcxDBTreeList *tlFirmTree;
	TcxDBTreeListColumn *clmn_FirmName;
	TcxDBTreeListColumn *clmn_FirmTypeMnemo;
	TcxDBTreeListColumn *clmn_KodFirm;
	TdxStatusBar *dxStatusBar4;
	TcxPopupEdit *cbFirmTree_;
	TDataSource *dsFirmTree;
	TClientDataSet *cdsFirmTree;
	TAction *aLoadFirmTree;
	TAction *aSelect_Frim;
	TcxGrid *gdFunction;
	TcxGridDBTableView *btvFunction;
	TcxGridDBColumn *btvFunctionColumn1;
	TcxGridDBColumn *btvFunctionColumn2;
	TcxGridDBColumn *btvFunctionColumn3;
	TcxGridLevel *lvlFunction;
	TcxGridDBColumn *clmnFirm;
	TcxGridDBColumn *clmCheck;
	TcxGridDBColumn *clmnFirmId;
	TcxGroupBox *gb;
	TcxProgressBar *pb;
	TdxBarButton *btnAllChecked;
	TAction *aChekedAll;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall aLoadFunctionExecute(TObject *Sender);
	void __fastcall aLoadFirmTreeExecute(TObject *Sender);
	void __fastcall aSelect_FrimExecute(TObject *Sender);
	void __fastcall tlFirmTreeKeyPress(TObject *Sender, System::WideChar &Key);
	void __fastcall clmCheckHeaderClick(TObject *Sender);
	void __fastcall aChekedAllExecute(TObject *Sender);


private:	// User declarations
	config	cfg;
	int id_usr;
	int id_firm;
	int id_fun;

	AnsiString tmp;
public:		// User declarations
	TModalResult __fastcall Show(int id_user);
	int __fastcall IfZero();
	int __fastcall IfZeroAll();
	__fastcall TfrmAddFunction(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmAddFunction *frmAddFunction;
//---------------------------------------------------------------------------
#endif
