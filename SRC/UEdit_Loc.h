//---------------------------------------------------------------------------

#ifndef UEdit_LocH
#define UEdit_LocH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "cxButtons.hpp"
#include "cxClasses.hpp"
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxImageComboBox.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxProgressBar.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include "dxSkinCaramel.hpp"
#include "dxStatusBar.hpp"
#include <ActnList.hpp>
#include <ExtCtrls.hpp>
#include <ImgList.hpp>
#include <Menus.hpp>
#include "cxDBLookupComboBox.hpp"
#include <DB.hpp>
#include <DBClient.hpp>
#include "cxCalendar.hpp"
#include "cxDBExtLookupComboBox.hpp"
#include "cxMemo.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include <System.Actions.hpp>
//--------------------------------------------------------------------------
struct Strct_EditLoc
{
    AnsiString	id_object_list;
    AnsiString	loc_name_list;
    int	kod_ser;
    int nom_loc;
	int nom_sec;
	int id_depo_name;
    //int kod_firm_department;
    int	kod_firm_repair;
    TDateTime	date_service_begin;
	TDateTime	date_service_finish;
    int			service_contract_id;
};
//---------------------------------------------------------------------------
class TfrmEdit_Loc : public TForm
{
__published:	// IDE-managed Components
	TTimer *tmr;
	TActionList *al;
	TAction *aCancel;
	TAction *aSave;
	TcxVerticalGrid *vg;
	TcxCategoryRow *ctgrwLocName;
	TcxEditorRow *rwFilial;
	TcxEditorRow *rwDepartment;
	TPanel *Panel5;
	TcxButton *cxButton6;
	TcxButton *cxButton7;
	TdxStatusBar *dxStatusBar1;
	TdxStatusBarContainerControl *dxStatusBar1Container2;
	TcxProgressBar *pbLoading;
	TcxEditorRow *rwTCHR;
	TcxEditorRow *rwDateServiceBegin;
	TcxEditorRow *rwDateServiceFinish;
	TcxEditorRow *rwServiceContract;
	TClientDataSet *cdsNSI_Contract;
	TDataSource *dsNSI_Contract;
	TcxEditorRow *rwSectionName;
	TAction *aFillContractList;
	TcxEditorRow *rwDepoName;
	TAction *aLoadDepo;
	TClientDataSet *cdsLoadDepo;
	TDataSource *dsLoadDepo;
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall aFillContractListExecute(TObject *Sender);
	void __fastcall aLoadDepoExecute(TObject *Sender);
private:	// User declarations
	Strct_EditLoc* te_;
public:		// User declarations
	__fastcall TfrmEdit_Loc(TComponent* Owner);
    TModalResult __fastcall Show( Strct_EditLoc* te );
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEdit_Loc *frmEdit_Loc;
//---------------------------------------------------------------------------
#endif
