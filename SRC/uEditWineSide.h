//---------------------------------------------------------------------------

#ifndef uEditWineSideH
#define uEditWineSideH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
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
#include "cxDBExtLookupComboBox.hpp"
#include "cxDBLookupComboBox.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.Menus.hpp>
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include "cxDBLookupComboBox.hpp"
#include "cxContainer.hpp"
#include "cxDBLookupEdit.hpp"
#include "cxDropDownEdit.hpp"
#include "cxLookupEdit.hpp"
#include "cxMaskEdit.hpp"
#include "cxTextEdit.hpp"
#include "cxCustomData.hpp"
#include "cxDBTL.hpp"
#include "cxGroupBox.hpp"
#include "cxPC.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "cxProgressBar.hpp"
#include "cxTLData.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include "dxSkinscxPCPainter.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
struct RecordWineSide
{
	int id;
	int pr_id;
	int id_road; /* Дорога */
	int id_type_frim; /* Тип предприятия */
};
//---------------------------------------------------------------------------
class TfrmEditWineSide : public TForm
{
__published:	// IDE-managed Components
	TActionList *al;
	TAction *aSave;
	TAction *aCancel;
	TPanel *Panel1;
	TPanel *pnlSaveCancel;
	TcxButton *btnSave;
	TcxButton *btnCancel;
	TAction *aLoadRoad;
	TAction *aLoadFirm;
	TClientDataSet *cdsFirm;
	TDataSource *dsFirm;
	TDataSource *dsRoad;
	TClientDataSet *cdsRoad;
	TcxPageControl *pc;
	TcxTabSheet *tsEdit;
	TcxVerticalGrid *vg;
	TcxEditorRow *rwRoad;
	TcxEditorRow *rwTypeFirm;
	TcxEditorRow *rwParent;
	TcxTabSheet *cxTabSheet2;
	TPanel *pnlFirmTree;
	TcxDBTreeList *trWineSide;
	TcxDBTreeListColumn *clmn_Name;
	TcxDBTreeListColumn *clmn_parent_new;
	TcxDBTreeListColumn *clmn_child;
	TdxStatusBar *dxStatusBar4;
	TcxTabSheet *tsProgress;
	TcxGroupBox *gbLoading;
	TcxProgressBar *pb;
	TcxEditorRow *rwName;
	TcxEditorRow *rwShortName;
	TAction *aLoadParent;
	TDataSource *dsParent;
	TClientDataSet *cdsParent;
	TAction *aLoadRec;
	TDataSource *dsRec;
	TClientDataSet *cdsRec;
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall aLoadRoadExecute(TObject *Sender);
	void __fastcall aLoadFirmExecute(TObject *Sender);
	void __fastcall aLoadParentExecute(TObject *Sender);
	void __fastcall trWineSideDblClick(TObject *Sender);
	void __fastcall aLoadRecExecute(TObject *Sender);
private:	// User declarations
	RecordWineSide* pWineSide_;
public:		// User declarations
	__fastcall TfrmEditWineSide(TComponent* Owner);
	TModalResult __fastcall Show( RecordWineSide* pWineSide );
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEditWineSide *frmEditWineSide;
//---------------------------------------------------------------------------
#endif
