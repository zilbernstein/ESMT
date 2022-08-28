#ifndef UfmePreviewH
#define UfmePreviewH
#include "frxChart.hpp"
#include "frxClass.hpp"
#include "frxDBSet.hpp"
#include "frxDock.hpp"
#include "frxExportHTML.hpp"
#include "frxExportPDF.hpp"
#include "frxExportRTF.hpp"
#include "frxExportXLS.hpp"
#include "frxExportXML.hpp"
#include "frxPreview.hpp"
#include <ActnList.hpp>
#include <Classes.hpp>
#include <ComCtrls.hpp>
#include <Controls.hpp>
#include <Dialogs.hpp>
#include <ExtCtrls.hpp>
#include <ImgList.hpp>
#include <Mask.hpp>
#include <Menus.hpp>
#include <StdCtrls.hpp>
#include <ToolWin.hpp>
#include "cxClasses.hpp"
#include "cxGraphics.hpp"
#include "dxBar.hpp"
#include "cxBarEditItem.hpp"
#include "cxSpinEdit.hpp"
#include <Buttons.hpp>
#include "dxBarExtItems.hpp"
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxEdit.hpp"
#include "cxLabel.hpp"
#include "cxMaskEdit.hpp"
#include "cxTextEdit.hpp"
#include "cxDropDownEdit.hpp"
#include "cxImageComboBox.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include <System.Actions.hpp>


class TfmePreview : public TFrame
{
__published:
   TfrxXMLExport *frxXMLExp;
   TfrxPDFExport *frxPDFExp;
   TfrxRTFExport *frxRTFExp;
   TfrxHTMLExport *frxHTMLExp;
   TfrxXLSExport *frxXLSExp;
	TfrxDBDataset *frxDBNode;
   TOpenDialog *OpenDlg;
   TSaveDialog *SaveDlg;
	TActionList *alPreview;
	TAction *aPrint;
	TAction *aEnableActions;
	TAction *aSave;
	TAction *aShowTree;
	TAction *aFirstPage;
	TAction *aPrevPage;
	TAction *aNextPage;
	TAction *aLastPage;
	TAction *aOpen;
	TAction *aExport;
	TAction *aAfterExport;
	//TfrxChartObject *frxChartObject1;
	TAction *aStartPreview;
	TfrxReport *frxR;
	TdxBarManager *bmPreview;
	TdxBar *tbPreviewCommon;
	TdxBarGroup *dxBarGroup1;
	TdxBarGroup *dxBarGroup2;
	TcxImageList *imlSmall;
	TAction *aExit;
	TdxBarDockControl *bdcPreviewCommon;
	TAction *aGoToPage;
	TAction *aScale;
	TcxImageList *imlLarge;
	TdxBarLargeButton *dxBarLargeButton1;
	TdxBarLargeButton *dxBarLargeButton3;
	TActionList *alExport;
	TAction *aExportToXLS;
	TAction *aExportToPDF;
	TAction *aExportToHTML;
	TAction *aExportToRTF;
	TdxBarPopupMenu *pmExport;
	TdxBarButton *dxBarButton7;
	TdxBarButton *dxBarButton14;
	TdxBarButton *dxBarButton15;
	TdxBarButton *dxBarButton16;
	TdxBarLargeButton *bbtnExport;
	TdxBarLargeButton *bbtnTree;
	TdxBarLargeButton *dxBarLargeButton6;
	TdxBarLargeButton *dxBarLargeButton7;
	TdxBarLargeButton *dxBarLargeButton8;
	TdxBarLargeButton *dxBarLargeButton9;
	TdxBarLargeButton *dxBarLargeButton10;
	TdxBarLargeButton *bbtnExit;
	TPanel *Panel1;
	TPanel *pnlNumPage;
	TcxLabel *cxLabel1;
	TcxSpinEdit *spnNumPage;
	TdxBarControlContainerItem *dxBarControlContainerItem1;
	TPanel *pnlScale;
	TcxLabel *cxLabel2;
	TcxImageComboBox *cbScale;
	TdxBarControlContainerItem *dxBarControlContainerItem2;
	TPanel *Panel2;
	TfrxPreview *frxPreview;
   void __fastcall FrameMouseWheel(TObject *Sender, TShiftState Shift,
          int WheelDelta, TPoint &MousePos, bool &Handled);
   void __fastcall frxPreviewPageChanged(TfrxPreview *Sender, int PageNo);
	void __fastcall aPrintExecute(TObject *Sender);
	void __fastcall aEnableActionsExecute(TObject *Sender);
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall aShowTreeExecute(TObject *Sender);
	void __fastcall aFirstPageExecute(TObject *Sender);
	void __fastcall aPrevPageExecute(TObject *Sender);
	void __fastcall aNextPageExecute(TObject *Sender);
	void __fastcall aLastPageExecute(TObject *Sender);
	void __fastcall aOpenExecute(TObject *Sender);
	void __fastcall aExportExecute(TObject *Sender);
	void __fastcall aAfterExportExecute(TObject *Sender);
	void __fastcall frxPreviewClick(TObject *Sender);
	void __fastcall aStartPreviewExecute(TObject *Sender);
	void __fastcall aExportToXLSExecute(TObject *Sender);
	void __fastcall aExportToHTMLExecute(TObject *Sender);
	void __fastcall aExportToPDFExecute(TObject *Sender);
	void __fastcall aExportToRTFExecute(TObject *Sender);
	void __fastcall aExitExecute(TObject *Sender);
	void __fastcall aGoToPageExecute(TObject *Sender);
	void __fastcall aScaleExecute(TObject *Sender);
	void __fastcall spnNumPageKeyPress(TObject *Sender, char &Key);

private:

public:

	__fastcall TfmePreview(TComponent* Owner);
};
extern PACKAGE TfmePreview *fmePreview;
#endif
