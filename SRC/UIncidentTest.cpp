//---------------------------------------------------------------------------
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

#include "UIncidentTest.h"
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
TfrmUIncidentTest *frmUIncidentTest;
// Для раскраски инцидентов
const int MaxIncidentTime4New = 3;
UnicodeString TplLockPark = "";

using namespace std;
#pragma comment(lib,"ws2_32.lib")
//---------------------------------------------------------------------------
__fastcall TfrmUIncidentTest::TfrmUIncidentTest(TComponent* Owner)
	: TForm(Owner)
{
	pc->ActivePage	= tsMain;
    pc->HideTabs	= true;

	aRefresh->Enabled		= false;
	aCloseHandly->Visible	= (DMMain->IsUserFunction("esmt-developer") == true ); // принудительное закрытие ЛРИ как неотработанного
	enumFilterPeriodType1 pt	= cfg.ini->ReadInteger("frmIncident", "FilterPeriodType", rFilterActive1);

    if (pt == rFilterActive1)
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

	aLoadSer->Execute(); //Загрузить список серий

//	aLoadNum->Execute(); //Загрузить список номеров

    aRefresh->Enabled = true;

    TcxGridStorageOptions opt;
    opt << gsoUseFilter << gsoUseSummary;
	btvIncident->StoreToIniFile(ProfileFolder + "По_умолчанию.prof", true, opt);

    aFill_ProfileList->Execute();
    cbProfile->EditValue = "По_умолчанию"; //cfg.ini->ReadString("TfrmIncident_Settings", "CurrentProfile", ((TcxLookupComboBoxProperties*)cbProfile->Properties)->Items->Strings[0]);

	try
	{
		// восстановить сохраненные настройки грида
		TcxGridStorageOptions opt;
		opt << gsoUseFilter << gsoUseSummary;
		// после обновления восстановление дефолтных установок грида на один раз отключаем
		if (cfg.ini->ReadInteger("frmIncident", "ApplyGridSettings_3", 0) == 1)
			btvIncident->RestoreFromIniFile(ProfileFolder + "Incident.ini", true, false, opt);

		cfg.ini->WriteInteger("frmIncident", "ApplyGridSettings_3", 1);

		btvIncident->OptionsView->GroupByBox = true;	// а то она принудительно затирается после восстановления настроек изи ini
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UI-1 > : Ошибка выполнения предварительных настроек.\n", e.Message);
		this->Close();
	}

	// название шаблона
	TplLockPark = cfg_.ini->ReadString("Templates", "tplIncident", "");

	if (TplLockPark == "")
		lblTemplateName->Caption = lblTemplateName->Caption + "исходный";
	else
		lblTemplateName->Caption = lblTemplateName->Caption + TplLockPark;

	// Автообновление
	//tmr->Enabled = true;

	aSetAction->Execute();

	lblNeed2Refresh->Visible = false;

	// Функция "Инциденты НРЭ"
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

	TDMMain::LogEvenEnterExit("Вход. Инциденты.");
}
//---------------------------------------------------------------------------
void __fastcall TfrmUIncidentTest::FormClose(TObject *Sender, TCloseAction &Action)

{
	/**/
	Action = caFree;
}
//---------------------------------------------------------------------------
void __fastcall TfrmUIncidentTest::aDocExecute(TObject *Sender)
{
	/* Сформировать документ */

	TClientDataSet	*cds = (TClientDataSet*) ((TcxGridDBBandedTableView*)grdIncident->FocusedView)->DataController->DataSet;
	TcxGridDBBandedTableView *btv = btvIncident;

	if (bListDoc->EditValue == 0)
	{
		throw Exception ("< UI-12 > : Тип документа не выбран. Формирование документа невозможно.\n");
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
		throw Exception ("< UI-14 > : Не выбран инцидент.\n");
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
		throw Exception ("< UI-13 > : Для данного типа документа необходимо выбрать не более одного Инцидента.\n");
		return;
	}

	if (pDoc.NumDoc == 6)
	{
			if (IfFrx6() == false)
			{
				throw Exception ("< UI-19 > : Ошибка формирования документа. Выбраны разные серии или номера локомотивов.\n");
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

bool __fastcall TfrmUIncidentTest::IfFrx6()
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
bool __fastcall TfrmUIncidentTest::IfMoreDoc(int Count, int IndexDoc)
{
	if (Count > 1)
	{
		switch (IndexDoc)
		{
			case  1 : return true;    // АКТ технического состояния локомотива
			case  2 : return true;    // АКТ передачи локомотива сервисной компании
			case  3 : return true;    // Техническое заключение
			case  4 : return true;    // Технический акт выполненных работ и указанных услуг
//			case  6 :return true;    // АКТ разбора нарушений
			case  7 : return true;    // ТК 1 (ТЭП70БС)
			case  8 : return true;    // ДК 2 (ЭП2К)
			case  9 : return true;    // ТК 2 (2ТЭ116У)
			case 10 : return true;    // Письмо о нарушении режима эксплуатации
			case 11 : return true;    // ДК 1 (ТЭМ2К)
			default : return false;   //
		}
	}
	else
	{
		return false;
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmUIncidentTest::aLoadDocExecute(TObject *Sender)
{
	/* Загрузить список документов */

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
		throw Exception ("< UI-18 > : Ошибка загрузки документов, актов и писем.\n" + e.Message);
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
		throw Exception ("< UI-19 > : Ошибка заполнения списка документов, актов и писем.\n" + e.Message);
	}

}
//---------------------------------------------------------------------------
void __fastcall TfrmUIncidentTest::BTV_LocateRecord (  TcxGridDBBandedTableView *btv, int id )
{
	// Найти и поставить фокус на записи в TcxGridDBBandedTableView

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
void __fastcall TfrmUIncidentTest::UniversalRefresh(enumRelationType1 p_relation_type, TClientDataSet *cds)
{
	/* Универсальный вызов процедуры загрузки списка инцидентов */

	try
	{
		TDMMain::ClearDataSet(cds);

		// Вывести только НРЭ
		if (DMMain->IsFunction("f_code", "aIncident_aViolOperatMod") == true)
		{
			cds->CommandText = "SMT.INCIDENT_PKG.incident_2_0_nre_list_cur";
			cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime   = deDateBegin->Date;
			cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime  = deDateFinish->Date;
			cds->Params->CreateParam(ftInteger,  "p_show_all", ptInput)->AsInteger      = (CurrentPeriodType == rFilterActive1 ? 0 : 1);
			cds->Params->CreateParam(ftInteger,  "p_relation_type", ptInput)->AsInteger = p_relation_type;
			cds->Params->CreateParam(ftInteger,  "p_access", ptInput)->AsInteger        = cbFirmTree_->Tag;
		}
		else
		{
			cds->CommandText = "SMT.INCIDENT2_PKG.incident_2_0_nloc_ser_list_cur";
			cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime   = deDateBegin->Date;
			cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime  = deDateFinish->Date;
			cds->Params->CreateParam(ftInteger,  "p_show_all", ptInput)->AsInteger      = (CurrentPeriodType == rFilterActive1 ? 0 : 1);
			cds->Params->CreateParam(ftInteger,  "p_relation_type", ptInput)->AsInteger = p_relation_type;
			cds->Params->CreateParam(ftInteger,  "p_access", ptInput)->AsInteger        = cbFirmTree_->Tag;
			cds->Params->CreateParam(ftInteger,  "p_kod_ser",    ptInput)->AsInteger    = LocSer;
			cds->Params->CreateParam(ftInteger,  "p_nom_sec",    ptInput)->AsInteger    = LocSec;
			cds->Params->CreateParam(ftInteger,  "p_nom_object", ptInput)->AsInteger    = LocNum;
		}

		cds->Params->CreateParam(ftCursor,   "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UI-2 > : Ошибка выполнения загрузки списка инцидентов (обращение к БД).\n" + e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmUIncidentTest::UniversalBTVApplyRefresh( TDataSource *ds, TcxGridDBBandedTableView *btv, int key_value, bool DoLocate )
{
	/* Универсальная процедура установки датасета на вьюху, поиск по ключу и всё такое */

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
		throw Exception("< UI-3 > : Ошибка установки ключевых полей таблицы.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------
AnsiString __fastcall TfrmUIncidentTest::ProblemCondition()
{
	AnsiString paccess;
	AnsiString dates;
	AnsiString filters;

	paccess = paccess + " AND kod_firm_parent = " + IntToStr(cbFirmTree_->Tag);

	if (CurrentPeriodType == rFilterPeriod1)
		dates = dates + " AND date_fail BETWEEN to_date('" + DateToStr(deDateBegin->Date) + "') AND to_date('" + DateToStr(deDateFinish->Date) + "') + 1 - 1 / 24 / 60 / 60";

	if (btvIncident->DataController->Filter->FilterText != "")
		filters = filters + " AND " + btvIncident->DataController->Filter->FilterText;

	return "WHERE 1 = 1 " + paccess + dates + filters;
}
//---------------------------------------------------------------------------
AnsiString __fastcall TfrmUIncidentTest::GetIpAddress()
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
	return out;
}
//---------------------------------------------------------------------------
void __fastcall TfrmUIncidentTest::aRefreshExecute(TObject *Sender)
{
	/*Обновить список инцидентов*/

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

		UniversalRefresh(rtParent1, cdsIncidentList);
		UniversalBTVApplyRefresh(dsIncidentList, btvIncident, vID, true);

		mmIncident_Descr->DataBinding->DataSource 	= dsIncidentList;

		if (CurrentPeriodType == rFilterActive1)
			pnlGridTitle->Caption = cbFirmTree_->Text.Trim() + " : АКТИВНЫЕ";	// тут не обновляется название.
		else
			pnlGridTitle->Caption = cbFirmTree_->Text.Trim() + " : " + deDateBegin->Text + " - " + deDateFinish->Text;

		lblNeed2Refresh->Visible= false;
		aApplyProfile->Enabled = true;
	}
	catch (Exception &e)
	{
		aApplyProfile->Enabled = true;
		btv->OptionsView->NoDataToDisplayInfoText = ErrorRefreshText;
		throw Exception ("КОРНЕВЫЕ ИНЦИДЕНТЫ:\n" + e.Message);
	}

	try
	{
		btv = btvIncidentChild;
		btv->OptionsView->NoDataToDisplayInfoText = RefreshText;
		btv->DataController->DataSource = 0;
		grdIncident->Update();

		UniversalRefresh(rtChild1, cdsIncidentListChild);

		UniversalBTVApplyRefresh(dsIncidentListChild, btvIncidentChild, 0, false);

		//btv->ViewData->Expand(true);
	}
	catch (Exception &e)
	{
		btv->OptionsView->NoDataToDisplayInfoText = ErrorRefreshText;
		throw Exception ("ЗАВИСИМЫЕ ИНЦИДЕНТЫ:\n" + e.Message);
	}

	//btnRefresh->Style = NULL;

	if (spltrGraph->State == ssOpened)
		aRefreshRcvDinamic->Execute();

}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aDetailExecute(TObject *Sender)
{
	/* Детализация инцидента */

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

	// Для получения пробегов (для дозагрузки их по автоматическим инцидентам)
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

void __fastcall TfrmUIncidentTest::aNewExecute(TObject *Sender)
{
	/* Новый инцидент */

	std::auto_ptr<TfrmRecordSheet> dlg (new TfrmRecordSheet(this));
	TcxGridDBBandedTableView	*btv = btvIncident;
	StrctRecordSheet 			ep;

	ep.bWasChange 				= false;
	ep.sheet_id 				= 0;
	ep.sheet_no					= "";
	ep.create_mode				= 1;	// всегда
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
	ep.LocName					= "Локомотив не выбран";
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
	// Для получения пробегов (для дозагрузки их по автоматическим инцидентам)
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

void __fastcall TfrmUIncidentTest::aEditExecute(TObject *Sender)
{
	/**/
}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aDeleteExecute(TObject *Sender)
{
	/* Удалить инцидент */

	if (((TcxGridDBBandedTableView*)grdIncident->ActiveView)->Controller->FocusedRow == NULL)
		return;

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	int qr = MessageBox(NULL, "Удалить выделенный инцидент?", "Подтверждение", MB_YESNO);
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
			throw Exception ("< UI-4 > : Ошибка удаления инцидента.\n" + e.Message);
		}

		aRefresh->Execute();
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aRefreshRcvDinamicExecute(TObject *Sender)
{
	/* Обновить диаграмму динамики поступления инцидентов */

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
		cds->Params->CreateParam(ftInteger, "p_type_period", ptInput)->AsInteger = 1;	// 0 - текущий календарный месяц, 2 - предыдущие 30 дней, 1 - выбранный период
		cds->Params->CreateParam(ftInteger, "p_id_user",    ptInput)->AsInteger = UserID;
		cds->Params->CreateParam(ftString,  "p_code_object", ptInput)->AsString = "aIncident";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btv->DataController->DataSource = ds;
	}
	catch ( Exception &e )
	{
		throw Exception ("< UI-5 > : Ошибка загрузки диаграммы динамики поступления инцидентов.\n" + e.Message);
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aFilter_ActiveExecute(TObject *Sender)
{
	/**/
	deDateBegin->Enabled   = false;
	deDateFinish->Enabled  = false;
	btnFilter_Period->ButtonStyle = bsDefault;
	btnFilter_Period->Down = false;
	btnFilter_Active->ButtonStyle = bsChecked;
	btnFilter_Active->Down = true;

	CurrentPeriodType = rFilterActive1;

	aRefresh->Execute();
	cfg.ini->WriteInteger("frmIncident", "FilterPeriodType", CurrentPeriodType);

	btnRefresh->Down = false;

}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aFilter_PeriodExecute(TObject *Sender)
{
	/**/

	deDateBegin->Enabled	= true;
	deDateFinish->Enabled	= true;
	btnFilter_Period->Down	= true;

	CurrentPeriodType = rFilterPeriod1;
	cfg.ini->WriteInteger("frmIncident", "FilterPeriodType", CurrentPeriodType);

}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aLoad_FTP_ParamsExecute(TObject *Sender)
{
	/* Получить настройки ftp */

	TClientDataSet *cds = DMMain->cdsNSI_FTP_Params;

	try
	{
		cds->CommandText = "smt.smt_nsi_pkg.ftp_settings_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch ( Exception &e )
	{
		// кипиш пока устраивать не будем, попытаемся потом еще раз загрузить эти настройки
		LogEvent("< UI-6 > : Не удалось получить параметры FTP-соединения: " + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aStore_Column_CustomizationExecute(TObject *Sender)

{
	/* Сохранить настройки visible колонок основного грида */

	TcxGridDBBandedTableView *btv = btvIncident;

	for (int i = 0 ; i < btv->ColumnCount; i++)
	{
		cfg.ini->WriteBool("TfrmIncident_Columns", btv->Columns[i]->Name, btv->Columns[i]->Visible);
	}

	cfg.ini->WriteInteger("TfrmIncident_Settings", "spltrGraph->State", spltrGraph->State);
}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aRestore_Column_CustomizationExecute(TObject *Sender)

{
	/* Восстановить настройки visible колонок основного грида */

	TcxGridDBBandedTableView *btv = btvIncident;

	spltrGraph->State = cfg.ini->ReadInteger("TfrmIncident_Settings", "spltrGraph->State", ssOpened);
}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aSetActionExecute(TObject *Sender)
{
	/* Настройка доступности кнопок */

	TcxGridDBBandedTableView	*btv		= NULL;
	bool 						 can_edit	= false;

	/* Инциденты. Основной список */

	btv = (TcxGridDBBandedTableView*)grdIncident->ActiveView;

	can_edit 			  =	(	btv->DataController->RowCount > 0
							&&  btv->Controller->FocusedRow != NULL
							&&  btv->Controller->FocusedRow->Level > 0);

	aDetail->Enabled 	  =	can_edit;

	aMultiAttach->Enabled = can_edit;

	switch (grdIncident->ActiveLevel->Index)
	{
		case 0:
			aDelete->Enabled	=	(can_edit);
			break;
		case 1:
			aDelete->Enabled	=	(	can_edit
									&&	(int) btv->Controller->FocusedRow->Values[clmnIncidentChild_Create_Mode->Index] == 1
									&&	(int) btv->Controller->FocusedRow->Values[clmnIncidentChild_Can_Delete->Index] == 1
									);
			break;

	}


	aNew->Enabled          = DMMain->IsFunction("f_code",  "aIncident_aNew");
	aDetail->Enabled       = DMMain->IsFunction("f_code",  "aIncident_aDetail");
	aDelete->Enabled       = DMMain->IsFunction("f_code",  "aIncident_aDelete");
	aExport2Excel->Enabled = DMMain->IsFunction("f_code",  "aIncident_aExport2Excel");
	dxBarSubItem2->Enabled = DMMain->IsFunction("f_code",  "aControlProblem_aControlProblem");
	aNewProblem->Enabled   = DMMain->IsFunction("f_code",  "aControlProblem_aControlProblem");

}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aExport2ExcelExecute(TObject *Sender)
{
	/* Экспорт в Excel */

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

void __fastcall TfrmUIncidentTest::aFill_ProfileListExecute(TObject *Sender)
{
	/* Заполнить список сохраненных профилей */

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
		MessageBox (NULL, AnsiString("< UI-7 > : Ошибка заполнения списка Профилей.\n" + e.Message).c_str(), "Операция прервана", MB_ICONSTOP);
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aSaveProfileExecute(TObject *Sender)
{
	std::auto_ptr<TfrmTextEditDialog> dlg (new TfrmTextEditDialog(this));
	StrctTextEdit t;
	TcxGridStorageOptions opt;

	t.res = "";
	t.lbltxt = "Имя Профиля";

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
			MessageBox(Handle, AnsiString("< UI-8 > : Ошибка сохранения Профиля. " + e.Message).c_str(), "Операция прервана", MB_ICONSTOP);
		}
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aApplyProfileExecute(TObject *Sender)
{
	/* Применить Профиль */

	cfg.ini->WriteString("TfrmIncident_Settings", "CurrentProfile", cbProfile->EditValue);

	TcxGridStorageOptions opt;
	opt << gsoUseFilter << gsoUseSummary;
	btvIncident->RestoreFromIniFile(ProfileFolder + cbProfile->EditValue + ".prof", true);

}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aDeleteProfileExecute(TObject *Sender)
{
	/* Удалить профиль */

	if (VarToStr(cbProfile->EditValue) == "По_умолчанию")
	{
		MessageBox(Handle, "Удалять можно только пользовательские профили. Системный профиль удалять нельзя.", "Предупреждение", MB_ICONWARNING );
		return;
	}

	int qr = MessageBox(NULL, AnsiString("Удалить текущий профиль <" + VarToStr(cbProfile->EditValue) + "> ?").c_str(), "Подтверждение", MB_YESNO);

	if (IDYES == qr)
	{
		DeleteFile(ProfileFolder + VarToStr(cbProfile->EditValue) + ".prof");
		aFill_ProfileList->Execute();
		cbProfile->EditValue = "По_умолчанию";
		aApplyProfile->Execute();
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aNewProblemExecute(TObject *Sender)
{
	/* Открыть новый лист регистрации "Проблема" */

	std::auto_ptr<TClientDataSet> dsaSess (new TClientDataSet(NULL));
	std::auto_ptr<TClientDataSet> dsaAdd (new TClientDataSet(NULL));

	int Isn = 0;
	AnsiString Url;
	AnsiString Key = "";

	Url = cfg.ini->ReadString("ApplicationServers", "ProblemsURL", "");

	if (Url == "") {
		MessageBox (NULL, "Неверные настройки строки адреса ЛРП в INI-файле.", "Ошибка INI-файла", MB_ICONSTOP);
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
		throw Exception ("< RP-1 > : Ошибка открытия ЛРП.\n" + e.Message);
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aNewSystemExecute(TObject *Sender)
{
	/**/
}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aNewInstrExecute(TObject *Sender)
{
	/**/
}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aMultiAttachExecute(TObject *Sender)
{
	/* Приложить файл к выделенному Инциденту (группе Инцидентов) */

	std::auto_ptr<TfrmEdit_Attach> dlg ( new TfrmEdit_Attach( this ) );
	TcxGridDBBandedTableView	*btv			= btvIncident;
	int							 cnt_selection	= btv->Controller->SelectedRowCount;
	Strct_Attach te;

	te.group_id = 16;	// Исходная информация
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
			throw Exception("< UI-9 > : Ошибка добавления вложения: " + e.Message);
		}
	}	// for

	aRefresh->Execute();
	btv->DataController->LocateByKey(te.sheet_id);

	if (cnt_selection == 0)
	{
		throw Exception("<Нет выбранных Инцидентов.");
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aCloseHandlyExecute(TObject *Sender)
{
	// Принудительное закрытие ЛРИ как неотработанного

	if (((TcxGridDBBandedTableView*)grdIncident->ActiveView)->Controller->FocusedRow == NULL)
		return;

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	int qr = MessageBox(NULL, "Закрыть выделенный инцидент как неотработанный?", "Подтверждение", MB_YESNO);

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
			throw Exception ("< UI-10 > : Ошибка закрытия инцидента.\n" + e.Message);
		}

		aRefresh->Execute();
	}

}
//---------------------------------------------------------------------------


void __fastcall TfrmUIncidentTest::aLoad_NSI_FirmTreeExecute(TObject *Sender)
{
	/* Загрузить дерево предприятий */

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
		// эксепшен ловим в вызывающем методе
		throw Exception ("< UI-11 > : Ошибка загрузки дерева предприятий.\n" + e.Message);
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aSelect_FirmTreeExecute(TObject *Sender)
{
	/* Выбор предприятия в дереве */

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

void __fastcall TfrmUIncidentTest::aCreateTemplateExecute(TObject *Sender)
{

	StrctEditTemplate sf;
	TStringList *lst = new TStringList();

	std::auto_ptr<TfrmEdit_Template> dlg (new TfrmEdit_Template(this));
	dlg->Caption = "Создать новый шаблон";

	// сохранить настройки грида в шаблон
	TcxGridStorageOptions opt;
	opt << gsoUseFilter << gsoUseSummary;
	btvIncident->StoreToIniFile(ProfileFolder + "Incident.ini", false, opt);

	lst->LoadFromFile(ProfileFolder + "Incident.ini");

	// передаём данные в структуру
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

void __fastcall TfrmUIncidentTest::aViewTemplateExecute(TObject *Sender)
{
	/* Список шаблонов */
	std::auto_ptr<TfrmTemplates> dlg (new TfrmTemplates(this));

	if (mrOk == dlg->Show())
	{
		// восстановить сохраненные настройки грида
		TcxGridStorageOptions opt;
		opt << gsoUseFilter << gsoUseSummary;
		btvIncident->RestoreFromIniFile(ProfileFolder + "Incident.ini", true, false, opt);
	}

	// название шаблона
	TplLockPark = cfg_.ini->ReadString("Templates", "tplIncident", "");

	if (TplLockPark == "")
		lblTemplateName->Caption = "Применён шаблон: исходный";
	else
		lblTemplateName->Caption = "Применён шаблон: " + TplLockPark;

}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aProblemIncidentExecute(TObject *Sender)
{
	/* Создать проблему по инцидентам */

	TcxGridDBBandedTableView *btv = btvIncident;
	pgAddProblem->Position        = 0;
	pgAddProblem->Properties->Max = btv->DataController->DataRowCount;


	if (((TcxGridDBBandedTableView*)grdIncident->ActiveView)->Controller->FocusedRow == NULL)
		return;

	std::auto_ptr<TClientDataSet> dsaSess (new TClientDataSet(NULL));
	std::auto_ptr<TClientDataSet> dsaIncidentAdd (new TClientDataSet(NULL));
	std::auto_ptr<TClientDataSet> dsaAdd (new TClientDataSet(NULL));

	TClientDataSet *cds = cdsIncidentList;

	int Isn = 0;
	AnsiString Url;
	AnsiString Key = "";

	Url = cfg.ini->ReadString("ApplicationServers", "ProblemsURL", "");

	if (Url == "") {
		MessageBox (NULL, "Неверные настройки строки адреса ЛРП в INI-файле.", "Ошибка INI-файла", MB_ICONSTOP);
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

				cds->First();
				while (!cds->Eof)
				{
					TDMMain::ClearDataSet(dsaAdd.get());
					dsaAdd->CommandText = "SMT.PROBLEM_PKG.ADD_INCIDENTS_TO_PROBLEM";
					dsaAdd->Params->CreateParam(ftString, "pSKey", ptInputOutput)->AsString	= Key;
					dsaAdd->Params->CreateParam(ftInteger, "SheetId", ptInput)->AsInteger	= cds->FieldByName("sheet_id")->AsInteger;
					TDMMain::OpenDS(dsaAdd.get(), "EXEC", "CT", 1);
					cds->Next();

					pgAddProblem->Position++;
					Application->ProcessMessages();
				}

				gbPrograssAddProblem->Visible = false;

				Url = Url + Key;
				ShellExecute(Application->Handle, NULL, Url.c_str(), NULL, NULL, SW_MAXIMIZE);
			}
		}
	}
	catch (Exception &e)
	{
		throw Exception ("< RP-1 > : Ошибка открытия ЛРП.\n" + e.Message);
		gbPrograssAddProblem->Visible = false;
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aLoadSerExecute(TObject *Sender)
{
	/* Загрузить список серий */

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
		throw Exception ("< UI-15 > : Ошибка загрузки серий.\n" + e.Message);
	}

	try
	{
		itm = cbep->Items->Add();
		if (itm)
		{
			itm->Description = "ВСЕ СЕРИИ";
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
		throw Exception ("< UI-16 > : Ошибка заполнения списка серий.\n" + e.Message);
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::aLoadNumExecute(TObject *Sender)
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
		throw Exception ("< UI-17 > : Ошибка загрузки номеров.\n" + e.Message);
	}

}
//---------------------------------------------------------------------------
void __fastcall TfrmUIncidentTest::SetLocValues()
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

void __fastcall TfrmUIncidentTest::aActionFuntionExecute(TObject *Sender)
{
	/*Установка доступности кнопок по ролям и функциям*/
	aNew->Enabled           =  DMMain->IsFunction("full_code",  "aIncident_aNew_"                   +  IntToStr(cdsIncidentList->FieldByName("kod_firm_service")->AsInteger));
	aDetail->Enabled        =  DMMain->IsFunction("full_code",  "aIncident_aDetail"                 +  IntToStr(cdsIncidentList->FieldByName("kod_firm_service")->AsInteger));
	aDelete->Enabled        =  DMMain->IsFunction("full_code",  "aIncident_aDelete"                 +  IntToStr(cdsIncidentList->FieldByName("kod_firm_service")->AsInteger));
	aExport2Excel->Enabled  =  DMMain->IsFunction("full_code",  "aIncident_aExport2Excel"           +  IntToStr(cdsIncidentList->FieldByName("kod_firm_service")->AsInteger));
	dxBarSubItem2->Enabled  =  DMMain->IsFunction("full_code",  "aControlProblem_aControlProblem"   +  IntToStr(cdsIncidentList->FieldByName("kod_firm_service")->AsInteger));
	aNewProblem->Enabled   	=  DMMain->IsFunction("full_code",   "aControlProblem_aControlProblem"  + IntToStr(cdsIncidentList->FieldByName("kod_firm_service")->AsInteger));

}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::FormDestroy(TObject *Sender)
{
	aStore_Column_Customization->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::Timer1Timer(TObject *Sender)
{
	btnRefresh->ButtonStyle = bsChecked;
	btnRefresh->Down = true;
	btnFilter_Active->Down = false;
	Timer1->Enabled = false;

}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::tmrTimer(TObject *Sender)
{
	tmr->Enabled = false;

	aSetAction->Execute();

	aRefresh->Execute();

}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::cbSerPropertiesEditValueChanged(TObject *Sender)

{
	/* Загрузить список номеров */
	aLoadNum->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::cbNumPropertiesEditValueChanged(TObject *Sender)

{
	SetLocValues();
}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::tlFirmTreeKeyDown(TObject *Sender, WORD &Key, TShiftState Shift)

{
	if (Key == VK_LEFT && tlFirmTree->FocusedNode->Expanded)
		tlFirmTree->FocusedNode->Collapse(true);
	if (Key == VK_RIGHT && !tlFirmTree->FocusedNode->Expanded)
		tlFirmTree->FocusedNode->Expand(false);
}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::tlFirmTreeKeyPress(TObject *Sender, System::WideChar &Key)

{
	if (Key == VK_RETURN)
		aSelect_FirmTree->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::btvIncidentColumn5PropertiesStartClick(TObject *Sender)

{
	// Новая форма просмотра ЛР-Инцидент

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

void __fastcall TfrmUIncidentTest::btvIncidentCellDblClick(TcxCustomGridTableView *Sender,
          TcxGridTableDataCellViewInfo *ACellViewInfo, TMouseButton AButton,
          TShiftState AShift, bool &AHandled)
{
	if (DMMain->IsFunction("f_code",  "aIncident_aDetail"))
	{
		aDetail->Execute();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmUIncidentTest::btvIncidentCustomDrawCell(TcxCustomGridTableView *Sender,
          TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
          bool &ADone)
{
	// Красным - инциденты в состоянии Новый или Склад более <MaxIncidentTime4New> дней
	if	((int) AViewInfo->GridRecord->Values[clmnIncidentTime->Index] > MaxIncidentTime4New
		&&	FindInArray	(arrayIDState4CheckTime1, sizeof(arrayIDState4CheckTime1)/sizeof(arrayIDState4CheckTime1[0])
						,(int) AViewInfo->GridRecord->Values[clmnStateID->Index])
		)
		ACanvas->Font->Color = DMMain->stlAttention->TextColor;
}
//---------------------------------------------------------------------------


void __fastcall TfrmUIncidentTest::btvIncidentMouseWheel(TObject *Sender, TShiftState Shift,
          int WheelDelta, TPoint &MousePos, bool &Handled)
{
	/* Прокрутка */
}
//---------------------------------------------------------------------------

