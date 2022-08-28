#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include <memory>
#include <stdio.h>
//--
#include <string.h>


#include <winsock2.h>
#include <windows.h>
#include <iostream>
#include <vector>

#include <algorithm>
#include <cctype>
#include <locale>
#include <fstream>
#include <ctime>
#include <cstdlib>
//--

#include "uListReports.h"

#include "uBinFunction.h"
#include "config.h"
#include "public.h"
#include "UDMMain.h"
#include "Utils_JK.h"
#include "UTextEditDialog.h"
#include "UEdit_Attach.h"
#include "URecordSheetView.h"
#include "UEdit_Template.h"
#include "UTemplates.h"
#include "uIncidentExport.h"

#include "UIncident.h"
#include "URecordSheet.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxHyperLinkEdit"
#pragma link "cxDBTL"
#pragma link "cxTL"
#pragma link "cxTLData"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma link "dxStatusBar"
#pragma link "cxNavigator"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "cxProgressBar"
#pragma resource "*.dfm"
TfrmIncident *frmIncident;
// ��� ��������� ����������
const int MaxIncidentTime4New = 3;
UnicodeString TplLockPark = "";

using namespace std;
#pragma comment(lib,"ws2_32.lib")
//---------------------------------------------------------------------------
__fastcall TfrmIncident::TfrmIncident(TComponent* Owner)
	: TForm(Owner)
{
	pc->ActivePage	= tsMain;
    pc->HideTabs	= true;

	aRefresh->Enabled		= false;
	aCloseHandly->Visible	= (DMMain->IsUserFunction("esmt-developer") == true ); // �������������� �������� ��� ��� ���������������
	enumFilterPeriodType pt	= cfg.ini->ReadInteger("frmIncident", "FilterPeriodType", rFilterActive);

    if (pt == rFilterActive)
	{
		btnFilter_Active->ButtonStyle	= bsChecked;
        btnFilter_Active->Down			= true;
    	aFilter_Active->Execute();
    }
    else
    {
        btnFilter_Period->Down = true;
		aFilter_Period->Execute();
    }


    deDateBegin->Date  = cfg.ini->ReadDate("frmIncident", "DateBegin", Date() - 7);
    deDateFinish->Date = cfg.ini->ReadDate("frmIncident", "DateFinish", Date());

	aLoad_FTP_Params->Execute();

    aRestore_Column_Customization->Execute();

	aLoad_NSI_FirmTree->Execute();

	aLoadDoc->Execute();

	aLoadSer->Execute(); //��������� ������ �����

//	aLoadNum->Execute(); //��������� ������ �������

    aRefresh->Enabled = true;

    TcxGridStorageOptions opt;
    opt << gsoUseFilter << gsoUseSummary;
	btvIncident->StoreToIniFile(ProfileFolder + "��_���������.prof", true, opt);

    aFill_ProfileList->Execute();
    cbProfile->EditValue = "��_���������"; //cfg.ini->ReadString("TfrmIncident_Settings", "CurrentProfile", ((TcxLookupComboBoxProperties*)cbProfile->Properties)->Items->Strings[0]);

	try
	{
		// ������������ ����������� ��������� �����
		TcxGridStorageOptions opt;
		opt << gsoUseFilter << gsoUseSummary;
		// ����� ���������� �������������� ��������� ��������� ����� �� ���� ��� ���������
		if (cfg.ini->ReadInteger("frmIncident", "ApplyGridSettings_3", 0) == 1)
			btvIncident->RestoreFromIniFile(ProfileFolder + "Incident.ini", true, false, opt);

		cfg.ini->WriteInteger("frmIncident", "ApplyGridSettings_3", 1);

		btvIncident->OptionsView->GroupByBox = true;	// � �� ��� ������������� ���������� ����� �������������� �������� ��� ini
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UI-1 > : ������ ���������� ��������������� ��������.\n", e.Message);
		this->Close();
	}

	// �������� �������
	TplLockPark = cfg_.ini->ReadString("Templates", "tplIncident", "");

	if (TplLockPark == "")
		lblTemplateName->Caption = lblTemplateName->Caption + "��������";
	else
		lblTemplateName->Caption = lblTemplateName->Caption + TplLockPark;

	// ��������������
	//tmr->Enabled = true;

	aSetAction->Execute();

	lblNeed2Refresh->Visible = false;

	// ������� "��������� ���"
	if (DMMain->IsFunction("f_code", "aIncident_aViolOperatMod") == true)
	{
		aDelete->Enabled			= false;
		aNew->Enabled				= false;
		aCreateTemplate->Enabled	= false;
		aViewTemplate->Enabled		= false;
		aDetail->Enabled			= false;
		dxBarSubItem2->Enabled		= false;
		aNewProblem->Enabled        = false;
	}

	TDMMain::LogEvenEnterExit("����. ���������.");
}
//---------------------------------------------------------------------------
void __fastcall TfrmIncident::FormClose(TObject *Sender, TCloseAction &Action)
{
/*	cfg.ini->WriteDate("frmIncident", "DateBegin", deDateBegin->Date);
	cfg.ini->WriteDate("frmIncident", "DateFinish", deDateFinish->Date);
*/
	/*
	try
	{
		// ��������� ��������� �����
		TcxGridStorageOptions opt;
		opt << gsoUseFilter << gsoUseSummary;
		btvIncident->StoreToIniFile(ProfileFolder + "Incident.ini", false, opt);
	}
	catch ( Exception &e )
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "<�-99>: ������ ���������� ��������", e.Message);
	}

	*/

	TDMMain::LogEvenEnterExit("�����. ���������.");

	Action = caFree;
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::BTV_LocateRecord (  TcxGridDBBandedTableView *btv, int id )
{
	// ����� � ��������� ����� �� ������ � TcxGridDBBandedTableView

	if (btv->DataController->RowCount > 0)
	{
		if (btv->DataController->LocateByKey(id) == false)
		{
			btv->Controller->FocusRecord(btv->Controller->TopRecordIndex,true);
			if (btv->Controller->FocusedRecord->Expandable && id == 0)
				btv->Controller->FocusedRecord->Expand(false);
		}
		btv->Controller->FocusedRecord->Selected = true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::UniversalRefresh(enumRelationType p_relation_type, TClientDataSet *cds)
{
	/* ������������� ����� ��������� �������� ������ ���������� */

	try
	{
		TDMMain::ClearDataSet(cds);

		// ������� ������ ���
		if (DMMain->IsFunction("f_code", "aIncident_aViolOperatMod") == true)
		{
			cds->CommandText = "SMT.INCIDENT_PKG.incident_2_0_nre_list_cur";
			cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime   = deDateBegin->Date;
			cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime  = deDateFinish->Date;
			cds->Params->CreateParam(ftInteger,  "p_show_all", ptInput)->AsInteger      = (CurrentPeriodType == rFilterActive ? 0 : 1);
			cds->Params->CreateParam(ftInteger,  "p_relation_type", ptInput)->AsInteger = p_relation_type;
			cds->Params->CreateParam(ftInteger,  "p_access", ptInput)->AsInteger        = cbFirmTree_->Tag; //(int)cbFirmTree->EditValue; //DepotID;
		}
		else
		{
			cds->CommandText = "SMT.INCIDENT2_PKG.incident_2_0_nloc_ser_list_cur"; //incident_2_0_list_cur
			cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime   = deDateBegin->Date;
			cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime  = deDateFinish->Date;
			cds->Params->CreateParam(ftInteger,  "p_show_all", ptInput)->AsInteger      = (CurrentPeriodType == rFilterActive ? 0 : 1);
			cds->Params->CreateParam(ftInteger,  "p_relation_type", ptInput)->AsInteger = p_relation_type;
			cds->Params->CreateParam(ftInteger,  "p_access", ptInput)->AsInteger        = cbFirmTree_->Tag; //(int)cbFirmTree->EditValue; //DepotID;
			cds->Params->CreateParam(ftInteger,  "p_kod_ser",    ptInput)->AsInteger = LocSer;
			cds->Params->CreateParam(ftInteger,  "p_nom_sec",    ptInput)->AsInteger = LocSec;
			cds->Params->CreateParam(ftInteger,  "p_nom_object", ptInput)->AsInteger = LocNum;
		}

		/*
		cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime   = deDateBegin->Date;
		cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime  = deDateFinish->Date;
		cds->Params->CreateParam(ftInteger,  "p_show_all", ptInput)->AsInteger      = (CurrentPeriodType == rFilterActive ? 0 : 1);
		cds->Params->CreateParam(ftInteger,  "p_relation_type", ptInput)->AsInteger = p_relation_type;
		cds->Params->CreateParam(ftInteger,  "p_access", ptInput)->AsInteger        = cbFirmTree_->Tag; //(int)cbFirmTree->EditValue; //DepotID;
		cds->Params->CreateParam(ftInteger,  "p_kod_ser",    ptInput)->AsInteger = LocSer;
		cds->Params->CreateParam(ftInteger,  "p_nom_sec",    ptInput)->AsInteger = LocSec;
		cds->Params->CreateParam(ftInteger,  "p_nom_object", ptInput)->AsInteger = LocNum;
		*/
		cds->Params->CreateParam(ftCursor,   "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UI-2 > : ������ ���������� �������� ������ ���������� (��������� � ��).\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::UniversalBTVApplyRefresh( TDataSource *ds, TcxGridDBBandedTableView *btv, int key_value, bool DoLocate )
{
	/* ������������� ��������� ��������� �������� �� �����, ����� �� ����� � �� ����� */

	bool lct = false;
	try
	{
		btv->OptionsView->NoDataToDisplayInfoText = NoDataTextDefault;
		btv->DataController->DataSource			  = ds;

		if (DoLocate == true && btv->DataController->RowCount > 0)
		{
			//lct = ((TClientDataSet*)ds->DataSet)->Locate("sheet_id", key_value, TLocateOptions());
			lct = btv->DataController->LocateByKey(key_value);

			if (lct == false)
				btv->Controller->FocusRecord(btv->Controller->TopRecordIndex,true);

			btv->Controller->FocusedRecord->Selected = true;
			btv->Controller->FocusedRecord->Expand(false);
		}
	}
	catch (Exception &e)
	{
		btv->OptionsView->NoDataToDisplayInfoText = ErrorRefreshText;
		throw Exception("< UI-3 > : ������ ��������� �������� ����� �������.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aRefreshExecute(TObject *Sender)
{
	/*�������� ������ ����������*/

	int vID;
	TcxGridDBBandedTableView 	*btv;

	if (btvIncident->DataController->RowCount > 0 && btvIncident->Controller->FocusedRow != NULL)
		vID = cdsIncidentList->FieldByName("sheet_id")->AsInteger;
	else
		vID = cfg.ini->ReadInteger("frmIncident", "Last_Sheet_ID", 0);

	try
	{
		aApplyProfile->Enabled = false;
		btv 	= btvIncident;
		btv->OptionsView->NoDataToDisplayInfoText = RefreshText;
		btv->DataController->DataSource = 0;
		mmIncident_Descr->DataBinding->DataSource = 0;

		grdIncident->Update();
		mmIncident_Descr->Update();

		UniversalRefresh(rtParent, cdsIncidentList);
		UniversalBTVApplyRefresh(dsIncidentList, btvIncident, vID, true);

		mmIncident_Descr->DataBinding->DataSource 	= dsIncidentList;

		if (CurrentPeriodType == rFilterActive)
			pnlGridTitle->Caption = cbFirmTree_->Text.Trim() + " : ��������";	// ��� �� ����������� ��������.
		else
			pnlGridTitle->Caption = cbFirmTree_->Text.Trim() + " : " + deDateBegin->Text + " - " + deDateFinish->Text;

		lblNeed2Refresh->Visible= false;
		aApplyProfile->Enabled = true;
	}
	catch (Exception &e)
	{
		aApplyProfile->Enabled = true;
		btv->OptionsView->NoDataToDisplayInfoText = ErrorRefreshText;
		throw Exception ("�������� ���������:\n" + e.Message);
	}

	try
	{
		btv = btvIncidentChild;
		btv->OptionsView->NoDataToDisplayInfoText = RefreshText;
		btv->DataController->DataSource = 0;
		grdIncident->Update();

		UniversalRefresh(rtChild, cdsIncidentListChild);

		UniversalBTVApplyRefresh(dsIncidentListChild, btvIncidentChild, 0, false);

		//btv->ViewData->Expand(true);
	}
	catch (Exception &e)
	{
		btv->OptionsView->NoDataToDisplayInfoText = ErrorRefreshText;
		throw Exception ("��������� ���������:\n" + e.Message);
	}

	//btnRefresh->Style = NULL;

	if (spltrGraph->State == ssOpened)
		aRefreshRcvDinamic->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aDetailExecute(TObject *Sender)
{
	/* ����������� ��������� */

	if (((TcxGridDBBandedTableView*)grdIncident->ActiveView)->Controller->FocusedRow == NULL)
		return;

	std::auto_ptr<TfrmRecordSheet> dlg (new TfrmRecordSheet(this));
	TClientDataSet	*cds = (TClientDataSet*) ((TcxGridDBBandedTableView*)grdIncident->FocusedView)->DataController->DataSet; //   cdsIncidentList;
	StrctRecordSheet 			ep;

	ep.bWasChange 				= false;
	ep.sheet_id 				= cds->FieldByName("sheet_id")->AsInteger;
	ep.sheet_no					= cds->FieldByName("sheet_no")->AsString;
	ep.state_id					= cds->FieldByName("state_id")->AsInteger;
	ep.create_mode				= cds->FieldByName("create_mode")->AsInteger;
	ep.criticality_id			= cds->FieldByName("criticality_id")->AsInteger;
	ep.date_fail				= cds->FieldByName("date_fail")->AsDateTime;
	ep.date_create				= cds->FieldByName("date_create")->AsDateTime;
	ep.date_diagnost_msg		= cds->FieldByName("date_diagnost_msg")->AsDateTime;
	ep.date_close				= cds->FieldByName("date_close")->AsDateTime;
	ep.inc_lasting				= cds->FieldByName("incident_time")->AsInteger;
	ep.kod_ser					= cds->FieldByName("kod_ser")->AsInteger;
	ep.nom_loc					= cds->FieldByName("nom_loc")->AsInteger;
	ep.nom_sec					= cds->FieldByName("nom_sec")->AsInteger;
	ep.kod_depo					= cds->FieldByName("kod_depo")->AsInteger;
	ep.train_idx_makeup			= cds->FieldByName("idx_makeup")->AsInteger;
	ep.train_idx_wheel			= cds->FieldByName("idx_wheel")->AsInteger;
	ep.train_idx_terminus		= cds->FieldByName("idx_terminus")->AsInteger;
	ep.train_organize			= cds->FieldByName("organize")->AsInteger;
	ep.train_destination		= cds->FieldByName("destination")->AsInteger;
	ep.train_length				= cds->FieldByName("length")->AsInteger;
	ep.brig_tnom				= cds->FieldByName("brig_t_nom")->AsInteger;
	ep.brig_fio					= cds->FieldByName("brig_name")->AsString;
	ep.brig_pred_id				= cds->FieldByName("brig_kod_depo")->AsInteger;
	ep.fail_type_place			= cds->FieldByName("fail_type_place")->AsInteger;
	ep.FailPlaceId				= cds->FieldByName("fail_place_id")->AsInteger;
	ep.fail_place_name			= cds->FieldByName("fail_place_name")->AsString;
	ep.source_type_id			= cds->FieldByName("source_type_id")->AsInteger;
	ep.source_info_id			= cds->FieldByName("source_info_id")->AsInteger;
	ep.source_info_pred_name	= cds->FieldByName("source_info_pred_name")->AsString;
	ep.kod_firm_repair			= cds->FieldByName("kod_firm_repair")->AsInteger;
	ep.kod_filial				= cds->FieldByName("kod_firm_service")->AsInteger;
	ep.kod_department			= cds->FieldByName("kod_department")->AsInteger;
	ep.BaseRepairFirmNameRoad	= cds->FieldByName("base_firm_road_repair")->AsString;
	ep.ServiceFirmRoadName		= cds->FieldByName("service_firm_name")->AsString;
	ep.incident_descr			= cds->FieldByName("incident_descr")->AsString;
	ep.incident_descr_e         = cds->FieldByName("incident_descr_e")->AsString;
	//
	ep.kasant_idx_id			=  cds->FieldByName("kasant_idx_id")->AsInteger;
	ep.kasant_traffic_safety_id	=  cds->FieldByName("kasant_traffic_safety_id")->AsInteger;
	ep.kasant_state_id			=  cds->FieldByName("kasant_state_id")->AsInteger;

	ep.kasant_delay_time 	    = cds->FieldByName("kasant_delay_time")->AsDateTime;
	ep.kasant_cnt_pass          = cds->FieldByName("kasant_cnt_pass")->AsInteger;
	ep.kasant_cnt_cargo         = cds->FieldByName("kasant_cnt_cargo")->AsInteger;

	// ��� ��������� �������� (��� ���������� �� �� �������������� ����������)
	ep.nom_tpe					= cds->FieldByName("nom_tpe")->AsString;
	ep.n_sec					= cds->FieldByName("n_sec")->AsInteger;

	ep.has_running				= cds->FieldByName("has_running")->AsInteger;
//	ep.repair_id				= cds->FieldByName("repair_id")->AsInteger;

	ep.id_ob_loc = cdsIncidentList->FieldByName("id_object")->AsExtended;
	ep.dBegin    = deDateBegin->Date;
	ep.dEnd      = deDateFinish->Date;

	cfg.ini->WriteInteger("frmIncident", "Last_Sheet_ID", ep.sheet_id);

	if (mrOk == dlg->Show(&ep) || ep.bWasChange == true)
	{
		aRefresh->Execute();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aNewExecute(TObject *Sender)
{
	/* ����� �������� */

	std::auto_ptr<TfrmRecordSheet> dlg (new TfrmRecordSheet(this));
	TcxGridDBBandedTableView	*btv = btvIncident;
	StrctRecordSheet 			ep;

	ep.bWasChange 				= false;
	ep.sheet_id 				= 0;
	ep.sheet_no					= "";
	ep.create_mode				= 1;	// ������
	ep.state_id					= stateNew;
	ep.criticality_id			= 0;
	ep.date_fail				= Now();
	ep.date_diagnost_msg		= Now();
	ep.owner_kod_filial 		= 0;
	ep.owner_kod_department 	= 0;
	ep.owner_tchr_id 			= 0;
	ep.kod_ser					= 0;
	ep.nom_loc					= 0;
	ep.nom_sec					= 0;
	ep.nom_object				= "";
	ep.kod_depo					= 0;
	ep.n_sec					= 0;
	ep.train_idx_makeup			= 0;
	ep.train_idx_wheel			= 0;
	ep.train_idx_terminus		= 0;
	ep.train_organize			= 0;
	ep.train_destination		= 0;
	ep.train_length				= 0;
	ep.brig_tnom				= 0;;
	ep.brig_fio					= "";
	ep.brig_pred_id				= 0;;
	ep.fail_type_place			= 45;
	ep.FailPlaceId				= 0;
	ep.fail_place_name			= "";
	ep.LocName					= "��������� �� ������";
	ep.source_type_id			= 34;
	ep.source_info_id			= 0;
	ep.source_info_pred_name	= "";
	ep.source_obtained_id		= 0;
	ep.kod_firm_repair			= 0;
	ep.kod_filial				= 0;
	ep.kod_department			= 0;
	ep.BaseRepairFirmNameRoad	= "";
	ep.ServiceFirmRoadName		= "";
	ep.incident_descr			= "";
	// ��� ��������� �������� (��� ���������� �� �� �������������� ����������)
	ep.KodRoad					= 0;
	ep.prev_sheet_id			= 0;
	ep.has_running				= 0;
	ep.repair_id				= 0;

	dlg->Show(&ep);
	//if ( mrOk == dlg->Show( &ep ) )
	//{
		aRefresh->Execute();
		BTV_LocateRecord( btv, ep.sheet_id );
	//}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aEditExecute(TObject *Sender)
{
	/* ������������� �������� */
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aDeleteExecute(TObject *Sender)
{
	/* ������� �������� */

	if (((TcxGridDBBandedTableView*)grdIncident->ActiveView)->Controller->FocusedRow == NULL)
		return;

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	int qr = MessageBox(NULL, "������� ���������� ��������?", "�������������", MB_YESNO);
	if (IDYES == qr)
	{
		try
		{
			TDMMain::ClearDataSet(dsa.get());
			dsa->CommandText = "SMT.INCIDENT_PKG.incident_del";

			dsa->Params->CreateParam(ftInteger, "p_incident_id", ptInput )->AsInteger = cdsIncidentList->FieldByName("sheet_id")->AsInteger;
			dsa->Params->CreateParam( ftInteger, "p_change_user_id", ptInput )->AsInteger	= UserID;
			dsa->Params->CreateParam( ftInteger, "o_Err_Code", ptInputOutput );
			dsa->Params->CreateParam( ftString, "o_Err_Msg", ptInputOutput );

			TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

			if ( dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0 )
				throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
		}
		catch (Exception &e)
		{
			throw Exception ("< UI-4 > : ������ �������� ���������.\n" + e.Message);
		}

		aRefresh->Execute();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::btvIncidentColumn2GetDisplayText(TcxCustomGridTableItem *Sender,
		  TcxCustomGridRecord *ARecord, UnicodeString &AText)
{
	if (ARecord != NULL && !AText.IsEmpty())
		AText = FormatDateTime("dd.mm  hh:nn", StrToDateTime(AText));
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::deDateBeginChange(TObject *Sender)
{
	cfg.ini->WriteDate("frmIncident", "DateBegin", deDateBegin->Date);
   // btnRefresh->Style = DMMain->stlNeed2Refresh;
	lblNeed2Refresh->Visible= true;

	Timer1->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::btvIncidentCustomDrawCell(TcxCustomGridTableView *Sender,
		  TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
		  bool &ADone)
{
	// ������� - ��������� � ��������� ����� ��� ����� ����� <MaxIncidentTime4New> ����
	if	((int) AViewInfo->GridRecord->Values[clmnIncidentTime->Index] > MaxIncidentTime4New
		&&	FindInArray	(arrayIDState4CheckTime, sizeof(arrayIDState4CheckTime)/sizeof(arrayIDState4CheckTime[0])
						,(int) AViewInfo->GridRecord->Values[clmnStateID->Index])
		)
		ACanvas->Font->Color = DMMain->stlAttention->TextColor;
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aRefreshRcvDinamicExecute(TObject *Sender)
{
	/* �������� ��������� �������� ����������� ���������� */

	TcxGridDBChartView *btv = chvRcvDynamic;
	TClientDataSet *cds = DMMain->cdsRcvDynamic;
	TDataSource *ds = DMMain->dsRcvDynamic;

	try
	{
		btv->DataController->DataSource = 0;

		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.REPORT_PKG.rcv_incident_dynamic_cur";
		cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime = deDateBegin->Date;
		cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime = deDateFinish->Date;
		cds->Params->CreateParam(ftInteger, "p_type_period", ptInput)->AsInteger = 1;	// 0 - ������� ����������� �����, 2 - ���������� 30 ����, 1 - ��������� ������
		cds->Params->CreateParam(ftInteger, "p_id_user",    ptInput)->AsInteger = UserID;
		cds->Params->CreateParam(ftString,  "p_code_object", ptInput)->AsString = "aIncident";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btv->DataController->DataSource = ds;
	}
	catch ( Exception &e )
	{
		throw Exception ("< UI-5 > : ������ �������� ��������� �������� ����������� ����������.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::chvRcvDynamicCategoriesGetValueDisplayText(TObject *Sender,
		  const Variant &AValue, UnicodeString &ADisplayText)
{
	if (!ADisplayText.IsEmpty())
		ADisplayText = FormatDateTime("dd.mm", ADisplayText);
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aFilter_ActiveExecute(TObject *Sender)
{
	/**/
	deDateBegin->Enabled   = false;
	deDateFinish->Enabled  = false;
	btnFilter_Period->ButtonStyle = bsDefault;
	btnFilter_Period->Down = false;
	btnFilter_Active->ButtonStyle = bsChecked;
	btnFilter_Active->Down = true;

	CurrentPeriodType = rFilterActive;

	aRefresh->Execute();
	cfg.ini->WriteInteger("frmIncident", "FilterPeriodType", CurrentPeriodType);

	btnRefresh->Down = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aFilter_PeriodExecute(TObject *Sender)
{
	/**/

	deDateBegin->Enabled	= true;
	deDateFinish->Enabled	= true;
	btnFilter_Period->Down	= true;

	CurrentPeriodType = rFilterPeriod;
	cfg.ini->WriteInteger("frmIncident", "FilterPeriodType", CurrentPeriodType);
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::tmrTimer(TObject *Sender)
{
	tmr->Enabled = false;

	aSetAction->Execute();

	aRefresh->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aLoad_FTP_ParamsExecute(TObject *Sender)
{
	/* �������� ��������� ftp */

	TClientDataSet *cds = DMMain->cdsNSI_FTP_Params;

	try
	{
		cds->CommandText = "smt.smt_nsi_pkg.ftp_settings_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch ( Exception &e )
	{
		// ����� ���� ���������� �� �����, ���������� ����� ��� ��� ��������� ��� ���������
		LogEvent("< UI-6 > : �� ������� �������� ��������� FTP-����������: " + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aStore_Column_CustomizationExecute(TObject *Sender)
{
	/* ��������� ��������� visible ������� ��������� ����� */

	TcxGridDBBandedTableView *btv = btvIncident;

	for (int i = 0 ; i < btv->ColumnCount; i++)
	{
		cfg.ini->WriteBool("TfrmIncident_Columns", btv->Columns[i]->Name, btv->Columns[i]->Visible);
	}

	cfg.ini->WriteInteger("TfrmIncident_Settings", "spltrGraph->State", spltrGraph->State);

}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aRestore_Column_CustomizationExecute(TObject *Sender)
{
	/* ������������ ��������� visible ������� ��������� ����� */

	TcxGridDBBandedTableView *btv = btvIncident;

	/*for ( int i = 0 ; i < btv->ColumnCount; i++ )
	{
		btv->Columns[i]->Visible = cfg.ini->ReadBool("TfrmIncident_Columns", btv->Columns[i]->Name, btv->Columns[i]->Visible);
	}
	*/
	spltrGraph->State = cfg.ini->ReadInteger("TfrmIncident_Settings", "spltrGraph->State", ssOpened);
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::FormDestroy(TObject *Sender)
{
	aStore_Column_Customization->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aSetActionExecute(TObject *Sender)
{
	/* ��������� ����������� ������ */

	TcxGridDBBandedTableView	*btv		= NULL;
	bool 						 can_edit	= false;

	/* ���������. �������� ������ */

	btv = (TcxGridDBBandedTableView*)grdIncident->ActiveView;

	can_edit 			  =	(	btv->DataController->RowCount > 0
							&&  btv->Controller->FocusedRow != NULL
							&&  btv->Controller->FocusedRow->Level > 0 /* Expandable*/
							/*&&	DMMain->IsUserFunction("esmt-incident") == true*/
							);

	aDetail->Enabled 	  =	can_edit;

	aMultiAttach->Enabled = can_edit;

	switch (grdIncident->ActiveLevel->Index)
	{
		case 0:
			aDelete->Enabled	=	(	can_edit
									/*&&	(int) btv->Controller->FocusedRow->Values[clmnIncident_Create_Mode->Index] == 1
									&&	(int) btv->Controller->FocusedRow->Values[clmnIncident_Can_Delete->Index] == 1*/
									);
			break;
		case 1:
			aDelete->Enabled	=	(	can_edit
									&&	(int) btv->Controller->FocusedRow->Values[clmnIncidentChild_Create_Mode->Index] == 1
									&&	(int) btv->Controller->FocusedRow->Values[clmnIncidentChild_Can_Delete->Index] == 1
									);
			break;

	}

	// �������� ���
	//aDetail->Visible = (DMMain->IsUserFunction("esmt-incident-view"));


	// �������� ���
	//aDelete->Visible = (DMMain->IsUserFunction("esmt-incident-delete"));

	// �������� ���
	//aNew->Visible = (DMMain->IsUserFunction("esmt-incident-create") /*|| DMMain->IsUserFunction("esmt-incident")*/);

	// ������ ������� ����� ���
	/*if (btv->DataController->RowCount > 0  &&
		btv->Controller->FocusedRow != NULL &&
		btv->Controller->FocusedRow->Level > 0 &&
		(cdsIncidentList->FieldByName("change_user_id")->AsInteger == cfg_.UserID &&
		DMMain->IsUserFunction("esmt-recordsheet-self-edit")))
	{
		aDetail->Visible = true;
	}


	// �������
	// �������� ��� (�� ������� ������ �� ������� �������)
	aNew->Visible = (DMMain->IsUserFunction("esmt-incident-create") || DMMain->IsUserFunction("esmt-incident"));

	// ������ ������������� ����������� � ���������� ������
	DMMain->IsUserFunction("esmt-recordsheet-effective-edit");

	// �� ������� ������� �� ������� ������
	DMMain->IsUserFunction("esmt-recordsheet-work-edit");

	// ������ ������
	DMMain->IsUserFunction("esmt-recordsheet-audit");
	*/

	aNew->Enabled          = DMMain->IsFunction("f_code",  "aIncident_aNew");
	aDetail->Enabled       = DMMain->IsFunction("f_code",  "aIncident_aDetail");
	aDelete->Enabled       = DMMain->IsFunction("f_code",  "aIncident_aDelete");
	aExport2Excel->Enabled = DMMain->IsFunction("f_code",  "aIncident_aExport2Excel");
	dxBarSubItem2->Enabled = DMMain->IsFunction("f_code",  "aControlProblem_aControlProblem");
	aNewProblem->Enabled   = DMMain->IsFunction("f_code",  "aControlProblem_aControlProblem");
}
//---------------------------------------------------------------------------
void __fastcall TfrmIncident::btvIncidentFocusedRecordChanged(TcxCustomGridTableView *Sender,
		  TcxCustomGridRecord *APrevFocusedRecord, TcxCustomGridRecord *AFocusedRecord,
		  bool ANewItemRecordFocusingChanged)
{
	aSetAction->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::btvIncidentDblClick(TObject *Sender)
{
/*
	if (DMMain->IsFunction("f_code",  "aIncident_aDetail"))
	{
		aDetail->Execute();
	}
*/
//	if (DMMain->IsUserFunction("esmt-incident")
		/*|| DMMain->IsUserFunction("esmt-incident-view")
		|| (cdsIncidentList->FieldByName("change_user_id")->AsInteger == cfg_.UserID
			&& DMMain->IsUserFunction("esmt-recordsheet-self-edit"))*/
//			)
//		aDetail->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aExport2ExcelExecute(TObject *Sender)
{
	/* ������� � Excel */

	try
	{
		btvIncident->OptionsCustomize->ColumnGrouping = false;
		TcxGrid *grd = grdIncident;

		AnsiString vFileName = TemporaryFolder + "Incident_" + "_" + FormatDateTime("ddmmyy_hhnnss", Now()) + ".xls";
		ExportGridToExcel(vFileName, grd, true, true, true, "xls");

		char buf_str[2000];
		sprintf(buf_str, vFileName.c_str() );
		ShellExecute(Application->Handle, NULL, buf_str, NULL, NULL, SW_MAXIMIZE);
	}
	__finally
	{
		btvIncident->OptionsCustomize->ColumnGrouping = true;
	}

/*
	std::auto_ptr<TfrmIncidentExport> dlg (new TfrmIncidentExport(this));
	dlg->deDateFrom->Date	= deDateBegin->Date;
	dlg->deDateTo->Date		= deDateFinish->Date;
	dlg->KodFirm			= cbFirmTree_->Tag;
	dlg->KodSer				= LocSer;
	dlg->LocSec				= LocSec;
	dlg->LocNum				= LocNum;
	dlg->LocObj				= LocObj;
	dlg->ShowModal();
*/
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::deDateFinishChange(TObject *Sender)
{
	cfg.ini->WriteDate("frmIncident", "DateFinish", deDateFinish->Date);

	lblNeed2Refresh->Visible= true;

	Timer1->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aFill_ProfileListExecute(TObject *Sender)
{
	/* ��������� ������ ����������� �������� */

	TSearchRec  sr;
	AnsiString	FileName_;

	((TcxLookupComboBoxProperties*)cbProfile->Properties)->Items->Clear();

	try
	{
		if (FindFirst(ProfileFolder + "*.prof", 0, sr) == 0)
		{
			do if ( sr.Attr != faDirectory )
			{
				FileName_ = ChangeFileExt(ExtractFileName(sr.Name), "");
				((TcxLookupComboBoxProperties*)cbProfile->Properties)->Items->Add(FileName_);
			}
			while (FindNext(sr) == 0);
			FindClose(sr);
		}
	}
	catch (Exception &e)
	{
		MessageBox (NULL, AnsiString("< UI-7 > : ������ ���������� ������ ��������.\n" + e.Message).c_str(), "�������� ��������", MB_ICONSTOP);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aSaveProfileExecute(TObject *Sender)
{
	std::auto_ptr<TfrmTextEditDialog> dlg (new TfrmTextEditDialog(this));
	StrctTextEdit t;
	TcxGridStorageOptions opt;

	t.res = "";
	t.lbltxt = "��� �������";

	t.mru_list = ((TcxLookupComboBoxProperties*)cbProfile->Properties)->Items;

	if (mrOk == dlg->TextEditDialogShow(&t))
	{
		try
		{
			opt << gsoUseFilter << gsoUseSummary;
			btvIncident->StoreToIniFile(ProfileFolder + t.res + ".prof", true, opt);
			if (((TcxLookupComboBoxProperties*)cbProfile->Properties)->Items->IndexOfName(t.res) == 1)
				((TcxLookupComboBoxProperties*)cbProfile->Properties)->Items->Add(t.res);
			cbProfile->EditValue = t.res;
		}
		catch (Exception &e)
		{
			MessageBox(Handle, AnsiString("< UI-8 > : ������ ���������� �������. " + e.Message).c_str(), "�������� ��������", MB_ICONSTOP);
		}
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aApplyProfileExecute(TObject *Sender)
{
	/* ��������� ������� */

	cfg.ini->WriteString("TfrmIncident_Settings", "CurrentProfile", cbProfile->EditValue);

	TcxGridStorageOptions opt;
	opt << gsoUseFilter << gsoUseSummary;
	btvIncident->RestoreFromIniFile(ProfileFolder + cbProfile->EditValue + ".prof", true);
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::btvIncidentChildDblClick(TObject *Sender)
{
	aDetail->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::btvIncidentChildFocusedRecordChanged(TcxCustomGridTableView *Sender,
		  TcxCustomGridRecord *APrevFocusedRecord, TcxCustomGridRecord *AFocusedRecord,
		  bool ANewItemRecordFocusingChanged)
{
	aSetAction->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aNewProblemExecute(TObject *Sender)
{
	/* ������� ����� ���� ����������� "��������" */

	std::auto_ptr<TClientDataSet> dsaSess (new TClientDataSet(NULL));
	std::auto_ptr<TClientDataSet> dsaAdd (new TClientDataSet(NULL));

	int Isn = 0;
	AnsiString Url;
	AnsiString Key = "";

	Url = cfg.ini->ReadString("ApplicationServers", "ProblemsURL", "");
	if (IfZeroAll() == 0)
	{
	if (Url == "") {
		MessageBox (NULL, "�������� ��������� ������ ������ ��� � INI-�����.", "������ INI-�����", MB_ICONSTOP);
		return;
	}

	try
	{
		TDMMain::ClearDataSet(dsaSess.get());
		dsaSess->CommandText = "SMT.RULE_PKG.CREATESESSION";
		dsaSess->Params->CreateParam(ftInteger, "pUserId", ptInput)->AsInteger    = UserID;
		dsaSess->Params->CreateParam(ftString, "pIp", ptInput)->AsString 	   	  = GetIpAddress();
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
			dsaAdd->Params->CreateParam(ftString, "pCondition", ptInput)->AsString 	  = ProblemCondition();
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
		throw Exception ("< RP-1 > : ������ �������� ���.\n" + e.Message);
	}
  }
  else
	aProblemIncident->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aNewSystemExecute(TObject *Sender)
{
	/**/
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aNewInstrExecute(TObject *Sender)
{
	/**/
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aDeleteProfileExecute(TObject *Sender)
{
	/* ������� ������� */

	if (VarToStr(cbProfile->EditValue) == "��_���������")
	{
		MessageBox(Handle, "������� ����� ������ ���������������� �������. ��������� ������� ������� ������.", "��������������", MB_ICONWARNING );
		return;
	}

	int qr = MessageBox(NULL, AnsiString("������� ������� ������� <" + VarToStr(cbProfile->EditValue) + "> ?").c_str(), "�������������", MB_YESNO);

	if (IDYES == qr)
	{
		DeleteFile(ProfileFolder + VarToStr(cbProfile->EditValue) + ".prof");
		aFill_ProfileList->Execute();
		cbProfile->EditValue = "��_���������";
		aApplyProfile->Execute();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aMultiAttachExecute(TObject *Sender)
{
	/* ��������� ���� � ����������� ��������� (������ ����������) */

	std::auto_ptr<TfrmEdit_Attach> dlg ( new TfrmEdit_Attach( this ) );
	TcxGridDBBandedTableView	*btv			= btvIncident;
	int							 cnt_selection	= btv->Controller->SelectedRowCount;
	Strct_Attach te;

	te.group_id = 16;	// �������� ����������
	te.group_name = "";
	te.attach_descr = "";
	te.file_name = "";

	for (int i = 0; i < cnt_selection; i++)
	{
		try
		{
			btv->Controller->SelectedRows[i]->Focused = true;

			te.attach_id = 0;
			te.sheet_id = cdsIncidentList->FieldByName("sheet_id")->AsInteger;

			if (i == 0)
				dlg->Show(&te);
			else
				dlg->MultiSave(&te);
		}
		catch (Exception &e)
		{
			throw Exception("< UI-9 > : ������ ���������� ��������: " + e.Message);
		}
	}	// for

	aRefresh->Execute();
	btv->DataController->LocateByKey(te.sheet_id);

	if (cnt_selection == 0)
	{
		throw Exception("<��� ��������� ����������.");
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aExportToExcelExecute(TObject *Sender)
{
	/*  ������� � Excel */

	try
	{
		clmnIncident_StateName->GroupIndex = -1;
		TcxGrid *grd = grdIncident;

		dlgSave->FileName = "���������";
		dlgSave->FileName = dlgSave->FileName + ".xls";

		if ( dlgSave->Execute() )
		{
			ExportGridToExcel(dlgSave->FileName, grd, true, true, true, "xls");

			char buf_str[2000];
			sprintf(buf_str, AnsiString(dlgSave->FileName).c_str());
			ShellExecute(Application->Handle, NULL, buf_str, NULL, NULL, SW_MAXIMIZE);
		}
	}
	__finally
	{
		clmnIncident_StateName->GroupIndex = 0;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::btvIncidentColumn5PropertiesStartClick(TObject *Sender)

{
	// ����� ����� ��������� ��-��������

	if (((TcxGridDBBandedTableView*)grdIncident->ActiveView)->Controller->FocusedRow == NULL)
		return;

	std::auto_ptr<TfrmRecordSheetView> dlg ( new TfrmRecordSheetView( this ) );
	TClientDataSet	*cds = (TClientDataSet*) ((TcxGridDBBandedTableView*)grdIncident->FocusedView)->DataController->DataSet;
	StrctRecordSheetView ep;

	ep.sheet_id = cds->FieldByName("sheet_id")->AsInteger;
	cfg.ini->WriteInteger("frmIncident", "Last_Sheet_ID", ep.sheet_id);

	dlg->Show(&ep);
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aCloseHandlyExecute(TObject *Sender)
{
	// �������������� �������� ��� ��� ���������������

	if (((TcxGridDBBandedTableView*)grdIncident->ActiveView)->Controller->FocusedRow == NULL)
		return;

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	int qr = MessageBox(NULL, "������� ���������� �������� ��� ��������������?", "�������������", MB_YESNO);

	if (IDYES == qr)
	{
		try
		{
			TDMMain::ClearDataSet(dsa.get());
			dsa->CommandText = "SMT.INCIDENT_PKG.closing_handly_u";

			dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = cdsIncidentList->FieldByName("sheet_id")->AsInteger;
			dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput)->AsInteger	= cfg_.UserID;
			dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
			dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

			TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

			if ( dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0 )
				throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
		}
		catch (Exception &e)
		{
			throw Exception ("< UI-10 > : ������ �������� ���������.\n" + e.Message);
		}

		aRefresh->Execute();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aLoad_NSI_FirmTreeExecute(TObject *Sender)
{
	/* ��������� ������ ����������� */

	TClientDataSet *cds		= cdsFirmTree;
	TDataSource *ds			= dsFirmTree;
	int vKodFirm			= 0;
	TcxTreeListNode *node	= NULL;

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT.APP_NSI_PKG.firm_tree_cur";
		cds->Params->CreateParam(ftInteger, "p_id_user",     ptInput)->AsInteger = UserID;
		cds->Params->CreateParam(ftString,  "p_code_object", ptInput)->AsString  = "aIncident";
		cds->Params->CreateParam(ftCursor,  "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		tlFirmTree->DataController->DataSource = dsFirmTree;

		try
		{
			vKodFirm = cfg.ini->ReadInteger("frmIncident", "KodFirm", cfg_.DepotID); //DMMain->Get_CDS_Value(cds, "kod_firm", cfg.ini->ReadInteger("TfrmLocPark", "KodFirm", DepotID), "kod_firm" );
		}
		catch (Exception &e)
		{
			vKodFirm = cfg_.DepotID;
		}

	if (vKodFirm == 0)
		vKodFirm = cfg_.DepotID;

	if (tlFirmTree->AbsoluteCount > 0)
		tlFirmTree->TopVisibleNode->Expand(false);

	node = tlFirmTree->FindNodeByKeyValue(vKodFirm, tlFirmTree->Root, false, true);
	if (node != NULL)
		node->Focused = true;

	if (cds->Locate("kod_firm", vKodFirm, TLocateOptions()) == false)
		cds->First();

	cbFirmTree_->Text = cds->FieldByName("firm_name")->AsString;
	cbFirmTree_->Tag = cds->FieldByName("kod_firm")->AsInteger;

	}
	catch (Exception &e)
	{
		// �������� ����� � ���������� ������
		throw Exception ("< UI-11 > : ������ �������� ������ �����������.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::tlFirmTreeCustomDrawCell(TObject *Sender, TcxCanvas *ACanvas,
		  TcxTreeListEditCellViewInfo *AViewInfo, bool &ADone)
{
	if (AViewInfo->Node->Level == 0)
		ACanvas->Font->Style = TFontStyles() << fsBold;
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aSelect_FirmTreeExecute(TObject *Sender)
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

		cfg.ini->WriteInteger("frmIncident", "KodFirm", cbFirmTree_->Tag);
		lblNeed2Refresh->Visible= true;

		Timer1->Enabled = true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::tlFirmTreeKeyDown(TObject *Sender, WORD &Key, TShiftState Shift)

{
	if (Key == VK_LEFT && tlFirmTree->FocusedNode->Expanded)
		tlFirmTree->FocusedNode->Collapse(true);
	if (Key == VK_RIGHT && !tlFirmTree->FocusedNode->Expanded)
		tlFirmTree->FocusedNode->Expand(false);
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::tlFirmTreeKeyPress(TObject *Sender, wchar_t &Key)
{
	if (Key == VK_RETURN)
		aSelect_FirmTree->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aCreateTemplateExecute(TObject *Sender)
{

	StrctEditTemplate sf;
	TStringList *lst = new TStringList();

	std::auto_ptr<TfrmEdit_Template> dlg (new TfrmEdit_Template(this));
	dlg->Caption = "������� ����� ������";

	// ��������� ��������� ����� � ������
	TcxGridStorageOptions opt;
	opt << gsoUseFilter << gsoUseSummary;
	btvIncident->StoreToIniFile(ProfileFolder + "Incident.ini", false, opt);

	lst->LoadFromFile(ProfileFolder + "Incident.ini");

	// ������� ������ � ���������
	sf.template_name = "";
	sf.Template      = lst;
	sf.type          = tIncidents;
	sf.state_id		 = stateNewTpl;
	sf.file_name     = "Incident.ini";

	if (mrOk == dlg->Show(&sf))
	{

	}

	delete lst;
	/*
	String AText = btvIncident->DataController->Filter->FilterText;
	ShowMessage(AText);
	*/
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aViewTemplateExecute(TObject *Sender)
{
	/* ������ �������� */
	std::auto_ptr<TfrmTemplates> dlg (new TfrmTemplates(this));

	if (mrOk == dlg->Show())
	{
		// ������������ ����������� ��������� �����
		TcxGridStorageOptions opt;
		opt << gsoUseFilter << gsoUseSummary;
		btvIncident->RestoreFromIniFile(ProfileFolder + "Incident.ini", true, false, opt);
	}

	// �������� �������
	TplLockPark = cfg_.ini->ReadString("Templates", "tplIncident", "");

	if (TplLockPark == "")
		lblTemplateName->Caption = "������� ������: ��������";
	else
		lblTemplateName->Caption = "������� ������: " + TplLockPark;
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::Timer1Timer(TObject *Sender)
{
	btnRefresh->ButtonStyle = bsChecked;
	btnRefresh->Down = true;
	btnFilter_Active->Down = false;
	Timer1->Enabled = false;
}
//---------------------------------------------------------------------------



void __fastcall TfrmIncident::aDocExecute(TObject *Sender)
{
	/* ������������ �������� */

	TClientDataSet	*cds = (TClientDataSet*) ((TcxGridDBBandedTableView*)grdIncident->FocusedView)->DataController->DataSet;
	TcxGridDBBandedTableView *btv = btvIncident;

	if (bListDoc->EditValue == 0)
	{
		throw Exception ("< UI-12 > : ��� ��������� �� ������. ������������ ��������� ����������.\n");
		return;
	}

	int cnt_selection = btv->Controller->SelectedRowCount;

	RecordParamDoc pDoc;

	TcxImageComboBoxItem 	   *itm	 = NULL;
	TcxImageComboBoxProperties *cbep = (TcxImageComboBoxProperties*)bListDoc->Properties;

	try
	{
		cds->FieldByName("sheet_id")->AsInteger;
	}
	catch (Exception &e)
	{
		throw Exception ("< UI-14 > : �� ������ ��������.\n");
		return;
	}

	pDoc.Size = cnt_selection;

	int* arr = new int[cnt_selection];

	for ( int i = 0; i < btv->Controller->SelectedRowCount; i++ )
	{
		btv->Controller->SelectedRows[i]->Focused = true;
		arr[i] = cds->FieldByName("sheet_id")->AsInteger;
	}

	pDoc.NumLR = arr;

	pDoc.NumDoc = int(bListDoc->EditValue);

	if (IfMoreDoc(cnt_selection, pDoc.NumDoc))
	{
		delete arr;
		throw Exception ("< UI-13 > : ��� ������� ���� ��������� ���������� ������� �� ����� ������ ���������.\n");
		return;
	}

	if (pDoc.NumDoc == 6)
	{
			if (IfFrx6() == false)
			{
				throw Exception ("< UI-19 > : ������ ������������ ���������. ������� ������ ����� ��� ������ �����������.\n");
			}
			pDoc.List_Id_Sheet = ListId;
	}

	pDoc.dStart  = deDateBegin->Date;
	pDoc.dFinish = deDateFinish->Date;

	std::auto_ptr<TfrmListReports> dlg (new TfrmListReports(this));
	if (mrOk == dlg->Show(&pDoc))
	{
	}
	delete arr;
}
//---------------------------------------------------------------------------
bool __fastcall TfrmIncident::IfFrx6()
{
	/**/
	TClientDataSet	*cds = (TClientDataSet*) ((TcxGridDBBandedTableView*)grdIncident->FocusedView)->DataController->DataSet;
	TcxGridDBBandedTableView *btv = btvIncident;

	ListId = "";

	int count      = btv->Controller->SelectedRowCount;

	AnsiString tmpSer = cdsIncidentList->FieldByName("ser_name")->AsString;
	AnsiString tmpNom = cdsIncidentList->FieldByName("nom_tpe")->AsString;

	for ( int i = 0; i < btv->Controller->SelectedRowCount; i++ )
	{
		btv->Controller->SelectedRows[i]->Focused = true;
		if (tmpSer == cdsIncidentList->FieldByName("ser_name")->AsString)
		{
			if (tmpNom == cdsIncidentList->FieldByName("nom_tpe")->AsString)
			{
				count--;
				ListId = ListId + cdsIncidentList->FieldByName("sheet_id")->AsInteger + ",";
			}
		}
	}
	if (count == 0) return true;
	else return false;
}
//---------------------------------------------------------------------------
bool __fastcall TfrmIncident::IfMoreDoc(int Count, int IndexDoc)
{
	if (Count > 1)
	{
		switch (IndexDoc)
		{
			case  1 : return true;    // ��� ������������ ��������� ����������
			case  2 : return true;    // ��� �������� ���������� ��������� ��������
			case  3 : return true;    // ����������� ����������
			case  4 : return true;    // ����������� ��� ����������� ����� � ��������� �����
//			case  6 :return true;    // ��� ������� ���������
			case  7 : return true;    // �� 1 (���70��)
			case  8 : return true;    // �� 2 (��2�)
			case  9 : return true;    // �� 2 (2��116�)
			case 10 : return true;    // ������ � ��������� ������ ������������
			case 11 : return true;    // �� 1 (���2�)
			default : return false;   //
		}
	}
	else
	{
		return false;
	}
}
void __fastcall TfrmIncident::aLoadDocExecute(TObject *Sender)
{
	/* ��������� ������ ���������� */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	TcxImageComboBoxItem 	   *itm		= NULL;
	TcxImageComboBoxProperties *cbep	= (TcxImageComboBoxProperties*)bListDoc->Properties;
	cbep->Items->Clear();

	try
	{
		dsa->CommandText = "SMT.smt_nsi2_pkg.nsi_doc_list_cur";
		dsa->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UI-18 > : ������ �������� ����������, ����� � �����.\n" + e.Message);
	}

	try
	{
		itm = cbep->Items->Add();
		if (itm)
		{
			itm->Description = " ";
			itm->Value		 = 0;
		}

		for (int i = 0; i < dsa->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if (itm)
			{
				itm->Description = dsa->FieldByName("name_doc")->AsString;
				itm->Value		 = dsa->FieldByName("id_doc")->AsInteger;
			}
			dsa->Next();
		}

		bListDoc->EditValue = 0;
	}
	catch (Exception &e)
	{
		throw Exception ("< UI-19 > : ������ ���������� ������ ����������, ����� � �����.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------
AnsiString __fastcall TfrmIncident::ProblemCondition()
{
	AnsiString paccess;
	AnsiString dates;
	AnsiString filters;

	paccess = paccess + " AND kod_firm_parent = " + IntToStr(cbFirmTree_->Tag);

	if (CurrentPeriodType == rFilterPeriod)
		dates = dates + " AND date_fail BETWEEN to_date('" + DateToStr(deDateBegin->Date) + "') AND to_date('" + DateToStr(deDateFinish->Date) + "') + 1 - 1 / 24 / 60 / 60";

	if (btvIncident->DataController->Filter->FilterText != "")
		filters = filters + " AND " + btvIncident->DataController->Filter->FilterText;

	return "WHERE 1 = 1 " + paccess + dates + filters;
}

//---------------------------------------------------------------------------
AnsiString __fastcall TfrmIncident::GetIpAddress()
{
	AnsiString out = "WinSock ERR";
	WSADATA wsaData;

	if (!WSAStartup(WINSOCK_VERSION, &wsaData))
	{
		char chInfo[64];

		if (!gethostname(chInfo, sizeof(chInfo)))
		{
			hostent *sh;
			sh = gethostbyname((char*)&chInfo);

			if (sh != NULL)
			{
				int nAdapter = 0;

				while (sh->h_addr_list[nAdapter])
				{
					struct sockaddr_in adr;
					memcpy(&adr.sin_addr, sh->h_addr_list[nAdapter], sh->h_length);
					out = inet_ntoa(adr.sin_addr);
					nAdapter++;
				}
			}
		}
	}
	WSACleanup();
	//ShowMessage(out);
	return out;
}

//---------------------------------------------------------------------------
/*AnsiString __fastcall TfrmIncident::GetIpAddress2()
{
	void get_Website(char *url)
	{
		WSADATA wsaData;
		SOCKET Socket;
		SOCKADDR_IN SockAddr;
		int lineCount=0;
		int rowCount=0;
		struct hostent *host;
		char *get_http= new char[256];

		memset(get_http,' ', sizeof(get_http) );
		strcpy(get_http,"GET / HTTP/1.1\r\nHost: ");
		strcat(get_http,url);
		strcat(get_http,"\r\nConnection: close\r\n\r\n");

		if (WSAStartup(MAKEWORD(2,2), &wsaData) != 0){
			cout << "WSAStartup failed.\n";
			system("pause");
			//return 1;
		}

		Socket=socket(AF_INET,SOCK_STREAM,IPPROTO_TCP);
		host = gethostbyname(url);

		SockAddr.sin_port=htons(80);
		SockAddr.sin_family=AF_INET;
		SockAddr.sin_addr.s_addr = *((unsigned long*)host->h_addr);

		if(connect(Socket,(SOCKADDR*)(&SockAddr),sizeof(SockAddr)) != 0){
			cout << "Could not connect";
			system("pause");
			//return 1;
		}
		send(Socket,get_http, strlen(get_http),0 );

		int nDataLength;
		while ((nDataLength = recv(Socket,buffer,10000,0)) > 0){
			int i = 0;
			while (buffer[i] >= 32 || buffer[i] == '\n' || buffer[i] == '\r'){

				website_HTML+=buffer[i];
				i += 1;
			}
		}

		closesocket(Socket);
		WSACleanup();
		delete[] get_http;
	}


    SYSTEMTIME st;
	GetLocalTime(&st);
    char *today = new char[32];
    memset(today,' ', sizeof(today) );
    sprintf(today,"%d-%d-%d", st.wYear , st.wMonth , st.wDay);
    memset(buffer,'\0',sizeof(buffer));

    get_Website("api.ipify.org" );
    for (size_t i=0; i<website_HTML.length(); ++i) website_HTML[i]= tolower(website_HTML[i],local);

    token = strtok( buffer , seps );
    while( token != NULL ){

      strcpy(lineBuffer[lineIndex],token);
      int dot=0;
      for (int ii=0; ii< strlen( lineBuffer[lineIndex] ); ii++ ){

          if (lineBuffer[lineIndex][ii] == '.') dot++;
          if (dot>=3){
              dot=0;
              strcpy(ip_address,lineBuffer[lineIndex]);
          }
      }

      token = strtok( NULL, seps );
      lineIndex++;
   }

   return ip_address;
}
*/


void __fastcall TfrmIncident::aProblemIncidentExecute(TObject *Sender)
{
	/* ������� �������� �� ���������� */

	TcxGridDBBandedTableView *btv = btvIncident;
	pgAddProblem->Position        = 0;
	pgAddProblem->Properties->Max = btv->DataController->DataRowCount;


   //	if (((TcxGridDBBandedTableView*)grdIncident->ActiveView)->Controller->FocusedRow == NULL)
   //		return;

	std::auto_ptr<TClientDataSet> dsaSess (new TClientDataSet(NULL));
	std::auto_ptr<TClientDataSet> dsaIncidentAdd (new TClientDataSet(NULL));
	std::auto_ptr<TClientDataSet> dsaAdd (new TClientDataSet(NULL));

	TClientDataSet *cds = cdsIncidentList;

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
							gbPrograssAddProblem->Visible = true;
							//---------- +
							cds->Filter = "checked = 1";
							cds->Filtered = true;
							//--------
							cds->First();
							while (!cds->Eof)
							{
							//----------+
								if (cds->FieldByName("checked")->AsInteger == 1)
								{
								//----------
								TDMMain::ClearDataSet(dsaAdd.get());
								dsaAdd->CommandText = "SMT.PROBLEM_PKG.ADD_INCIDENTS_TO_PROBLEM";
								dsaAdd->Params->CreateParam(ftString, "pSKey", ptInputOutput)->AsString	= Key;
								dsaAdd->Params->CreateParam(ftInteger, "SheetId", ptInput)->AsInteger	= cds->FieldByName("sheet_id")->AsInteger;
								TDMMain::OpenDS(dsaAdd.get(), "EXEC", "CT", 1);
								}
							cds->Next();

							pgAddProblem->Position++;
							Application->ProcessMessages();

							}

						gbPrograssAddProblem->Visible = false;
						//-------+
						cds->Filter   = "";
						cds->Filtered = false;
						//----------

						Url = Url + Key;
						ShellExecute(Application->Handle, NULL, Url.c_str(), NULL, NULL, SW_MAXIMIZE);
						}

			}
		}
		catch (Exception &e)
		{
			throw Exception ("< RP-1 > : ������ �������� ���.\n" + e.Message);
			gbPrograssAddProblem->Visible = false;
		}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aLoadSerExecute(TObject *Sender)
{
	/* ��������� ������ ����� */

	TcxImageComboBox *cb = cbSer;
	int vKodSer = 0;

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	TcxImageComboBoxItem 		*itm	= NULL;
	TcxImageComboBoxProperties	*cbep	= NULL;

	try
	{
		cbep = (TcxImageComboBoxProperties*)cb->Properties;
		cbep->Items->Clear();

		dsa->CommandText = "SMT.nsi_pkg.loc_ser_2_0_cur";
		dsa->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UI-15 > : ������ �������� �����.\n" + e.Message);
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
		cbSer->EditValue = vKodSer;
	}
	catch (Exception &e)
	{
		throw Exception ("< UI-16 > : ������ ���������� ������ �����.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aLoadNumExecute(TObject *Sender)
{
	TClientDataSet *cda = cdsFiltr;
	TDataSource    *ds  = dsFiltr;

	try
	{
		TDMMain::ClearDataSet(cda);
		cda->CommandText = "SMT.smt_nsi2_pkg.nom_ser_loc_cur";
		cda->Params->CreateParam(ftCursor,  "o_cur",      ptInputOutput);
		cda->Params->CreateParam(ftInteger, "p_kod_ser",  ptInput)->AsInteger = cbSer->EditValue;
		TDMMain::OpenDS(cda, "OPEN", "CT", 1);

		SetLocValues();
		cbNum->EditValue = 0;
	}
	catch (Exception &e)
	{
		throw Exception ("< UI-17 > : ������ �������� �������.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::cbSerPropertiesEditValueChanged(TObject *Sender)
{
	/* ��������� ������ ������� */
	aLoadNum->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::SetLocValues()
{
	if (dsFiltr->DataSet->RecordCount > 0)
	{
		LocSer = cbNum->Properties->ListSource->DataSet->FieldByName("kod_ser")->AsInteger;
		LocNum = cbNum->Properties->ListSource->DataSet->FieldByName("nom_object")->AsInteger;
		LocSec = cbNum->Properties->ListSource->DataSet->FieldByName("nom_sec")->AsInteger;
		LocObj = cbNum->Properties->ListSource->DataSet->FieldByName("id_object")->AsInteger;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::cbNumPropertiesEditValueChanged(TObject *Sender)
{
	SetLocValues();
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::aActionFuntionExecute(TObject *Sender)
{
	/*��������� ����������� ������ �� ����� � ��������*/
	aNew->Enabled           =  DMMain->IsFunction("full_code",  "aIncident_aNew_"                   +  IntToStr(cdsIncidentList->FieldByName("kod_firm_service")->AsInteger));
	aDetail->Enabled        =  DMMain->IsFunction("full_code",  "aIncident_aDetail"                 +  IntToStr(cdsIncidentList->FieldByName("kod_firm_service")->AsInteger));
	aDelete->Enabled        =  DMMain->IsFunction("full_code",  "aIncident_aDelete"                 +  IntToStr(cdsIncidentList->FieldByName("kod_firm_service")->AsInteger));
	aExport2Excel->Enabled  =  DMMain->IsFunction("full_code",  "aIncident_aExport2Excel"           +  IntToStr(cdsIncidentList->FieldByName("kod_firm_service")->AsInteger));
	dxBarSubItem2->Enabled  =  DMMain->IsFunction("full_code",  "aControlProblem_aControlProblem"   +  IntToStr(cdsIncidentList->FieldByName("kod_firm_service")->AsInteger));
	aNewProblem->Enabled   	=  DMMain->IsFunction("full_code",   "aControlProblem_aControlProblem"  + IntToStr(cdsIncidentList->FieldByName("kod_firm_service")->AsInteger));
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::btvIncidentCellClick(TcxCustomGridTableView *Sender,
		  TcxGridTableDataCellViewInfo *ACellViewInfo, TMouseButton AButton,
		  TShiftState AShift, bool &AHandled)
{

//	aActionFuntion->Execute();
}
//---------------------------------------------------------------------------
void __fastcall TfrmIncident::btvIncidentCellDblClick(TcxCustomGridTableView *Sender,
		  TcxGridTableDataCellViewInfo *ACellViewInfo, TMouseButton AButton,
		  TShiftState AShift, bool &AHandled)
{
	if (DMMain->IsFunction("f_code",  "aIncident_aDetail"))
	{
		aDetail->Execute();
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmIncident::clmncheckedPropertiesEditValueChanged(TObject *Sender)

{
   clmnchecked->Summary->FooterKind = skNone;
   clmnchecked->Summary->FooterKind = skSum;
}
//---------------------------------------------------------------------------

void __fastcall TfrmIncident::clmncheckedHeaderClick(TObject *Sender)
{
	/* �������� ��� */
	TClientDataSet *cds       = cdsIncidentList;
	TDataSource         *ds   =  dsIncidentList;
		TcxGridDBBandedTableView *btv = btvIncident;
	int val;

	if (IfZeroAll() == 0)
		val = 1;
	else
		val = 0;

	cds->First();
	while (!cds->Eof)
	{
		clmnchecked->EditValue = val;
		cds->Next();
	}
	btvIncident->Controller->FocusedRowIndex = 1;
}
//---------------------------------------------------------------------------
int __fastcall TfrmIncident::IfZeroAll()
{
	TClientDataSet *cds       = cdsIncidentList;
	TDataSource         *ds   =  dsIncidentList;

	int count = 0;

	cds->First();

	while (!cds->Eof)
	{
		if (cds->FieldByName("checked")->AsInteger == 1)
		{
				count++;
		}
		cds->Next();
	}

	if (count == 0 )
		return 0;
	else
		return 1;
}
//---------------------------------------------------------------------------


