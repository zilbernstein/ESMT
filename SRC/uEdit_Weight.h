//---------------------------------------------------------------------------

#ifndef uEdit_WeightH
#define uEdit_WeightH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxButtons.hpp"
#include "cxCalendar.hpp"
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxDateUtils.hpp"
#include "cxDropDownEdit.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxMaskEdit.hpp"
#include "cxTextEdit.hpp"
#include "dxCore.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Menus.hpp>
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include "cxClasses.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxImageComboBox.hpp"
#include "cxInplaceContainer.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include "cxLabel.hpp"
//---------------------------------------------------------------------------
struct Strct_Weight
{
    int	sheet_id;
	int	storage_id;
    int firm_id;
	AnsiString	idle_time_hr, idle_cost_r, repair_time_hr, repair_cost_r, zip_name, zip_cost, overhead_cost, sum_weight;
	TDateTime	date_enter, date_exit, date_receive;
};
//---------------------------------------------------------------------------
class TfrmEdit_Weight : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel6;
	TcxButton *btnCancel;
	TcxButton *btnSave;
	TdxStatusBar *dxStatusBar1;
	TActionList *alWeight;
	TAction *aSave;
	TAction *aCancel;
	TTimer *tmr;
	TAction *aLoad_Weight;
	TcxDateEdit *deDateEnter;
	TPanel *Panel1;
	TcxDateEdit *deDateExit;
	TcxTextEdit *edIdleInDepoHr;
	TcxLabel *cxLabel1;
	TcxLabel *cxLabel2;
	TcxLabel *cxLabel3;
	TcxLabel *cxLabel4;
	TcxLabel *cxLabel5;
	TcxLabel *cxLabel6;
	TcxLabel *cxLabel7;
	TcxLabel *cxLabel8;
	TcxTextEdit *edZipname;
	TcxMaskEdit *edZipCost;
	TcxMaskEdit *edIdleInDepoRub;
	TcxMaskEdit *edDateRepairHr;
	TAction *aCalcWeight;
	TcxLabel *cxLabel9;
	TcxTextEdit *EditWeiht;
	TcxButton *btnCalc;
	TcxLabel *cxLabel10;
	TcxMaskEdit *EditOverhead;
	TcxMaskEdit *edDateRepairRub;
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aLoad_WeightExecute(TObject *Sender);
	void __fastcall FormKeyPress(TObject *Sender, System::WideChar &Key);
	void __fastcall rwDateExitEditPropertiesEditValueChanged(TObject *Sender);
	void __fastcall deDateExitPropertiesEditValueChanged(TObject *Sender);
	void __fastcall edDateRepairHrPropertiesEditValueChanged(TObject *Sender);
	void __fastcall aCalcWeightExecute(TObject *Sender);





private:
	Strct_Weight* te_;
public:
	TModalResult __fastcall Show(Strct_Weight* te);
	__fastcall TfrmEdit_Weight(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEdit_Weight *frmEdit_Weight;
//---------------------------------------------------------------------------
#endif
