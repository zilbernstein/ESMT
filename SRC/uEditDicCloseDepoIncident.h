//---------------------------------------------------------------------------

#ifndef uEditDicCloseDepoIncidentH
#define uEditDicCloseDepoIncidentH
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
#include "cxImageComboBox.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxMemo.hpp"
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

//---------------------------------------------------------------------------
struct RecordThree
{
	int id;
	int pr_id;

	AnsiString nam;
	AnsiString note;

	int flag;
};
//---------------------------------------------------------------------------
class TfrmEditDicCloseDepoIncident : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TcxVerticalGrid *vg;
	TcxEditorRow *rwDescr;
	TcxEditorRow *rwType;
	TPanel *pnlSaveCancel;
	TcxButton *btnSave;
	TcxButton *btnCancel;
	TActionList *al;
	TAction *aSave;
	TAction *aClose;
	TcxEditorRow *rowName;
	TcxCategoryRow *vgCategoryRow1;
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall aCloseExecute(TObject *Sender);
private:	// User declarations
	RecordThree* pThree_;
public:		// User declarations
	__fastcall TfrmEditDicCloseDepoIncident(TComponent* Owner);

	TModalResult __fastcall Show( RecordThree* pThree );
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEditDicCloseDepoIncident *frmEditDicCloseDepoIncident;
//---------------------------------------------------------------------------
#endif
