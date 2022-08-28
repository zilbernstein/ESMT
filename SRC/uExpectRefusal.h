//---------------------------------------------------------------------------

#ifndef uExpectRefusalH
#define uExpectRefusalH
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
#include "cxMemo.hpp"
#include "cxStyles.hpp"
#include "cxTextEdit.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.Menus.hpp>
#include "cxImageComboBox.hpp"
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>

struct RecordExrefNRE
{
	int exref_id;
	int sheet_id;
	int user_id;
	int system_type_id;
	int system_id;
};

//---------------------------------------------------------------------------
class TfrmExpectRefusal : public TForm
{
__published:	// IDE-managed Components
	TPanel *pnl1;
	TActionList *alExpectRefusal;
	TAction *aSave;
	TAction *aCancel;
	TcxVerticalGrid *vgExpectRefusal;
	TcxEditorRow *rwSystemType;
	TcxEditorRow *rwSystem;
	TcxEditorRow *rwUnit;
	TcxButton *btnSave;
	TcxButton *btnCancel;
	TTimer *tmr;
	TAction *aFill_SystemType;
	TAction *aFill_System;
	TClientDataSet *cds_NSI_SystemTree;
	TDataSource *ds_NSI_SystemTree;
	TAction *aFill_SystemTree;
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aFill_SystemTypeExecute(TObject *Sender);
	void __fastcall aFill_SystemExecute(TObject *Sender);
	void __fastcall rwSystemTypeEditPropertiesChange(TObject *Sender);
	void __fastcall aFill_SystemTreeExecute(TObject *Sender);
private:
	int id_;
	RecordExrefNRE* te_;
public:
	__fastcall TfrmExpectRefusal(TComponent* Owner);
	TModalResult __fastcall Show(RecordExrefNRE* te);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmExpectRefusal *frmExpectRefusal;
//---------------------------------------------------------------------------
#endif
