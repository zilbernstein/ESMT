//---------------------------------------------------------------------------

#ifndef uEdit_WeightChronoH
#define uEdit_WeightChronoH
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
#include "cxContainer.hpp"
#include "cxEdit.hpp"
#include "cxLabel.hpp"
#include "cxMemo.hpp"
#include "cxTextEdit.hpp"
//---------------------------------------------------------------------------
struct Strct_WeightChrono
{
	int	sheet_id;
	int	repair_id;
	int	chrono_id;
	int user_id;
};
//---------------------------------------------------------------------------
class TfrmEdit_WeightChrono : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel6;
	TcxButton *cxButton9;
	TcxButton *cxButton10;
	TdxStatusBar *dxStatusBar1;
	TTimer *tmr;
	TActionList *alWeightChrono;
	TAction *aSave;
	TAction *aCancel;
	TAction *aLoad_Weight;
	TPanel *frmEdit_WeightChrono;
	TcxLabel *cxLabel1;
	TcxMemo *edChrono;
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall tmrTimer(TObject *Sender);
private:
	Strct_WeightChrono* te_;
public:
	__fastcall TfrmEdit_WeightChrono(TComponent* Owner);
	TModalResult __fastcall TfrmEdit_WeightChrono::Show(Strct_WeightChrono* te);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEdit_WeightChrono *frmEdit_WeightChrono;
//---------------------------------------------------------------------------
#endif
