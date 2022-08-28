//---------------------------------------------------------------------------

#ifndef UEdit_IncidentRelationH
#define UEdit_IncidentRelationH
#include "cxButtons.hpp"
#include "cxCheckBox.hpp"
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGraphics.hpp"
#include "cxGrid.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxStyles.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinscxPCPainter.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <ActnList.hpp>
#include <Classes.hpp>
#include <Controls.hpp>
#include <DB.hpp>
#include <ExtCtrls.hpp>
#include <Menus.hpp>
#include <StdCtrls.hpp>
#include <DBClient.hpp>
#include "cxGridBandedTableView.hpp"
#include "cxGridDBBandedTableView.hpp"
#include "cxImageComboBox.hpp"
#include "cxTextEdit.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include <System.Actions.hpp>
#include "cxNavigator.hpp"

//---------------------------------------------------------------------------
enum relation_type_type { RT_ADD_CHILD, RT_ADD_PARENT };
struct Strct_Relation
{
    int	sheet_id;
    int parent_sheet_id;
    relation_type_type relation_type;
};
//---------------------------------------------------------------------------
class TfrmIncident_Relation : public TForm
{
__published:
	TTimer *tmr;
	TActionList *alRelation;
	TAction *aSave;
	TAction *aCancel;
	TPanel *Panel6;
	TcxButton *cxButton9;
	TcxButton *cxButton10;
	TAction *aLoadIncident;
	TdxStatusBar *dxStatusBar1;
	TDataSource *dsRelationIncident;
	TClientDataSet *cdsRelationIncident;
	TcxGrid *grd;
	TcxGridDBBandedTableView *btvRelation;
	TcxGridDBBandedColumn *clmnSheetID;
	TcxGridDBBandedColumn *btvRelationColumn2;
	TcxGridDBBandedColumn *btvRelationColumn6;
	TcxGridDBBandedColumn *btvRelationColumn7;
	TcxGridDBBandedColumn *btvRelationColumn8;
	TcxGridDBBandedColumn *clmnIncident_StateName;
	TcxGridDBBandedColumn *btvRelationColumn11;
	TcxGridDBBandedColumn *btvRelationColumn12;
	TcxGridDBBandedColumn *btvRelationColumn14;
	TcxGridDBBandedColumn *btvRelationColumn15;
	TcxGridDBBandedColumn *btvRelationColumn22;
	TcxGridDBBandedColumn *clmnIncident_Create_Mode;
	TcxGridDBBandedColumn *btvRelationColumn23;
	TcxGridDBBandedColumn *clmnStateID;
	TcxGridDBBandedColumn *clmnIncident_Can_Delete;
	TcxGridDBBandedColumn *clmnIncident_Info_Source_Type;
	TcxGridDBBandedTableView *cxGridDBBandedTableView9;
	TcxGridDBBandedColumn *cxGridDBBandedColumn181;
	TcxGridDBBandedColumn *cxGridDBBandedColumn182;
	TcxGridDBBandedColumn *cxGridDBBandedColumn183;
	TcxGridDBBandedColumn *cxGridDBBandedColumn184;
	TcxGridDBBandedColumn *cxGridDBBandedColumn185;
	TcxGridDBBandedColumn *cxGridDBBandedColumn186;
	TcxGridDBBandedColumn *cxGridDBBandedColumn187;
	TcxGridDBBandedColumn *cxGridDBBandedColumn188;
	TcxGridDBBandedColumn *cxGridDBBandedColumn189;
	TcxGridDBBandedColumn *cxGridDBBandedColumn190;
	TcxGridDBBandedColumn *cxGridDBBandedColumn191;
	TcxGridDBBandedColumn *cxGridDBBandedColumn192;
	TcxGridDBBandedColumn *cxGridDBBandedColumn193;
	TcxGridDBBandedColumn *cxGridDBBandedColumn194;
	TcxGridDBBandedColumn *cxGridDBBandedColumn195;
	TcxGridDBBandedColumn *cxGridDBBandedColumn196;
	TcxGridDBBandedColumn *cxGridDBBandedColumn197;
	TcxGridDBBandedColumn *cxGridDBBandedColumn198;
	TcxGridDBBandedColumn *cxGridDBBandedColumn199;
	TcxGridDBBandedColumn *cxGridDBBandedColumn200;
	TcxGridDBBandedColumn *cxGridDBBandedColumn201;
	TcxGridDBBandedColumn *cxGridDBBandedColumn202;
	TcxGridDBBandedColumn *cxGridDBBandedColumn203;
	TcxGridDBBandedColumn *cxGridDBBandedColumn204;
	TcxGridDBBandedColumn *cxGridDBBandedColumn205;
	TcxGridDBBandedColumn *cxGridDBBandedColumn206;
	TcxGridDBBandedColumn *cxGridDBBandedColumn207;
	TcxGridDBBandedColumn *cxGridDBBandedColumn208;
	TcxGridDBBandedTableView *cxGridDBBandedTableView10;
	TcxGridDBBandedColumn *cxGridDBBandedColumn209;
	TcxGridDBBandedColumn *cxGridDBBandedColumn210;
	TcxGridDBBandedColumn *cxGridDBBandedColumn211;
	TcxGridDBBandedColumn *cxGridDBBandedColumn212;
	TcxGridDBBandedColumn *cxGridDBBandedColumn213;
	TcxGridDBBandedColumn *cxGridDBBandedColumn214;
	TcxGridDBBandedColumn *cxGridDBBandedColumn215;
	TcxGridDBBandedColumn *cxGridDBBandedColumn216;
	TcxGridDBBandedColumn *cxGridDBBandedColumn217;
	TcxGridDBBandedColumn *cxGridDBBandedColumn218;
	TcxGridDBBandedColumn *cxGridDBBandedColumn219;
	TcxGridDBBandedColumn *cxGridDBBandedColumn220;
	TcxGridDBBandedColumn *cxGridDBBandedColumn221;
	TcxGridDBBandedColumn *cxGridDBBandedColumn222;
	TcxGridDBBandedColumn *cxGridDBBandedColumn223;
	TcxGridDBBandedColumn *cxGridDBBandedColumn224;
	TcxGridDBBandedColumn *cxGridDBBandedColumn225;
	TcxGridDBBandedColumn *cxGridDBBandedColumn226;
	TcxGridDBBandedColumn *cxGridDBBandedColumn227;
	TcxGridDBBandedColumn *cxGridDBBandedColumn228;
	TcxGridDBBandedColumn *cxGridDBBandedColumn229;
	TcxGridDBBandedColumn *cxGridDBBandedColumn230;
	TcxGridLevel *lvl;
	TcxGridDBBandedColumn *clmnCheck;
	void __fastcall aLoadIncidentExecute(TObject *Sender);
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall FormKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall btvRelationColumn2GetDisplayText(TcxCustomGridTableItem *Sender,
          TcxCustomGridRecord *ARecord, UnicodeString &AText);
	void __fastcall clmnCheckPropertiesEditValueChanged(TObject *Sender);

private:
	Strct_Relation* r_;
public:
	TModalResult __fastcall Show( Strct_Relation* r );
	__fastcall TfrmIncident_Relation(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmIncident_Relation *frmIncident_Relation;
//---------------------------------------------------------------------------
#endif
