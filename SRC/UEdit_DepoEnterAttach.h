//---------------------------------------------------------------------------

#ifndef UEdit_DepoEnterAttachH
#define UEdit_DepoEnterAttachH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxControls.hpp"
#include "cxGraphics.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <Vcl.ExtCtrls.hpp>
#include "cxButtons.hpp"
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.Menus.hpp>
#include "cxButtonEdit.hpp"
#include "cxEdit.hpp"
#include "cxInplaceContainer.hpp"
#include "cxMemo.hpp"
#include "cxStyles.hpp"
#include "cxVGrid.hpp"
#include "cxClasses.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxTL.hpp"
#include <Vcl.Dialogs.hpp>
//---------------------------------------------------------------------------
struct Strct_DepoEnter_Attach
{
	int attach_id;
	int row_id;
	int user_id;
    AnsiString descr;
	AnsiString file_name;
};
//---------------------------------------------------------------------------
class TfrmEdit_DepoEnterAttach : public TForm
{
__published:	// IDE-managed Components
	TdxStatusBar *dxStatusBar1;
	TPanel *Panel1;
	TTimer *tmr;
	TcxButton *btnSave;
	TcxButton *btnCancel;
	TActionList *ActionList;
	TAction *aSave;
	TAction *aCancel;
	TcxVerticalGrid *vgKipar_PrognosAddFile;
	TcxCategoryRow *cxCategoryRowLR;
	TcxEditorRow *rwFileName;
	TcxEditorRow *rwDescription;
	TAction *aSelectFile;
	TOpenDialog *dlgOpen;
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall aSelectFileExecute(TObject *Sender);
	void __fastcall rwFileNamePropertiesButtonClick(TObject *Sender, int AButtonIndex);

private:
	Strct_DepoEnter_Attach* te_;
public:
	__fastcall TfrmEdit_DepoEnterAttach(TComponent* Owner);
	TModalResult __fastcall Show(Strct_DepoEnter_Attach* te);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEdit_DepoEnterAttach *frmEdit_DepoEnterAttach;
//---------------------------------------------------------------------------
#endif
