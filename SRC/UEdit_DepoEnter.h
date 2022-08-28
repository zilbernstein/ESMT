//---------------------------------------------------------------------------

#ifndef UEdit_DepoEnterH
#define UEdit_DepoEnterH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxButtonEdit.hpp"
#include "cxButtons.hpp"
#include "cxCalendar.hpp"
#include "cxClasses.hpp"
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDateUtils.hpp"
#include "cxDBData.hpp"
#include "cxDBEdit.hpp"
#include "cxDBExtLookupComboBox.hpp"
#include "cxDBLookupComboBox.hpp"
#include "cxDBLookupEdit.hpp"
#include "cxDBTL.hpp"
#include "cxDBVGrid.hpp"
#include "cxDropDownEdit.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGraphics.hpp"
#include "cxGrid.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBBandedTableView.hpp"
#include "cxGridDBTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxGroupBox.hpp"
#include "cxImageComboBox.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLabel.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxLookupEdit.hpp"
#include "cxMaskEdit.hpp"
#include "cxMemo.hpp"
#include "cxNavigator.hpp"
#include "cxPC.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "cxSpinEdit.hpp"
#include "cxStyles.hpp"
#include "cxTextEdit.hpp"
#include "cxTL.hpp"
#include "cxTLData.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include "cxVGrid.hpp"
#include "dxCore.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinscxPCPainter.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <Data.DB.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Menus.hpp>
#include <Vcl.ImgList.hpp>
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include "cxGridExportLink.hpp"
#include <Datasnap.DBClient.hpp>
#include "dxBar.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include "cxHyperLinkEdit.hpp"
#include "dxBarExtItems.hpp"
#include "cxBarEditItem.hpp"
#include "cxTrackBar.hpp"
//---------------------------------------------------------------------------
struct StrctDepoEnter
{
	int			row_id;
	int			create_mode;
	TDateTime	date_op;
	TDateTime	date_next_op;
	bool		edit;
	bool		was_edit;
	AnsiString	status;

	// локомотив
	int			kod_ser;
	int	 		nom_loc;
	int	 		nom_sec;
	AnsiString	loc_name;
	AnsiString	reason;
};
//---------------------------------------------------------------------------
class TfrmEdit_DepoEnter : public TForm
{
__published:	// IDE-managed Components
	TcxPageControl *pcCommon;
	TcxTabSheet *tsCommon;
	TcxDBVerticalGrid *vgFrame;
	TcxDBEditorRow *vgFrameDBEditorRow1;
	TcxDBEditorRow *vgFrameDBEditorRow2;
	TcxDBEditorRow *vgFrameDBEditorRow4;
	TcxDBEditorRow *vgFrameDBEditorRow5;
	TcxDBEditorRow *vgFrameDBEditorRow6;
	TcxDBEditorRow *vgFrameDBEditorRow7;
	TcxTabSheet *tsMalfunctionWorks;
	TPanel *Panel1;
	TActionList *ActionList;
	TAction *aLoadIncidentList;
	TClientDataSet *cdsIncidentList;
	TDataSource *dsIncidentList;
	TAction *aLoadFrame;
	TClientDataSet *cdsDepoEnterRecord;
	TDataSource *dsDepoEnterRecord;
	TcxDBEditorRow *vgFrameDBEditorRow3;
	TAction *aDetail;
	TcxButton *cxButton1;
	TAction *aCancel;
	TcxTabSheet *tsAttach;
	TPanel *pnlMalfunction;
	TcxButton *cxButton6;
	TcxButton *cxButton7;
	TcxButton *cxButton8;
	TAction *aAddWork;
	TAction *aEditWork;
	TAction *aDeleteWork;
	TcxDBTreeList *tlMalfuntionWorks;
	TcxButton *btnClose;
	TAction *aCloseDepoEnter;
	TPanel *pnlAttach;
	TcxButton *cxButton3;
	TcxButton *cxButton4;
	TcxButton *cxButton5;
	TAction *aAddAttach;
	TAction *aEditAttach;
	TAction *aDeleteAttach;
	TcxGrid *grdDepoEnterAttach;
	TcxGridDBBandedTableView *btvDepoEnterAttach;
	TcxGridDBBandedColumn *clmnDtTm;
	TcxGridDBBandedColumn *clmnFIOPost;
	TcxGridDBBandedColumn *clmnDescription;
	TcxGridDBBandedColumn *clmnFiles;
	TcxGridDBBandedColumn *clmnFileName;
	TcxGridLevel *lvlDepoEnterAttach;
	TAction *aLoadAttach;
	TcxGrid *grdMalfunction;
	TcxGridDBBandedTableView *btvMalfunction;
	TcxGridLevel *lvlMalfunction;
	TAction *aLoadMalfunctList;
	TcxGridDBBandedColumn *btvMalfunctionColumn1;
	TcxGridDBBandedColumn *btvMalfunctionColumn2;
	TcxGridDBBandedColumn *btvMalfunctionColumn3;
	TcxGridDBBandedColumn *btvMalfunctionColumn4;
	TcxGridDBBandedColumn *btvMalfunctionColumn5;
	TClientDataSet *cdsMalfunction;
	TDataSource *dsMalfunction;
	TClientDataSet *cdsAttachDoc;
	TDataSource *dsAttachDoc;
	TcxButton *btnSave;
	TAction *aSave;
	TcxVerticalGrid *vgFrameEdit;
	TcxEditorRow *rwLocName;
	TcxEditorRow *rwDateOp;
	TcxEditorRow *rwDateNextOp;
	TPanel *pnlIncidentList;
	TcxButton *cxButton10;
	TcxButton *cxButton11;
	TAction *aIncidentListAdd;
	TAction *aIncidentListDel;
	TdxBarManager *bmEditDepoEnter;
	TdxBar *bmEditDepoEnterBar1;
	TdxBarButton *btnEditForm;
	TAction *aEdit;
	TcxTabSheet *tsRunning;
	TcxDBEditorRow *vgFrameDBEditorRow8;
	TcxEditorRow *rwDepoEnterReason;
	TcxDBVerticalGrid *vgRunningElder;
	TcxCategoryRow *vgRunningElderCategoryRow2;
	TcxDBEditorRow *vgRunningElderDBEditorRow5;
	TcxCategoryRow *vgRunningElderCategoryRow3;
	TcxDBEditorRow *vgRunningElderDBEditorRow8;
	TcxCategoryRow *vgRunningElderCategoryRow4;
	TcxDBEditorRow *vgRunningElderDBEditorRow11;
	TcxDBVerticalGrid *vgRunningJunior;
	TcxCategoryRow *cxCategoryRow2;
	TcxDBEditorRow *cxDBEditorRow3;
	TcxCategoryRow *cxCategoryRow3;
	TcxDBEditorRow *cxDBEditorRow6;
	TcxCategoryRow *cxCategoryRow4;
	TcxDBEditorRow *cxDBEditorRow9;
	TAction *aLoadRunning;
	TClientDataSet *cdsRunning;
	TDataSource *dsRunning;
	TAction *aSetAction;
	TcxGrid *grdIncidentList;
	TcxGridDBBandedTableView *btvIncidentList;
	TcxGridDBBandedColumn *btvIncidentListColumn1;
	TcxGridDBBandedColumn *btvIncidentListColumn2;
	TcxGridDBBandedColumn *btvIncidentListColumn3;
	TcxGridDBBandedColumn *clmnIncidentTime;
	TcxGridDBBandedColumn *btvIncidentListColumn6;
	TcxGridDBBandedColumn *btvIncidentListColumn7;
	TcxGridDBBandedColumn *btvIncidentListColumn8;
	TcxGridDBBandedColumn *btvIncidentListColumn9;
	TcxGridDBBandedColumn *btvIncidentListColumn11;
	TcxGridDBBandedColumn *clmnIncident_StateName;
	TcxGridDBBandedColumn *btvIncidentListColumn12;
	TcxGridDBBandedColumn *btvIncidentListColumn13;
	TcxGridDBBandedColumn *btvIncidentListColumn14;
	TcxGridDBBandedColumn *btvIncidentListColumn15;
	TcxGridDBBandedColumn *btvIncidentListColumn17;
	TcxGridDBBandedColumn *btvIncidentListColumn18;
	TcxGridDBBandedColumn *btvIncidentListColumn19;
	TcxGridDBBandedColumn *btvIncidentListColumn20;
	TcxGridDBBandedColumn *btvIncidentListColumn21;
	TcxGridDBBandedColumn *btvIncidentListColumn22;
	TcxGridDBBandedColumn *clmnIncident_Create_Mode;
	TcxGridDBBandedColumn *btvIncidentListColumn23;
	TcxGridDBBandedColumn *clmnStateID;
	TcxGridDBBandedColumn *btvIncidentListColumn4;
	TcxGridDBBandedColumn *btvIncidentListColumn24;
	TcxGridDBBandedColumn *clmnIncident_Can_Delete;
	TcxGridDBBandedColumn *clmnIncident_Info_Source_Type;
	TcxGridDBBandedColumn *btvIncidentListColumn10;
	TcxGridDBBandedColumn *btvIncidentListColumn16;
	TcxGridDBBandedColumn *btvIncidentListColumn25;
	TcxGridDBBandedColumn *btvIncidentListColumn26;
	TcxGridDBBandedColumn *btvIncidentListColumn27;
	TcxGridDBBandedColumn *btvIncidentListColumn28;
	TcxGridDBBandedColumn *btvIncidentListColumn29;
	TcxGridDBBandedColumn *btvIncidentListColumn30;
	TcxGridDBBandedColumn *btvIncidentListColumn31;
	TcxGridDBBandedColumn *btvIncidentListColumn32;
	TcxGridDBBandedColumn *btvIncidentListColumn34;
	TcxGridDBBandedColumn *btvIncidentListColumn35;
	TcxGridDBBandedColumn *btvIncidentListColumn5;
	TcxGridDBBandedColumn *btvIncidentListColumn36;
	TcxGridDBBandedColumn *btvIncidentListColumn33;
	TcxGridDBBandedColumn *btvIncidentListColumn37;
	TcxGridDBBandedColumn *btvIncidentListColumn38;
	TcxGridDBBandedColumn *btvIncidentListColumn39;
	TcxGridDBBandedColumn *btvIncidentListColumn40;
	TcxGridDBBandedColumn *btvIncidentListColumn41;
	TcxGridDBBandedColumn *btvIncidentListColumn42;
	TcxGridDBBandedColumn *btvIncidentListColumn43;
	TcxGridDBBandedColumn *btvIncidentListColumn44;
	TcxGridLevel *lvlIncidentList;
	TcxGridDBBandedColumn *btvIncidentListColumn45;
	TdxBar *bmEditDepoEnterBar2;
	TdxBarStatic *dxBarStatic1;
	TcxBarEditItem *cxBarEditItem1;
	TdxBarStatic *dxBarStatic2;
	TdxBarStatic *dxBarStatic3;
	TdxBarStatic *dxBarStatic4;
	TdxBarStatic *dxBarStatic5;
	TdxBarStatic *dxBarStatic6;
	TdxBarStatic *dxBarStatic7;
	TdxBarStatic *dxBarStatic8;
	TdxBarStatic *dxBarStatic9;
	TdxBarStatic *dxBarStatic10;
	TcxGridDBBandedColumn *btvIncidentListColumn46;
	void __fastcall aLoadIncidentListExecute(TObject *Sender);
	void __fastcall aLoadFrameExecute(TObject *Sender);
	void __fastcall aDetailExecute(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall aCloseDepoEnterExecute(TObject *Sender);
	void __fastcall aAddWorkExecute(TObject *Sender);
	void __fastcall aEditWorkExecute(TObject *Sender);
	void __fastcall aDeleteWorkExecute(TObject *Sender);
	void __fastcall aAddAttachExecute(TObject *Sender);
	void __fastcall aEditAttachExecute(TObject *Sender);
	void __fastcall aDeleteAttachExecute(TObject *Sender);
	void __fastcall aLoadAttachExecute(TObject *Sender);
	void __fastcall aLoadMalfunctListExecute(TObject *Sender);
	void __fastcall aIncidentListAddExecute(TObject *Sender);
	void __fastcall aIncidentListDelExecute(TObject *Sender);
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall rwLocNameEditPropertiesButtonClick(TObject *Sender, int AButtonIndex);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aEditExecute(TObject *Sender);
	void __fastcall aLoadRunningExecute(TObject *Sender);
	void __fastcall aSetActionExecute(TObject *Sender);
	void __fastcall btvIncidentListDblClick(TObject *Sender);


private:
	StrctDepoEnter* ep_;
	void __fastcall SearchLoc(int kod_ser, int nom_loc);
public:
	__fastcall TfrmEdit_DepoEnter(TComponent* Owner);
	TModalResult __fastcall Show(StrctDepoEnter* ep);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEdit_DepoEnter *frmEdit_DepoEnter;
//---------------------------------------------------------------------------
#endif
