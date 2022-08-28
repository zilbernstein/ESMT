//---------------------------------------------------------------------------

#ifndef UMyAccessH
#define UMyAccessH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "cxButtons.hpp"
#include "cxClasses.hpp"
#include "cxGraphics.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include "dxSkinCaramel.hpp"
#include <ActnList.hpp>
#include <ExtCtrls.hpp>
#include <ImgList.hpp>
#include <Menus.hpp>
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxDBEdit.hpp"
#include "cxEdit.hpp"
#include "cxListBox.hpp"
#include <DB.hpp>
#include <DBClient.hpp>
#include "cxCustomData.hpp"
#include "cxDBTL.hpp"
#include "cxInplaceContainer.hpp"
#include "cxMaskEdit.hpp"
#include "cxTLData.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include "dxSkinsCore.hpp"
#include <System.Actions.hpp>
//---------------------------------------------------------------------------
class TfrmMyAccess : public TForm
{
__published:	// IDE-managed Components
	TActionList *al;
	TAction *aCancel;
	TPanel *Panel1;
	TcxButton *cxButton1;
	TPanel *Panel2;
	TcxButton *cxButton2;
	TAction *aRefresh;
	TPanel *Panel3;
	TPanel *Panel4;
	TDataSource *dsRole;
	TClientDataSet *cdsRole;
	TcxDBTreeList *tlRole;
	TcxDBTreeListColumn *clmnRole;
	TcxDBTreeList *tlFunction;
	TcxDBTreeListColumn *clmnFunction;
	TSplitter *Splitter1;
	TDataSource *dsFunction;
	TClientDataSet *cdsFunction;
	TAction *aLoadRole;
	TAction *aLoadFunction;
	TcxDBTreeListColumn *tlFunctioncxDBTreeListColumn1;
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall aRefreshExecute(TObject *Sender);
	void __fastcall aLoadRoleExecute(TObject *Sender);
	void __fastcall aLoadFunctionExecute(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmMyAccess(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmMyAccess *frmMyAccess;
//---------------------------------------------------------------------------
#endif
