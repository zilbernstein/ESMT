//---------------------------------------------------------------------------

#ifndef UResponsTreeH
#define UResponsTreeH
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
#include "cxDBLookupComboBox.hpp"
#include "cxDBLookupEdit.hpp"
#include "cxDropDownEdit.hpp"
#include "cxLookupEdit.hpp"
#include "cxTextEdit.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include <System.Actions.hpp>

//---------------------------------------------------------------------------
struct StrctResponsTree
{
    int					PredID;    		// ID подразделения
    int					ParentPredID;	// ID службы
    int					RoadKod;		// дорога виновной службы
	AnsiString			PredName;		// наименование подразделения
    AnsiString			ParentPredName;	// наименование службы
    AnsiString			CommandText;	// имя процедуры
    int					AccLevel;
};
//---------------------------------------------------------------------------
class TfrmResponsTree : public TForm
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
	TcxDBTreeListColumn *clmnCategory;
	TAction *aCancel;
	TcxDBTreeListColumn *clmnCategoryAdd;
	TPanel *Panel1;
	TcxLookupComboBox *cbRoad;
	void __fastcall aSelectExecute(TObject *Sender);
	void __fastcall aRefreshExecute(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);

private:
	StrctResponsTree* ep_;
public:
    TModalResult __fastcall Show( StrctResponsTree* ep );
	__fastcall TfrmResponsTree(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmResponsTree *frmResponsTree;
//---------------------------------------------------------------------------
#endif
