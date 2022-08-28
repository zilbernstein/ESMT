//---------------------------------------------------------------------------
#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include <memory>
#include <stdio.h>

#include "uAdmin.h"
#include "config.h"
#include "public.h"
#include "UDMMain.h"
#include "uBinFunction.h"
#include "Utils_JK.h"
#include <stdio.h>

#include "uListReports.h"
#include "uAnalyticsBMZ.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxClasses"
#pragma link "dxBar"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsdxBarPainter"
#pragma link "cxBarEditItem"
#pragma link "cxControls"
#pragma link "cxDropDownEdit"
#pragma link "cxGraphics"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxPC"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "dxBarExtItems"
#pragma link "dxSkinscxPCPainter"
#pragma link "cxImageComboBox"
#pragma link "cxLabel"
#pragma link "cxCustomData"
#pragma link "cxDBTL"
#pragma link "cxInplaceContainer"
#pragma link "cxMaskEdit"
#pragma link "cxStyles"
#pragma link "cxTextEdit"
#pragma link "cxTL"
#pragma link "cxTLData"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma link "dxStatusBar"
#pragma link "cxContainer"
#pragma link "cxEdit"
#pragma link "cxCheckBox"
#pragma link "cxDBLookupComboBox"
#pragma link "cxDBLookupEdit"
#pragma link "cxLookupEdit"
#pragma link "cxButtons"
#pragma link "cxData"
#pragma link "cxDataStorage"
#pragma link "cxDBData"
#pragma link "cxFilter"
#pragma link "cxGrid"
#pragma link "cxGridCustomTableView"
#pragma link "cxGridCustomView"
#pragma link "cxGridDBTableView"
#pragma link "cxGridLevel"
#pragma link "cxGridTableView"
#pragma link "cxNavigator"
#pragma link "cxCalendar"
#pragma link "cxDateUtils"
#pragma link "dxCore"
#pragma resource "*.dfm"
TfrmAnalyticsBMZ *frmAnalyticsBMZ;

const CheckedNull = 0;
const CheckedAll  = 1;

//---------------------------------------------------------------------------
__fastcall TfrmAnalyticsBMZ::TfrmAnalyticsBMZ(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
TModalResult __fastcall TfrmAnalyticsBMZ::Show(int Index)
{

	SelOverDail(&Index);
	Caption = GetCaption(&Index);

	aLoadSerTree->Execute();

	deBegin->Date = Date();
	deEnd->Date   = Date();

	CountF = 0;
	CountS = 0;

	return ShowModal();
}
//---------------------------------------------------------------------------
AnsiString TfrmAnalyticsBMZ::GetCaption(int* Index)
{
	/* ���� ������������ ����� */
	switch (*Index)
	{
		case 1: nDoc = -1;
				TDMMain::LogEvenEnterExit("����. ��������� ��� (����� �������).");
				return "����� �������";
				break;
		case 2: nDoc = -2;
				TDMMain::LogEvenEnterExit("����. ��������� ��� (���������� �������).");
				return "���������� �������";
				break;
	}
}
//---------------------------------------------------------------------------
void TfrmAnalyticsBMZ::SelOverDail(int* Index)
{
	switch (*Index)
	{
		case 1: {
					/* ����� ������� */
					deBegin->Visible      = ivAlways;
					deEnd->Visible        = ivAlways;
					LabelPeriod->Visible  = ivAlways;
					break;
				}
		case 2: {
					/* ���������� ������� */
					deBegin->Visible      = ivNever;
					deEnd->Visible        = ivNever;
					LabelPeriod->Visible  = ivNever;
					break;
				}
	}
	pg->ActivePage  =  tsDaileReference;
	pg->HideTabs    =  true;
}
//---------------------------------------------------------------------------
void __fastcall TfrmAnalyticsBMZ::FormClose(TObject *Sender, TCloseAction &Action)
{
	/* ��������� ����� */
	switch (nDoc)
	{
		case -1: 	{
						TDMMain::LogEvenEnterExit("�����. ��������� ��� (����� �������).");
						break;
					}
		case -2:    {
						TDMMain::LogEvenEnterExit("�����. ��������� ��� (���������� �������).");
						break;
					}
	}
	Action = caFree;
}
//---------------------------------------------------------------------------
void __fastcall TfrmAnalyticsBMZ::aLoadTreeFirmExecute(TObject *Sender)
{
	/* �������� ������ ����������� */
	CountF = 0;
	LoadListFrim(CheckedNull);
}
//---------------------------------------------------------------------------
void __fastcall TfrmAnalyticsBMZ::CreateListSer()
{
	/* ��������� ������ ����� */
	TClientDataSet  *cds = cdsSerTree;
	TDataSource     *ds  = dsSerTree;

	cds->Filter    =  "checked = 1";
	cds->Filtered  =  true;

	cds->First();

	while (!cds->Eof)
	{
		if (cds->FieldByName("checked")->AsInteger == 1)
		{
			tmpSer =    tmpSer    + cds->FieldByName("kod_ser")->AsString + ",";
			tmpSerNam = tmpSerNam + cds->FieldByName("ser_name")->AsString + ",";
		}
		cds->Next();
	}
	cds->Filter    =  "";
	cds->Filtered  =  false;
}
//---------------------------------------------------------------------------
void __fastcall TfrmAnalyticsBMZ::aGenDocExecute(TObject *Sender)
{
	/* ������������ ������� */

	if (VarToStr(cbbFirm->Text) == "") return;

	if (CountF == 0) throw Exception ("������: �� �� ������� �� ������ �����������.\n");

	if (CountS == 0) throw Exception ("������: �� �� ������� �� ���� �����.\n");

	std::auto_ptr<TfrmListReports> dlg (new TfrmListReports(this));
	RecordParamDoc pDoc;

	tmpFirm     = "";
	tmpFirmName	= "";
	tmpDepo     = "";
	tmpSer      = "";
	tmpSerNam 	= "";

	switch (nDoc)
	{
		case -1	:	{
						if (CountF >= 2) throw Exception ("������: ��������� ����� ������ �����������.\n");

						if (CountS >= 2) throw Exception ("������: ��������� ����� ����� �����.\n");

						pDoc.dStart  = deBegin->Date;
						pDoc.dFinish = deEnd->Date;
						aOverall->Execute();
						break;
					}
		case -2 :	{
						aEveryDay->Execute();
						break;
					}
	}

	pDoc.List_Firm_Id = tmpFirm;
	pDoc.List_Depo_Id = tmpDepo;
	pDoc.List_Ser_Kod = tmpSer;
	pDoc.List_Ser_Nam = tmpSerNam;
	pDoc.FirmName     = tmpFirmName;

	pDoc.NumDoc = nDoc;

	if (mrOk == dlg->Show(&pDoc))
	{}
	CountF = 0;
	CountS = 0;
	aLoadSerTree->Execute();
	aLoadTreeFirm->Execute();
}
//---------------------------------------------------------------------------
void __fastcall TfrmAnalyticsBMZ::aLoadSerTreeExecute(TObject *Sender)
{
	/* �������� ������ ����� ��� ��������� */
	LoadListSer(CheckedNull);
}
//---------------------------------------------------------------------------

void __fastcall TfrmAnalyticsBMZ::aCloseExecute(TObject *Sender)
{
	/* ������ */
	switch (nDoc)
	{
		case -1: 	{
						TDMMain::LogEvenEnterExit("�����. ��������� ��� (����� �������).");
						break;
					}
		case -2:    {
						TDMMain::LogEvenEnterExit("�����. ��������� ��� (���������� �������).");
						break;
					}
	}
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------
void __fastcall TfrmAnalyticsBMZ::aEveryDayExecute(TObject *Sender)
{
	/* ���������� */
	switch (int(cbbFirm->EditValue))
	{
		/* ���-������ */
		case 1: {
					tmpDepo = "0";
					break;
				}
		/* ��� ��� */
		case 0: {
					tmpFirm = "0";
					break;
				}
	}
	CreateListFirmDepo();
	CreateListSer();
}
//---------------------------------------------------------------------------
void __fastcall TfrmAnalyticsBMZ::aOverallExecute(TObject *Sender)
{
	/* ����� */
	aEveryDay->Execute();
	tmpSer  = DelComma(tmpSer);
	tmpDepo = DelComma(tmpDepo);
	tmpFirm = DelComma(tmpFirm);
}
//---------------------------------------------------------------------------
AnsiString __fastcall TfrmAnalyticsBMZ::DelComma(AnsiString tmp)
{
	int i = AnsiPos(",", tmp);
	tmp.Delete(i,1);
	return tmp;
}
//---------------------------------------------------------------------------
void __fastcall TfrmAnalyticsBMZ::btvSerColumn2PropertiesChange(TObject *Sender)
{
	TClientDataSet * cds = cdsSerTree;
	if (cds->FieldByName("checked")->AsInteger == 1) CountS++;
	else CountS--;
}
//---------------------------------------------------------------------------
void __fastcall TfrmAnalyticsBMZ::cxDBTreeList1cxDBTreeListColumn2PropertiesChange(TObject *Sender)
{
	TClientDataSet * cds = cdsTreeFirm;
	if (cds->FieldByName("checked")->AsInteger == 1) CountF++;
	else CountF--;
}
//---------------------------------------------------------------------------

void __fastcall TfrmAnalyticsBMZ::btvSerColumn2HeaderClick(TObject *Sender)
{
	/* ��������/����� ����� */
	if (CountS == 0)
	{
		LoadListSer(CheckedAll);
		CountS = cdsSerTree->RecordCount;
	}
	else
	{
		LoadListSer(CheckedNull);
		CountS = 0;
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmAnalyticsBMZ::tlFirmColumnHeaderClick(TcxCustomTreeList *Sender,
		  TcxTreeListColumn *AColumn)
{
	/* ��������/����� ����������� */

	TcxTreeListNode *ln = NULL;
	ln = tlFirm->FocusedNode;
	if (ln == NULL) return;

	if (AColumn->Position->ColIndex == 1)
	{
		if (CountF == 0)
			{
				LoadListFrim(CheckedAll);
				CountF = cdsTreeFirm->RecordCount;
			}
		else
		{
			LoadListFrim(CheckedNull);
            CountF = 0;
		}
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmAnalyticsBMZ::LoadListSer(int checked)
{
	/* �������� ������ ����� ��� ��������� */
	TClientDataSet  *cds  = cdsSerTree;
	TDataSource     *ds   = dsSerTree;

	TcxTreeListNode *node = NULL;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.NSI_PKG.loc_ser_check_2_0_cur";
		cds->Params->CreateParam(ftCursor,  "o_cur",     ptInputOutput);
		cds->Params->CreateParam(ftInteger, "p_checked", ptInput)->AsInteger = checked;
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch ( Exception &e )
	{
		throw Exception ("< UAUE-7 > : ������ �������� �����.\n" + e.Message);
	}

	btvSer->DataController->DataSource = ds;
}
//---------------------------------------------------------------------------
void __fastcall TfrmAnalyticsBMZ::LoadListFrim(int checked)
{
	/* �������� ������ ����������� */
	CountF = 0;

	if (VarToStr(cbbFirm->EditValue) == "") return;

	TClientDataSet  *cds  = cdsTreeFirm;
	TDataSource     *ds   = dsTreeFirm;
	TcxTreeListNode *node = NULL;

	if (cbbFirm->EditValue == 0) cds->CommandText = "SMT.nsi_pkg.tche_full_list_tree_cur";
	else cds->CommandText = "SMT.nsi_pkg.firm_tree_tmx_cur";

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->Params->CreateParam(ftCursor,  "o_cur",     ptInputOutput);
		cds->Params->CreateParam(ftInteger, "p_checked", ptInput)->AsInteger = checked;
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch ( Exception &e )
	{
		throw Exception ("< UAUE-7 > : ������ �������� ������ �����������.\n" + e.Message);
	}

	tlFirm->DataController->DataSource = dsTreeFirm;
}
//---------------------------------------------------------------------------
void __fastcall TfrmAnalyticsBMZ::CreateListFirmDepo()
{
	TClientDataSet  *cds = cdsTreeFirm;
	TDataSource     *ds  = dsTreeFirm;

	cds->Filter    =  "checked = 1";
	cds->Filtered  =  true;

	cds->First();

	while (!cds->Eof)
	{
		if (cds->FieldByName("checked")->AsInteger == 1)
		{
			if (cbbFirm->EditValue == 0)
			{
				tmpDepo     = tmpDepo + cds->FieldByName("kod_firm")->AsString + ",";
				tmpFirmName = cbbFirm->Text + "(" + cds->FieldByName("firm_name")->AsString + " )";
			}
			else
			{
				tmpFirm     = tmpFirm + cds->FieldByName("kod_firm")->AsString + ",";
				tmpFirmName = cbbFirm->Text + "(" + cds->FieldByName("firm_name")->AsString + " )";
			}
		}
		cds->Next();
	}
	cds->Filter    =  "";
	cds->Filtered  =  false;
}
//---------------------------------------------------------------------------
