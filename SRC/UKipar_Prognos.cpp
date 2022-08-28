//---------------------------------------------------------------------------

#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include "memory"
#include <stdio.h>

#include "uBinFunction.h"
#include "config.h"
#include "public.h"
#include "UDMMain.h"
#include "Utils_JK.h"
#include "UEdit_Loc.h"

#include "UKipar_Prognos.h"
#include "UEdit_KiparPrognos.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxControls"
#pragma link "cxGraphics"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma link "dxStatusBar"
#pragma link "cxClasses"
#pragma link "cxContainer"
#pragma link "cxCustomData"
#pragma link "cxData"
#pragma link "cxDataStorage"
#pragma link "cxDBData"
#pragma link "cxDBEdit"
#pragma link "cxDBTL"
#pragma link "cxDropDownEdit"
#pragma link "cxEdit"
#pragma link "cxFilter"
#pragma link "cxGrid"
#pragma link "cxGridBandedTableView"
#pragma link "cxGridCustomTableView"
#pragma link "cxGridCustomView"
#pragma link "cxGridDBBandedTableView"
#pragma link "cxGridLevel"
#pragma link "cxGridTableView"
#pragma link "cxGroupBox"
#pragma link "cxHyperLinkEdit"
#pragma link "cxImageComboBox"
#pragma link "cxInplaceContainer"
#pragma link "cxLabel"
#pragma link "cxMaskEdit"
#pragma link "cxMemo"
#pragma link "cxNavigator"
#pragma link "cxPC"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "cxSplitter"
#pragma link "cxStyles"
#pragma link "cxTextEdit"
#pragma link "cxTL"
#pragma link "cxTLData"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "dxBar"
#pragma link "dxSkinscxPCPainter"
#pragma link "cxBarEditItem"
#pragma link "cxGridChartView"
#pragma link "cxGridDBChartView"
#pragma link "dxBarExtItems"
#pragma link "dxSkinsdxBarPainter"
#pragma link "cxCheckComboBox"
#pragma link "cxDBExtLookupComboBox"
#pragma link "cxShellComboBox"
#pragma link "cxCalc"
#pragma link "cxTrackBar"
#pragma resource "*.dfm"
TfrmKiparPrognos *frmKiparPrognos;
//---------------------------------------------------------------------------
__fastcall TfrmKiparPrognos::TfrmKiparPrognos(TComponent* Owner)
	: TForm(Owner)
{
	pc->ActivePage = tsMain;
	pc->HideTabs = true;

	tmr->Enabled = true;

	deDateBegin->Date  = cfg.ini->ReadDate("TfrmKiparPrognos", "DateBegin", Date() - 7);
	deDateFinish->Date = cfg.ini->ReadDate("TfrmKiparPrognos", "DateFinish", Date());

	aSetForm->Execute();
    lblNeed2Refresh->Visible= false;
	TDMMain::LogEvenEnterExit("����. ��������������� ����.");
}
//---------------------------------------------------------------------------

void __fastcall TfrmKiparPrognos::FormClose(TObject *Sender, TCloseAction &Action)

{
	/* �������� ����� */

	try
	{
		cfg.ini->WriteInteger("TfrmKiparPrognos", "KodFirm", cbFirmTree_->Tag);
		cfg.ini->WriteInteger("TfrmKiparPrognos", "KodSer", (int)cbLocSer->EditValue);
		cfg.ini->WriteInteger("TfrmKiparPrognos", "KodDepo", (int)cbDepoList->EditValue);
	}
	catch ( Exception &e )
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UKP-1 > : ������ ���������� ��������\n", e.Message);
	}

    TDMMain::LogEvenEnterExit("�����. ��������������� ����.");

	Action = caFree;
}
//---------------------------------------------------------------------------

void __fastcall TfrmKiparPrognos::aRefreshExecute(TObject *Sender)
{
	/* �������� */

	TcxGridDBBandedTableView *btv	= btvKipar_Prognos;
	TClientDataSet *cds				= cdsIncident;
	TDataSource *ds					= dsIncident;

	int vID = 0;

	try
	{
		if (btv->DataController->RowCount > 0 && btv->Controller->FocusedRow != NULL)
			vID = cds->FieldByName("isn")->AsInteger;

		btv->OptionsView->NoDataToDisplayInfoText = RefreshText;
		btv->DataController->DataSource = 0;

		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.INCIDENT2_PKG.kiparis_prognoz_3_4_cur";
		cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime   = deDateBegin->Date;
		cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime  = deDateFinish->Date;
		cds->Params->CreateParam(ftInteger, "p_kod_ser", ptInput)->AsInteger		= (int)cbLocSer->EditValue;
		cds->Params->CreateParam(ftInteger, "p_kod_depo", ptInput)->AsInteger		= (int)cbDepoList->EditValue;
		cds->Params->CreateParam(ftInteger, "p_access", ptInput)->AsInteger			= cbFirmTree_->Tag;
		cds->Params->CreateParam(ftCursor,   "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btv->OptionsView->NoDataToDisplayInfoText = NoDataTextDefault;
		btv->DataController->DataSource = ds;

		lblNeed2Refresh->Visible = false;
		btnRefresh->Down = false;
	}
	catch (Exception &e)
	{
		btv->OptionsView->NoDataToDisplayInfoText = ErrorRefreshText;
		btnRefresh->Down = true;
		TDMMain::ShowAppException(AET_EXCEPTION, "< UKP-2 > : ������ �������� ������ ������ ����������.\n", e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmKiparPrognos::aExportExecute(TObject *Sender)
{
	/* ������� � Excel */

	try
	{
		btvKipar_Prognos->OptionsCustomize->ColumnGrouping = false;
		TcxGrid *grd = grdKipar_Prognos;

		AnsiString vFileName = TemporaryFolder + "depodiag_" + "_" + FormatDateTime("ddmmyy_hhnnss", Now()) + ".xls";
		ExportGridToExcel(vFileName, grd, true, true, true, "xls");

		char buf_str[2000];
		sprintf(buf_str, vFileName.c_str() );
		ShellExecute(Application->Handle, NULL, buf_str, NULL, NULL, SW_MAXIMIZE);
	}
	__finally
	{
		btvKipar_Prognos->OptionsCustomize->ColumnGrouping = true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmKiparPrognos::aLoad_NSI_FirmTreeExecute(TObject *Sender)
{
	/* ��������� ������ ����������� */

	TClientDataSet *cds = cdsFirmTree;
	TDataSource *ds = dsFirmTree;
	int vKodFirm = 0;
	TcxTreeListNode *node = NULL;

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT.APP_NSI_PKG.firm_tree_cur";
		cds->Params->CreateParam(ftInteger, "p_id_user",     ptInput)->AsInteger = UserID;
		cds->Params->CreateParam(ftString,  "p_code_object", ptInput)->AsString  = "aKiparProg";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		tlFirmTree->DataController->DataSource = dsFirmTree;


		try
		{
			vKodFirm = cfg.ini->ReadInteger("TfrmKiparPrognos", "KodFirm", cfg_.DepotID);
		}
		catch (Exception &e)
		{
			vKodFirm = cfg_.DepotID;
		}

		if (tlFirmTree->AbsoluteCount > 0)
			tlFirmTree->TopVisibleNode->Expand(false);

		node = tlFirmTree->FindNodeByKeyValue(vKodFirm, tlFirmTree->Root, false, true);

		if (node != NULL)
			node->Focused = true;

		if (cds->Locate("kod_firm", vKodFirm, TLocateOptions() ) == false)
			cds->First();

		cbFirmTree_->Text = cds->FieldByName("firm_name")->AsString;
		cbFirmTree_->Tag = cds->FieldByName("kod_firm")->AsInteger;

	}
	catch (Exception &e)
	{
		// �������� ����� � ���������� ������
		throw Exception ("< UKP-3 > : ������ �������� ������ �����������.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmKiparPrognos::tmrTimer(TObject *Sender)
{
	tmr->Enabled = false;

	try
	{
		// �������� ����������
		aLoad_NSI_FirmTree->Execute();
		aLoad_NSI_LocSer->Execute();
		aLoad_NSI_DepoList->Execute();
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UKP-4 > : ������ ���������� ��������������� ��������.\n", e.Message);
		this->Close();
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmKiparPrognos::aLoad_NSI_LocSerExecute(TObject *Sender)
{
	/* ��������� ������ ����� */

	TcxImageComboBox *cb = cbLocSer;
	int vKodSer = 0;

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	TcxImageComboBoxItem 		*itm	= NULL;
	TcxImageComboBoxProperties	*cbep	= NULL;

	try
	{
		cbep = (TcxImageComboBoxProperties*)cb->Properties;
		cbep->Items->Clear();

		dsa->CommandText = "SMT.INCIDENT2_PKG.kiparis_prognoz_loc_ser_cur";
		dsa->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UKP-5 > : ������ �������� �����.\n" + e.Message);
	}

	try
	{
		itm = cbep->Items->Add();
		if (itm)
		{
			itm->Description = "��� �����";
			itm->Value		 = 0;
		}

		for (int i = 0; i < dsa->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if (itm)
			{
				itm->Description = dsa->FieldByName("ser_name")->AsString;
				itm->Value		 = dsa->FieldByName("kod_ser")->AsInteger;
			}
			dsa->Next();
		}

		vKodSer = cfg.ini->ReadInteger("TfrmKiparPrognos", "KodSer", 0);
		cbLocSer->EditValue = vKodSer;
	}
	catch (Exception &e)
	{
		throw Exception ("< UKP-6 > : ������ ���������� ������ �����.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------


void __fastcall TfrmKiparPrognos::aLoad_NSI_DepoListExecute(TObject *Sender)
{
	/* ������ ��� */

	TcxImageComboBox *cb = cbDepoList;
	int vKodDepo = 0;

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	TcxImageComboBoxItem 		*itm	= NULL;
	TcxImageComboBoxProperties	*cbep	= NULL;

	try
	{
		cbep = (TcxImageComboBoxProperties*)cb->Properties;
		cbep->Items->Clear();

		dsa->CommandText 	= "SMT.nsi_pkg.tche_full_list_cur";
		dsa->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UKP-7 > : ������ �������� ���.\n" + e.Message);
	}

	try
	{
		itm = cbep->Items->Add();
		if (itm)
		{
			itm->Description	= "��� ����";
			itm->Value			= 0;
		}

		for (int i = 0; i < dsa->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if (itm)
			{
				itm->Description	= dsa->FieldByName("firm_name")->AsString;
				itm->Value			= dsa->FieldByName("pred_id")->AsInteger;
			}
			dsa->Next();
		}

		vKodDepo = cfg.ini->ReadInteger("TfrmKiparPrognos", "KodDepo", 0);
		cbDepoList->EditValue = vKodDepo;
	}
	catch (Exception &e)
	{
		throw Exception ("< UKP-8 > : ������ ���������� ������ ���.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmKiparPrognos::aFilter_PeriodExecute(TObject *Sender)
{
	deDateBegin->Enabled   = true;
	deDateFinish->Enabled  = true;
	btnFilter_Period->Down = true;
}
//---------------------------------------------------------------------------


void __fastcall TfrmKiparPrognos::ShowEdit_Kip_ProgExecute(TObject *Sender)
{


	std::auto_ptr<TfrmEditKiparPrognos> dlg (new TfrmEditKiparPrognos(this));
	TcxGridDBBandedTableView	*btv = btvKipar_Prognos;
	RecordKiparPrognos 			ep;

	TClientDataSet *cds = cdsIncident;
	TDataSource *ds = dsIncident;

	if (((TcxGridDBBandedTableView*)grdKipar_Prognos->ActiveView)->Controller->FocusedRow == NULL)
	return;

//=== �������� ���������� ======================================================
	//=== NSI
	ep.NSI = cds->FieldByName("isn")->AsInteger;
	//=== ����� ����������
	ep.Sers_Lokmtv = cds->FieldByName("ser_name")->AsAnsiString;
	//=== ����� ���������
	ep.Numbr_Lokmtv = cds->FieldByName("locnum")->AsAnsiString;
	//=== ������ ���������
	ep.Sectn_Lokmtv = cds->FieldByName("secind")->AsAnsiString;

	//=== ������
	ep.Branch = cds->FieldByName("filial_firm_name")->AsAnsiString;
	//=== ���
	ep.SLD = cds->FieldByName("department_firm_name")->AsAnsiString;
	//=== ������� ����������� ��
	ep.Bs_Compn_SO = cds->FieldByName("repair_base_firm_name")->AsAnsiString;
	//=== ��� ��������� ����������������
	ep.FIO_Oprtr_Fastng_Dignstcs = cds->FieldByName("operatorname")->AsAnsiString;
	//=== ��� ���������
	ep.Typ_Src = cds->FieldByName("source_type")->AsAnsiString;
//=== �������� =================================================================
	//===  ����/����� ���������
	ep.DtTm_Incdnt = cds->FieldByName("incidenttime")->AsDateTime;
	//=== ����/����� ���������������� ���������
	ep.DTTm_Digntcs_Fetr = cds->FieldByName("created")->AsDateTime;
	//=== �������������� ���������
	ep.Circmstnc_Incdnt = cds->FieldByName("fullname")->AsAnsiString;
	//=== ���� �������������
	ep.Dept_Emrgnc = cds->FieldByName("deponame")->AsAnsiString;
	//=== ����� �������������
	ep.Plc_Apprncs = cds->FieldByName("placecodename")->AsAnsiString;
	//=== ���������
	ep.Messg = cds->FieldByName("incidentcontent")->AsAnsiString;
	//=== �����������
	ep.Critclnss = cds->FieldByName("critlvl")->AsAnsiString;
	//=== ���������
	ep.Catgr = cds->FieldByName("cat")->AsAnsiString;
	//ep.Node	 = cds->FieldByName("node")->AsAnsiString;
//==============================================================================
	ep.msu_type	= cds->FieldByName("msutype")->AsInteger;
	ep.calc_isn	= cds->FieldByName("calc_isn")->AsInteger;

	dlg->Show(&ep);
}
//---------------------------------------------------------------------------

void __fastcall TfrmKiparPrognos::btvIncidentDblClick(TObject *Sender)
{
	ShowEdit_Kip_Prog->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmKiparPrognos::deDateBeginChange(TObject *Sender)
{
	cfg.ini->WriteDate("TfrmKiparPrognos", "DateBegin", deDateBegin->Date);
	lblNeed2Refresh->Visible= true;
	btnRefresh->Down = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmKiparPrognos::deDateFinishChange(TObject *Sender)
{
	cfg.ini->WriteDate("TfrmKiparPrognos", "DateFinish", deDateBegin->Date);
	lblNeed2Refresh->Visible= true;
	btnRefresh->Down = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmKiparPrognos::aSelect_FirmTreeExecute(TObject *Sender)
{
	/* ����� ����������� � ������ */

	TcxTreeListNode *ln = NULL;
	ln = tlFirmTree->FocusedNode;

	if (ln != NULL /*&& !ln->HasChildren*/)
	{
		cbFirmTree_->Tag = cdsFirmTree->FieldByName("kod_firm")->AsInteger;
		cbFirmTree_->Text = cdsFirmTree->FieldByName("firm_name")->AsString;

		cbFirmTree_->DroppedDown = false;
		cbFirmTree_->SetFocus();

		cfg.ini->WriteInteger("TfrmKiparPrognos", "KodFirm", cbFirmTree_->Tag);
		lblNeed2Refresh->Visible= true;
		btnRefresh->Down = true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmKiparPrognos::aSetFormExecute(TObject *Sender)
{
	/* ��������� ���� */
	aRefresh->Enabled           =  DMMain->IsFunction("f_code", "aKiparProg_aRefresh");
	aExport->Enabled            =  DMMain->IsFunction("f_code", "aKiparProg_aExport");
	ShowEdit_Kip_Prog->Enabled  =  DMMain->IsFunction("f_code", "aKiparProg_aEdit");
}
//---------------------------------------------------------------------------

void __fastcall TfrmKiparPrognos::cbLocSerClick(TObject *Sender)
{
	lblNeed2Refresh->Visible= true;
	btnRefresh->Down = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmKiparPrognos::cbDepoListPropertiesChange(TObject *Sender)
{
	lblNeed2Refresh->Visible= true;
	btnRefresh->Down = true;
}
//---------------------------------------------------------------------------

