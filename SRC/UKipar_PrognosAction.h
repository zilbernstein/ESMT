//---------------------------------------------------------------------------

#ifndef UKipar_PrognosActionH
#define UKipar_PrognosActionH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxButtonEdit.hpp"
#include "cxButtons.hpp"
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxMemo.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Menus.hpp>


//---------------------------------------------------------------------------
struct RecordKipProg
{
	int NSI;
	int user_id;

    AnsiString	file_name;
};

//---------------------------------------------------------------------------
class TfrmKipar_PrognosAction : public TForm
{
__published:	// IDE-managed Components
	TdxStatusBar *dxStatusBar1;
	TPanel *Panel6;
	TcxButton *btnCancelClose;
	TcxButton *btnSave;
	TcxVerticalGrid *vgKipar_PrognosAddFile;
	TcxCategoryRow *cxCategoryRowLR;
	TcxEditorRow *rwFileName;
	TcxEditorRow *rwDescription;
	TActionList *alAction;
	TAction *aSave;
	TAction *aCancel;
	TAction *aSelectFile;
	TAction *aLoadFileExtension;
	TTimer *tmr;
	TOpenDialog *dlgOpen;
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall aSelectFileExecute(TObject *Sender);
	void __fastcall rwFileNameEditPropertiesButtonClick(TObject *Sender, int AButtonIndex);
	void __fastcall aSaveExecute(TObject *Sender);

private:	// User declarations
	RecordKipProg* NSI_UserId;
public:		// User declarations
	__fastcall TfrmKipar_PrognosAction(TComponent* Owner);

	TModalResult __fastcall Show(RecordKipProg* NSIUserId);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmKipar_PrognosAction *frmKipar_PrognosAction;
//---------------------------------------------------------------------------
#endif
