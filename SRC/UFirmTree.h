//---------------------------------------------------------------------------

#ifndef UFirmTreeH
#define UFirmTreeH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "cxButtons.hpp"
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxDBTL.hpp"
#include "cxGraphics.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxMaskEdit.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxTLData.hpp"
#include "dxSkinsCore.hpp"
#include <ActnList.hpp>
#include <ExtCtrls.hpp>
#include <Menus.hpp>
#include "cxClasses.hpp"
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
#include "dxSkinscxPCPainter.hpp"
#include <DB.hpp>
#include "cxContainer.hpp"
#include "cxTextEdit.hpp"
#include "cxLabel.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include "cxNavigator.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include <System.Actions.hpp>

//---------------------------------------------------------------------------
//enum enumTypeTree { TT_FullTree, TT_Pereg, TT_Station, TT_Depot, TT_PTOL };
const int TT_FullTree = 0;
const int TT_TCHR = 1;
const int TT_TMHFilial = 2;
const int TT_Branch = 3; // Службы КАСАНТ
// Остальные типы классификаторов предприятий - как в НСИ типов мест инцидента
const int TT_Pereg = 43;
const int TT_Station = 44;
const int TT_Depot = 45;
const int TT_PTOL = 46;
//---------------------------------------------------------------------------
struct StrctFirmTree
{
    int					TypeTree;
    bool				AllowParent;

    int					PredID;
    int					ParentPredID;
	AnsiString			PredName;
    AnsiString			ParentPredName;

    AnsiString			CommandText;
    AnsiString			ParentFieldName;
    AnsiString			KeyFieldName;
    AnsiString			ListFieldName;
    AnsiString			CategoryFieldName;  // по сути - parent_field_field_name

    AnsiString			CategoryAddFieldName;
    int					AccLevel;
};
//---------------------------------------------------------------------------
class TfrmFirmTree : public TForm
{
__published:
	TPanel *Panel6;
	TcxButton *cxButton9;
	TcxButton *cxButton10;
	TActionList *ActionList1;
	TcxDBTreeList *tlFirmTree;
	TcxDBTreeListColumn *clmnName;
	TAction *aSelect;
	TAction *aRefresh;
	TcxGridDBTableView *btvFirmTree;
	TcxGridLevel *grdFirmTreeLevel1;
	TcxGrid *grdFirmTree;
	TcxDBTreeListColumn *clmnCategory;
	TcxGridDBColumn *clmnGrdName;
	TcxGridDBColumn *clmnGrdCategory;
	TAction *aCancel;
	TcxGridDBColumn *clmnGrdCategoryAdd;
	TcxDBTreeListColumn *clmnCategoryAdd;
	TPanel *Panel1;
	TcxTextEdit *teFilter;
	TcxLabel *cxLabel1;
	void __fastcall aSelectExecute(TObject *Sender);
	void __fastcall aRefreshExecute(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall btvFirmTreeTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems0GetText(TcxDataSummaryItem *Sender,
          const Variant &AValue, bool AIsFooter, UnicodeString &AText);
	void __fastcall tlFirmTreeDblClick(TObject *Sender);
	void __fastcall teFilterPropertiesChange(TObject *Sender);


private:
	StrctFirmTree* ep_;
public:
    TModalResult __fastcall Show( StrctFirmTree* ep );
	__fastcall TfrmFirmTree(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmFirmTree *frmFirmTree;
//---------------------------------------------------------------------------
#endif
