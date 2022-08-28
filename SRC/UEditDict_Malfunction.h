//---------------------------------------------------------------------------

#ifndef UEditDict_MalfunctionH
#define UEditDict_MalfunctionH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxButtons.hpp"
#include "cxControls.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxStyles.hpp"
#include "cxVGrid.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Menus.hpp>
#include "cxDropDownEdit.hpp"
#include "cxClasses.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxMemo.hpp"
#include "cxTL.hpp"
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include <Vcl.ImgList.hpp>
#include "cxImageComboBox.hpp"
//---------------------------------------------------------------------------

struct RecordDicrMalf
{
	int id;
	int Type;
	AnsiString Descrptn;
	int flag;
};


class TfrmEditDict_Malfunction : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TPanel *pnlSaveCancel;
	TcxButton *btnSave;
	TcxButton *btnCancel;
	TActionList *ActionList1;
	TAction *aSave;
	TAction *aClose;
	TcxVerticalGrid *vg;
	TcxEditorRow *rwDescr;
	TcxEditorRow *rwTypeWork;
	void __fastcall aCloseExecute(TObject *Sender);
	void __fastcall aSaveExecute(TObject *Sender);
private:	// User declarations
	RecordDicrMalf* pDicrMalf_;
public:		// User declarations
	__fastcall TfrmEditDict_Malfunction(TComponent* Owner);
	TModalResult __fastcall Show( RecordDicrMalf* pDicrMalf );
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEditDict_Malfunction *frmEditDict_Malfunction;
//---------------------------------------------------------------------------
#endif
