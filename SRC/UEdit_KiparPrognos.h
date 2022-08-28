//---------------------------------------------------------------------------

#ifndef UEdit_KiparPrognosH
#define UEdit_KiparPrognosH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxButtons.hpp"
#include "cxControls.hpp"
#include "cxDBVGrid.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxPC.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "cxStyles.hpp"
#include "cxTextEdit.hpp"
#include "cxVGrid.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinscxPCPainter.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Menus.hpp>
#include <Vcl.ImgList.hpp>
#include "cxClasses.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxTL.hpp"
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include "cxButtonEdit.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxFilter.hpp"
#include "cxGrid.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBBandedTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxNavigator.hpp"
#include "cxMemo.hpp"
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include "cxGridDBTableView.hpp"
#include "cxContainer.hpp"
#include "cxDBEdit.hpp"
#include "cxDBTL.hpp"
#include "cxDropDownEdit.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGridExportLink.hpp"
//---------------------------------------------------------------------------

struct RecordKiparPrognos
{
	//=== �������� ������
	int        NSI;							//=== NSI
	AnsiString Sers_Lokmtv;					//=== ����� ����������
	AnsiString Numbr_Lokmtv;				//=== ����� ����������
	AnsiString Sectn_Lokmtv;				//=== ������ ����������
	AnsiString Branch;						//=== ������
	AnsiString SLD;							//=== ���
	AnsiString List_Incednt;				//=== � ��
	AnsiString Bs_Compn_SO;					//=== ������� �����������
	AnsiString FIO_Oprtr_Fastng_Dignstcs;	//=== ��� ��������� ����� �����������
	AnsiString Typ_Src;						//=== ��� ���������
	//=== ��������
	TDateTime  DtTm_Incdnt;					//=== ����/����� ���������
	TDateTime  DTTm_Digntcs_Fetr;			//=== ����/����� �����������
	AnsiString Circmstnc_Incdnt;			//=== �������������� ���������
	AnsiString Dept_Emrgnc;					//=== ���� �������������
	AnsiString Plc_Apprncs;					//=== ����� �������������
	AnsiString Messg;						//=== ���������
	AnsiString Critclnss;					//=== �����������
	AnsiString Catgr;						//=== ���������
	AnsiString Cas_Cll_In_Dept;				//=== ������� ������� ����
	AnsiString Node;						//=== ��������������� ����
	//
	int msu_type;
	int calc_isn;

//=== ���������� ���������
	//=== ����������� ����������� �������
	//=== ��������������� ��������
	//=== ������� ����������� ���� ������ �� �������� �� �������� ����
	//=== ������� ����������� ���� ������ �� �������� ��� ���������
	//=== �������� �������� ���������� �� ��������
	//=== ������������ ���� ���������
	//=== ���������� �������� ���������� �� ��������
	//=== ���������� ���������������� ����������
	//=== ��� �������� ���������� �� ��������
	//=== ��� ������� ����������� �������� ����������
	//=== ��� �������� ������� ����������� �����������
	//=== ������� �������� ����������������
	//=== �������� ������ �� ���������
	//=== �������� ������� ������ �� ���������
	//=== ���� ���������� ������� ��� ������ ������� �� ���������
	//=== �������� � ������������� ������
	//=== ����������� �� ��������� ������
	//=== ����������� ���� �� ����� � ������
	//=== �������� �������
	//=== �������� �����
	//=== ����������� ��������� ����� ����� �������� �� �����/������
	//=== ����������� ��������� ����� ����� �������� �� �������/������
};



class TfrmEditKiparPrognos : public TForm
{
__published:	// IDE-managed Components
	TcxPageControl *pcCommon;
	TcxTabSheet *tsRSh_Common_New;
	TPanel *Panel27;
	TcxVerticalGrid *vgCommon;
	TcxTabSheet *tsRSh_Result;
	TPanel *Panel1;
	TPanel *Panel6;
	TcxButton *btnClose;
	TdxStatusBar *StatusBar;
	TcxCategoryRow *vgCommonCategoryRowSrcDt;
	TcxEditorRow *vgSerLocom;
	TcxEditorRow *vgNumLocom;
	TcxEditorRow *vgSectLocom;
	TcxEditorRow *vgFil;
	TcxEditorRow *vgSLD;
	TcxEditorRow *vgBsCmpnSO;
	TcxEditorRow *vgFIOOprtrPstDgnstcs;
	TcxEditorRow *vgTpScr;
	TcxEditorRow *vgRowNull;
	TcxCategoryRow *vgCommonCategoryRowIncdnt;
	TcxEditorRow *vgDtTmIncdnt;
	TcxEditorRow *vgDtTmDgnstcsMsg;
	TcxEditorRow *vgFctIncdnt;
	TcxEditorRow *vgPlcEmrgn;
	TcxEditorRow *vgCriticl;
	TcxEditorRow *vgCatgr;
	TcxStyleRepository *stlrpEditing;
	TcxStyle *stlBackground;
	TcxStyle *stlGroup;
	TcxStyle *stlContent;
	TcxStyle *stlHeader;
	TcxStyle *stlBandHeader;
	TcxStyle *stlContentProgress;
	TcxStyle *stlSmallFont7;
	TcxStyle *stlContent8;
	TcxStyle *stlGreenFont;
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
	TcxStyle *stlNavy;
	TcxStyle *stlDeviationOver;
	TcxStyle *stlRedBoldFont;
	TcxStyle *stlSelection;
	TcxStyle *cxStyle2;
	TcxStyle *stlNotEditable9;
	TcxStyle *stlNavyBold11;
	TcxStyle *stlBackGroundLightBlue;
	TcxStyle *stlBackGroundLight;
	TcxVerticalGridStyleSheet *stlshtVG;
	TcxGridBandedTableViewStyleSheet *stlshtBTV;
	TcxTreeListStyleSheet *stlshtTL;
	TcxEditorRow *vgDeptEmrgnc;
	TcxEditorRow *vgMessg;
	TcxGrid *grdKiparPrognos;
	TcxGridDBBandedTableView *btvKiparPronos;
	TcxGridDBBandedColumn *clmnDtTm;
	TcxGridDBBandedColumn *clmnFIOPost;
	TcxGridDBBandedColumn *clmnDescription;
	TcxGridDBBandedColumn *clmnFiles;
	TcxGridLevel *lvlKiparPrognos;
	TPanel *Panel26;
	TcxButton *btnAddFile;
	TcxButton *btnDeleteFile;
	TActionList *ActionList;
	TAction *aClose;
	TAction *aAddFile;
	TAction *aDeleteFile;
	TAction *aRefresh;
	TClientDataSet *cldskipProgDocum;
	TDataSource *dskipProgDocum;
	TAction *aLoadAttach;
	TAction *aAttach_Show;
	TcxGridDBBandedColumn *clmnFileName;
	TcxEditorRow *vgNode;
	TcxGridLevel *lvlPrognoz;
	TcxGrid *grdPrognoz;
	TcxGridDBBandedTableView *btvPrognoz;
	TcxGridDBBandedColumn *btvPrognozColumn1;
	TcxGridDBBandedColumn *btvPrognozColumn2;
	TcxGridDBBandedColumn *btvPrognozColumn3;
	TcxGridDBBandedColumn *btvPrognozColumn4;
	TcxGridDBBandedColumn *btvPrognozColumn5;
	TcxGridDBBandedColumn *btvPrognozColumn6;
	TAction *aLoad_Prognoz;
	TClientDataSet *cdsPrognoz;
	TDataSource *dsPrognoz;
	TTimer *tmr;
	TcxButton *btnExcel;
	TAction *aExpExcel;
	TcxGridDBBandedColumn *btvPrognozColumn7;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aCloseExecute(TObject *Sender);
	void __fastcall aAddFileExecute(TObject *Sender);
	void __fastcall aDeleteFileExecute(TObject *Sender);
	void __fastcall aRefreshExecute(TObject *Sender);
	void __fastcall aLoadAttachExecute(TObject *Sender);
	void __fastcall DMMainclmnFilesDownloadPropertiesButtonClick(TObject *Sender,
		  int AButtonIndex);
	void __fastcall aAttach_ShowExecute(TObject *Sender);
	void __fastcall aLoad_PrognozExecute(TObject *Sender);
	void __fastcall aExpExcelExecute(TObject *Sender);
private:	// User declarations
	RecordKiparPrognos* ep_;
public:		// User declarations
	__fastcall TfrmEditKiparPrognos(TComponent* Owner);


	TModalResult __fastcall Show( RecordKiparPrognos* ep );
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEditKiparPrognos *frmEditKiparPrognos;
//---------------------------------------------------------------------------
#endif
