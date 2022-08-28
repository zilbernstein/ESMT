//---------------------------------------------------------------------------

#ifndef UEdit_StorageH
#define UEdit_StorageH
#include "cxButtons.hpp"
#include "cxCalendar.hpp"
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxDBExtLookupComboBox.hpp"
#include "cxDBLookupComboBox.hpp"
#include "cxDBLookupEdit.hpp"
#include "cxDropDownEdit.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxImageComboBox.hpp"
#include "cxLabel.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookupEdit.hpp"
#include "cxMaskEdit.hpp"
#include "cxMemo.hpp"
#include "cxTextEdit.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <ActnList.hpp>
#include <Classes.hpp>
#include <Controls.hpp>
#include <ExtCtrls.hpp>
#include <Menus.hpp>
#include <StdCtrls.hpp>
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include "cxDateUtils.hpp"
#include "dxCore.hpp"
#include <System.Actions.hpp>
#include <Vcl.ComCtrls.hpp>

//---------------------------------------------------------------------------
struct Strct_Storage
{
    int	sheet_id;
    int	storage_id;
    int firm_id;
    TDateTime date_receive;
    AnsiString detail_name;
};
//---------------------------------------------------------------------------
class TfrmEdit_Storage : public TForm
{
__published:
	TTimer *tmr;
	TActionList *alStorage;
	TAction *aSave;
	TAction *aCancel;
	TPanel *Panel6;
	TcxButton *cxButton9;
	TcxButton *cxButton10;
	TcxLabel *cxLabel8;
	TAction *aLoad_Firm;
	TdxStatusBar *dxStatusBar1;
	TcxLabel *cxLabel1;
	TcxDateEdit *deDate_Receive;
	TcxLabel *cxLabel2;
	TcxMemo *mmDetail_Name;
	TcxLookupComboBox *cbFirm;
	void __fastcall aLoad_FirmExecute(TObject *Sender);
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall FormKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall aSaveExecute(TObject *Sender);
private:
	Strct_Storage* te_;
public:
	TModalResult __fastcall Show( Strct_Storage* te );
	__fastcall TfrmEdit_Storage(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEdit_Storage *frmEdit_Storage;
//---------------------------------------------------------------------------
#endif
