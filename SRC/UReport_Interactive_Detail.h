//---------------------------------------------------------------------------

#ifndef UReport_Interactive_DetailH
#define UReport_Interactive_DetailH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
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
#include "cxGridBandedTableView.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBBandedTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxImageComboBox.hpp"
#include "cxStyles.hpp"
#include "cxTextEdit.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinscxPCPainter.hpp"
#include <DB.hpp>
#include <DBClient.hpp>
#include "cxButtons.hpp"
#include "cxLookAndFeelPainters.hpp"
#include <ExtCtrls.hpp>
#include <Menus.hpp>
#include <Dialogs.hpp>
#include "cxGridExportLink.hpp"
#include <stdio.h>
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include "cxNavigator.hpp"
//---------------------------------------------------------------------------
struct strctRID
{
    TDateTime date_begin;
    TDateTime date_finish;
    int kod_firm_service;
    int kod_firm_department;
    int kod_depo;
    int system_id;
    int reason_id;
    int kod_tjaga;
    AnsiString filename;
    int detail_type;
    int filter_value_id;
};

enum DetailTypes { DT_DEPO_EQ, DT_DEPARTMENT_REASON, DT_NR_AUTO, DT_STATE, DT_SOURCE_TYPE, DT_SERIA };

class TfrmReport_Interactive_Detail : public TForm
{
__published:
	TcxGrid *grdIncident;
	TcxGridDBBandedTableView *btvReportDetail;
	TcxGridDBBandedColumn *btvReportDetailColumn1;
	TcxGridDBBandedColumn *btvReportDetailColumn2;
	TcxGridDBBandedColumn *btvReportDetailColumn3;
	TcxGridDBBandedColumn *btvReportDetailColumn6;
	TcxGridDBBandedColumn *btvReportDetailColumn9;
	TcxGridDBBandedColumn *clmnIncident_StateName;
	TcxGridDBBandedColumn *btvReportDetailColumn14;
	TcxGridDBBandedColumn *btvReportDetailColumn15;
	TcxGridDBBandedColumn *clmnIncident_Create_Mode;
	TcxGridDBBandedColumn *btvReportDetailColumn23;
	TcxGridDBBandedColumn *clmnStateID;
	TcxGridDBBandedColumn *btvReportDetailColumn4;
	TcxGridDBBandedColumn *btvReportDetailColumn24;
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
	TcxGridLevel *lvlIncident;
	TcxGridDBBandedColumn *btvReportDetailColumn5;
	TDataSource *dsDetail;
	TClientDataSet *cdsDetail;
	TPanel *Panel6;
	TcxButton *cxButton9;
	TcxButton *cxButton1;
	TSaveDialog *dlgSave;
	TcxGridDBBandedColumn *btvReportDetailColumn7;
	TcxGridDBBandedColumn *btvReportDetailColumn8;
	TcxGridDBBandedColumn *btvReportDetailColumn10;
	TcxGridDBBandedColumn *clmn_repeatable;
	TdxStatusBar *StatusBar;
	void __fastcall cxButton9Click(TObject *Sender);
	void __fastcall cxButton1Click(TObject *Sender);
	void __fastcall btvReportDetailCustomDrawCell(TcxCustomGridTableView *Sender, TcxCanvas *ACanvas,
          TcxGridTableDataCellViewInfo *AViewInfo, bool &ADone);
	void __fastcall btvReportDetailColumn2GetDisplayText(TcxCustomGridTableItem *Sender,
          TcxCustomGridRecord *ARecord, UnicodeString &AText);

private:
	config	cfg;
    strctRID *rid_;
public:
	__fastcall TfrmReport_Interactive_Detail(TComponent* Owner);
    TModalResult __fastcall Show( strctRID* rid );
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmReport_Interactive_Detail *frmReport_Interactive_Detail;
//---------------------------------------------------------------------------
#endif
