#include <vcl.h>
#include "Log.h"
#include "UException.h"
#pragma hdrstop

#include <memory>
#include <stdio.h>
#include "config.h"
#include "public.h"
#include "UDMMain.h"

#include "UException.h"
#include "Utils_JK.h"
#include "ULoginDlg.h"
#include "UReports.h"
#include "UIncident.h"
#include "UAppFileLoad.h"
#include "UReport_Interactive.h"
#include "ULocPark.h"
#include "UDepoEnter.h"
#include "UUsers.h"
#include "UVersion.h"
#include "UNSI_Firm.h"
#include "UMyAccess.h"
#include "USql_Execute.h"
#include "UCallingControl.h"
#include "UKipar_Prognos.h"
#include "UMain.h"
#include "UDict_Malfunction.h"
#include "UReason.h"
#include "uDictStandarts.h"
#include "UDic_Equipment.h"
#include "uDicCloseDepoIncident.h"
#include "uWineSide.h"
#include "uActivUsers.h"
#include "uAdmin.h"
#include "uAnalyticsBMZ.h"
#include "uIncidentExport.h"


#include <idhashsha.hpp>
//---------------------------------------------------------------------------

#pragma package(smart_init)
#pragma link "cxContainer"
#pragma link "cxEdit"
#pragma link "cxGraphics"
#pragma link "cxImage"
#pragma link "cxLookAndFeelPainters"
#pragma link "dxGDIPlusClasses"
#pragma link "cxProgressBar"
#pragma link "cxGroupBox"
#pragma link "dxCustomHint"
#pragma link "dxScreenTip"
#pragma link "cxHint"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsdxBarPainter"
#pragma link "dxSkinsForm"
#pragma link "cxCustomData"
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
#pragma link "cxStyles"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinscxPCPainter"
#pragma link "cxBarEditItem"
#pragma link "cxButtonEdit"
#pragma link "cxCheckComboBox"
#pragma link "cxDBExtLookupComboBox"
#pragma link "cxDropDownEdit"
#pragma link "cxShellComboBox"
#pragma link "cxCalc"
#pragma link "cxLabel"
#pragma link "cxTrackBar"
#pragma link "cxCheckBox"
#pragma link "cxImageComboBox"
#pragma link "cxCalendar"
#pragma link "cxDBLookupComboBox"
#pragma resource "*.dfm"
TfrmMain *frmMain;
int 		DepotID;
AnsiString	DepotName;
int	UserID;
long long   UserSes;
AnsiString	UserName;

//---------------------------------------------------------------------------
enum IndexForm
{
	iTfrmAdmin                 = 1,  //����������������� (����)
	iTfrmLocPark               = 2,  //������������ ����
	iTfrmDepoEnter             = 3,  //������ � ����
	iTfrmCallingControl        = 4,  //�������� �������/�������
	iTfrmIncident              = 5,  //���������
	iTfrmKiparPrognos          = 6,  //��������� ����������� (�������-�������)
	iTfrmReports               = 7,  //������
	iTfrmReport_Interactive    = 8,  //������ �������������
	iTfrmNSI_Firm              = 9,  //��� ����������� (21.05.2014)
	iTfrmDicCloseDepoIncident  = 10, //��� ��������. ������� ������ � ����. ������� ���������� ���������
	iTfrm_Reason               = 11, //����������: ������� ���������
	iTfrmDic_Equipment         = 12, //���������� ������������
	iTfrmWineSide              = 13, //������: �������� �������
	iTfrmDict_Malfunction      = 14, //����������: ��� ������
	iTfrmStandarts             = 15,  //���������� ���������� ��, ��

};
//---------------------------------------------------------------------------
__fastcall TfrmMain::TfrmMain(TComponent* Owner)
	: TForm(Owner)
{
	cfg.restore_form(this);
	RequiredFolders();
	SetResourceString();
	Application->OnException = ShowAppException;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::ShowAppException(TObject *Sender, Exception *e)
{
	LogEvent("ShowAppException: " + e->Message);
	TDMMain::ShowAppException(AET_EXCEPTION, "�������� ��������", AnsiString(e->Message).c_str());
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::FormClose(TObject *Sender, TCloseAction &Action)
{

	TDMMain::LogEvenEnterExit("����� �� ����");

	ClearTempDir();

	for (int i = 0; i <= MDIChildCount - 1; i++)
		MDIChildren[i]->Close();

	exit(0);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aReportsExecute(TObject *Sender)
{
	/* ������ */
	ShowForm ("TfrmReports", iTfrmReports);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aForumExecute(TObject *Sender)
{
	LoadLink("http://asunt.ru/forums");
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::FormShow(TObject *Sender)
{
	/* ����������� */

	std::auto_ptr<TfrmLoginDlg> dlg (new TfrmLoginDlg(this));
	std::auto_ptr<TfrmAppFileLoad> appf (new TfrmAppFileLoad(this));
	int res = mrNone;

	res = dlg->ShowModal();

	if (res == mrOk)
	{
		this->Caption = "���� " + GetAppVer() + ".   ��������: " + DepotName;

		if (cfg.ini->ReadInteger("frmMain", "CheckUpdates", 1) == 1)
		{
			if (appf->App_File_Load() == mrOk)
			{
				MessageBox(Handle, AnsiString("��������! ��������� ���������� ������ �������.\n����� ������� ������ <��> \"" + Application->Title + "\" �������� ���� ������.\n \��������� ���������� ����� ��� ����������� ���������� ����������� ������.").c_str(), "��������������", MB_ICONINFORMATION);
				Application->Terminate();
			}
		}
		tmrLoad->Enabled = true;
	}

	if ((mrOk != res)||(DepotID == -1))
	{
		aClose->Execute();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aIncidentExecute(TObject *Sender)
{
	/* ��������� */
	ShowForm("TfrmIncident", iTfrmIncident);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aCloseExecute(TObject *Sender)
{
	exit(0);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aAdminExecute(TObject *Sender)
{
	/* ����������������� */

	std::auto_ptr<TClientDataSet> dsaSess (new TClientDataSet(NULL));

	AnsiString Url;
	AnsiString Key = "";

	Url = cfg.ini->ReadString("ApplicationServers", "AdminURL", "");

	if (Url == "") {
		MessageBox (NULL, "�������� ��������� ������ ������ ������ ��� � INI-�����.", "������ INI-�����", MB_ICONSTOP);
		return;
	}

	try
	{
		TDMMain::ClearDataSet(dsaSess.get());
		dsaSess->CommandText = "SMT.RULE_PKG.CREATESESSION";
		dsaSess->Params->CreateParam(ftInteger, "pUserId", ptInput)->AsInteger    = UserID;
		dsaSess->Params->CreateParam(ftString, "pIp", ptInput)->AsString 	   	  = DefaultIP;
		dsaSess->Params->CreateParam(ftString, "oKey", ptInputOutput)->AsString   = Key;
		dsaSess->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsaSess->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);
		TDMMain::OpenDS(dsaSess.get(), "EXEC", "CT", 1);

		Key = dsaSess->Params->ParamByName("oKey")->AsString;

		if (dsaSess->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (dsaSess->Params->ParamByName("o_Err_Msg")->AsString);
		else
		{
			Url = Url + Key;
			LogEvent("REP-URL:" + Url);
			ShellExecute(Application->Handle, NULL, Url.c_str(), NULL, NULL, SW_MAXIMIZE);
		}
	}
	catch (Exception &e)
	{
		throw Exception ("< UM-17 > : ������ ������ ����������������� �������������.\n" + e.Message); //< REP-2 >
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aLibraryExecute(TObject *Sender)
{
	/* ���������� */

	LoadLink("http://asunt.ru/index.php/lib");
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aUserManualExecute(TObject *Sender)
{

	LoadLink("http://asunt.ru/lib/esmt/music/124-rukovodstvo-polzovatelya-esmt");
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aInteractive_ReportsExecute(TObject *Sender)
{
	/* ������ ������������� */
	ShowForm ("TfrmReport_Interactive", iTfrmReport_Interactive);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::FormCreate(TObject *Sender)
{
	if (HPrevInst != 0)
		throw Exception("��������� ��� ��������. ������ ������ ����� ��������.");
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aSetActionExecute(TObject *Sender)
{
	/* ��������� ����������� ���� � ������������ */

	aAdmin->Enabled 		= DMMain->IsUserFunction("users");
	aInteractive_Reports->Enabled
							= DMMain->IsUserFunction("esmt-interactive-reports");
	aNSI_Firm->Visible		= DMMain->IsFunction("name", "��� \"��� ����������\""); // ��������� ���-�
	aReason->Visible    	= DMMain->IsFunction("name", "��� \"��� ����������\""); // ������: ������� ����������
	aMalfunction->Visible   = DMMain->IsFunction("name", "��� \"��� ����������\""); // ���: ������ �� ���������� ��������������
	aDictStandarts->Visible = DMMain->IsFunction("name", "��� \"��� ����������\""); // ���: ���������� ���������� ��, ��
	aEquipment->Visible     = DMMain->IsFunction("name", "��� \"��� ����������\""); // ������: ������������� ������������
	aNSI->Visible           = DMMain->IsFunction("name", "��� \"��� ����������\""); // ������������ ���
	aWineSide->Visible      = DMMain->IsFunction("name", "��� \"��� ����������\""); // ������: �������� �������
    aActivUsers->Visible    = DMMain->IsFunction("name", "��� \"��� ����������\""); // ���������� �������������

	aLocPark->Enabled           =  DMMain->IsFunction("frm_code", "aLocPark");           //������������ ����
	aDepoEnter->Enabled         =  DMMain->IsFunction("frm_code", "aDepoEnter");         //������ � ����
	aControlCalling->Enabled    =  DMMain->IsFunction("frm_code", "aControlCalling");    //�������� �������/�������
	aReportLRZ->Enabled         =  DMMain->IsFunction("frm_code", "aReportLRZ");         //���������� ��������
	aIncident->Enabled          =  DMMain->IsFunction("frm_code", "aIncident");          //���������
	aKiparProg->Enabled         =  DMMain->IsFunction("frm_code", "aKiparProg");         //�������-�������
	aAdminNew->Enabled          =  DMMain->IsFunction("frm_code", "aAdminNew");          //����������������� (����)
	aMonitor->Enabled           =  DMMain->IsFunction("frm_code", "aMonitor");           //������ �����������
	aReportConstructor->Enabled =  DMMain->IsFunction("frm_code", "aReportConstructor"); //����������� ������� (Web)
	aReports->Enabled           =  DMMain->IsFunction("frm_code", "aReports");           //����������� ������
	aControlProblem->Enabled    =  DMMain->IsFunction("frm_code", "aControlProblem");    //���������� ����������

	aQualityManagment->Enabled  = DMMain->IsFunction("code", "aQualityManagment");   //������� ����������� ��������
	aAnalyze->Enabled           = DMMain->IsFunction("code", "aAnalyze");            //��������� ������

	if (DMMain->IsFunction("name", "�����") == true)
	{
		aQualityManagment->Enabled = false; // ������� ����������� ��������
		dxBarSubItem1->Enabled     = false; // ���������
		dxBarSubItem3->Enabled     = false; // ������
		aESMT_Portal->Enabled      = false; // Web-������ ESMT
	}

	if ((aDepoEnter->Enabled == false)&&
		(aControlCalling->Enabled == false)&&
		(aReportLRZ->Enabled == false))
		btnEnter->Enabled = false;
	else
		btnEnter->Enabled = true;

	if ((aKiparProg->Enabled==false)&&(aIncident->Enabled==false))
		dxBarSubItem9->Enabled = false;
	else
		dxBarSubItem9->Enabled = true;

	// ������� "��������� ���"
	if (DMMain->IsFunction("f_code", "aIncident_aViolOperatMod") == true)
	{
		aLocPark->Enabled				= false;
		btnEnter->Enabled				= false;
		dxBarButton43->Enabled			= false;
		aControlProblem->Enabled		= false;
		aMonitor->Enabled				= false;
		dxBarSubItem1->Enabled			= false;
		dxBarSubItem3->Enabled			= false;
		dxBarButton33->Enabled			= false;
		btnControlProblem->Enabled		= false;
		dxBarButton20->Enabled			= false;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aReportConstructorExecute(TObject *Sender)
{
	/* ����������� ������� */
	AnsiString Url;
	Url = cfg.ini->ReadString("ApplicationServers", "ReportBuilderUrl", "");

	if (Url == "") {
		Url = "http://esmt.asunt.ru:9099/esmt/report-builder/";
	}

	TDMMain::LogEvenEnterExit("����. ����������� ������� (web).");
	if (cfg_.hashedPwd.Length() > 0) {

//		AnsiString targetUrl = "http://esmt.asunt.ru:9099/esmt/sso.html?user=";
		AnsiString targetUrl = Url + "sso.html?user=";
		AnsiString auxFragment = "&pwd=";
		targetUrl = targetUrl + cfg_.userLogin + auxFragment + cfg_.hashedPwd;
		LoadLink(targetUrl.c_str());
	}
	else {
		LoadLink(Url.c_str()); //http://95.213.196.60:9099/esmt/report-builder/
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aProblemManagmentExecute(TObject *Sender)
{
	/* ���������� ���������� */
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aQualityManagmentExecute(TObject *Sender)
{
	/* ���������� �������� */

	LoadLink("http://95.213.196.60:9099/esmt/smk/");
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aUsersExecute(TObject *Sender)
{
	/* ����������� ������ ������������� */

	std::auto_ptr<TfrmUsers> dlg (new TfrmUsers(this));
	dlg->Show(0);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aLocParkExecute(TObject *Sender)
{
	/* ������������ ���� (31.01.2014) */
	ShowForm("TfrmLocPark", iTfrmLocPark);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::dxBarButton24Click(TObject *Sender)
{
	/* �������� ������ */
	LoadLink("http://asunt.ru/npk/materiali-npl/pervaya-npk/docs/41-eskiznyj-proekt-esmt");
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::dxBarButton25Click(TObject *Sender)
{
	/* ����� ����� */
	LoadLink("http://asunt.ru/npk/materiali-npl/pervaya-npk/docs/44-kontseptsiya-asunt");
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aProjectWebsiteExecute(TObject *Sender)
{
	LoadLink("http://asunt.ru");
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aLoad_NSI_ResponsibleExecute(TObject *Sender)
{
	/* �������� ��� �������� ����� ��� ������� */

	TClientDataSet *cds	= DMMain->cdsRSh_NSI_Responsible;
	TDataSource *ds		= DMMain->dsRSh_NSI_Responsible;

	try
	{
        TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.SMT_NSI_PKG.smt_nsi_responsible_dpt_cur";
        cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
        cds->Params->CreateParam(ftInteger, "o_default", ptInputOutput)->AsInteger = 0;
        TDMMain::OpenDS(cds, "OPEN", "CT", 1);
    }
	catch (Exception &e)
	{
		throw Exception ("< UM-1 > : ������ �������� ��� �������� ����� (������).\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aLoad_NSI_IncidentReasonTreeExecute(TObject *Sender)
{
    /* ��������� ������ ������ ��������� */

    TClientDataSet *cds	= DMMain->cds_NSI_ReasonTree;
	TDataSource *ds		= DMMain->ds_NSI_ReasonTree;

	try
    {
    	TDMMain::ClearDataSet(cds);
    	cds->CommandText = "SMT.NSI_PKG.reason_tree_cur";
    	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
        TDMMain::OpenDS(cds, "OPEN", "CT", 1);
    }
    catch (Exception &e)
    {
		throw Exception ("< UM-2 > : ������ �������� ��� ������ ��������� (������).\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aLoad_NSI_UnivExecute(TObject *Sender)
{
	/* ��������� ������ ������ ��������� */

	TClientDataSet *cds	= DMMain->cds_NSI_Univ;
	TDataSource *ds		= DMMain->ds_NSI_Univ;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.NSI_PKG.nsi_univ_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UM-3 > : ������ �������� ����� ���.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aAboutExecute(TObject *Sender)
{
	std::auto_ptr<TfrmVersion> dlg (new TfrmVersion(this));
	dlg->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aDepoEnterExecute(TObject *Sender)
{
	/* ������ � ���� (24.04.2014) */
	ShowForm("TfrmDepoEnter", iTfrmDepoEnter);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aLoad_NSI_Pred_Full_ListExecute(TObject *Sender)
{
	/* ��������� ������ ���� ���� */

	TClientDataSet *cds	= DMMain->cds_NSI_TCH_Full_List;
	TDataSource *ds		= DMMain->ds_NSI_TCH_Full_List;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.NSI_PKG.tch_full_list_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UM-4 > : ������ �������� ��� ����.\n" + e.Message);
	}

	// ��������� ���� �������� �������

	cds	= DMMain->cdsRSh_NSI_BrigDepo;
	ds 	= DMMain->dsRSh_NSI_BrigDepo;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.smt_nsi_pkg.smt_nsi_depot_plain_cur";
		cds->Params->CreateParam(ftInteger, "p_road_kod", ptInput)->AsInteger = 0;
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		DMMain->btvNSI_BrigDepo->DataController->DataSource = ds;
	}
	catch (Exception &e)
	{
		throw Exception ("< UM-5 > : ������ �������� ������ ���� �������� ������.\n" + e.Message);
	}

	// ��������� ������ ���� �������

	cds	= DMMain->cds_NSI_Station;
	ds	= DMMain->ds_NSI_Station;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.NSI_PKG.nsi_station_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UM-6 > : ������ �������� ��� �������.\n" + e.Message);
	}

	// ��������� ������ ���� ���������

	cds	= DMMain->cds_NSI_Pereg;
	ds	= DMMain->ds_NSI_Pereg;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.NSI_PKG.nsi_pereg_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UM-7 > : ������ �������� ��� ���������.\n" + e.Message);
	}

	cds	= DMMain->cdsRSh_NSI_EQ_Mfr;
	ds	= DMMain->dsRSh_NSI_EQ_Mfr;

	// ��������� ������ ���� ������������� ������������
	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.NSI_PKG.eq_mfr_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		DMMain->btvNSI_EQ_Mfr->DataController->DataSource = ds;
	}
	catch (Exception &e)
	{
		throw Exception ( "< UM-8 > : ������ �������� ������ ������������� ������������.\n" + e.Message);
	}

	// ��������� ���
	cds	= DMMain->cdsFirmTree;
	ds	= DMMain->dsFirmTree;
	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.SMT_REPORT_PKG.firm_tree_cur";
		cds->Params->CreateParam(ftInteger, "p_id_user",     ptInput )->AsInteger = UserID;
		cds->Params->CreateParam(ftString,  "p_code_object", ptInput )->AsString  = "aIncident";
		cds->Params->CreateParam(ftCursor,  "o_cur",         ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UM-9 > : ������ �������� ������ �����������.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aLoad_NSI_EnterDepot_ReasonExecute(TObject *Sender)
{
	/* �������� ��� ������ ������ � ���� */

	TClientDataSet *cds = DMMain->cdsRSh_NSI_EnterDepot_Reason;
	TDataSource *ds 	= DMMain->dsRSh_NSI_EnterDepot_Reason;

	TDMMain::ClearDataSet(cds);
	cds->CommandText = "SMT.smt_nsi_pkg.nsi_enter_depot_reason_cur";
	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

	try
	{
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UM-10 > : ������ �������� ������ ������ ������ � ����.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aLoad_NSI_Kasant_ENSIExecute(TObject *Sender)
{
	/* ��������� ������� ������ + ��������� ������������ �� ������� �������� 163 */

	TClientDataSet *cds	= DMMain->cds_NSI_Kasant_ENSI;
	TDataSource *ds		= DMMain->ds_NSI_Kasant_ENSI;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.NSI_PKG.kasant_state_safety_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UM-11 > : ������ �������� ����� ��� �� �������.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aLoad_NSI_TCHRExecute(TObject *Sender)
{
	/*
		���������� ������ ��� � ��������� � ���������������
		���, � �.�. ������������� (��� �������������� �����)
	*/

	TClientDataSet	*cds			= DMMain->cdsFirmRepair;
	TDataSource		*ds				= DMMain->dsFirmRepair;
	TcxGridDBBandedTableView *btv	= DMMain->btvNSI_Filial_Department_TCHR;

	try
	{
		btv->DataController->DataSource = 0;

		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.NSI_PKG.tchr_full_list_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btv->DataController->DataSource = ds;
	}
	catch (Exception &e)
	{
		throw Exception ("< UM-12 > : ������ �������� ��������� �����������.\n" + e.Message);
	}

	// �� ������ �������
	cds	= DMMain->cdsOwnerFirmRepair;
	ds	= DMMain->dsOwnerFirmRepair;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.NSI_PKG.tchr_list_cur";
		cds->Params->CreateParam(ftInteger, "p_id_user",     ptInput)->AsInteger = UserID;
		cds->Params->CreateParam(ftString,  "p_code_object", ptInput)->AsString  = "aIncident";
		cds->Params->CreateParam(ftCursor,  "o_cur",         ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UM-13 > : ������ �������� �������� ����� �������������-���.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aPortalExecute(TObject *Sender)
{
	/* ���������� �������� */

	LoadLink("http://95.213.196.60:9099/esmt/");
}
//---------------------------------------------------------------------------


void __fastcall TfrmMain::aLoad_NSI_AggTypeExecute(TObject *Sender)
{
	/* ���� ��������� */

	TClientDataSet *cds	= DMMain->cds_NSI_AggType;
	TDataSource *ds		= DMMain->ds_NSI_AggType;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.nsi_pkg.eq_agg_type_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ( "< UM-14 > : ������ �������� ������ ����� ���������.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aNSI_FirmExecute(TObject *Sender)
{
	/* ��� ����������� (21.05.2014) */
	ShowForm ("TfrmNSI_Firm", iTfrmNSI_Firm);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::tmrLoadTimer(TObject *Sender)
{
	tmrLoad->Enabled = false;

    try
	{
		pb->Position++;
		Update();

		gbLoading->Caption = "�������� ����� � �������...";
		Update();
		aLoad_Role->Execute();
		pb->Position++;
		Update();

		aSetAction->Execute();
		aSetForm->Execute();

        // ��������� ���
        gbLoading->Caption = "�������� ��� �������������...";
        Update();
		aLoad_NSI_Responsible->Execute();
        pb->Position++;
        Update();

        gbLoading->Caption = "�������� ��� ������ ���������...";
        Update();
        aLoad_NSI_IncidentReasonTree->Execute();
        pb->Position++;
        Update();

        gbLoading->Caption = "�������� ����� ���...";
        Update();
        aLoad_NSI_Univ->Execute();
        pb->Position++;
        Update();

        gbLoading->Caption = "�������� ��� �����������...";
        Update();
        aLoad_NSI_Pred_Full_List->Execute();
        pb->Position++;
        Update();

        gbLoading->Caption = "�������� ��� ������ ������ � ����...";
        Update();
        aLoad_NSI_EnterDepot_Reason->Execute();
        pb->Position++;
        Update();

        gbLoading->Caption = "�������� ��� ������...";
        Update();
        aLoad_NSI_Kasant_ENSI->Execute();
        pb->Position++;
        Update();

        gbLoading->Caption = "�������� ��� ���...";
        Update();
        aLoad_NSI_TCHR->Execute();
        pb->Position++;
        Update();

		gbLoading->Caption = "�������� ��� ����� ���������...";
		Update();
		aLoad_NSI_AggType->Execute();
		pb->Position++;
		Update();

        gbLoading->Caption = "�������� ���� ��������� �������";
        Update();
		Sleep(250);
		gbLoading->Visible = false;

    }
    catch (Exception &e)
    {
		TDMMain::ShowAppException(AET_EXCEPTION, "������ ���������� ��������������� ��������", e.Message);
        Application->Terminate();
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aMyAccessExecute(TObject *Sender)
{
	/* �������� ������ ������ ������� */


	std::auto_ptr<TfrmMyAccess> dlg (new TfrmMyAccess(this));
	dlg->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aReportsWebExecute(TObject *Sender)
{
	/* ����������� ������ (web) */
	TDMMain::LogEvenEnterExit("����. ����������� ������ (web).");

	AnsiString Url;
	Url = cfg.ini->ReadString("ApplicationServers", "StandardReportsUrl", "");

	if (Url == "") {
		Url = "http://esmt.asunt.ru:9099/esmt/standard-reports/";
	}

	if (cfg_.hashedPwd.Length() > 0) {

//		AnsiString targetUrl = "http://esmt.asunt.ru:9099/esmt/sso.html?user=";
		AnsiString targetUrl = Url + "sso.html?user=";
		AnsiString auxFragment = "&pwd=";
		targetUrl = targetUrl + cfg_.userLogin + auxFragment + cfg_.hashedPwd;
		LoadLink(targetUrl.c_str());
	}
	else {
		LoadLink(Url.c_str()); //http://95.213.196.60:9099/esmt/report-builder/
	}

//	LoadLink("http://esmt.asunt.ru:9099/esmt/standard-reports/"); //http://95.213.196.60:9099/esmt/standard-reports/
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aESMT_PortalExecute(TObject *Sender)
{
	/* ������ ���� */
	LoadLink("http://95.213.196.60:9099/esmt/");
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::dxBarButton34Click(TObject *Sender)
{
	/* ������������ ���� */
	LoadLink("ftp://ESMT_ADM:Esmt5789@asunt.ru/Docs/WorkDoc/LocPark_UserManual.pdf");
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::dxBarButton35Click(TObject *Sender)
{
	/* ���������� �������� ������� */
	LoadLink("ftp://ESMT_ADM:Esmt5789@asunt.ru/Docs/WorkDoc/Filtration_UserManual.pdf");
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aMonitorExecute(TObject *Sender)
{
	/* ������ ����������� */
	TDMMain::LogEvenEnterExit("����. ������ �����������.");
	LoadLink("http://locomonitor.ru/");
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::dxBarButton37Click(TObject *Sender)
{
	/* ����� ���� ����� �������� �������� - �� ����������, �� ��������� */
	/* todo: �������� ��� ������� ���������� ������� */
	std::auto_ptr<TfrmSqlExecute> dlg (new TfrmSqlExecute(this));
	dlg->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aReasonExecute(TObject *Sender)
{
	/* ����������: ������� ��������� */
	ShowForm("Tfrm_Reason", iTfrm_Reason);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aControlCallingExecute(TObject *Sender)
{
	/* �������� �������/������� */
	ShowForm("TfrmCallingControl", iTfrmCallingControl);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aMalfunctionExecute(TObject *Sender)
{
	/* ����������: ��� ������ */
	ShowForm("TfrmDict_Malfunction", iTfrmDict_Malfunction);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aDictStandartsExecute(TObject *Sender)
{
	/* ���������� ���������� ��, �� */
	ShowForm("TfrmStandarts", iTfrmStandarts);
}
//---------------------------------------------------------------------------


void __fastcall TfrmMain::aEquipmentExecute(TObject *Sender)
{
	/* ���������� ������������ */
	ShowForm("TfrmDic_Equipment", iTfrmDic_Equipment);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aReportLRZExecute(TObject *Sender)
{
	/* ����� �� ��� */

	std::auto_ptr<TClientDataSet> dsaSess (new TClientDataSet(NULL));

	AnsiString Url;
	AnsiString Key = "";

	Url = cfg.ini->ReadString("ApplicationServers", "DepoEnterURL", "");

	if (Url == "") {
		MessageBox (NULL, "�������� ��������� ������ ������ ������ ��� � INI-�����.", "������ INI-�����", MB_ICONSTOP);
		return;
	}

	try
	{
		TDMMain::ClearDataSet(dsaSess.get());
		dsaSess->CommandText = "SMT.RULE_PKG.CREATESESSION";
		dsaSess->Params->CreateParam(ftInteger, "pUserId", ptInput)->AsInteger    = UserID;
		dsaSess->Params->CreateParam(ftString, "pIp", ptInput)->AsString 	   	  = DefaultIP;
		dsaSess->Params->CreateParam(ftString, "oKey", ptInputOutput)->AsString   = Key;
		dsaSess->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsaSess->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);
		TDMMain::OpenDS(dsaSess.get(), "EXEC", "CT", 1);

		Key = dsaSess->Params->ParamByName("oKey")->AsString;

		if (dsaSess->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (dsaSess->Params->ParamByName("o_Err_Msg")->AsString);
		else
		{
			Url = Url + Key;
			LogEvent("REP-URL:" + Url);
			ShellExecute(Application->Handle, NULL, Url.c_str(), NULL, NULL, SW_MAXIMIZE);
		}
	}
	catch (Exception &e)
	{
		throw Exception ("< UM-15 > : ������ ������ ������ ���.\n" + e.Message);    //"< REP-1 >
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aNSIExecute(TObject *Sender)
{
	/* ��� ��������. ������� ������ � ����. ������� ���������� ��������� */
	ShowForm("TfrmDicCloseDepoIncident", iTfrmDicCloseDepoIncident);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aWineSideExecute(TObject *Sender)
{
	/* ������: �������� ������� */
	ShowForm("TfrmWineSide", iTfrmWineSide);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::LoadLink(char *str)
{
	char buf_str[2000];

	sprintf(buf_str, str);
	ShellExecute(Application->Handle, NULL, buf_str, NULL, NULL, SW_MAXIMIZE);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aControlProblemExecute(TObject *Sender)
{
	/* ��������� ���������� */

	std::auto_ptr<TClientDataSet> dsaSess (new TClientDataSet(NULL));
	std::auto_ptr<TClientDataSet> dsaAdd (new TClientDataSet(NULL));

	int Isn = 0;
	AnsiString Url;
	AnsiString Key = "";

	Url = cfg.ini->ReadString("ApplicationServers", "ProblemsURL", "");

	if (Url == "") {
		MessageBox (NULL, "�������� ��������� ������ ������ ��� � INI-�����.", "������ INI-�����", MB_ICONSTOP);
		return;
	}

	try
	{
		TDMMain::ClearDataSet(dsaSess.get());
		dsaSess->CommandText = "SMT.RULE_PKG.CREATESESSION";
		dsaSess->Params->CreateParam(ftInteger, "pUserId", ptInput)->AsInteger    = UserID;
		dsaSess->Params->CreateParam(ftString, "pIp", ptInput)->AsString 	   	  = DefaultIP;
		dsaSess->Params->CreateParam(ftInteger, "pIsn", ptInputOutput)->AsInteger = Isn;
		dsaSess->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsaSess->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);
		TDMMain::OpenDS(dsaSess.get(), "EXEC", "CT", 1);

		Isn = dsaSess->Params->ParamByName("pIsn")->AsInteger;

		if (dsaSess->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (dsaSess->Params->ParamByName("o_Err_Msg")->AsString);
		else
		{
			TDMMain::ClearDataSet(dsaAdd.get());
			dsaAdd->CommandText = "SMT.RULE_PKG.ADDRULESMTCONDITION";
			dsaAdd->Params->CreateParam(ftInteger, "pSessionisn", ptInput)->AsInteger = Isn;
			dsaAdd->Params->CreateParam(ftString, "pCondition", ptInput)->AsString 	  = "";
			dsaAdd->Params->CreateParam(ftString, "pKey", ptInputOutput)->AsString    = Key;
			dsaAdd->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
			dsaAdd->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);
			TDMMain::OpenDS(dsaAdd.get(), "EXEC", "CT", 1);

			Key = dsaAdd->Params->ParamByName("pkey")->AsString;

			if (dsaAdd->Params->ParamByName("o_Err_Code")->AsInteger < 0)
				throw Exception (dsaAdd->Params->ParamByName("o_Err_Msg")->AsString);
			else
			{
				Url = Url + Key;
				ShellExecute(Application->Handle, NULL, Url.c_str(), NULL, NULL, SW_MAXIMIZE);
			}
		}
	}
	catch (Exception &e)
	{
		throw Exception ("< UM-16 > : ������ �������� ���.\n" + e.Message);      //< RP-1 >
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmMain::aActivUsersExecute(TObject *Sender)
{
	/* ���������� ������������� */
	std::auto_ptr<TfrmActivUsers> dlg (new TfrmActivUsers(this));
	dlg->ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TfrmMain::aAdminNewExecute(TObject *Sender)
{
	/* ����������������� (�����) */
	ShowForm("TfrmAdmin", iTfrmAdmin);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aKiparProgExecute(TObject *Sender)
{
	/* �������-������� */
	ShowForm("TfrmKiparPrognos", iTfrmKiparPrognos);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aLoad_RoleExecute(TObject *Sender)
{
	TClientDataSet  *cds = DMMain->cdsUserRole;
	TDataSource     *ds  = DMMain->dsUserRole;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.U_USERS_ADMIN.u_user_admin_cur";
		cds->Params->CreateParam(ftCursor,  "o_cur",     ptInputOutput);
		cds->Params->CreateParam(ftInteger, "p_user_id", ptInput)->AsInteger = UserID;
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ( "< UM-15 > : ������ �������� ���� � ������� ������������.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aOverallReferenceExecute(TObject *Sender)
{
	/* ����� ������� (��������� ���) */
	std::auto_ptr<TfrmAnalyticsBMZ> dlg (new TfrmAnalyticsBMZ(this));
	dlg->Show(1);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aDailyReferenceExecute(TObject *Sender)
{
	/* ���������� ������� (��������� ���) */
	std::auto_ptr<TfrmAnalyticsBMZ> dlg (new TfrmAnalyticsBMZ(this));
	dlg->Show(2);
}
//---------------------------------------------------------------------------
void __fastcall TfrmMain::ShowForm(AnsiString classname, int IndxForm)
{
	TForm *frm = 0;
	// �������, ������� �� ����� �����
	bool Flag = false;
	for(int i=0; i<MDIChildCount; i++)
	{
		if(MDIChildren[i]->ClassName() == classname)
		{
			frm = MDIChildren[i];
			Flag = true;
			break;
		}
	}

	// ���� ��� ����, �� �������
	if (Flag == false)
	{
		switch (IndxForm)
		{
			//����������������� (����)
			case iTfrmAdmin: 				{
												frm = new TfrmAdmin(Application);
												break;
											}
			//������������ ����
			case iTfrmLocPark:		 		{
												frm = new TfrmLocPark(Application);
												break;
											}
			//������ � ����
			case iTfrmDepoEnter:			{
												frm = new TfrmDepoEnter(Application);
												break;
											}
			//�������� �������/�������
			case iTfrmCallingControl:	 	{
												frm  =  new TfrmCallingControl(Application);
												break;
											}
			//���������
			case iTfrmIncident:				{
												frm  =  new TfrmIncident(Application);
												break;
											}
			//��������� ����������� (�������-�������)
			case iTfrmKiparPrognos:			{
												frm  =  new TfrmKiparPrognos(Application);
												break;
											}
			//������
			case iTfrmReports: 				{
												frm  =  new TfrmReports(Application);
												break;
											}
			//������ �������������
			case iTfrmReport_Interactive:	{
												frm  =  new TfrmReport_Interactive(Application);
												break;
											}
			//��� ����������� (21.05.2014)
			case iTfrmNSI_Firm:				{
												frm  =  new TfrmNSI_Firm(Application);
												break;
											}
			//��� ��������. ������� ������ � ����. ������� ���������� ���������
			case iTfrmDicCloseDepoIncident:	{
												frm  =  new TfrmDicCloseDepoIncident(Application);
												break;
											}
			//����������: ������� ���������
			case iTfrm_Reason:				{
												frm  =  new Tfrm_Reason(Application);
												break;
											}
			//���������� ������������
			case iTfrmDic_Equipment:		{
												frm  =  new TfrmDic_Equipment(Application);
												break;
											}
			//������: �������� �������
			case iTfrmWineSide:				{
												frm  =  new TfrmWineSide(Application);
												break;
											}
			//����������: ��� ������
			case iTfrmDict_Malfunction:		{
												frm  =  new TfrmDict_Malfunction(Application);
												break;
											}
			//���������� ���������� ��, ��
			case iTfrmStandarts:			{
												frm  =  new TfrmStandarts(Application);
												break;
											}

		}
	}
	frm->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aAnalyzeExecute(TObject *Sender)
{
	/*��������� ������*/
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::aExportExcelExecute(TObject *Sender)
{
	/* �������� ��� �� ���������� */

	std::auto_ptr<TfrmIncidentExport> dlg (new TfrmIncidentExport(this));
	dlg->deDateFrom->Date	= Date();
	dlg->deDateTo->Date		= Date();
	dlg->KodFirm			= 599002692;
	dlg->KodSer				= 0;
	dlg->LocSec				= 0;
	dlg->LocNum				= 0;
	dlg->LocObj				= 0;
	dlg->ShowModal();
}
//---------------------------------------------------------------------------
