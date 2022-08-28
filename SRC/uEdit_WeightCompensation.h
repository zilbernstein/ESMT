//---------------------------------------------------------------------------

#ifndef uEdit_WeightCompensationH
#define uEdit_WeightCompensationH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxButtons.hpp"
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxGraphics.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Menus.hpp>
#include "cxCalendar.hpp"
#include "cxContainer.hpp"
#include "cxDateUtils.hpp"
#include "cxDropDownEdit.hpp"
#include "cxEdit.hpp"
#include "cxLabel.hpp"
#include "cxMaskEdit.hpp"
#include "cxTextEdit.hpp"
#include "dxCore.hpp"
#include <Vcl.ComCtrls.hpp>
#include "cxImageComboBox.hpp"
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
//---------------------------------------------------------------------------
struct Strct_WeightCompens
{
	int	sheet_id;
	int	repair_id;
	int	compen_id;
	int user_id;
};
//---------------------------------------------------------------------------
class TfrmEdit_WeightCompensation : public TForm
{
__published:	// IDE-managed Components
	TActionList *alWeightCompensation;
	TAction *aSave;
	TAction *aCancel;
	TTimer *tmr;
	TPanel *Panel6;
	TcxButton *cxButton9;
	TcxButton *cxButton10;
	TdxStatusBar *dxStatusBar1;
	TPanel *Panel1;
	TcxLabel *cxLabel1;
	TcxDateEdit *deFaultDate;
	TcxLabel *cxLabel4;
	TcxLabel *cxLabel2;
	TcxMaskEdit *edCompenAmmount;
	TcxImageComboBox *edFault;
	TAction *aLoadInfo;
	TDataSource *dsRec;
	TClientDataSet *cdsRec;
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall edFaultPropertiesEditValueChanged(TObject *Sender);
	void __fastcall aLoadInfoExecute(TObject *Sender);
private:
	Strct_WeightCompens* te_;
public:
	__fastcall TfrmEdit_WeightCompensation(TComponent* Owner);
	TModalResult __fastcall TfrmEdit_WeightCompensation::Show(Strct_WeightCompens* te);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEdit_WeightCompensation *frmEdit_WeightCompensation;
//---------------------------------------------------------------------------
#endif
