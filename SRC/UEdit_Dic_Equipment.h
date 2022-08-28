//---------------------------------------------------------------------------
 #include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#include "cxButtons.hpp"
#include "cxClasses.hpp"
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxDBTL.hpp"
#include "cxDropDownEdit.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxGroupBox.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxMaskEdit.hpp"
#include "cxPC.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "cxProgressBar.hpp"
#include "cxStyles.hpp"
#include "cxTextEdit.hpp"
#include "cxTL.hpp"
#include "cxTLData.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include "cxVGrid.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinscxPCPainter.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <System.Actions.hpp>
#include <System.Classes.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.Menus.hpp>
#include <Vcl.StdCtrls.hpp>
#pragma hdrstop

#include <memory>
#include "uBinFunction.h"
#include "config.h"
#include "public.h"
#include "UDMMain.h"
#include "Utils_JK.h"

#ifndef UEdit_Dic_EquipmentH
#define UEdit_Dic_EquipmentH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>

struct TrEquipment
{
	int          eq_id;    /* ID оборудовани€ */
	int          eq_p_id;  /* ID родител€ оборудовани€ */
	AnsiString   eq_name;  /* Ќименование оборудовани€ */
	AnsiString   eq_sd;    /*  раткое описание */
	int          lvl;
};
//---------------------------------------------------------------------------
class TfrmEdit_Dic_Equipment : public TForm
{
__published:	// IDE-managed Components
	TcxPageControl *pc;
	TcxTabSheet *tsEdit;
	TcxVerticalGrid *vg;
	TcxEditorRow *rwEqName;
	TcxEditorRow *rwEqSD;
	TcxEditorRow *rwEqtTree;
	TcxTabSheet *cxTabSheet2;
	TPanel *pnlFirmTree;
	TcxDBTreeList *tlEqtTree;
	TcxDBTreeListColumn *clmn_FirmName;
	TcxDBTreeListColumn *clmn_FirmTypeMnemo;
	TcxDBTreeListColumn *clmn_KodFirm;
	TdxStatusBar *dxStatusBar4;
	TcxTabSheet *tsProgress;
	TcxGroupBox *gbLoading;
	TcxProgressBar *pb;
	TTimer *tmr;
	TDataSource *dsEqtTree;
	TClientDataSet *cdsEqtTree;
	TActionList *al;
	TAction *aSelect_EqTree;
	TAction *aCancel;
	TAction *aLoadEqTree;
	TAction *aSave;
	TPanel *Panel1;
	TcxButton *btnSave;
	TcxButton *btnCancel;
	TAction *aLoadRec;
	TAction *aLoadLVL;
	void __fastcall aLoadEqTreeExecute(TObject *Sender);
	void __fastcall aSelect_EqTreeExecute(TObject *Sender);
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall aLoadRecExecute(TObject *Sender);
	void __fastcall aLoadLVLExecute(TObject *Sender);
private:	// User declarations
	TrEquipment *eq_;
public:		// User declarations
	__fastcall TfrmEdit_Dic_Equipment(TComponent* Owner);

	TModalResult __fastcall Show(TrEquipment* eq);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEdit_Dic_Equipment *frmEdit_Dic_Equipment;
//---------------------------------------------------------------------------
#endif
