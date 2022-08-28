//---------------------------------------------------------------------------

#ifndef uEdit_DepoEnterMalfunctonH
#define uEdit_DepoEnterMalfunctonH
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
#include "cxClasses.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include "cxButtonEdit.hpp"
#include "cxEdit.hpp"
#include "cxInplaceContainer.hpp"
#include "cxMemo.hpp"
#include "cxTextEdit.hpp"
#include "cxButtons.hpp"
#include <Vcl.Menus.hpp>
#include "cxImageComboBox.hpp"
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
//---------------------------------------------------------------------------
struct Strct_DepoEnter_Malfunct
{
	int row_id;
	int user_id;

    int malfunct_id;

	AnsiString wokr;
	AnsiString malfunction;
	AnsiString guild;
};
//---------------------------------------------------------------------------
class TfrmEdit_DepoEnterMalfuncton : public TForm
{
__published:	// IDE-managed Components
	TdxStatusBar *dxStatusBar1;
	TPanel *Panel1;
	TTimer *tmr;
	TActionList *ActionList;
	TcxVerticalGrid *vgKipar_PrognosAddFile;
	TcxCategoryRow *cxCategoryRowLR;
	TcxEditorRow *rwWork;
	TcxEditorRow *rwMalfunction;
	TcxEditorRow *rwGuild;
	TcxButton *btnSave;
	TcxButton *btnCancel;
	TAction *aSave;
	TAction *aCancel;
	TAction *aLoadWork;
	TDataSource *dsLoad;
	TClientDataSet *cdsLoad;
	TAction *aLoadAll;
	TAction *aLoadMalfunction;
	TAction *aLoadGuild;
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall aLoadWorkExecute(TObject *Sender);
	void __fastcall aLoadAllExecute(TObject *Sender);
	void __fastcall aLoadMalfunctionExecute(TObject *Sender);
	void __fastcall aLoadGuildExecute(TObject *Sender);
private:
	Strct_DepoEnter_Malfunct* te_;
public:
	__fastcall TfrmEdit_DepoEnterMalfuncton(TComponent* Owner);
	TModalResult __fastcall Show(Strct_DepoEnter_Malfunct* te);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEdit_DepoEnterMalfuncton *frmEdit_DepoEnterMalfuncton;
//---------------------------------------------------------------------------
#endif
