//---------------------------------------------------------------------------

#ifndef uEdit_DictStandartsH
#define uEdit_DictStandartsH
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
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include "cxMaskEdit.hpp"

struct RecordDicrStand
{
	int id;
	int tr_id;
	int km;
	int hh;

	int st_id_exp_dep;
	int st_id_dep;
	int st_lim;
    int st_id_ser;

	AnsiString st_note;

	AnsiString Descrptn;
	int flag;
};

//---------------------------------------------------------------------------
class TfrmEdit_DictStandarts : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TcxVerticalGrid *vg;
	TcxEditorRow *rwKM;
	TcxEditorRow *rwTypeRepairs;
	TPanel *pnlSaveCancel;
	TcxButton *btnSave;
	TcxButton *btnCancel;
	TActionList *ActionList;
	TAction *aSave;
	TAction *aClose;
	TcxEditorRow *rwHH;
	TAction *aLoadTypeRepairs;
	TClientDataSet *cdsEdit_Dict_Stand;
	TDataSource *dsEdit_Dict_Stand;
	TcxEditorRow *rwDepo;
	TcxEditorRow *rwSer_Name;
	TcxEditorRow *rwExpDepo;
	TAction *aLoadDepo;
	TClientDataSet *cdsDepo;
	TDataSource *dsDepo;
	TClientDataSet *cdsSerNam;
	TDataSource *dsSerNam;
	TDataSource *dsExpDepo;
	TClientDataSet *cdsExpDepo;
	TAction *aLoad_Exp_Depo;
	TAction *aLoad_SerName;
	TcxEditorRow *rwLim;
	TcxEditorRow *rwNote;
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall aCloseExecute(TObject *Sender);
	void __fastcall aLoadTypeRepairsExecute(TObject *Sender);
	void __fastcall aLoadDepoExecute(TObject *Sender);
	void __fastcall aLoad_Exp_DepoExecute(TObject *Sender);
	void __fastcall aLoad_SerNameExecute(TObject *Sender);

private:	// User declarations
	RecordDicrStand* pDicrStand_;
public:		// User declarations
	__fastcall TfrmEdit_DictStandarts(TComponent* Owner);
	TModalResult __fastcall Show( RecordDicrStand* pDicrStand );
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEdit_DictStandarts *frmEdit_DictStandarts;
//---------------------------------------------------------------------------
#endif
