//---------------------------------------------------------------------------

#ifndef USearchLocH
#define USearchLocH
//---------------------------------------------------------------------------
#include "cxButtons.hpp"
#include "cxClasses.hpp"
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGraphics.hpp"
#include "cxGrid.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBBandedTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxLabel.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxMaskEdit.hpp"
#include "cxSpinEdit.hpp"
#include "cxStyles.hpp"
#include "cxTextEdit.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinscxPCPainter.hpp"
#include <ActnList.hpp>
#include <Classes.hpp>
#include <Controls.hpp>
#include <DB.hpp>
#include <ExtCtrls.hpp>
#include <Menus.hpp>
#include <StdCtrls.hpp>
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include <DBClient.hpp>
#include "cxNavigator.hpp"
#include <System.Actions.hpp>
//---------------------------------------------------------------------------

struct StrctSearchLoc_New
{
    double				id_object;
    int					KodSer;
	AnsiString			SerName;
    int					NomLoc;
    int					NomSec; // индекс секции
    AnsiString			NomTPE;
    AnsiString			LocName;
    int					KodTjaga;
    int					KodDepo;
    int					RepairBaseFirmID;
    AnsiString			RepairBaseFirmName;
    int					ServiceFirmID;
    AnsiString			ServiceFirmNameFull;
    int					KodDepartment;
    //AnsiString			ServiceFirmName;
    //int					WarrantyStateID;
    //AnsiString			WarrantyStateName;
    AnsiString			DepoName;
    //AnsiString			NomDepo;
    int					NSec;
};

class TfrmSearchLoc : public TForm
{
__published:
	TActionList *ActionList1;
	TAction *aSearch;
	TcxGrid *grdSearchLoc;
	TcxGridDBBandedTableView *btvSearchLoc;
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
	TcxGridLevel *lvlSearchLoc;
	TPanel *Panel1;
	TcxLabel *cxLabel8;
	TcxButton *cxButton1;
	TcxGridDBBandedColumn *btvSearchLocColumn1;
	TcxGridDBBandedColumn *btvSearchLocColumn2;
	TcxGridDBBandedColumn *btvSearchLocColumn3;
	TcxGridDBBandedColumn *btvSearchLocColumn4;
	TcxGridDBBandedColumn *btvSearchLocColumn5;
	TAction *aSelect;
	TPanel *Panel2;
	TcxButton *cxButton2;
	TcxSpinEdit *eNumLoc;
	TcxGridDBBandedColumn *clmnServiceFirmID;
	TcxGridDBBandedColumn *btvSearchLocColumn6;
	TcxGridDBBandedColumn *btvSearchLocColumn7;
	TcxGridDBBandedColumn *btvSearchLocColumn8;
	TClientDataSet *cdsLoc;
	TDataSource *dsLoc;
	TcxGridDBBandedColumn *btvSearchLocColumn9;
	TcxGridDBBandedColumn *btvSearchLocColumn10;
	void __fastcall FormShow(TObject *Sender);
	void __fastcall aSelectExecute(TObject *Sender);
	void __fastcall aSearchExecute(TObject *Sender);
	void __fastcall eNumLocKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall btvSearchLocCustomDrawCell(TcxCustomGridTableView *Sender, TcxCanvas *ACanvas,
          TcxGridTableDataCellViewInfo *AViewInfo, bool &ADone);
	void __fastcall btvSearchLocColumn8CompareRowValuesForCellMerging(TcxGridColumn *Sender,
          TcxGridDataRow *ARow1, TcxCustomEditProperties *AProperties1,
          const Variant &AValue1, TcxGridDataRow *ARow2,
          TcxCustomEditProperties *AProperties2, const Variant &AValue2,
          bool &AAreEqual);
private:
	StrctSearchLoc_New* ep_;
    //config cfg;
public:
	__fastcall TfrmSearchLoc(TComponent* Owner);
    TModalResult __fastcall Show( StrctSearchLoc_New* ep );
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmSearchLoc *frmSearchLoc;
//---------------------------------------------------------------------------
#endif
