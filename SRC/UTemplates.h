//---------------------------------------------------------------------------

#ifndef UTemplatesH
#define UTemplatesH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxClasses.hpp"
#include "cxGraphics.hpp"
#include "dxBar.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.ImgList.hpp>
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxDBTL.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxTLData.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include "cxVGrid.hpp"
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include "cxMaskEdit.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGrid.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxNavigator.hpp"
#include "dxSkinscxPCPainter.hpp"
#include <Vcl.ExtCtrls.hpp>
#include "cxGridDBBandedTableView.hpp"
//---------------------------------------------------------------------------
class TfrmTemplates : public TForm
{
__published:	// IDE-managed Components
	TdxBarManager *bmTemplate;
	TdxBar *tbButtons;
	TdxBarLargeButton *dxBarLargeButton1;
	TdxBarLargeButton *dxBarLargeButton2;
	TdxBarLargeButton *dxBarLargeButton3;
	TdxBarLargeButton *dxBarLargeButton4;
	TdxBarDockControl *dxBarDockControl1;
	TActionList *ActionList2;
	TAction *aRefreshTplList;
	TAction *aAddTpl;
	TAction *aEditTpl;
	TAction *aDeleteTpl;
	TcxGridLevel *lvlUserTemplate;
	TcxGrid *grdUserTemplate;
	TTimer *tmr;
	TdxBarLargeButton *dxBarLargeButton5;
	TdxBarLargeButton *dxBarLargeButton6;
	TAction *aCancelPublish;
	TAction *aPublish;
	TAction *aSetAction;
	TcxGridDBBandedTableView *btvUserTemplate;
	TcxGridDBBandedColumn *clmnTemplateName;
	TcxGridDBBandedColumn *clmnDateChange;
	TcxGridDBBandedColumn *clmnTemplate;
	TcxGridDBBandedColumn *clmnState;
	TcxGridDBBandedColumn *clmnType;
	TClientDataSet *cdsTemplateList;
	TDataSource *dsTemplateList;
	TdxBarLargeButton *dxBarLargeButton7;
	TdxBarLargeButton *dxBarLargeButton8;
	TAction *aChangeStatus;
	TdxBarLargeButton *dxBarLargeButton9;
	TAction *aApplyTpl;
	TAction *aPublishAdm;
	TAction *aCancelAdm;
	TcxGridDBBandedColumn *btvUserTemplateColumn1;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aRefreshTplListExecute(TObject *Sender);
	void __fastcall aAddTplExecute(TObject *Sender);
	void __fastcall aEditTplExecute(TObject *Sender);
	void __fastcall aDeleteTplExecute(TObject *Sender);
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aSetActionExecute(TObject *Sender);
	void __fastcall aPublishExecute(TObject *Sender);
	void __fastcall aCancelPublishExecute(TObject *Sender);
	void __fastcall btvUserTemplateFocusedRecordChanged(TcxCustomGridTableView *Sender,
          TcxCustomGridRecord *APrevFocusedRecord, TcxCustomGridRecord *AFocusedRecord,
		  bool ANewItemRecordFocusingChanged);
	void __fastcall aPublishAdmExecute(TObject *Sender);
	void __fastcall aCancelAdmExecute(TObject *Sender);
	void __fastcall aApplyTplExecute(TObject *Sender);

private:	// User declarations
	void __fastcall ChangeStatus(int stateId);
public:		// User declarations
	__fastcall TfrmTemplates(TComponent* Owner);
	TModalResult __fastcall Show();
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmTemplates *frmTemplates;
//---------------------------------------------------------------------------
#endif
