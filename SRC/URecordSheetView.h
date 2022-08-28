//---------------------------------------------------------------------------

#ifndef URecordSheetViewH
#define URecordSheetViewH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "cxButtons.hpp"
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxGroupBox.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxPC.hpp"
#include "dxSkinCaramel.hpp"
#include <ActnList.hpp>
#include <ImgList.hpp>
#include <Menus.hpp>
#include <ExtCtrls.hpp>
#include "cxCustomData.hpp"
#include "cxDBTL.hpp"
#include "cxImageComboBox.hpp"
#include "cxInplaceContainer.hpp"
#include "cxMaskEdit.hpp"
#include "cxMemo.hpp"
#include "cxStyles.hpp"
#include "cxTextEdit.hpp"
#include "cxTL.hpp"
#include "cxTLData.hpp"
#include <DB.hpp>
#include <DBClient.hpp>
#include "cxClasses.hpp"
#include "cxDBExtLookupComboBox.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxVGrid.hpp"
#include "cxButtonEdit.hpp"
#include "cxDropDownEdit.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include "cxDBVGrid.hpp"
#include "cxDBLookupComboBox.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinscxPCPainter.hpp"
#include <System.Actions.hpp>
//---------------------------------------------------------------------------
struct StrctRecordSheetView
{
    int sheet_id;
    // Анализ
    int class_id;
    int system_id;
    int unit_id;
    int fail_id;
    int agg_type_id;
    int reason_id;
    int responsible_id;
};
//---------------------------------------------------------------------------
class TfrmRecordSheetView : public TForm
{
__published:	// IDE-managed Components
	TcxImageList *iml;
	TcxPageControl *pcRecordSheetView;
	TActionList *al;
	TAction *aClose;
	TcxTabSheet *cxTabSheet1;
	TcxTabSheet *tsWork;
	TTimer *tmr;
	TClientDataSet *cdsWork;
	TDataSource *dsWork;
	TAction *aLoad_Work;
	TPanel *Panel1;
	TPanel *Panel2;
	TcxButton *cxButton1;
	TPanel *Panel3;
	TcxButton *cxButton2;
	TcxDBTreeList *tlWork;
	TcxDBTreeListColumn *cxDBTreeListColumn1;
	TcxDBTreeListColumn *cxDBTreeListColumn6;
	TcxDBTreeListColumn *clmnWork_DateBegin;
	TcxDBTreeListColumn *cxDBTreeListColumn32;
	TcxDBTreeListColumn *clmnWork_TeamID;
	TcxDBTreeListColumn *cxDBTreeListColumn34;
	TcxDBTreeListColumn *cxDBTreeList2cxDBTreeListColumn1;
	TcxTabSheet *tsAnalyses;
	TPanel *Panel4;
	TPanel *Panel5;
	TcxStyleRepository *stlrp;
	TcxStyle *stlBackground;
	TcxStyle *stlGroup;
	TcxStyle *stlContent;
	TcxStyle *stlHeader;
	TcxStyle *stlBandHeader;
	TcxStyle *stlContentProgress;
	TcxStyle *stlSmallFont7;
	TcxStyle *stlContent8;
	TcxStyle *stlSeriesElder;
	TcxStyle *stlHeaderBlack;
	TcxStyle *stlHotTrack;
	TcxStyle *stlLegendSmall;
	TcxStyle *stlLegendSmallBold;
	TcxStyle *stlLargeFont;
	TcxStyle *stlAttention;
	TcxStyle *stlLegend;
	TcxStyle *stlArial13;
	TcxStyle *stlCategory;
	TcxStyle *stlRowDisabled;
	TcxStyle *cxStyle1;
	TcxStyle *stlDeviationOver;
	TcxStyle *stlDeviationOverHeader;
	TcxStyle *stlSelection;
	TcxVerticalGridStyleSheet *stlshtVG;
	TcxGridBandedTableViewStyleSheet *stlshtBTV;
	TcxTreeListStyleSheet *stlshtTL;
	TcxVerticalGrid *vgAnalyses;
	TcxEditorRow *rwResponsible;
	TcxEditorRow *rwSystemTree;
	TcxEditorRow *rwReason;
	TcxEditorRow *rwEQ_Manufacturer;
	TAction *aFail_Select;
	TAction *aLoad_RSh;
	TClientDataSet *cdsRSh;
	TDataSource *dsRSh;
	TcxTabSheet *tsOthers;
	TAction *aLoad_NSI_SystemTree;
	TClientDataSet *cds_NSI_SystemTree;
	TDataSource *ds_NSI_SystemTree;
	TPanel *pnlSystemTree;
	TcxDBTreeList *tlSystemTree;
	TcxDBTreeListColumn *clmnName;
	TdxStatusBar *dxStatusBar2;
	TAction *aSelect_NSI_SystemTree;
	TdxStatusBar *dxStatusBar1;
	TPanel *pnlReasonTree;
	TcxDBTreeList *tlReasonTree;
	TcxDBTreeListColumn *clmn_NSI_ReasonName;
	TdxStatusBar *dxStatusBar3;
	TdxStatusBar *dxStatusBar4;
	TAction *aLoad_NSI_ReasonTree;
	TAction *aSelect_NSI_ReasonTree;
	TcxButton *cxButton3;
	TAction *aLoad_Analyzes;
	TDataSource *dsAnalyzes;
	TClientDataSet *cdsAnalyzes;
	TcxEditorRow *rwReason_Old;
	TcxEditorRow *rwAggType;
	TAction *aLoad_NSI_AggType;
	TClientDataSet *cds_NSI_AggType;
	TDataSource *ds_NSI_AggType;
	TAction *aAggType_SetFilter;
	TcxEditorRow *rwUnit;
	TcxEditorRow *rwFail;
	TcxEditorRow *rwSystem;
	TAction *aFill_NSI_System;
	TDataSource *ds_NSI_System;
	TClientDataSet *cds_NSI_System;
	TDataSource *ds_NSI_Unit;
	TClientDataSet *cds_NSI_Unit;
	TDataSource *ds_NSI_Fail;
	TClientDataSet *cds_NSI_Fail;
	TAction *aFill_NSI_Unit;
	TAction *aFill_NSI_Fail;
	TcxVerticalGrid *cxVerticalGrid2;
	TcxCategoryRow *cxCategoryRow4;
	TcxEditorRow *cxEditorRow17;
	TcxEditorRow *cxEditorRow18;
	TcxEditorRow *cxEditorRow19;
	TcxEditorRow *cxEditorRow20;
	TcxCategoryRow *cxCategoryRow5;
	TcxEditorRow *cxEditorRow21;
	TcxVerticalGrid *cxVerticalGrid3;
	TcxEditorRow *cxEditorRow23;
	TcxCategoryRow *cxCategoryRow6;
	TcxEditorRow *cxEditorRow26;
	TcxEditorRow *cxEditorRow27;
	TcxEditorRow *cxEditorRow28;
	TcxCategoryRow *cxCategoryRow7;
	TcxEditorRow *cxEditorRow29;
	TcxEditorRow *cxEditorRow30;
	TcxCategoryRow *cxCategoryRow8;
	TcxEditorRow *cxEditorRow31;
	TcxCategoryRow *cxCategoryRow9;
	TcxEditorRow *cxEditorRow32;
	TcxEditorRow *cxEditorRow33;
	TcxEditorRow *cxEditorRow34;
	TcxEditorRow *cxEditorRow35;
	TcxCategoryRow *cxCategoryRow10;
	TcxEditorRow *cxEditorRow36;
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aLoad_WorkExecute(TObject *Sender);
	void __fastcall aLoad_RShExecute(TObject *Sender);
	void __fastcall aLoad_NSI_SystemTreeExecute(TObject *Sender);
	void __fastcall aSelect_NSI_SystemTreeExecute(TObject *Sender);
	void __fastcall tlSystemTreeKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall aLoad_NSI_ReasonTreeExecute(TObject *Sender);
	void __fastcall aSelect_NSI_ReasonTreeExecute(TObject *Sender);
	void __fastcall tlReasonTreeKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall aLoad_AnalyzesExecute(TObject *Sender);
	void __fastcall aLoad_NSI_AggTypeExecute(TObject *Sender);
	void __fastcall aAggType_SetFilterExecute(TObject *Sender);
	void __fastcall rwReasonEditPropertiesInitPopup(TObject *Sender);
	void __fastcall vgAnalysesEditValueChanged(TObject *Sender, TcxCustomEditorRowProperties *ARowProperties);
	void __fastcall rwSystemTreeEditPropertiesInitPopup(TObject *Sender);
	void __fastcall aFill_NSI_SystemExecute(TObject *Sender);
	void __fastcall aFill_NSI_UnitExecute(TObject *Sender);
	void __fastcall rwSystemEditPropertiesChange(TObject *Sender);
	void __fastcall aFill_NSI_FailExecute(TObject *Sender);
	void __fastcall rwUnitEditPropertiesChange(TObject *Sender);
	void __fastcall tlSystemTreeGetNodeImageIndex(TcxCustomTreeList *Sender, TcxTreeListNode *ANode,
          TcxTreeListImageIndexType AIndexType, TImageIndex &AIndex);






private:	// User declarations
	StrctRecordSheetView* ep_;
public:		// User declarations
	__fastcall TfrmRecordSheetView(TComponent* Owner);
    TModalResult __fastcall Show( StrctRecordSheetView* ep );
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmRecordSheetView *frmRecordSheetView;
//---------------------------------------------------------------------------
#endif
