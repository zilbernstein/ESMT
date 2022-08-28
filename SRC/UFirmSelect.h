//---------------------------------------------------------------------------

#ifndef UFirmSelectH
#define UFirmSelectH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "cxButtons.hpp"
#include "cxGraphics.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include <ActnList.hpp>
#include <ExtCtrls.hpp>
#include <ImgList.hpp>
#include <Menus.hpp>
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxEdit.hpp"
#include "cxGroupBox.hpp"
#include "cxRadioGroup.hpp"
#include "cxClasses.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxFilter.hpp"
#include "cxGrid.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxStyles.hpp"
#include "dxSkinscxPCPainter.hpp"
#include <DB.hpp>
#include "cxNavigator.hpp"
#include "dxSkinsCore.hpp"
#include <System.Actions.hpp>
//---------------------------------------------------------------------------
const int TT_Pereg_ = 43;
const int TT_Station_ = 44;
const int TT_Depot_ = 45;
const int TT_PTOL_ = 46;	// для ранее созданных
//---------------------------------------------------------------------------
struct StrctFirmTree_
{
    //int					TypeTree;
    //bool				AllowParent;

    int					PredID;
    //int					ParentPredID;
	AnsiString			PredName;
    bool				only_depot;
    int					fail_type_place;
    //AnsiString			ParentPredName;

    //AnsiString			CommandText;
    //AnsiString			ParentFieldName;
    //AnsiString			KeyFieldName;
    //AnsiString			ListFieldName;
    //AnsiString			CategoryFieldName;  // по сути - parent_field_field_name

    //AnsiString			CategoryAddFieldName;
    //int					AccLevel;
};
//---------------------------------------------------------------------------
class TfrmFirmSelect : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel6;
	TcxButton *cxButton9;
	TcxButton *cxButton10;
	TPanel *Panel1;
	TPanel *Panel2;
	TActionList *al;
	TAction *aCancel;
	TAction *aSelect;
	TcxRadioGroup *rgFirmGroup;
	TcxGrid *grdFirmTree;
	TcxGridDBTableView *btvFirmTree;
	TcxGridDBColumn *clmnGrdName;
	TcxGridDBColumn *clmnGrdCategory;
	TcxGridDBColumn *clmnGrdCategoryAdd;
	TcxGridLevel *grdFirmTreeLevel1;
	TcxGridDBColumn *clmnGrdPredID;
	TAction *aFirmGroupChange;
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall aSelectExecute(TObject *Sender);
	void __fastcall aFirmGroupChangeExecute(TObject *Sender);
private:
	StrctFirmTree_* ep_;
public:		// User declarations
	TModalResult __fastcall Show( StrctFirmTree_* ep );
	__fastcall TfrmFirmSelect(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmFirmSelect *frmFirmSelect;
//---------------------------------------------------------------------------
#endif
