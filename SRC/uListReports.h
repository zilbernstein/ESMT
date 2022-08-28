//---------------------------------------------------------------------------

#ifndef uListReportsH
#define uListReportsH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Forms.hpp>
#include <Vcl.Forms.hpp>
#include "cxBarEditItem.hpp"
#include "cxClasses.hpp"
#include "cxGraphics.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxImageComboBox.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "dxBar.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include "frxClass.hpp"
#include "frxDBSet.hpp"
#include "frxExportHTML.hpp"
#include "frxExportPDF.hpp"
#include "frxExportRTF.hpp"
#include "frxExportXLS.hpp"
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.ExtCtrls.hpp>
#include "cxButtons.hpp"
#include "cxCalendar.hpp"
#include "cxCheckBox.hpp"
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDateUtils.hpp"
#include "cxDBData.hpp"
#include "cxDBLookupComboBox.hpp"
#include "cxDBLookupEdit.hpp"
#include "cxDropDownEdit.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGrid.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxLabel.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxLookupEdit.hpp"
#include "cxMaskEdit.hpp"
#include "cxNavigator.hpp"
#include "cxPC.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "cxTextEdit.hpp"
#include "dxCore.hpp"
#include "dxdbtrel.hpp"
#include "dxSkinscxPCPainter.hpp"
#include "UfmePreview.h"
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Menus.hpp>
#include "cxProgressBar.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include "frxPreview.hpp"
#include "dxBarExtItems.hpp"
#include "cxSpinEdit.hpp"
#include "frxExportBIFF.hpp"
#include <Bde.DBTables.hpp>
#include <Data.Win.ADODB.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.DApt.Intf.hpp>
#include <FireDAC.DatS.hpp>
#include <FireDAC.Phys.Intf.hpp>
#include <FireDAC.Stan.Error.hpp>
#include <FireDAC.Stan.Intf.hpp>
#include <FireDAC.Stan.Option.hpp>
#include <FireDAC.Stan.Param.hpp>



struct RecordParamDoc
{
	int Size;             // Количество записей. Только для документа под номером 5
	int *NumLR;           // Массив "№ ЛР"
	int NumDoc;           // Номер документа
	double    loc_id;     //Индефикатор локомотива
	TDateTime dStart;     //Начальное значение периода даты
	TDateTime dFinish;    //Конечное значение периода даты

	/* Ежедневная справка */
	AnsiString List_Firm_Id;
    AnsiString FirmName;
	AnsiString List_Depo_Id;
	AnsiString List_Ser_Kod;
	AnsiString List_Ser_Nam;
    AnsiString List_Id_Sheet;

	/* Общая справка */
};

//---------------------------------------------------------------------------
class TfrmListReports : public TForm
{
__published:	// IDE-managed Components
	TfrxReport *FrxRprtDoc1;
	TfrxReport *FrxRprtDoc3;
	TfrxReport *FrxRprtDoc4;
	TfrxReport *FrxRprtDoc2;
	TdxBarManager *bmMainDoc;
	TdxBar *bmCallingControlBar1;
	TcxBarEditItem *cbbDocuments;
	TdxBarGroup *dxBarGroup1;
	TdxStatusBar *stsCommon;
	TdxStatusBarContainerControl *stsCommonContainer1;
	TcxProgressBar *prgsMain;
	TActionList *alReports;
	TActionList *alMain;
	TAction *aFrmngDoc;
	TAction *ALoadInfo;
	TAction *aClosePR;
	TfrxReport *frxReport;
	TdxBar *bmMainDocBar1;
	TdxBarLargeButton *btnExport;
	TdxBarPopupMenu *bppMain;
	TdxBarButton *btnExportToPDF;
	TdxBarButton *btnExportToXLS;
	TdxBarButton *btnExportToRTF;
	TdxBarButton *btnExportToHTML;
	TcxPageControl *pcMain;
	TcxTabSheet *tsReportPreview;
	TcxTabSheet *tsReportMain;
	TdxBarLargeButton *btnPrint;
	TdxBarLargeButton *btnPageFirst;
	TdxBarLargeButton *btnEarly;
	TdxBarControlContainerItem *dxBarControlContainerItem1;
	TdxBarLargeButton *btnNext;
	TdxBarLargeButton *btnPageLast;
	TdxBarControlContainerItem *dxBarControlContainerItem2;
	TdxBarLargeButton *btnExit;
	TPanel *pnlScale;
	TcxLabel *cxLabel2;
	TcxImageComboBox *cbScale;
	TPanel *pnlNumPage;
	TcxLabel *cxLabel1;
	TcxSpinEdit *spnNumPage;
	TAction *aPrint;
	TAction *aScale;
	TSaveDialog *SaveDlg;
	TAction *aExportToXLS;
	TAction *aExportToPDF;
	TAction *aExportToRTF;
	TAction *aExportToHTML;
	TAction *aFirstPage;
	TAction *aEarlyPage;
	TAction *aNextPage;
	TAction *aLastPage;
	TAction *aGoToPage;
	TPanel *Panel1;
	TfrxPreview *frxPreviewDoc;
	TAction *aLoadInfoDoc1;
	TAction *aLoadInfoDoc2;
	TAction *aLoadInfoDoc3;
	TAction *aLoadInfoDoc4;
	TAction *aLoadInfoDoc5;
	TfrxPDFExport *frxPDFExp;
	TfrxBIFFExport *frxXLSExp;
	TfrxRTFExport *frxRTFExp;
	TfrxHTMLExport *frxHTMLExp;
	TClientDataSet *cdsLoadInfo;
	TDataSource *dsLoadInfo;
	TfrxDBDataset *frxDataset;
	TfrxReport *FrxRprtDoc5;
	TFDMemTable *tmpTable;
	TDataSource *tmpData;
	TStringField *tmpTablesheet_id;
	TStringField *tmpTabledate_create;
	TStringField *tmpTableincident_descr_e;
	TStringField *tmpTablesource_type_name;
	TStringField *tmpTableser_name;
	TStringField *tmpTablenom_loc;
	TStringField *tmpTablebrig_name;
	TStringField *tmpTablebrig_t_nom;
	TStringField *tmpTablebrig_depo_name;
	TStringField *tmpTabledescr1;
	TStringField *tmpTablefail_place_name;
	TStringField *tmpTablegp_diag;
	TStringField *tmpTableloc_prip_name;
	TfrxReport *FrxRprtDoc6;
	TfrxReport *FrxRprtDoc7;
	TAction *aLoadInfoDoc6;
	TAction *aLoadInfoDoc7;
	TAction *aLoadInfoDoc8;
	TfrxDBDataset *frxDS6;
	TAction *aIfNull;
	TfrxReport *FrxRprtDoc9;
	TfrxReport *FrxRprtDoc10;
	TAction *aLoadOverallReference;
	TAction *aLoadDailyReference;
	TfrxDBDataset *frxDS9;
	TfrxDBDataset *frxDS10;
	TfrxReport *FrxRprtDoc11;
	TfrxReport *FrxRprtDoc12;
	TfrxReport *FrxRprtDoc13;
	TAction *aLoadInfoDoc11;
	TAction *aLoadInfoDoc12;
	TAction *aLoadInfoDoc13;
	TfrxReport *FrxRprtDoc8;
	TFDMemTable *tmpTable8;
	TDataSource *tmpData8;
	TStringField *tmpTable8incident_descr_e;
	TStringField *tmpTable8reason_name_full;
	TStringField *tmpTable8descr_table_MPSU;
	TFDMemTable *tmpTable8_1;
	TDataSource *tmpData8_1;
	TStringField *tmpTable8_1date_fail;
	TStringField *tmpTable8_1reason_name_full;
	TStringField *tmpTable8_1oborud;
	TStringField *tmpTable8_1prin_meri;
	TStringField *tmpTable8_1descr_table;
	TfrxDBDataset *frxDS12;
	TfrxDBDataset *frxDS8_2;
	TFDMemTable *t8_2;
	TStringField *StringField1;
	TStringField *StringField2;
	TStringField *StringField3;
	TStringField *StringField4;
	TStringField *StringField5;
	TDataSource *ds_8_2;
	TDataSource *ds_8_3;
	TFDMemTable *t8_3;
	TStringField *StringField6;
	TStringField *StringField7;
	TStringField *StringField8;
	TStringField *StringField9;
	TStringField *StringField10;
	TfrxDBDataset *frxDS8_3;
	TfrxDBDataset *frxDS8_1;
	TFDMemTable *t8_1;
	TStringField *StringField11;
	TStringField *StringField12;
	TStringField *StringField13;
	TStringField *StringField14;
	TStringField *StringField15;
	TDataSource *ds_8_1;
	TDataSource *ds_8_4;
	TfrxDBDataset *frxDS8_4;
	TFDMemTable *t8_4;
	TStringField *StringField21;
	TStringField *StringField22;
	TStringField *t8_4descr_table;
	TfrxDBDataset *frxDS13_1;
	TFDMemTable *t13_1;
	TDataSource *ds13_1;
	TStringField *t13_1obstoyat_inc;
	TfrxDBDataset *frxDS13_2;
	TFDMemTable *t13_2;
	TStringField *StringField17;
	TStringField *StringField18;
	TDataSource *ds13_2;
	TStringField *t13_1class_name;
	TfrxDBDataset *frxDS13_3;
	TFDMemTable *t13_3;
	TStringField *StringField16;
	TDataSource *ds13_3;
	TfrxReport *FrxRprtDoc13tt;
	void __fastcall aClosePRExecute(TObject *Sender);
	void __fastcall FormActivate(TObject *Sender);
	void __fastcall aPrintExecute(TObject *Sender);
	void __fastcall aScaleExecute(TObject *Sender);
	void __fastcall aExportToXLSExecute(TObject *Sender);
	void __fastcall aExportToPDFExecute(TObject *Sender);
	void __fastcall aExportToRTFExecute(TObject *Sender);
	void __fastcall aExportToHTMLExecute(TObject *Sender);
	void __fastcall aFirstPageExecute(TObject *Sender);
	void __fastcall aEarlyPageExecute(TObject *Sender);
	void __fastcall aNextPageExecute(TObject *Sender);
	void __fastcall aLastPageExecute(TObject *Sender);
	void __fastcall frxPreviewDocPageChanged(TfrxPreview *Sender, int PageNo);
	void __fastcall frxPreviewDocClick(TObject *Sender);
	void __fastcall FormMouseWheel(TObject *Sender, TShiftState Shift, int WheelDelta,
          TPoint &MousePos, bool &Handled);
	void __fastcall spnNumPageKeyPress(TObject *Sender, System::WideChar &Key);
	void __fastcall aGoToPageExecute(TObject *Sender);
	void __fastcall aLoadInfoDoc1Execute(TObject *Sender);
	void __fastcall aLoadInfoDoc2Execute(TObject *Sender);
	void __fastcall aLoadInfoDoc3Execute(TObject *Sender);
	void __fastcall aLoadInfoDoc4Execute(TObject *Sender);
	void __fastcall aLoadInfoDoc5Execute(TObject *Sender);
	void __fastcall aLoadInfoDoc6Execute(TObject *Sender);
	void __fastcall aLoadInfoDoc7Execute(TObject *Sender);
	void __fastcall aLoadInfoDoc8Execute(TObject *Sender);
	void __fastcall aLoadOverallReferenceExecute(TObject *Sender);
	void __fastcall aLoadDailyReferenceExecute(TObject *Sender);
	void __fastcall aLoadInfoDoc11Execute(TObject *Sender);
	void __fastcall aLoadInfoDoc12Execute(TObject *Sender);
	void __fastcall aLoadInfoDoc13Execute(TObject *Sender);



private:	// User declarations
	void PrvFrx();
	RecordParamDoc* pDoc_;
	void __fastcall TableInsert(TFDMemTable* tb, AnsiString Param, AnsiString Value);

	void __fastcall InsertT8_1_2_3(TFDMemTable* tb, TClientDataSet* Tcds);
	void __fastcall InsertT8_4(TFDMemTable* tb, TClientDataSet* Tcds);

public:		// User declarations
	__fastcall TfrmListReports(TComponent* Owner);
	TModalResult __fastcall Show( RecordParamDoc* Param );
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmListReports *frmListReports;
//---------------------------------------------------------------------------
#endif
