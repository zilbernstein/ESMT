#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include <memory>

#include "winuser.h"
#include "uBinFunction.h"
#include "config.h"
#include "public.h"
#include "UDMMain.h"
#include "Utils_JK.h"
#include "UFTPTransfer.h"
#include "USearchLoc.h"
#include "UResponsTree.h"
#include "UEdit_TeamExecutor.h"
#include "UEdit_TeamLeader.h"
#include "UEdit_Work.h"
#include "UEdit_Action.h"
#include "UEdit_Attach.h"
#include "UEdit_Pause.h"
#include "UEdit_Workaround.h"
#include "UEdit_Storage.h"
#include "UEdit_Escalation.h"
#include "UEdit_EscalationAction.h"
#include "UEdit_IncidentRelation.h"
#include "UIncidentClosing.h"
#include "UStateHistory.h"
#include "UUsers.h"
#include "UFirmSelect.h"
#include "URecordSheet1.h"
#include "uEdit_Weight.h"
#include "uEdit_WeightChrono.h"
#include "uEdit_WeightCompensation.h"

#include "uListReports.h"

#include "uExpectRefusal.h"
#include "uChronology.h"
#include "UHistoryNRE.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxDateUtils"
#pragma link "cxNavigator"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "dxCore"
#pragma link "cxSplitter"
#pragma resource "*.dfm"
TfrmRecordSheet *frmRecordSheet;
//---------------------------------------------------------------------------
__fastcall TfrmRecordSheet::TfrmRecordSheet(TComponent* Owner)
	: TForm(Owner)
{
	//setUserFunction();
	isRed = false;
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmRecordSheet::Show( StrctRecordSheet* ep )
{
	ep_									= ep;
	ep_old_								= ep;
	vDontClose							= false;
	tsOthers->TabVisible				= false;
	tsRSh_Workaround_old->TabVisible	= false;
    tsRSh_Common->TabVisible			= false;

    if (/*ep_->create_mode != 1*/ ep_->sheet_id > 0)
    	((TcxButtonEditProperties*)rwLocName->Properties->EditProperties)->Buttons->Items[0]->Enabled = false;

    // чтоб поезд и пробеги не дергались раньше времени, когда значение даты выставляется (иначе будет дергаться когда надо и когда не надо)
    //aGetRunningASOUP->Enabled = false;
    //aGetTrainInfo->Enabled = false;
	aSet_TabSheet->Enabled	= false;
    aLoad_TabSheet->Execute();
	aState_SetAction->Execute();

	aLoadDoc->Execute();

	cbState->EditValue		= ep_->state_id;
	pcCommon->ActivePage	= pcCommon->Pages[0];

	DMMain->clmnRSh_Attach_Download->Properties->OnButtonClick = DMMainclmnRSh_Attach_DownloadPropertiesButtonClick;
	clmnFiles->Properties->OnButtonClick = DMMainclmnFilesDownloadPropertiesButtonClick;
    tmr->Enabled = true;

    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::tmrTimer(TObject *Sender)
{
	tmr->Enabled = false;

    try
    {
        aLoad_NSI_KasantState->Execute();
		aLoad_NSI_InfoSourceType->Execute();
		aLoad_NSI_Category->Execute();

		StatusBar->Panels->Items[StatusBar->Panels->Count-1]->Text = "Получение полной информации по ЛР...";
		Update();
		aLoad_Incident_RSh->Execute();

		//StatusBar->Panels->Items[StatusBar->Panels->Count-1]->Text = "Загрузка списка филиалов...";
		//Update();
		//aLoad_NSI_ServiceFilial->Execute();

		/*if ( DMMain->cdsRSh_NSI_Category->State == dsInactive )
		{
			StatusBar->Panels->Items[StatusBar->Panels->Count-1]->Text = "Загрузка НСИ категорий инцидента...";
			Update();
			aLoad_NSI_Category->Execute();
		}*/

		if (DMMain->cdsRSh_NSI_EnterDepot_Reason->State == dsInactive)
		{
			StatusBar->Panels->Items[StatusBar->Panels->Count-1]->Text = "Загрузка НСИ причин захода в депо...";
			Update();
			aLoad_NSI_EnterDepot_Reason->Execute();
		}

		if (DMMain->cdsRSh_NSI_InfoSourceType->State == dsInactive)
		{
            StatusBar->Panels->Items[StatusBar->Panels->Count-1]->Text = "Загрузка НСИ типов источника информации...";
            Update();
        	aLoad_NSI_InfoSourceType->Execute();
        }

        StatusBar->Panels->Items[StatusBar->Panels->Count-1]->Text = "Установка источников данных для списков...";
        Update();
        cbInfoSourceType->Properties->ListSource 		= DMMain->dsRSh_NSI_InfoSourceType;
    	cbEnter_Depot_Reason->Properties->ListSource 	= DMMain->dsRSh_NSI_EnterDepot_Reason;
    	cbCategory->Properties->ListSource 				= DMMain->dsRSh_NSI_Category;
        cbCriticality->Properties->ListSource 			= DMMain->dsRSh_NSI_Criticality;
        cbTypePlace->Properties->ListSource 			= DMMain->dsRSh_NSI_TypePlace;

        StatusBar->Panels->Items[StatusBar->Panels->Count-1]->Text = "Установка значений контролов...";
        Update();
        aSetValues->Execute();

		if (ep_->has_running == 0 && ep_->sheet_id > 0)
        {
            StatusBar->Panels->Items[StatusBar->Panels->Count-1]->Text = "Получение пробегов (АСОУП)...";
            Update();
			aGetRunningASOUP->Execute();
        }
        else
        {
			StatusBar->Panels->Items[StatusBar->Panels->Count-1]->Text = "Получение сохраненных пробегов по инциденту...";
            Update();
        	aLoad_Incident_Running->Execute();
        }

        StatusBar->Panels->Items[StatusBar->Panels->Count-1]->Text = "Загрузка доступных разделов ЛР...";
        Update();
        aSet_TabSheet->Enabled = true;
        aSet_TabSheet->Execute();

        StatusBar->Panels->Items[StatusBar->Panels->Count-1]->Text = "Установка доступности действий пользователя...";
        Update();
        aSetAction->Execute();
        StatusBar->Panels->Items[StatusBar->Panels->Count-1]->Text = "";
        Update();
    }
    catch (Exception &e)
    {
		TDMMain::ShowAppException(AET_EXCEPTION, "< URS-1 > : Ошибка загрузки ЛР [" + IntToStr(ep_->sheet_id) + "]", e.Message);
    	ModalResult = mrAbort;
    }

	// Анализ
	try
	{
		aLoad_NSI_SystemTree->Execute();
		aFill_Class_System_Type->Execute();
		aFill_NSI_SolutionType->Execute();
		aLoad_Analyses->Execute();
		aSetKassant->Execute();
    }
    catch (Exception &e)
    {
		throw Exception ("< URS-2 > : Ошибка загрузки раздела Анализ.\n" + e.Message);
	}

	// Расчет НР
	if ((int)rwEnterDepotReason->Properties->Value == 91)
	{
		tsWt_CalcUnplannedRepair->Enabled = true;
		aLoadUnplannedRepair->Execute();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aSetActionExecute(TObject *Sender)
{
   //	deFailDate->Properties->ReadOnly = !( DMMain->IsUserFunction("esmt-incident") == true && ep_->state_id != stateClose );

	// Редактирование в статусе "Закрыт"
	/*
	if (DMMain->IsUserFunction("esmt-edit-after-close") == true)
		aSave->Enabled = true;
	else
		aSave->Enabled = (DMMain->IsUserFunction("esmt-incident") == true && ep_->state_id != stateClose);

	aSave->Enabled = (ep_->state_id != stateClose);
	aSave->Visible = aSave->Enabled;

	lblReadOnly->Visible = (aSave->Visible == true ? ivNever : ivAlways);
	*/



	if (DMMain->IsFunction("f_code","aIncident_aStateClose") == true)
		aSave->Enabled = true;
	else
		aSave->Enabled = (DMMain->IsFunction("f_code", "aIncident_aDetail")); //IsUserFunction("esmt-incident") aIncident_aDetail

	aSave->Visible	= aSave->Enabled;
	aClose->Enabled = aSave->Enabled;
	aClose->Visible = aSave->Enabled;
	lblReadOnly->Visible = (aSave->Visible == false ? ivAlways : ivNever);

	// Полное ведение своих ЛРИ
	aSave->Enabled = (DMMain->IsFunction("f_code","aIncident_aF_LRI")||DMMain->IsFunction("f_code", "aIncident_aNew")); //IsUserFunction(esmt-recordsheet-self-edit)  aIncident_aF_LRI
//	aSave->Enabled = (DMMain->IsFunction("f_code","aIncident_aF_LRI"));


//	aSave->Enabled = (DMMain->IsFunction("f_code","aIncident_aF_LRI")&&ep_->state_id != stateClose);

	if ((/*DMMain->IsFunction("f_code","aIncident_aStateClose")&&*/ep_->state_id != stateClose)==false)
	{
		if ((DMMain->IsFunction("f_code","aIncident_aStateClose")==false))
		{
			aSave->Visible	= false;
			aClose->Enabled = false;
			aClose->Visible = false;
			lblReadOnly->Visible = (aSave->Visible == false ? ivAlways : ivNever);
			aWork_Finish->Enabled 		  = false;
			aSetState_Storage->Enabled 	  = false;
			aSetState_Pause->Enabled 	  = false;
			aSetState_Escalation->Enabled = false;
			aSetState_Resolved->Enabled   = false;
			aSetState_InWork->Enabled 	  = false;
			aSetState_Close->Enabled  	  = false;
		}
	}

	/*
	if (DMMain->IsUserFunction("esmt-edit-after-close") == true)
		aSave->Enabled = true;
	else
		aSave->Enabled = ((DMMain->IsUserFunction("esmt-incident")) == true && ep_->state_id != stateClose); //IsUserFunction("esmt-incident") aIncident_aDetail

	aSave->Visible	= aSave->Enabled;
	aClose->Enabled = aSave->Enabled;
	aClose->Visible = aSave->Enabled;
	lblReadOnly->Visible = (aSave->Visible == false ? ivAlways : ivNever);
	*/

	// Полное ведение своих ЛРИ
//	aSave->Enabled = (DMMain->IsUserFunction("esmt-recordsheet-self-edit") && ep_->change_user_id == cfg_.UserID); //IsUserFunction(esmt-recordsheet-self-edit)  aIncident_aF_LRI
	/*
	// Просмотр ЛРИ

	aSave->Enabled = (DMMain->IsUserFunction("esmt-recordsheet-view") ? DMMain->IsUserFunction("esmt-incident") : false);
	tbCommonButtons->Visible = (DMMain->IsUserFunction("esmt-recordsheet-view") ? DMMain->IsUserFunction("esmt-incident") : false);

	aSave->Visible  = aSave->Enabled;
	aClose->Enabled = aSave->Enabled;
	aClose->Visible = aSave->Enabled;
	lblReadOnly->Visible = (aSave->Visible == false ? ivAlways : ivNever);

	// Закрытие ЛРИ
	aSetState_Close->Enabled = DMMain->IsUserFunction("esmt-incident-close");

    // Статусы
	// Создание ЛРИ (от статуса «Новый» до статуса «Работа»)
	//aSetState_InWork->Enabled = (ep_->state_id == stateNew && (DMMain->IsUserFunction("esmt-incident-create") || DMMain->IsUserFunction("esmt-incident")));

	// От статуса «Работа» до статуса «Меры»
	aWork_Finish->Enabled 		  = (!DMMain->IsUserFunction("esmt-recordsheet-work-edit"));
	aSetState_Storage->Enabled 	  = (DMMain->IsUserFunction("esmt-recordsheet-work-edit"));
	aSetState_Pause->Enabled 	  = (DMMain->IsUserFunction("esmt-recordsheet-work-edit"));
	aSetState_Escalation->Enabled = (DMMain->IsUserFunction("esmt-recordsheet-work-edit"));
	aSetState_Resolved->Enabled   = (DMMain->IsUserFunction("esmt-recordsheet-work-edit"));
	aSetState_InWork->Enabled 	  = (!DMMain->IsUserFunction("esmt-recordsheet-work-edit") || DMMain->IsUserFunction("esmt-incident"));
	aSetState_Close->Enabled  	  = (!DMMain->IsUserFunction("esmt-recordsheet-work-edit"));

	// Оценки эффективности мероприятий и выполнения работы
	aWork_Finish->Enabled 		  = (DMMain->IsUserFunction("esmt-recordsheet-effective-edit"));
	aSetState_InWork->Enabled 	  = (DMMain->IsUserFunction("esmt-recordsheet-effective-edit") || DMMain->IsUserFunction("esmt-incident"));
	aSetState_Close->Enabled  	  = (DMMain->IsUserFunction("esmt-recordsheet-effective-edit"));
	aSetState_Storage->Enabled    = (!DMMain->IsUserFunction("esmt-recordsheet-effective-edit"));
	aSetState_Pause->Enabled      = (!DMMain->IsUserFunction("esmt-recordsheet-effective-edit"));
	aSetState_Escalation->Enabled = (!DMMain->IsUserFunction("esmt-recordsheet-effective-edit"));
	aSetState_Resolved->Enabled   = (!DMMain->IsUserFunction("esmt-recordsheet-effective-edit"));

	// Статус «Аудит»
	DMMain->IsUserFunction("esmt-recordsheet-audit");
    */
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aState_SetActionExecute(TObject *Sender)
{
	/* Настройка доступности переходов между статусами (видимость кнопок) */



	aSetState_InWork->Visible     = (DMMain->IsFunction("f_code", "aIncident_aNew") && ep_->state_id != stateInWork);
//	aSetState_Storage->Visible    = (DMMain->IsFunction("f_code", "aIncident_aNew") && ep_->state_id != stateInWork);

	//	aSetState_Storage->Visible    = (DMMain->IsFunction("f_code", "stateStorage") && ep_->state_id != stateStorage);
	aSetState_Pause->Visible      = (/*DMMain->IsFunction("f_code", "statePauseNew") &&*/DMMain->IsFunction("f_code", "aIncident_aNew")&&DMMain->IsFunction("f_code", "aIncident_aSetState_Resolved")&&ep_->state_id != statePauseNew);
	aSetState_Escalation->Visible = (/*DMMain->IsFunction("f_code", "statePauseNew") &&*/DMMain->IsFunction("f_code", "aIncident_aNew")&&DMMain->IsFunction("f_code", "aIncident_aSetState_Resolved")&&ep_->state_id != stateEscalationNew);
	aSetState_Resolved->Visible   = (DMMain->IsFunction("f_code", "aIncident_aSetState_Resolved") && ep_->state_id != stateResolvedNew);
	aSetState_Close->Visible      = (DMMain->IsFunction("f_code", "aIncident_aSetState_Close") && ep_->state_id != stateClose);

    /*
	aSetState_InWork->Visible     = (DMMain->IsStateOperationEnabled(stateInWork) && ep_->state_id != stateInWork);
	aSetState_Storage->Visible    = (DMMain->IsStateOperationEnabled(stateStorage) && ep_->state_id != stateStorage);
	aSetState_Pause->Visible      = (DMMain->IsStateOperationEnabled(statePauseNew) && ep_->state_id != statePauseNew);
	aSetState_Escalation->Visible = (DMMain->IsStateOperationEnabled(stateEscalationNew) && ep_->state_id != stateEscalationNew);
	aSetState_Resolved->Visible   = (DMMain->IsStateOperationEnabled(stateResolvedNew) && ep_->state_id != stateResolvedNew);
	aSetState_Close->Visible      = (DMMain->IsStateOperationEnabled(stateClose) && ep_->state_id != stateClose);
    */
	//aSetState_Workaround->Visible = (DMMain->IsStateOperationEnabled(stateWorkaround) && ep_->state_id != stateWorkaround );
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aSearchLocExecute(TObject *Sender)
{
	/* Искать локомотив */

	std::auto_ptr<TfrmSearchLoc> dlg (new TfrmSearchLoc(this));
	StrctSearchLoc_New 			ep;

	if (mrOk == dlg->Show(&ep))
	{
		btneRepairBaseFirm->Text = ep.RepairBaseFirmName;
		ep_->kod_firm_repair = ep.RepairBaseFirmID;
		ep_->id_object = ep.id_object;
        ep_->kod_ser = ep.KodSer;
        ep_->kod_depo = ep.KodDepo;
        ep_->kod_tjaga = ep.KodTjaga;
        ep_->nom_loc = ep.NomLoc;
        ep_->nom_sec = ep.NomSec;
        ep_->nom_tpe = ep.NomTPE;
        ep_->n_sec = ep.NSec;
        ep_->source_info_id = ep.KodDepo;
        ep_->FailPlaceId = ep_->kod_depo;

        btneFailPlace->EditValue = btneInfoSource->Text;
        cbServiceDepartment->EditValue = ep.ServiceFirmID;
        btneLoc->Text = ep.LocName;
        btneInfoSource->Text = ep.DepoName;
        rwLocName->Properties->Value = ep.LocName;
		rwRepairBaseFirm->Focused = true;

        // Достать сведения о пробегах
        aGetRunningASOUP->Execute();

        // Достать сведения о поезде
        aGetTrainInfo->Execute();
	}
}

void __fastcall TfrmRecordSheet::SearchLoc(int kod_ser, int nom_loc)
{
	/* Искать локомотив */

	std::auto_ptr<TfrmSearchLoc> dlg (new TfrmSearchLoc(this));
	StrctSearchLoc_New ep;
	ep.NomLoc	= nom_loc;
    ep.KodSer	= kod_ser;

	if (mrOk == dlg->Show(&ep))
	{
		ep_->kod_firm_repair = ep.RepairBaseFirmID;
		ep_->kod_filial = ep.ServiceFirmID;
		ep_->kod_department = ep.KodDepartment;
        ep_->id_object = ep.id_object;
        ep_->kod_ser = ep.KodSer;
        ep_->kod_depo = ep.KodDepo;
        ep_->kod_tjaga = ep.KodTjaga;
        ep_->nom_loc = ep.NomLoc;
        ep_->nom_sec = ep.NomSec;
        ep_->nom_tpe = ep.NomTPE;
        ep_->n_sec = ep.NSec;
        ep_->source_info_id = ep.KodDepo;
		ep_->fail_type_place = TT_Depot_;
        ep_->FailPlaceId = ep_->kod_depo;

        rwLocName->Properties->Value = ep.LocName;
		rwRepairBaseFirm->Focused = true;
		rwRepairBaseFirm->Properties->Value = ep.ServiceFirmNameFull;
        rwSourcePred->Properties->Value = ep.DepoName;
        rwSourcePred->Properties->Value = ep.DepoName;
        rwFailPlace->Properties->Value = ep.DepoName;

        // выкинуть
        btneFailPlace->EditValue = btneInfoSource->Text;
        btneRepairBaseFirm->Text = ep.RepairBaseFirmName;
        cbServiceDepartment->EditValue = ep.ServiceFirmID;
        btneLoc->Text = ep.LocName;
        btneInfoSource->Text = ep.DepoName;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aGetRunningASOUPExecute(TObject *Sender)
{
	/* Получить пробеги */

    TClientDataSet *cds = DMMain->cdsRSh_Running;
    TDataSource	*ds 	= DMMain->dsRSh_Running;

    try
    {
        StatusBar->Panels->Items[StatusBar->Panels->Count-1]->Text = "Получение пробегов (АСОУП)...";
        Update();
    	TDMMain::ClearDataSet(cds);
    	cds->CommandText = "SMT.SMT_LOC_PARK_PKG.running_cur";
		cds->Params->CreateParam(ftInteger,  "p_kod_ser_asoup", ptInput)->AsInteger = ep_->kod_ser;
		cds->Params->CreateParam(ftInteger,  "p_nom_tpe", ptInput)->AsInteger       = ep_->nom_loc;
		cds->Params->CreateParam(ftInteger,  "p_idx", ptInput)->AsInteger           = ep_->nom_sec;
		cds->Params->CreateParam(ftDateTime, "p_date", ptInput)->AsDateTime         = GetDateTimeFromValue(rwFailDate->Properties->Value);
    	cds->Params->CreateParam(ftCursor,   "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        vgRunningElder->DataController->DataSource  = ds;
        vgRunningJunior->DataController->DataSource = ds;

        StatusBar->Panels->Items[StatusBar->Panels->Count-1]->Text = "";
		Update();

		if (cds->Active && cds->RecordCount != 0)
		{
			aSaveRunning->Execute();
		}
    }
	catch (Exception &e)
	{
		throw Exception ("< URS-3 > : Ошибка загрузки пробегов.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aGetTrainInfoExecute(TObject *Sender)
{
	/* Получить данные о бригаде и поезде на момент инцидента (для ручного ввода) */

    std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    try
    {
        StatusBar->Panels->Items[StatusBar->Panels->Count-1]->Text = "Получение сведений о поезде и бригаде...";
        Update();
    	TDMMain::ClearDataSet(dsa.get());
    	dsa->CommandText = "SMT_PKG.train_sost_cur_2_0";

		dsa->Params->CreateParam(ftInteger,  "p_kod_ser_asoup", ptInput)->AsInteger = ep_->kod_ser;
		dsa->Params->CreateParam(ftInteger,  "p_nom_tpe", ptInput)->AsInteger = ep_->nom_loc;//StrToInt(ep_->ZnsLoc);
		dsa->Params->CreateParam(ftInteger,  "p_idx", ptInput)->AsInteger = ep_->nom_sec; //StrToInt(ep_->PrsLoc);
        dsa->Params->CreateParam(ftDateTime, "p_date", ptInput)->AsDateTime = GetDateTimeFromValue(rwFailDate->Properties->Value);
    	dsa->Params->CreateParam(ftCursor, 	 "o_cur", ptInputOutput);

        TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);

        if (dsa->Active && dsa->RecordCount > 0)
        {
			rwNomTPE->Properties->Value		  = dsa->FieldByName("nom_tpe")->AsString;
			rwTagTrain->Properties->Value 	  = dsa->FieldByName("tag_train")->AsInteger;
			rwTrainMass->Properties->Value 	  = dsa->FieldByName("gross_weight")->AsFloat;
			rwTrainWagoons->Properties->Value = dsa->FieldByName("wagoons")->AsInteger;
			rwTrainAxes->Properties->Value 	  = dsa->FieldByName("axes")->AsInteger;
			rwBrigFIO->Properties->Value 	  = dsa->FieldByName("last_name")->AsString;
			rwBrigTNom->Properties->Value 	  = dsa->FieldByName("t_nom")->AsInteger;
			rwBrigDepo->Properties->Value 	  = dsa->FieldByName("kod_prip_bo")->AsInteger;
			rwBrigFIO->Properties->Value 	  = dsa->FieldByName("last_name")->AsString;
			ep_->train_idx_makeup 			  = dsa->FieldByName("idx_makeup")->AsInteger;
			ep_->train_idx_wheel 			  = dsa->FieldByName("idx_wheel")->AsInteger;
			ep_->train_idx_terminus 		  = dsa->FieldByName("idx_terminus")->AsInteger;
			ep_->train_organize 			  = dsa->FieldByName("organize")->AsInteger;
			ep_->train_destination 			  = dsa->FieldByName("destination")->AsInteger;
			ep_->train_length 				  = dsa->FieldByName("length")->AsInteger;
			ep_->n_sec						  = dsa->FieldByName("n_sec")->AsInteger;
			rwTPE_Sost->Properties->Value	  = dsa->FieldByName("sost_name")->AsString + " : "
												+ dsa->FieldByName("event_name")->AsString + " : "
												+ dsa->FieldByName("data_is")->AsString + " : "
            									+ dsa->FieldByName("firm_name")->AsString;
        	rwTPE_Sost->Visible = true;
        }
    	else
        {
			ep_->brig_tnom		= 0;
			ep_->brig_fio		= "";
			ep_->brig_pred_id	= 0;
        }
        StatusBar->Panels->Items[StatusBar->Panels->Count-1]->Text	= "";
        Update();
    }
	catch (Exception &e)
	{
		throw Exception ("< URS-4 > : Ошибка загрузки данных о поезде.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aDataValidationExecute(TObject *Sender)
{
	/* Проверка валидности данных */

	TcxVerticalGrid *vg = NULL;
	int				ii;
	Variant         value;
	AnsiString 		FieldCaption;
	Word 			Year, Month, Day;
	Word 			Year1, Month1, Day1;

	switch (pcCommon->ActivePage->Tag)
	{
		case 16:  // исходная инфа
			vg = vgCommon;
			break;
		case 22:  // Вес: расчет НР
			if ((int)rwEnterDepotReason->Properties->Value == 91)
				vg = vgRepair;
			break;
		case 26:  // анализ
//			vg = vgAnalyses;
			break;
		case 253: // анализ
			vg = vgAnalyses;
			break;
		default:
			return;
	}

	try
	{
		if (!vg || vg == NULL) throw Exception ("< URS-5 > : Ошибка определения объекта.\n");

		vg->FirstVisibleRow()->Focused = true;

		for (int i = 0; i < vg->Rows->Count; i++)
		{
			/* Проверка заполненности обязательных полей */

			if (vg->Rows->Items[i]->Visible && GetEditorClassID(vg->Rows->Items[i]->ClassName()) != eclssTcxCategoryRow)
			{
				switch (GetEditorClassID(vg->Rows->Items[i]->ClassName()))
				{
					case eclssTcxCategoryRow:
						break;
					case eclssTcxEditorRow:
						if (((TcxEditorRow*)vg->Rows->Items[i])->Properties->Options->Editing) {
							if (((TcxEditorRow*)vg->Rows->Items[i])->Properties->EditPropertiesClassName == "TcxDateEditProperties")
							{
								if (((TcxEditorRow*)vg->Rows->Items[i])->Properties->Value != "") {
									value = GetDateTimeFromValue(((TcxEditorRow*)vg->Rows->Items[i])->Properties->Value);
								}
							}
							else
								value 		= ((TcxEditorRow*)vg->Rows->Items[i])->Properties->Value;
							ii 				= ((TcxEditorRow*)vg->Rows->Items[i])->Properties->ImageIndex;
							FieldCaption 	= ((TcxEditorRow*)vg->Rows->Items[i])->Properties->Caption;
						}
						break;
					case eclssTcxMultiEditorRow:
						if (((TcxEditorRow*)vg->Rows->Items[i])->Properties->Options->Editing) {
							value 			= ((TcxMultiEditorRow*)vg->Rows->Items[i])->Properties->Editors->Items[0]->Value;
							ii 				= ((TcxMultiEditorRow*)vg->Rows->Items[i])->Properties->Editors->Items[0]->ImageIndex;
							FieldCaption 	= ((TcxMultiEditorRow*)vg->Rows->Items[i])->Properties->Editors->Items[0]->Caption;
						}
						break;
					case eclssNone:
						throw Exception ("< URS-6 > : Класс не определен.\n");
				}
			}

			if	(iiObligatoryField == ii
				 && (VarToStr(value).IsEmpty()
					 || value.IsEmpty()
					 || value.IsNull()))
			{
				vg->Rows->Items[i]->Focused = true;
				SafeSetFocus(vg);
				isRed = true;
				tbIndex = GetPage(vg);
				pcCommon->OnDrawTabEx = pcCommonDrawTabEx;
				pcCommon->Repaint();
				pcCommon->ActivePage = pcCommon->Pages[tbIndex];

				throw Exception ("< URS-7 > : Не заполнено обязательное поле <" + FieldCaption.UpperCase() + ">");
			}
			else isRed = false;
		}
	}
	catch (Exception &e)
	{
		throw Exception (e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aRelation_SetActionExecute(TObject *Sender)
{
	aRelationAddParent->Enabled	= 	(ep_->sheet_id != 0
									&& DMMain->IsUserFunction("esmt-incident") == true
									&& DMMain->cdsRSh->FieldByName("cnt_child")->AsInteger == 0);

	aRelationChildEdit->Enabled	= 	(ep_->sheet_id != 0
									&& DMMain->IsUserFunction("esmt-incident") == true
									&& DMMain->cdsRSh->FieldByName("parent_sheet_id")->AsInteger == DMMain->cdsRSh->FieldByName("sheet_id")->AsInteger);

	aRelationDelete->Enabled	= 	(ep_->sheet_id != 0
									&& DMMain->IsUserFunction("esmt-incident") == true
									&& ((TcxGridDBBandedTableView*)grdRelation->FocusedView)->IsDetail == true
									&& ((TcxGridDBBandedTableView*)grdRelation->FocusedView)->DataController->RecordCount > 0);

    aRelationSetMain->Enabled = aRelationDelete->Enabled;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aRelationSetMainExecute(TObject *Sender)
{
	/* Сделать ЛР основным в связке */

    int vParentID = cdsRelationChild->FieldByName("sheet_id")->AsInteger;

    TcxGridDBBandedTableView *vw = (TcxGridDBBandedTableView*)grdRelation->FocusedView;
    TClientDataSet *cds = (TClientDataSet*)vw-> DataController->DataSource->DataSet;

    for (int i = 0 ; i < vw->DataController->RecordCount; i++)
    {
    	if (vw->Controller->FocusRecord(i, true) == true)
        {
        	if (cds->FieldByName("sheet_id")->AsInteger != vParentID)
        		SaveRelationIU(cds->FieldByName("sheet_id")->AsInteger, vParentID);
            else
            	SaveRelationIU(cds->FieldByName("sheet_id")->AsInteger, 0);
    	}
    }

    SaveRelationIU(cdsRelationParent->FieldByName("sheet_id")->AsInteger, vParentID);

    aLoad_Incident_RSh->Execute();
    Load_Relation(vParentID);
    grdRelation->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::SaveRelationIU(int p_sheet_id, int p_parent_sheet_id)
{
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    try
    {
        TDMMain::ClearDataSet(dsa.get());
        dsa->CommandText = "SMT.INCIDENT_PKG.relation_iu";

		dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger 			= p_sheet_id;
		dsa->Params->CreateParam(ftInteger, "p_parent_sheet_id", ptInput)->AsInteger 	= p_parent_sheet_id;

		dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput)->AsInteger	= UserID;
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString,  "o_Err_Msg", ptInputOutput);

        TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

        if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
            throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
    }
    catch (Exception &e)
    {
		throw Exception ("< URS-8 > : Ошибка сохранения связи.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::Save_Descr( int pGroupID, AnsiString pText )
{
	/* Сохранить коммент (универсальная процедура) */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    try
    {
        dsa->CommandText = "SMT.INCIDENT_PKG.descr_iu";

		dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = ep_->sheet_id;
		dsa->Params->CreateParam(ftInteger, "p_group_id", ptInput)->AsInteger = pGroupID;
		dsa->Params->CreateParam(ftString,  "p_descr", ptInput)->AsString     = pText;
		//
		dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput)->AsInteger = UserID;
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

        TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);
    }
    catch (Exception &e)
    {
        throw Exception ("< URS-9 > : СОХРАНЕНИЕ ПРИМЕЧАНИЯ ЛРИ: Ошибка сохранения примечания [" +
        						VarToStr(TDMMain::Get_CDS_Value(DMMain->cdsRSh_Tabsheet, "section_id", pGroupID, "ts_caption")) +
                                "]:\n\n" + e.Message);
    }

	if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
		throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aSaveExecute(TObject *Sender)
{
	/* Сохранить */

    int pci = pcCommon->ActivePage->Tag;

	int qr = MessageBox(Handle, "Сохранить изменения текущей вкладки?", "Подтверждение", MB_YESNO);
	if (IDYES == qr)
    {
        try
        {
            aDataValidation->Execute();
        }
        catch (Exception &e)
        {
            TDMMain::ShowAppException(AET_RESTRICTION, "Проверка валидности реквизитов инцидента", e.Message);
            return;
        }

        try
		{
            switch (pci)
            {
                case 16:
                    aSave0->Execute();
                    break;
                case 17:
                    aSaveRunning->Execute();
                    break;
                case 20:
					Save_Descr(20, mmDescrAttr->Text);
					break;
				case 22:
					if ((int)rwEnterDepotReason->Properties->Value == 91)
						aSaveUnplannedRepair->Execute();
					Save_Descr(22, mmDescrStorage->Text);
                	break;
                case 24:
					Save_Descr(24, mmDescrWorkaround->Text);
                	break;
                case 26:
					//aSaveAnalyses->Execute();
                    //aLoad_Analyses->Execute();
                    break;
				case 27:
					//aSaveAnalyses->Execute();
					//aLoad_Analyses->Execute();
					//Save_Descr(27, mmDescrAction->Text);
					break;
				case 253:
                    aSaveAnalyses->Execute();
					aLoad_Analyses->Execute();
					Save_Descr(27, mmDescrAction->Text);
					break;
                case 29:
                    Save_Descr(29, mmDescrClose->Text);
                    break;
            }
			aLoad_Incident_RSh->Execute();
            aRestorePageCaption->Execute();
			ep_->bWasChange = true;

            // вкладка НР
			if ((int)rwEnterDepotReason->Properties->Value == 91)
				tsWt_CalcUnplannedRepair->Enabled = true;
			else
				tsWt_CalcUnplannedRepair->Enabled = false;

			// вкладка НРЭ
			if ((int)rwCategory->Properties->Value == catNRE)
			{
				tsRSh_NRE->Enabled = true;
				aLoad_NRE->Execute();
			}
			else
			{
				tsRSh_NRE->Enabled = false;
				pcAnalyseAction->ActivePage = tsRSh_Analyses;
			}
        }
        catch (Exception &e)
        {
        	// метод вызывается другими методами. обязательно генерим эксепшен
			throw Exception ("< URS-10 > : Ошибка сохранения Инцидента.\n" + e.Message);
			pcCommon->ActivePage->Font->Color = clRed;
        }
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aSave0Execute(TObject *Sender)
{
	/* Сохранить исходную информацию */

    std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
    int vSheetID_old = ep_->sheet_id;

    /*  подготовить параметры */
    try
    {
		dsa->CommandText = "SMT.INCIDENT_PKG.incident_2_0_iu";

		dsa->Params->CreateParam(ftInteger, "o_sheet_id", ptInputOutput)->AsInteger	= ep_->sheet_id;
		dsa->Params->CreateParam(ftString,  "o_sheet_no", ptInputOutput)->AsString 	= ep_->sheet_no;
		dsa->Params->CreateParam(ftFloat,   "p_id_object",ptInput)->AsFloat			= ep_->id_object;
		dsa->Params->CreateParam(ftInteger, "p_kod_ser", ptInput)->AsInteger		= ep_->kod_ser;
		dsa->Params->CreateParam(ftInteger, "p_nom_loc", ptInput)->AsInteger		= ep_->nom_loc;
		dsa->Params->CreateParam(ftInteger, "p_nom_sec", ptInput)->AsInteger		= ep_->nom_sec;
		dsa->Params->CreateParam(ftInteger,	"p_nom_tpe", ptInput)->AsString 		= VarToStr(rwNomTPE->Properties->Value);
		dsa->Params->CreateParam(ftInteger,	"p_n_sec", ptInput)->AsInteger 			= ep_->n_sec;
		dsa->Params->CreateParam(ftInteger, "p_kod_depo", ptInput)->AsInteger		= ep_->kod_depo;

		dsa->Params->CreateParam(ftInteger, "p_kod_filial", ptInput)->AsInteger			 = ep_->kod_filial;
		dsa->Params->CreateParam(ftInteger, "p_kod_department", ptInput)->AsInteger		 = ep_->kod_department;
		dsa->Params->CreateParam(ftInteger, "p_repair_base_firm_id", ptInput)->AsInteger = ep_->kod_firm_repair;

		dsa->Params->CreateParam(ftInteger, "p_owner_kod_filial", ptInput)->AsInteger		 = DMMain->cdsOwnerFirmRepair->FieldByName("kod_firm_filial")->AsInteger;
		dsa->Params->CreateParam(ftInteger, "p_owner_kod_department", ptInput)->AsInteger	 = DMMain->cdsOwnerFirmRepair->FieldByName("kod_firm_podr")->AsInteger;
		dsa->Params->CreateParam(ftInteger, "p_owner_tchr_id", ptInput)->AsInteger		 	 = DMMain->cdsOwnerFirmRepair->FieldByName("tchr_pred_id")->AsInteger;

		dsa->Params->CreateParam(ftInteger, "p_state_id", ptInput)->AsInteger				 = ep_->state_id;
		dsa->Params->CreateParam(ftInteger, "p_close_reason_id", ptInput)->AsInteger 		 = DMMain->cdsRSh->FieldByName("close_reason_id")->AsInteger;	// ибо меняется он в другом окне, а не тут
		dsa->Params->CreateParam(ftInteger, "p_source_type_id", ptInput)->AsInteger		 	 = (int)rwInfoSourceType->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "p_source_info_id", ptInput)->AsInteger		 	 = ep_->source_info_id;
		dsa->Params->CreateParam(ftInteger, "p_criticality_id", ptInput)->AsInteger		 	 = (int)rwCriticality->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "p_category_id", ptInput)->AsInteger			 = (int)rwCategory->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "p_enter_depot_reason_id", ptInput)->AsInteger  = (int)rwEnterDepotReason->Properties->Value;

		dsa->Params->CreateParam(ftDateTime, "p_date_fail", ptInput)->AsDateTime 			 = GetDateTimeFromValue(rwFailDate->Properties->Value);
		dsa->Params->CreateParam(ftDateTime, "p_date_diagnost_msg", ptInput)->AsDateTime 	 = GetDateTimeFromValue(rwDiagMsgDate->Properties->Value);
		dsa->Params->CreateParam(ftString,   "p_incident_descr", ptInput)->AsString 	  	 = VarToStr(rwFailDescr->Properties->Value);
		dsa->Params->CreateParam(ftString,   "p_incident_descr_e", ptInput)->AsString 	  	 = VarToStr(rwFailDescrE->Properties->Value);


		dsa->Params->CreateParam(ftInteger, "p_fail_type_place", ptInput)->AsInteger		 = ep_->fail_type_place;
		dsa->Params->CreateParam(ftInteger, "p_fail_place_id", ptInput)->AsInteger		 	 = ep_->FailPlaceId;

		dsa->Params->CreateParam(ftInteger, "p_kasant_idx_id", ptInput)->AsInteger		 	 	= (int)rwKasantMark->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "p_kasant_traffic_safety_id", ptInput)->AsInteger	= (int)rwKasantSafety->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "p_kasant_state_id", ptInput)->AsInteger			= (int)rwKasantState->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "p_kasant_delay_time", ptInput)->AsDateTime			= GetDateTimeFromValue(rwKasantTrainDelayTime->Properties->Value);
		dsa->Params->CreateParam(ftInteger, "p_kasant_cnt_pass", ptInput)->AsInteger			= VarToInt(rwKasantCntPassenger->Properties->Value);
		dsa->Params->CreateParam(ftInteger, "p_kasant_cnt_cargo", ptInput)->AsInteger			= VarToInt(rwKasantCntCargo->Properties->Value);
		dsa->Params->CreateParam(ftInteger, "p_kasant_fail_categ", ptInput)->AsInteger			= (int)rwKassantFailCategory->Properties->Value;

		//dsa->Params->CreateParam(ftInteger, "p_kasant_traffic_safety_id", ptInput);
		//dsa->Params->CreateParam(ftInteger, "p_kasant_state_id", ptInput);
		/*
		if ((int)rwKasantMark->Properties->Value == 257)
		{
			dsa->Params->CreateParam(ftInteger, "p_kasant_traffic_safety_id", ptInput)->AsInteger	= (int)rwKasantSafety->Properties->Value;
			dsa->Params->CreateParam(ftInteger, "p_kasant_state_id", ptInput)->AsInteger			= (int)rwKasantState->Properties->Value;;
			//dsa->Params->ParamByName("p_kasant_traffic_safety_id")->AsInteger	= (int)rwKasantSafety->Properties->Value;
			//dsa->Params->ParamByName("p_kasant_state_id")->AsInteger			= (int)rwKasantState->Properties->Value;
			dsa->Params->CreateParam(ftInteger, "p_kasant_delay_time", ptInput)->AsDateTime	= GetDateTimeFromValue(rwKasantTrainDelayTime->Properties->Value);
			dsa->Params->CreateParam(ftInteger, "p_kasant_cnt_pass", ptInput)->AsInteger	= (int)rwKasantCntPassenger->Properties->Value;
			dsa->Params->CreateParam(ftInteger, "p_kasant_cnt_cargo", ptInput)->AsInteger	= (int)rwKasantCntCargo->Properties->Value;
			dsa->Params->CreateParam(ftInteger, "p_kasant_fail_categ", ptInput)->AsInteger	= (int)rwKassantFailCategory->Properties->Value;
        }
        else
		{
			dsa->Params->CreateParam(ftInteger, "p_kasant_traffic_safety_id", ptInput)->AsInteger	= 0;
			dsa->Params->CreateParam(ftInteger, "p_kasant_state_id", ptInput)->AsInteger			= 0;
			//dsa->Params->ParamByName("p_kasant_traffic_safety_id")->AsInteger	= 0;
			//dsa->Params->ParamByName("p_kasant_state_id")->AsInteger			= 0;
			dsa->Params->CreateParam(ftInteger, "p_kasant_delay_time", ptInput)->AsDateTime	= 0;
			dsa->Params->CreateParam(ftInteger, "p_kasant_cnt_pass", ptInput)->AsInteger	= 0;
			dsa->Params->CreateParam(ftInteger, "p_kasant_cnt_cargo", ptInput)->AsInteger	= 0;
			dsa->Params->CreateParam(ftInteger, "p_kasant_fail_categ", ptInput)->AsInteger	= 0;
        }
        */
		dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput )->AsInteger	= UserID;
		dsa->Params->CreateParam(ftInteger, "p_create_mode", ptInput )->AsInteger	= ep_->create_mode;

		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

		if (dsa->Params->ParamByName("p_owner_tchr_id")->AsInteger == 0)
			throw Exception ("< URS-11 > : Владелец ЛРИ не указан.\n"); //Остановилась тут
	}
    catch (Exception &e)
    {
		throw Exception ("< URS-12 > : СОХРАНЕНИЕ ЛРИ: Ошибка подготовки параметров: " + e.Message);
    }

    try
    {
        TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);
    }
    catch (Exception &e)
    {
		throw Exception ("< URS-13 > : СОХРАНЕНИЕ ЛРИ: Ошибка сохранения в БД:\n" + e.Message);
	}

    if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
		throw Exception ("< URS-14 > : СОХРАНЕНИЕ ЛРИ: " + dsa->Params->ParamByName("o_Err_Msg")->AsString);

    ep_->bWasChange = true;
    ep_->sheet_id = dsa->Params->ParamByName("o_sheet_id")->AsInteger;
    ep_->sheet_no = dsa->Params->ParamByName("o_sheet_no")->AsString;

    tsRSh_Common_New->ImageIndex = -1;

	//Сохранить коммент первой вкладки. Проца генерит эксепшен
    try
    {
		Save_Descr(16, VarToStr(rwDescr_Common->Properties->Value));
    }
    catch (Exception &e)
    {
        throw Exception ("");
    }

	// Сохранить Пробеги. Проца генерит эксепшен
    if (DMMain->cdsRSh_Running->Active && DMMain->cdsRSh_Running->RecordCount != 0)
        aSaveRunning->Execute();

	// Сохранить Поезд. Проца генерит эксепшен
    if (ep_->sheet_id > 0)
        aSaveTrain->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aSaveRunningExecute(TObject *Sender)
{
	/* Сохранить пробеги */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    try
    {
        dsa->CommandText = "SMT.INCIDENT_PKG.incident_running_iu";

		dsa->Params->CreateParam(ftFloat,	 "p_sheet_id", ptInput )->AsInteger			= ep_->sheet_id;
		dsa->Params->CreateParam(ftDateTime, "p_build_date", ptInput)->AsDateTime		= DMMain->cdsRSh_Running->FieldByName("date_postr")->AsDateTime;
		dsa->Params->CreateParam(ftInteger,  "p_build_firm", ptInput)->AsInteger		= DMMain->cdsRSh_Running->FieldByName("KOD_PREDP_POSTR")->AsInteger;
		dsa->Params->CreateParam(ftFloat,    "p_build_running", ptInput)->AsFloat		= DMMain->cdsRSh_Running->FieldByName("PROB_POSTR_KM")->AsFloat;
		dsa->Params->CreateParam(ftFloat,    "p_build_running_sut", ptInput)->AsFloat	= DMMain->cdsRSh_Running->FieldByName("PROB_POSTR_VR")->AsFloat;

        dsa->Params->CreateParam(ftDateTime, "p_kr_date", ptInput)->AsDateTime 	= DMMain->cdsRSh_Running->FieldByName("DATE_KR")->AsDateTime;
		dsa->Params->CreateParam(ftInteger,  "p_kr_firm", ptInput)->AsInteger 	= DMMain->cdsRSh_Running->FieldByName("KOD_PREDP_KR")->AsInteger;
		dsa->Params->CreateParam(ftFloat,    "p_kr_running", ptInput)->AsFloat 	= DMMain->cdsRSh_Running->FieldByName("PROB_KR_KM")->AsFloat;
        dsa->Params->CreateParam(ftFloat,    "p_kr_running_sut", ptInput)->AsFloat = DMMain->cdsRSh_Running->FieldByName("PROB_KR_VR")->AsFloat;

        dsa->Params->CreateParam(ftDateTime, "p_sr_date", ptInput)->AsDateTime 	= DMMain->cdsRSh_Running->FieldByName("DATE_SR")->AsDateTime;
		dsa->Params->CreateParam(ftInteger,  "p_sr_firm", ptInput)->AsInteger 	= DMMain->cdsRSh_Running->FieldByName("KOD_PREDP_SR")->AsInteger;
		dsa->Params->CreateParam(ftFloat,    "p_sr_running", ptInput)->AsFloat 	= DMMain->cdsRSh_Running->FieldByName("PROB_SR_KM")->AsFloat;
		dsa->Params->CreateParam(ftFloat,    "p_sr_running_sut", ptInput)->AsFloat = DMMain->cdsRSh_Running->FieldByName("PROB_SR_VR")->AsFloat;

		dsa->Params->CreateParam(ftDateTime, "p_tr3_date", ptInput)->AsDateTime = DMMain->cdsRSh_Running->FieldByName("DATE_TR3")->AsDateTime;
		dsa->Params->CreateParam(ftInteger,  "p_tr3_firm", ptInput)->AsInteger 	= DMMain->cdsRSh_Running->FieldByName("KOD_PREDP_TR3")->AsInteger;
		dsa->Params->CreateParam(ftFloat,    "p_tr3_running", ptInput)->AsFloat 	= DMMain->cdsRSh_Running->FieldByName("PROB_TR3_KM")->AsFloat;
        dsa->Params->CreateParam(ftFloat,    "p_tr3_running_sut", ptInput)->AsFloat 	= DMMain->cdsRSh_Running->FieldByName("PROB_TR3_VR")->AsFloat;

        dsa->Params->CreateParam(ftDateTime, "p_tr2_date", ptInput)->AsDateTime = DMMain->cdsRSh_Running->FieldByName("DATE_TR2")->AsDateTime;
		dsa->Params->CreateParam(ftInteger,  "p_tr2_firm", ptInput)->AsInteger 	= DMMain->cdsRSh_Running->FieldByName("KOD_PREDP_TR2")->AsInteger;
		dsa->Params->CreateParam(ftFloat,    "p_tr2_running", ptInput)->AsFloat 	= DMMain->cdsRSh_Running->FieldByName("PROB_TR2_KM")->AsFloat;
        dsa->Params->CreateParam(ftFloat,    "p_tr2_running_sut", ptInput)->AsFloat 	= DMMain->cdsRSh_Running->FieldByName("PROB_TR2_VR")->AsFloat;

        dsa->Params->CreateParam(ftDateTime, "p_tr1_date", ptInput)->AsDateTime = DMMain->cdsRSh_Running->FieldByName("DATE_TR1")->AsDateTime;
		dsa->Params->CreateParam(ftInteger,  "p_tr1_firm", ptInput)->AsInteger 	= DMMain->cdsRSh_Running->FieldByName("KOD_PREDP_TR1")->AsInteger;
		dsa->Params->CreateParam(ftFloat,    "p_tr1_running", ptInput)->AsFloat 	= DMMain->cdsRSh_Running->FieldByName("PROB_TR1_KM")->AsFloat;
        dsa->Params->CreateParam(ftFloat,    "p_tr1_running_sut", ptInput)->AsFloat 	= DMMain->cdsRSh_Running->FieldByName("PROB_TR1_VR")->AsFloat;

        dsa->Params->CreateParam(ftDateTime, "p_to3_date", ptInput)->AsDateTime = DMMain->cdsRSh_Running->FieldByName("DATE_TO3")->AsDateTime;
		dsa->Params->CreateParam(ftInteger,  "p_to3_firm", ptInput)->AsInteger 	= DMMain->cdsRSh_Running->FieldByName("KOD_PREDP_TO3")->AsInteger;
		dsa->Params->CreateParam(ftFloat,    "p_to3_running", ptInput)->AsFloat 	= DMMain->cdsRSh_Running->FieldByName("PROB_TO3_KM")->AsFloat;
		dsa->Params->CreateParam(ftFloat,    "p_to3_running_sut", ptInput)->AsFloat 	= DMMain->cdsRSh_Running->FieldByName("PROB_TO3_VR")->AsFloat;

		dsa->Params->CreateParam(ftDateTime, "p_to2_date", ptInput)->AsDateTime = DMMain->cdsRSh_Running->FieldByName("DATE_TO2")->AsDateTime;
		dsa->Params->CreateParam(ftInteger,  "p_to2_firm", ptInput)->AsInteger 	= DMMain->cdsRSh_Running->FieldByName("KOD_PREDP_TO2")->AsInteger;
		dsa->Params->CreateParam(ftFloat,    "p_to2_running", ptInput)->AsFloat 	= DMMain->cdsRSh_Running->FieldByName("PROB_TO2_KM")->AsFloat;
        dsa->Params->CreateParam(ftFloat,    "p_to2_running_sut", ptInput)->AsFloat 	= DMMain->cdsRSh_Running->FieldByName("PROB_TO2_VR")->AsFloat;

		dsa->Params->CreateParam(ftInteger,  "o_Err_Code", ptInputOutput);
        dsa->Params->CreateParam(ftString,   "o_Err_Msg", ptInputOutput);
    }
    catch ( Exception &e )
    {
		throw Exception ("< URS-15 > : СОХРАНЕНИЕ ПРОБЕГОВ: Ошибка подготовки параметров:\n" + e.Message);
	}

	try
	{
		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);
	}
	catch ( Exception &e )
	{
		throw Exception ("< URS-16 > : СОХРАНЕНИЕ ПРОБЕГОВ: Ошибка сохранения в БД:" + e.Message);
	}

	if ( dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0 )
		throw Exception ("< URS-17 > : СОХРАНЕНИЕ ПРОБЕГОВ: " + dsa->Params->ParamByName("o_Err_Msg")->AsString);
    else
    	ep_->bWasChange = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aSaveTrainExecute(TObject *Sender)
{
	/* Сохранить поезд */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    try
    {
        dsa->CommandText = "SMT.INCIDENT_PKG.incident_train_iu";

		dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput )->AsInteger 	  = ep_->sheet_id;
		dsa->Params->CreateParam(ftInteger, "TRAIN_NUM", ptInput )->AsInteger 	  = (int)rwTagTrain->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "IDX_MAKEUP", ptInput )->AsInteger 	  = ep_->train_idx_makeup;
		dsa->Params->CreateParam(ftInteger, "IDX_WHEEL", ptInput )->AsInteger 	  = ep_->train_idx_wheel;
		dsa->Params->CreateParam(ftInteger, "IDX_TERMINUS", ptInput )->AsInteger  = ep_->train_idx_terminus;
		dsa->Params->CreateParam(ftInteger, "ORGANIZE", ptInput )->AsInteger 	  = ep_->train_organize;
		dsa->Params->CreateParam(ftInteger, "DESTINATION", ptInput )->AsInteger   = ep_->train_destination;
		dsa->Params->CreateParam(ftFloat,   "WEIGHT", ptInput )->AsFloat 		  = (float)rwTrainMass->Properties->Value;
		dsa->Params->CreateParam(ftFloat,   "LENGTH", ptInput )->AsFloat 		  = ep_->train_length;
		dsa->Params->CreateParam(ftInteger, "AXES", ptInput )->AsInteger 		  = (int)rwTrainAxes->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "WAGOONS", ptInput )->AsInteger 	  = (int)rwTrainWagoons->Properties->Value;
		dsa->Params->CreateParam(ftString,  "BRIG_NAME", ptInput )->AsString 	  = VarToStr(rwBrigFIO->Properties->Value);
		dsa->Params->CreateParam(ftInteger, "BRIG_T_NOM", ptInput )->AsInteger 	  = (int)rwBrigTNom->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "BRIG_KOD_DEPO", ptInput )->AsInteger = (int)rwBrigDepo->Properties->Value;	// ep_->brig_pred_id;
		dsa->Params->CreateParam(ftInteger, "p_nom_tpe", ptInput )->AsString 	  = VarToStr(rwNomTPE->Properties->Value);
		dsa->Params->CreateParam(ftInteger, "p_n_sec", ptInput )->AsInteger 	  = ep_->n_sec;
        //
        dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
        dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);
    }
    catch ( Exception &e )
    {
		throw Exception ("< URS-18 > : СОХРАНЕНИЕ СВЕДЕНИЙ О ПОЕЗДЕ: Ошибка подготовки параметров: " + e.Message);
	}

    try
    {
    	TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);
    }
    catch ( Exception &e )
    {
		throw Exception ("< URS-19 > : СОХРАНЕНИЕ СВЕДЕНИЙ О ПОЕЗДЕ: Ошибка сохранения в БД: " + e.Message);
    }

	if ( dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0 )
		throw Exception ("< URS-20 > : СОХРАНЕНИЕ СВЕДЕНИЙ О ПОЕЗДЕ: " + dsa->Params->ParamByName("o_Err_Msg")->AsString);
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aSaveAnalysesExecute(TObject *Sender)
{
	/*  Сохранить оборудование	*/

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	dsa->CommandText = "SMT.INCIDENT_PKG.eq_new_classif_iu";

	dsa->Params->CreateParam(ftInteger, "o_eq_id", ptInputOutput)->AsInteger	= DMMain->cdsAnalyses->FieldByName("eq_id")->AsInteger;

	dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger		= ep_->sheet_id;
	dsa->Params->CreateParam(ftInteger, "p_system_type_id", ptInput)->AsInteger	= (int)rwSystemType->Properties->Value;
	dsa->Params->CreateParam(ftInteger, "p_system_id", ptInput)->AsInteger		= (int)rwSystem->Properties->Value;
	dsa->Params->CreateParam(ftInteger, "p_unit_id", ptInput)->AsInteger		= (int)rwUnit->Properties->Value;
	dsa->Params->CreateParam(ftString,  "p_unit_name", ptInput)->AsString		= VarToStr(rwUnitName->Properties->Value);
	dsa->Params->CreateParam(ftString,  "p_unit_mfr", ptInput)->AsString		= VarToStr(rwUnitMfr->Properties->Value);
	dsa->Params->CreateParam(ftInteger, "p_detail_id", ptInput)->AsInteger		= (int)rwDetail->Properties->Value;
	dsa->Params->CreateParam(ftString,  "p_detail_text", ptInput)->AsString		= VarToStr(rwDetailText->Properties->Value);
	dsa->Params->CreateParam(ftString,  "p_detail_name", ptInput)->AsString		= VarToStr(rwDetailName->Properties->Value);
	dsa->Params->CreateParam(ftString,  "p_detail_mfr", ptInput)->AsString		= VarToStr(rwDetailMfr->Properties->Value);
	dsa->Params->CreateParam(ftString,  "p_fault_name", ptInput)->AsString		= VarToStr(rwFaultName->Properties->Value);
	dsa->Params->CreateParam(ftString,  "p_system_name", ptInput)->AsString		= VarToStr(rwSystemName->Properties->Value);
	dsa->Params->CreateParam(ftInteger, "p_reason_parent_id", ptInput)->AsInteger     = ep_->reason_id; // новая
	dsa->Params->CreateParam(ftInteger, "p_reason_id", ptInput)->AsInteger            = ep_->reason_id_old;
	dsa->Params->CreateParam(ftInteger, "p_eq_mfr_id", ptInput)->AsInteger            = (int)rwEQ_Manufacturer->Properties->Value;  //cbEQ_Manufacturer->EditValue;
	dsa->Params->CreateParam(ftInteger, "p_responsible_id", ptInput)->AsInteger       = ep_->responsible_id;
	dsa->Params->CreateParam(ftInteger, "p_responsible_child_id", ptInput)->AsInteger = 0;
	dsa->Params->CreateParam(ftInteger, "p_solution_type_id", ptInput)->AsInteger     = (int)rwSolutionType->Properties->Value;
	dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput)->AsInteger	      = UserID;
	dsa->Params->CreateParam(ftInteger, "p_taken_measures", ptInput)->AsString        = VarToStr(rwTakenMeasures->Properties->Value);
	dsa->Params->CreateParam(ftInteger, "p_solution_descr", ptInput)->AsString        = VarToStr(rwSolutionDescr->Properties->Value);
	dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
	dsa->Params->CreateParam(ftString,  "o_Err_Msg", ptInputOutput);

    TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

	if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0 )
		throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);

	//Сохранить коммент первой вкладки
    Save_Descr(26, rwDescr_Analyses->Properties->Value /*mmDescr4->Text*/);
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aSaveExitExecute(TObject *Sender)
{
    aSave->Execute();
	ModalResult = mrOk;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aCloseExecute(TObject *Sender)
{
    vDontClose = false;

    if (aSave->Visible == true)
		aCheckDiff->Execute();

    if (vDontClose == false)
		ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_TabSheetExecute(TObject *Sender)
{
	/* Получить доступные табшиты */

    TClientDataSet *dsa = DMMain->cdsRSh_Tabsheet;
    TComponent *comp;
	TcxTabSheet *ts;
    int vCurrentState = ep_->state_id; // (int)cbState->EditValue;

    try
    {
    	TDMMain::ClearDataSet(dsa);
    	dsa->CommandText = "SMT.smt_nsi_pkg.enable_tabsheet_cur";
    	dsa->Params->CreateParam(ftInteger, "p_state_id", ptInput)->AsInteger = vCurrentState;
    	dsa->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(dsa, "OPEN", "CT", 1);

        if (dsa->Active == false)
			throw Exception ("Не удалось открыть источник данных");
	}
	catch (Exception &e)
	{
		throw Exception ("< URS-21 > : Ошибка загрузки доступных вкладок.\n" + e.Message);
	}

    // Настроить видимость табшитов
    for (int i = 0; i < pcCommon->PageCount; i++)
    {
        if (dsa->Locate("ts_name", pcCommon->Pages[i]->Name, TLocateOptions()) == true)
        {
			pcCommon->Pages[i]->Caption = dsa->FieldByName("ts_caption")->AsString;
			// todo: затычка для старых статусов, убрать позже
			if (dsa->FieldByName("ts_name")->AsString == "tsRSh_Pause"
				|| dsa->FieldByName("ts_name")->AsString == "tsRSh_Escalation")
			{
				pcCommon->Pages[i]->Enabled = false;
				pcCommon->Pages[i]->Visible = false;
			}
			else
			{
				pcCommon->Pages[i]->Enabled 	= true;
				pcCommon->Pages[i]->Highlighted = true;
			}
			pcCommon->Pages[i]->Tag			= dsa->FieldByName("section_id")->AsInteger;
			pcCommon->Pages[i]->Highlighted = true;
        }
		else
		{
			pcCommon->Pages[i]->Enabled		= false;
			pcCommon->Pages[i]->Highlighted	= false;
		}
    }

    try
    {
        aLoad_TabSheet->Enabled = false;
        aLoad_NSI_States->Execute();
        aSet_TabSheet->Execute();
        aState_SetAction->Execute();

        tsRSh_Common_New->Enabled = true;
    }
    __finally
    {
    	aLoad_TabSheet->Enabled = true;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aSet_TabSheetExecute(TObject *Sender)
{
	/* Настроить доступные табшиты */

	if (tsRSh_Team->TabVisible == true  && ep_->sheet_id > 0)
    {
    	aLoad_TeamExecutor->Execute();
    	aLoad_TeamLeader->Execute();
    	aLoad_TeamOwner->Execute();
    }
	if (tsRSh_Attr->TabVisible == true)
    {
        aLoad_Attach->Execute();
        aLoad_Relation->Execute();
    }

	if (tsRSh_PauseEscalation->TabVisible == true)
        aLoad_Pause->Execute();

	if (tsRSh_Storage->TabVisible == true)
        aLoad_Storage->Execute();

	if (tsRSh_PauseEscalation->TabVisible == true)
		aLoad_Escalation->Execute();

	if (tsRSh_Analyses->TabVisible == true)
    {
        if (DMMain->cdsRSh_NSI_Responsible->State == dsInactive)
        	aLoad_NSI_Responsible->Execute();
	}

	if (tsRSh_Action->TabVisible == true)
        aLoad_Action->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aCheckDiffExecute(TObject *Sender)
{
    TcxTabSheet *ts = pcCommon->ActivePage;
    int qr = mbNo;

    for  (int i = 0; i < pcCommon->TabCount; i++)
    {
		if (pcCommon->Pages[i]->TabVisible == true
			&& (CheckDiff(pcCommon->Pages[i]->Tag) == true
				|| pcCommon->Pages[i]->ImageIndex > -1))
        {
            pcCommon->ActivePageIndex = i;
            ts = pcCommon->ActivePage;

            qr = MessageBox(Handle, AnsiString("\nНа вкладке [" + ts->Caption.UpperCase() +
									"] были внесены изменения. Сохранить их?\n").c_str(), "Подтверждение", MB_YESNOCANCEL);

            switch (qr)
            {
            	case IDYES:
                	aSave->Execute();
                    ep_->bWasChange = true;
                	break;
                case IDNO:
                	break;
                case IDCANCEL:
                	vDontClose = true;
                    return;
                default:
                	aRestorePageCaption->Execute();
                	ts->Caption = ts->Caption + " *";
                    break;
            }
        }
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aRestorePageCaptionExecute(TObject *Sender)
{
    TClientDataSet *cdsts = DMMain->cdsRSh_Tabsheet;
    TcxTabSheet *ts = pcCommon->ActivePage;

	if (cdsts->Locate("ts_name", ts->Name, TLocateOptions()) == true)
    	ts->Caption = cdsts->FieldByName("ts_caption")->AsString;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aCommandSetActionExecute(TObject *Sender)
{
	try
    {
        if (ep_->sheet_id == 0)
            aWork_Add->Enabled	= false;
		else
			aWork_Add->Enabled	= DMMain->IsUserFunction("esmt-incident");	// в зависимости от роли

		aWork_Edit->Enabled			=	(aWork_Add->Enabled == true	&& tlWork->DataController->RecordCount > 0);

		aWork_Delete->Enabled		= aWork_Edit->Enabled;

		aWorkLeader_Add->Enabled 	= aWork_Add->Enabled;
		aProcessOwner_Add->Enabled	= aWork_Add->Enabled;

		aWork_Finish->Enabled		= 	(aWork_Add->Enabled == true
										&& tlWork->DataController->RecordCount > 0
										&& VarToStr(tlWork->FocusedNode->Values[clmnWork_DateBegin->ItemIndex]).IsEmpty() == false
									//&&  GetDateTimeFromValue(tlWork->FocusedNode->Values[clmnWork_DateBegin->ItemIndex]) != TDateTime()
										);
	}
    catch (Exception &e)
    {
        throw Exception ("< URS-22 > : КОМАНДА: Ошибка определения доступности действий.\n" + e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aAttachSetActionExecute(TObject *Sender)
{
    if (ep_->sheet_id == 0)
		aStorage_Add->Enabled	= false;
	else
		aStorage_Add->Enabled	= true; //DMMain->IsUserFunction("esmt-incident");	// в зависимости от роли

	aStorage_Edit->Enabled		= aStorage_Add->Enabled; //tlStorage->DataController->RecordCount > 0;
								  /*(aStorage_Add->Enabled == true
								  && tlStorage->DataController->RecordCount > 0);*/
    aStorage_Delete->Enabled	= aStorage_Edit->Enabled;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aStorage_SetActionExecute(TObject *Sender)
{
	/*if (ep_->sheet_id == 0)
		aStorage_Add->Enabled = false;
	else*/
	aStorage_Add->Enabled = true; //(/*DMMain->IsUserFunction("esmt-incident") == true &&*/ ep_->state_id != stateClose);	// в зависимости от роли

	aStorage_Edit->Enabled =	aStorage_Add->Enabled;
								/*(aStorage_Add->Enabled == true
								 && tlStorage->DataController->RecordCount > 0); */

    aStorage_Delete->Enabled = aStorage_Edit->Enabled;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aPause_SetActionExecute(TObject *Sender)
{
	/*Пауза*/
    if ( ep_->sheet_id == 0 )
		aPause_Add->Enabled = false;
    else
		aPause_Add->Enabled = (/*DMMain->IsUserFunction("esmt-incident") == true*/(DMMain->IsFunction("f_code", "aIncident_aNew") && DMMain->IsFunction("f_code", "aIncident_aSetState_Resolved")) && ep_->state_id != stateClose);	// в зависимости от роли

	aPause_EditNew->Enabled = (ep_->state_id == statePauseNew);
//    aPause_Edit->Enabled =	(aPause_Add->Enabled == true && tlPauseNew->DataController->DataSet->RecordCount > 0);
    aPause_Delete->Enabled = aPause_Edit->Enabled;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aWorkaround_SetActionExecute(TObject *Sender)
{
    if (ep_->sheet_id == 0)
		aWorkaround_Add->Enabled	= false;
	else
		aWorkaround_Add->Enabled	= (DMMain->IsUserFunction("esmt-incident") == true && ep_->state_id != stateClose);	// в зависимости от роли

	aWorkaround_Edit->Enabled		= (aWorkaround_Add->Enabled == true && tlWorkaround->DataController->RecordCount > 0);
	aWorkaround_Delete->Enabled		= aWorkaround_Edit->Enabled;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aEscalation_SetActionExecute(TObject *Sender)
{
	/*Эскалация*/
    if ( ep_->sheet_id == 0 )
		aEscalation_Add->Enabled = false;
    else
		aEscalation_Add->Enabled = (/*DMMain->IsUserFunction("esmt-incident") == true*/(DMMain->IsFunction("f_code", "aIncident_aNew") && DMMain->IsFunction("f_code", "aIncident_aSetState_Resolved")) && ep_->state_id != stateClose);	// в зависимости от роли

    aEscalation_Edit->Enabled =	(  aEscalation_Add->Enabled == true
                            	&& tlEscalationNew->DataController->RecordCount > 0
    							);
    aEscalation_Delete->Enabled = aEscalation_Edit->Enabled;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aActionSetActionExecute(TObject *Sender)
{
    if ( ep_->sheet_id == 0 )
		aAction_Add->Enabled = false;
    else
		aAction_Add->Enabled = (DMMain->IsUserFunction("esmt-incident") == true && ep_->state_id != stateClose);	// в зависимости от роли

	aAction_Edit->Enabled =	(aAction_Add->Enabled == true
							&& tlAction->DataController->RecordCount > 0);

    aAction_Delete->Enabled = aAction_Edit->Enabled;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aSetValuesExecute(TObject *Sender)
{
	TClientDataSet *cds = DMMain->cdsRSh;

    try
    {
		((TcxLookupComboBoxProperties*)rwEnterDepotReason->Properties->EditProperties)->ListSource = DMMain->dsRSh_NSI_EnterDepot_Reason;
		tlReasonTree->DataController->DataSource = DMMain->ds_NSI_ReasonTree;
		tlResponsibleTree->DataController->DataSource = DMMain->dsRSh_NSI_Responsible;
		DMMain->btvNSI_Filial_Department_TCHR->DataController->DataSource = DMMain->dsOwnerFirmRepair;
		DMMain->btvNSI_Filial_Department_TCHR->ViewData->Expand(true);

        DMMain->cds_NSI_Kasant_ENSI->Filtered = false;
		DMMain->cds_NSI_Kasant_ENSI->Filter = "parent_id = 2306";
        DMMain->cds_NSI_Kasant_ENSI->Filtered = true;
		((TcxLookupComboBoxProperties*)rwKasantSafety->Properties->EditProperties)->ListSource = DMMain->ds_NSI_Kasant_ENSI;

		rwFailDate->Properties->Value = ep_->date_fail;
        if (ep_->sheet_id > 0)
        {
            if (DMMain->cdsOwnerFirmRepair->Locate("tchr_pred_id", cds->FieldByName("owner_tchr_id")->AsInteger, TLocateOptions()) == false)
				DMMain->cdsOwnerFirmRepair->Locate("tchr_pred_id", ep_->kod_firm_repair, TLocateOptions());

			rwDiagMsgDate->Properties->Value			= DateTimeToVariant(cds->FieldByName("date_diagnost_msg")->AsDateTime);
			rwLocName->Properties->Value 				= cds->FieldByName("loc_name")->AsString;
			rwRepairBaseFirm->Properties->Value 		= cds->FieldByName("service_firm_name_full")->AsString;
			rwRSh_Responsible->Properties->Value 		= cds->FieldByName("owner_tchr_id")->AsInteger;
			rwNomTPE->Properties->Value 				= cds->FieldByName("nom_tpe")->AsString;
			rwTagTrain->Properties->Value 				= cds->FieldByName("train_num")->AsInteger;
			rwTrainMass->Properties->Value 				= cds->FieldByName("weight")->AsFloat;
			rwTrainWagoons->Properties->Value 			= cds->FieldByName("wagoons")->AsInteger;
			rwTrainAxes->Properties->Value 				= cds->FieldByName("axes")->AsInteger;
			rwBrigFIO->Properties->Value 				= cds->FieldByName("brig_name")->AsString;
			rwBrigTNom->Properties->Value 				= cds->FieldByName("brig_t_nom")->AsInteger;
			rwBrigDepo->Properties->Value         		= cds->FieldByName("brig_kod_depo")->AsInteger;
			rwFailDescr->Properties->Value        		= cds->FieldByName("incident_descr")->AsString;
			rwFailDescrE->Properties->Value        		= cds->FieldByName("incident_descr_e")->AsString;
			rwFailPlace->Properties->Value        		= cds->FieldByName("fail_place_name")->AsString;
			rwCriticality->Properties->Value 	  		= cds->FieldByName("criticality_id")->AsInteger;
			rwCategory->Properties->Value 		  		= cds->FieldByName("category_id")->AsInteger;
			rwEnterDepotReason->Properties->Value		= cds->FieldByName("enter_depot_reason_id")->AsInteger;
			rwInfoSourceType->Properties->Value			= cds->FieldByName("source_type_id")->AsInteger;
			rwSourcePred->Properties->Value				= cds->FieldByName("source_info_pred_name")->AsString;
			/* Касант */
			rwKasantMark->Properties->Value				= cds->FieldByName("kasant_idx_id")->AsInteger;
			rwKassantFailCategory->Properties->Value	= cds->FieldByName("kasant_fail_category")->AsInteger;
			rwKasantState->Properties->Value			= cds->FieldByName("kasant_state_id")->AsInteger;
			rwKasantSafety->Properties->Value			= cds->FieldByName("kasant_traffic_safety_id")->AsInteger;
			rwKasantTrainDelayTime->Properties->Value	= DateTimeToVariant(cds->FieldByName("kasant_delay_time")->AsDateTime);
			rwKasantCntPassenger->Properties->Value     = cds->FieldByName("kasant_cnt_pass")->AsInteger;
			rwKasantCntCargo->Properties->Value         = cds->FieldByName("kasant_cnt_cargo")->AsInteger;
			/**/
            rwDescr_Common->Properties->Value 			= cds->FieldByName("descr1")->AsString;
        }
        else
        {
			rwInfoSourceType->Properties->Value		= 0; //ep_->source_type_id;
			rwCategory->Properties->Value			= 0; //83;
			rwDiagMsgDate->Properties->Value		= rwFailDate->Properties->Value;
			rwRSh_Responsible->Properties->Value	 = 0;//DMMain->cdsFirmRepair->FieldByName("tchr_pred_id")->AsInteger;
		}

		if (ep_->create_mode == 1)
		{
			// если создан автоматически, скрываем поле "Обстоятельства по данным АСУ"
			rwFailDescr->Visible				= false;
			rwInfoSourceType->Options->Focusing = true;
		}
		else
		{
			rwFailDescr->Visible = true;
			rwInfoSourceType->Options->Focusing = false;
		}

		mmDescrTeam->Text		= cds->FieldByName("descr_team")->AsString;
		mmDescrAttr->Text		= cds->FieldByName("descr_attr")->AsString;
		mmDescrStorage->Text	= cds->FieldByName("descr_storage")->AsString;
		mmDescrWorkaround->Text	= cds->FieldByName("descr_workaround")->AsString;
		mmDescrAction->Text		= cds->FieldByName("descr_action")->AsString;

        if (cds->FieldByName("running_sheet_id")->AsInteger > 0)
        {
            vgRunningElder->DataController->DataSource =  DMMain->dsRSh;
            vgRunningJunior->DataController->DataSource = DMMain->dsRSh;
        }
        else
        {
            vgRunningElder->DataController->DataSource = DMMain->dsRSh_Running;
            vgRunningJunior->DataController->DataSource = DMMain->dsRSh_Running;
        }

        StatusBar->Panels->Items[StatusBar->Panels->Count-1]->Text = "";
        Update();
    }
    catch (Exception &e)
    {
        throw Exception ("< URS-23 > : Ошибка установки значений.\n" + e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_Incident_RShExecute(TObject *Sender)
{
	/* Загрузка полной информации для листа регистрации инцидента */

	TClientDataSet *cds = DMMain->cdsRSh;
    TDataSource *ds 	= DMMain->dsRSh;

	try
    {
        vgFrame->DataController->DataSource = 0;

    	TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.INCIDENT_PKG.incident_2_0_record_sheet";
    	cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = ep_->sheet_id;
    	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        if (ep_->sheet_id > 0)
		{
			ep_->row_id					= cds->FieldByName("row_id")->AsInteger;
			ep_->state_id				= cds->FieldByName("state_id")->AsInteger;  // не убирать. Надо для смен статусов
			ep_->kod_tjaga				= cds->FieldByName("kod_tjaga")->AsInteger;
			ep_->id_object				= cds->FieldByName("id_object")->AsFloat;
			ep_->train_idx_makeup		= cds->FieldByName("idx_makeup")->AsInteger;
			ep_->train_idx_wheel		= cds->FieldByName("idx_wheel")->AsInteger;
			ep_->train_idx_terminus		= cds->FieldByName("idx_terminus")->AsInteger;
			ep_->train_organize			= cds->FieldByName("organize")->AsInteger;
			ep_->train_destination		= cds->FieldByName("destination")->AsInteger;
			ep_->train_length			= cds->FieldByName("length")->AsInteger;
            ep_->n_sec					= cds->FieldByName("n_sec")->AsInteger;

			ep_->owner_kod_filial		= cds->FieldByName("owner_kod_filial")->AsInteger;
			ep_->owner_kod_department	= cds->FieldByName("owner_kod_department")->AsInteger;
			ep_->owner_tchr_id			= cds->FieldByName("owner_tchr_id")->AsInteger;

			ep_->responsible_road_id	= cds->FieldByName("responsible_road_id")->AsInteger;
			ep_->responsible_parent_id	= cds->FieldByName("responsible_parent_id")->AsInteger;
			ep_->kasant_responsible_id	= cds->FieldByName("responsible_id")->AsInteger;
		}

        vgFrame->DataController->DataSource = ds;
    }
	catch (Exception &e)
	{
		throw Exception ("< URS-24 > : Ошибка загрузки полной информации.\n" + e.Message);
	}

    try
    {
		/*if (cds->Active && cds->RecordCount > 0)
        {
			tsRSh_Running->Highlighted = (cds->FieldByName("running_sheet_id")->AsInteger == 0);
        }*/
    }
    catch ( Exception &e )
    {
    	throw Exception ("< URS-25 > : Ошибка определения заполненности пробегов/поезда.\n" + e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_Incident_RunningExecute(TObject *Sender)
{
	/* Загрузка пробегов для листа регистрации инцидента */

    TClientDataSet *cds = DMMain->cdsRSh_Running;
    TDataSource *ds 	= DMMain->dsRSh_Running;

    try
    {
        StatusBar->Panels->Items[StatusBar->Panels->Count-1]->Text = "Получение сохраненных пробегов по инциденту...";
        Update();

        vgRunningElder->DataController->DataSource	= ds;
        vgRunningJunior->DataController->DataSource = ds;

    	TDMMain::ClearDataSet(cds);
    	cds->CommandText = "SMT.INCIDENT_PKG.incident_running_cur";
    	cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = ep_->sheet_id;
    	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        vgRunningElder->DataController->DataSource	= ds;
        vgRunningJunior->DataController->DataSource = ds;

        StatusBar->Panels->Items[StatusBar->Panels->Count-1]->Text = "";
        Update();
    }
	catch ( Exception &e )
	{
		throw Exception ("< URS-26 > : Ошибка загрузки пробегов.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_NSI_StatesExecute(TObject *Sender)
{
	/* Загрузка НСИ состояний */

	try
	{
        if ((int)cbState->EditValue != 0)
        	vDefaultState = (int)cbState->EditValue;
        else
    		vDefaultState = ep_->state_id;

		TDMMain::Load_NSI_Universal_DefValue	(DMMain->cdsRSh_NSI_States
        							,DMMain->dsRSh_NSI_States
                                    ,cbState
                                    ,"SMT.SMT_NSI_PKG.smt_nsi_states_cur"
                                    ,vDefaultState);
        //cbState->EditValue = vDefaultState;
    }
	catch (Exception &e)
	{
		throw Exception ("< URS-27 > : Ошибка загрузки НСИ состояний.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_NSI_CategoryExecute(TObject *Sender)
{
	/* Загрузка НСИ категорий инцидента */

    /*TClientDataSet *cds = DMMain->cdsRSh_NSI_Category;
    TDataSource *ds = DMMain->dsRSh_NSI_Category;
	TcxLookupComboBox *cb = cbCategory;

    TDMMain::ClearDataSet(cds);
    cds->CommandText = "SMT.smt_nsi_pkg.smt_inc_category_cur";
    cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

	try
	{
        cb->Properties->ListSource = 0;
        TDMMain::OpenDS(cds, "OPEN", "CT", 1);
        cb->Properties->ListSource = ds;
    }
	catch ( Exception &e )
	{
		throw Exception ("<ЛР-31>: Ошибка загрузки списка категорий инцидента.\n" + e.Message);
	}
    */
    //////////////////
	TClientDataSet *cds	= DMMain->cds_NSI_Univ;
	TcxEditorRow *rw	= rwCategory;
	TcxImageComboBoxItem 	   *itm		= NULL;
	TcxImageComboBoxProperties *cbep	= (TcxImageComboBoxProperties*)rw->Properties->EditProperties;

	try
	{
        cds->Filter = "parent_id = 82";
        cds->Filtered = true;
		cbep->Items->Clear();

		for (int i = 0; i < cds->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if (itm)
			{
				itm->Description	= cds->FieldByName("name")->AsString;
				itm->Value			= cds->FieldByName("id")->AsInteger;
			}
			cds->Next();
		}
	}
	catch (Exception &e)
	{
		throw Exception ("< URS-28 > : Ошибка заполнения списка категорий.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_NSI_EnterDepot_ReasonExecute(TObject *Sender)

{
	/* Загрузка НСИ причин захода в депо */

    TClientDataSet *cds = DMMain->cdsRSh_NSI_EnterDepot_Reason;
    TDataSource *ds = DMMain->dsRSh_NSI_EnterDepot_Reason;
	TcxLookupComboBox *cb = cbEnter_Depot_Reason;

    TDMMain::ClearDataSet(cds);
    cds->CommandText = "SMT.smt_nsi_pkg.nsi_enter_depot_reason_cur";
    cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

	try
	{
        cb->Properties->ListSource = 0;
        TDMMain::OpenDS(cds, "OPEN", "CT", 1);
        cb->Properties->ListSource = ds;
    }
	catch ( Exception &e )
	{
		throw Exception ("< URS-29 > : Ошибка загрузки списка причин захода в депо.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_NSI_SafetyExecute(TObject *Sender)
{
	/* Загрузка НСИ - нарушения безопасности по приказу Минтранс 163 (для раздела КАСАНТ) */

	try
	{
		TDMMain::Load_NSI_Universal	(DMMain->cdsRSh_NSI_Safety
        							,DMMain->dsRSh_NSI_Safety
                                    ,cbKasantSafety
                                    ,"SMT.SMT_NSI_PKG.smt_nsi_kasant_safety_cur");
        cbKasantSafety->EditValue = DMMain->cdsRSh_NSI_Safety->FieldByName("object_kod")->AsInteger;
    }
	catch (Exception &e)
	{
		throw Exception ("< URS-30 > : Ошибка загрузки НСИ нарушений безопасности.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_NSI_KasantStateExecute(TObject *Sender)
{
	//Загрузка НСИ - статусы (для раздела КАСАНТ)

	StatusBar->Panels->Items[StatusBar->Panels->Count-1]->Text = "Заполнение списка статусов КАСАНТ...";
    Update();

    TClientDataSet *cds = DMMain->cds_NSI_Kasant_ENSI;
    TcxEditorRow *rw = rwKasantState;
	TcxImageComboBoxItem 	   *itm		= NULL;
	TcxImageComboBoxProperties *cbep	= (TcxImageComboBoxProperties*)rw->Properties->EditProperties;

	try
	{
        cds->Filter = "parent_id = 4609";
        cds->Filtered = true;
		cbep->Items->Clear();

		for ( int i = 0; i < cds->RecordCount; i++ )
		{
			itm = cbep->Items->Add();
			if ( itm )
			{
				itm->Description	= cds->FieldByName("name")->AsString;
				itm->Value			= cds->FieldByName("id")->AsInteger;
			}
			cds->Next();
		}
	}
	catch ( Exception &e )
	{
		throw Exception ("< URS-31 > : Ошибка загрузки НСИ статусов КАСАНТ.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_NSI_InfoSourceTypeExecute(TObject *Sender)
{
	/*Загрузка НСИ типов источников информации*/

	/*TClientDataSet *cds 	= DMMain->cdsRSh_NSI_InfoSourceType;
    TDataSource *ds 		= DMMain->dsRSh_NSI_InfoSourceType;
    TcxLookupComboBox *cb 	= cbInfoSourceType;

	try
	{
        cb->Properties->ListSource = 0;
        TDMMain::ClearDataSet(cds);
        cds->CommandText = "SMT.SMT_NSI_PKG.smt_nsi_source_type_cur";
        cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
        cds->Params->CreateParam(ftInteger, "o_default", ptInputOutput)->AsInteger = 0;

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        vDefaultSourceTypeID = cds->Params->ParamByName("o_default")->AsInteger;
        cb->Properties->ListSource = ds;
    }
	catch ( Exception &e )
	{
		throw Exception ("<ЛР-06>: Ошибка загрузки НСИ типов источников информации.\n" + e.Message);
	}
    */
	TClientDataSet *cds					= DMMain->cds_NSI_Univ;
	TcxEditorRow *rw					= rwInfoSourceType;
	TcxImageComboBoxItem 	   *itm		= NULL;
	TcxImageComboBoxProperties *cbep	= (TcxImageComboBoxProperties*)rw->Properties->EditProperties;

	try
	{
        cds->Filter = "parent_id = 32";
        cds->Filtered = true;
		cbep->Items->Clear();

		for (int i = 0; i < cds->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if ( itm )
			{
				itm->Description	= cds->FieldByName("name")->AsString;
				itm->Value			= cds->FieldByName("id")->AsInteger;
			}
			cds->Next();
		}
	}
	catch ( Exception &e )
	{
		throw Exception ("< URS-32 > : Ошибка загрузки НСИ типов источников информации.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_NSI_Brig_DepoExecute(TObject *Sender)
{
	/* Загрузка НСИ - депо приписки бригады */

    TClientDataSet *cds = DMMain->cdsRSh_NSI_BrigDepo;

    TDMMain::ClearDataSet(cds);
    cds->CommandText = "SMT.smt_nsi_pkg.smt_nsi_depot_plain_cur";
    cds->Params->CreateParam(ftInteger, "p_road_kod", ptInput)->AsInteger = 0;
    cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

	try
	{
		TDMMain::Load_NSI_GRDVW_Universal	(DMMain->cdsRSh_NSI_BrigDepo
        								 	,DMMain->dsRSh_NSI_BrigDepo
        									,DMMain->btvNSI_BrigDepo
                                    		);
    }
	catch (Exception &e)
	{
		throw Exception ("< URS-33 > : Ошибка загрузки списка депо приписки бригад.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_TeamExecutorExecute(TObject *Sender)
{
	/* Команда: Исполнители */

    TClientDataSet *cds	= DMMain->cdsTeam_Executor;
	TDataSource *ds		= DMMain->dsTeam_Executor;

    try
    {
    	TDMMain::ClearDataSet(cds);
    	cds->CommandText = "SMT.INCIDENT_PKG.team_executor_cur";
    	cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = ep_->sheet_id;
    	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

    	tlWork->DataController->DataSource = ds;

		/*if (ep_->state_id > stateNew)
			tsRSh_Team->Highlighted = !( cds->Active && cds->RecordCount > 0 );*/
    }
	catch (Exception &e)
	{
		throw Exception ("< URS-34 > : Ошибка загрузки исполнителей.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_TeamLeaderExecute(TObject *Sender)
{
	/* Команда: Руководители */

    TClientDataSet *cds	= DMMain->cdsTeam_Leader;
	TDataSource *ds		= DMMain->dsTeam_Leader;

    try
    {
    	tlTeamLeader->DataController->DataSource = 0;
    	TDMMain::ClearDataSet(cds);
    	cds->CommandText = "SMT.INCIDENT_PKG.team_leader_cur";
    	cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = ep_->sheet_id;
        cds->Params->CreateParam(ftInteger, "p_sign", ptInput)->AsInteger = 0;
    	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

    	tlTeamLeader->DataController->DataSource = ds;
    }
	catch ( Exception &e )
	{
		throw Exception ("< URS-35 > : Ошибка загрузки руководителей.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_TeamOwnerExecute(TObject *Sender)
{
	/* Команда: Владельцы процесса */

    TClientDataSet *cds	= DMMain->cdsTeam_Owner;
	TDataSource *ds		= DMMain->dsTeam_Owner;

    try
    {
    	tlTeamOwner->DataController->DataSource = 0;
    	TDMMain::ClearDataSet(cds);
    	cds->CommandText = "SMT.INCIDENT_PKG.team_leader_cur";
    	cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = ep_->sheet_id;
        cds->Params->CreateParam(ftInteger, "p_sign", ptInput)->AsInteger = 1;
    	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

    	tlTeamOwner->DataController->DataSource = ds;
    }
	catch ( Exception &e )
	{
		throw Exception ("< URS-36 > : Ошибка загрузки руководителей.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_StorageExecute(TObject *Sender)
{
	/* Загрузка списка вкладки Вес */

	TClientDataSet *cds	= DMMain->cdsStorage;
    TDataSource *ds		= DMMain->dsStorage;

    try
    {
    	TDMMain::ClearDataSet(cds);
    	cds->CommandText = "SMT.INCIDENT_PKG.storage_2_0_cur";
    	cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = ep_->sheet_id;
    	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

    	tlStorage->DataController->DataSource = ds;
        aStorage_SetAction->Execute();
    }
	catch (Exception &e)
	{
		throw Exception ("< URS-37 > : Ошибка загрузки вкладки Вес.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_PauseExecute(TObject *Sender)
{
	/* Пауза: загрузка списка Пауз */

	TClientDataSet *cds = cdsPause;
	TDataSource *ds     = dsPause;

	try
	{
//    	tlPauseNew->DataController->DataSource = 0;
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.INCIDENT_PKG.pause_cur";
		cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = ep_->sheet_id;
		cds->Params->CreateParam(ftCursor,  "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		//tlPause->DataController->DataSource    = ds;
		tlPauseNew->DataController->DataSource = ds;
        aPause_SetAction->Execute();
    }
	catch (Exception &e)
	{
		throw Exception ("< URS-38 > : Ошибка загрузки пауз.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_EscalationExecute(TObject *Sender)
{
	/* Загрузка списка Эскалаций */

	TClientDataSet *cds = DMMain->cdsEscalation;
	TDataSource *ds     = DMMain->dsEscalation;

	try
	{
//		tlEscalationNew->DataController->DataSource = 0;

		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.INCIDENT_PKG.escalation_cur";
		cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = ep_->sheet_id;
		cds->Params->CreateParam(ftCursor,  "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		tlPauseNew->DataController->DataSet->First();

		if ((tlPauseNew->DataController->DataSet->RecordCount > 0
			 && tlPauseNew->DataController->DataSet->FieldByName("pause_reason_id")->AsInteger == reasonEscalation)
			 && (ep_->state_id == stateEscalationNew || ep_->state_id == stateClose))
		{
			// todo: tsEscalation->Enabled = true;
			tlEscalationNew->DataController->DataSource = ds;
			aLoad_EscalationAction->Execute();
			aEscalationAction_Add->Enabled = true;
		}
		else
		{
			tlEscalationNew->DataController->DataSource = ds;
			aLoad_EscalationAction->Execute();
			aEscalationAction_Add->Enabled = false;
		}
	}
	catch (Exception &e)
	{
		throw Exception ("< URS-39 > : Ошибка загрузки Эскалаций.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_AnalysesExecute(TObject *Sender)
{
	/* Анализ: загрузить информацию по оборудованию */

	TClientDataSet *cds = DMMain->cdsAnalyses;

    try
    {
    	TDMMain::ClearDataSet(cds);
    	cds->CommandText = "SMT.INCIDENT_PKG.eq_new_classif_cur";
    	cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = ep_->sheet_id;
    	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

    }
	catch (Exception &e)
	{
		throw Exception ("< URS-40 > : Ошибка загрузки данных раздела Анализ.\n" + e.Message);
	}

    try
    {
		// новый классификатор
		rwSystemType->Properties->Value	= cds->FieldByName("system_type_id")->AsInteger;
		rwSystem->Properties->Value		= cds->FieldByName("system_id")->AsInteger;
		aFill_Class_System->Execute();
		rwUnit->Properties->Value		= cds->FieldByName("unit_id")->AsInteger;
		aFill_Class_Unit->Execute();
		rwDetail->Properties->Value		= cds->FieldByName("detail_id")->AsInteger;
		aFill_Class_Detail->Execute();
		rwDetailText->Properties->Value	= cds->FieldByName("detail_text")->AsString;
		rwSystemName->Properties->Value	= cds->FieldByName("system_name")->AsString;
		rwUnitName->Properties->Value	= cds->FieldByName("unit_name")->AsString;
		rwUnitMfr->Properties->Value	= cds->FieldByName("unit_mfr")->AsString;
		rwDetailName->Properties->Value	= cds->FieldByName("detail_name")->AsString;
		rwDetailMfr->Properties->Value	= cds->FieldByName("detail_mfr")->AsString;
		rwFaultName->Properties->Value	= cds->FieldByName("fault_name")->AsString;

		//ep_->reason_id = cds->FieldByName("reason_id_new")->AsInteger;
		//rwReason->Properties->Value = cds->FieldByName("reason_name_full")->AsString;

		// Перепростой на канаве или Неверный ввод ТЧЭ
		if (cds->FieldByName("reason_id_new")->AsInteger == 155 || cds->FieldByName("reason_id_new")->AsInteger == 156) {
			rwSystemType->Properties->Options->Editing	= false;
			rwSystem->Properties->Options->Editing		= false;
			rwFaultName->Properties->Options->Editing	= false;

			rwSystemType->Properties->Options->ShowEditButtons	= eisbNever;
			rwSystem->Properties->Options->ShowEditButtons		= eisbNever;
			rwFaultName->Properties->Options->ShowEditButtons	= eisbNever;

			rwSystemType->Properties->ImageIndex = -1;
			rwSystem->Properties->ImageIndex 	 = -1;
			rwFaultName->Properties->ImageIndex	 = -1;

			rwSystemType->Properties->Value = 0;
			rwSystem->Properties->Value		= 0;
			rwFaultName->Properties->Value	= "";

			ep_->reason_id = cds->FieldByName("reason_id_new")->AsInteger;
			rwReason->Properties->Value = cds->FieldByName("reason_name_full")->AsString;
		}
		else
		{
			ep_->reason_id = cds->FieldByName("reason_id_new")->AsInteger;
			rwReason->Properties->Value = cds->FieldByName("reason_name_full")->AsString;
		}

		ep_->reason_id_old						= cds->FieldByName("reason_id")->AsInteger;
		rwReason_Old->Properties->Value			= cds->FieldByName("reason_name_old")->AsString;
		rwEQ_Manufacturer->Properties->Value	= cds->FieldByName("eq_mfr_id")->AsInteger;
		//aLoad_NSI_Responsible->Execute();
		ep_->responsible_id						= cds->FieldByName("responsible_id")->AsInteger;
		rwResponsible->Properties->Value		= cds->FieldByName("resp_name_full")->AsString;
		//rwResponsible->Properties->Value		= ep_->responsible_id;
		//ep_->responsible_child_id				= cds->FieldByName("responsible_child_id")->AsInteger;
		//rwResponsibleChild->Properties->Value	= ep_->responsible_child_id;

		/*switch	((int)rwResponsible->Properties->Value)
		{
			case 217:
			{
				rwResponsibleChild->Visible = true;
				break;
			}
			case 218:
			{
				rwResponsibleChild->Visible = true;
				break;
			}
		}*/

		rwSolutionType->Properties->Value		= cds->FieldByName("solution_type_id")->AsInteger;
		rwTakenMeasures->Properties->Value		= cds->FieldByName("taken_measures")->AsString;
		rwDescr_Analyses->Properties->Value		= cds->FieldByName("descr4")->AsString;

		if (rwSolutionType->Properties->Value == 250
			|| rwSolutionType->Properties->Value == 251
			|| rwSolutionType->Properties->Value == 252)
		{
			rwSolutionDescr->Visible 				= true;
			rwSolutionDescr->Properties->ImageIndex = 12;
			rwSolutionDescr->Properties->Value		= cds->FieldByName("solution_desc")->AsString;
		}
		else
		{
			rwSolutionDescr->Visible 				= false;
			rwSolutionDescr->Properties->ImageIndex = -1;
			rwSolutionDescr->Properties->Value		= "";
		}
    }
    catch (Exception &e)
    {
		throw Exception ("< URS-41 > : Ошибка заполнения значений раздела Анализ.\n" + e.Message);
    }

    try
    {
		/*if (ep_->state_id == stateInWork)
        {
            tsRSh_Analyses->Highlighted = !(cds->Active && cds->RecordCount > 0);
        }*/
    }
    catch (Exception &e)
    {
    	throw Exception ("< URS-42 > : Ошибка определения заполненности данных для этапа <в работе>.\n" + e.Message);
    }

	tsRSh_Analyses->ImageIndex = -1;

	// доступность вкладки НРЭ
	if ((int)rwCategory->Properties->Value == catNRE)
	{
		tsRSh_NRE->Enabled = true;
		aLoad_NRE->Execute();
	}
	else
		tsRSh_NRE->Enabled = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_ActionExecute(TObject *Sender)
{
	/* Меры */

    TClientDataSet *cds = DMMain->cdsAction;
    TDataSource *ds = DMMain->dsAction;

    try
    {
    	TDMMain::ClearDataSet(cds);
    	cds->CommandText = "SMT.INCIDENT_PKG.action_cur";
    	cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = ep_->sheet_id;
    	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

    	tlAction->DataController->DataSource = ds;
    }
	catch ( Exception &e )
	{
		throw Exception ("< URS-43 > : Ошибка загрузки мер.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_AttachExecute(TObject *Sender)
{
	/* Прикрепленные файлы */

    TClientDataSet *cds = DMMain->cdsFile;
    TDataSource *ds = DMMain->dsFile;

    try
    {
    	TDMMain::ClearDataSet(cds);
    	cds->CommandText = "SMT.INCIDENT_PKG.attach_cur";
    	cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = ep_->sheet_id;
    	cds->Params->CreateParam(ftCursor,  "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		DMMain->btvRSh_Attach->OptionsView->NoDataToDisplayInfoText = NoDataTextDefault;
		DMMain->btvRSh_Attach->DataController->DataSource           = ds;
		DMMain->btvRSh_Attach->ViewData->Expand(true);

		if (ep_->state_id > stateNew)
		{
			//tsRSh_Attr->Highlighted = !(cds->Active && cds->RecordCount > 0);
        	/*if ( cds->Active && cds->RecordCount > 0 )
                tsRSh_Attr->Color = DMMain->stlBackgroundLightGreen->Color;
            else
                tsRSh_Attr->Color = DMMain->stlBackgroundLightRed->Color;
            */
        }

        //eFileCount->Text = IntToStr(cds->RecordCount);
    }
	catch (Exception &e)
	{
		throw Exception ("< URS-44 > : Ошибка загрузки списка прикрепленных файлов.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aWorkLeader_AddExecute(TObject *Sender)
{
	/*  */
	std::auto_ptr<TfrmEdit_TeamLeader> dlg ( new TfrmEdit_TeamLeader( this ) );
	Strct_TeamLeader te;

	te.sheet_id	= ep_->sheet_id;
	te.team_id	= 0;
    te.sign		= 0;

	if (mrOk == dlg->Show(&te))
	{
		aLoad_TeamLeader->Execute();
		tlTeamLeader->FindNodeByKeyValue(te.team_id, tlTeamLeader->TopNode, false, true);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aProcessOwner_AddExecute(TObject *Sender)
{
	/*  */
	std::auto_ptr<TfrmEdit_TeamLeader> dlg (new TfrmEdit_TeamLeader(this));
	Strct_TeamLeader te;

	te.sheet_id	= ep_->sheet_id;
	te.team_id	= 0;
    te.sign		= 1;

	if (mrOk == dlg->Show(&te))
	{
		aLoad_TeamOwner->Execute();
		tlTeamOwner->FindNodeByKeyValue(te.team_id, tlTeamOwner->TopNode, false, true);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aWork_AddExecute(TObject *Sender)
{
	std::auto_ptr<TfrmEdit_TeamExecutor> dlg (new TfrmEdit_TeamExecutor(this));
	Strct_TeamExecutor te;

	te.sheet_id			= ep_->sheet_id;
	te.team_id			= 0;
	te.department_id	= ep_->owner_kod_department;
	te.user_id			= 0;
	te.work_id			= 0;
	te.descr			= "";

	if (mrOk == dlg->Show(&te))
	{
		aLoad_TeamExecutor->Execute();
		tlWork->FindNodeByKeyValue(te.team_id, tlWork->TopNode, false, true);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aWork_EditExecute(TObject *Sender)
{
	/* Команда: Исполнитель: Изменить */

	if 	(tlWork->FocusedNode == NULL)
    	return;

	std::auto_ptr<TfrmEdit_TeamExecutor> dlg (new TfrmEdit_TeamExecutor(this));
    TClientDataSet	*cds = DMMain->cdsTeam_Executor;
	Strct_TeamExecutor te;

	te.sheet_id		= ep_->sheet_id;
	te.team_id		= cds->FieldByName("team_id")->AsInteger;
	te.user_id		= cds->FieldByName("user_id")->AsInteger;
	te.work_id		= cds->FieldByName("work_id")->AsInteger;
	te.descr		= cds->FieldByName("descr")->AsString;
	te.date_begin	= cds->FieldByName("date_begin")->AsDateTime;

	if (mrOk == dlg->Show(&te))
	{
		aLoad_TeamExecutor->Execute();
        tlWork->FindNodeByKeyValue(te.team_id, tlWork->TopNode, false, true);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aWork_DeleteExecute(TObject *Sender)
{
	/* Удалить работу */

    std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    int qr = MessageBox(NULL, "Удалить выделенную работу?", "Подтверждение", MB_YESNO);

    if (IDYES == qr)
    {
        try
        {
            dsa->CommandText = "SMT.INCIDENT_PKG.team_executor_del";

			dsa->Params->CreateParam(ftInteger, "p_work_id", ptInputOutput)->AsInteger	= DMMain->cdsTeam_Executor->FieldByName("team_id")->AsInteger;
			dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput)->AsInteger	= UserID;
			dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
            dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

            TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

            if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
                throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
        }
        catch (Exception &e)
        {
            throw Exception ("< URS-45 > : Ошибка удаления Работы.\n" + e.Message);
        }

        aLoad_TeamExecutor->Execute();
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aWork_FinishExecute(TObject *Sender)
{
	/* Изменить Работу */

	if (tlWork->FocusedNode == NULL)
		return;

	std::auto_ptr<TfrmEdit_Work> dlg (new TfrmEdit_Work(this));
	Strct_Work te;

	te.sheet_id		= ep_->sheet_id;
	te.team_id		= DMMain->cdsTeam_Executor->FieldByName("team_id")->AsInteger;
	te.date_finish	= DMMain->cdsTeam_Executor->FieldByName("date_finish")->AsDateTime;
    te.rating		= DMMain->cdsTeam_Executor->FieldByName("rating")->AsInteger;

	if (mrOk == dlg->Show(&te))
	{
		aLoad_TeamExecutor->Execute();
        tlWork->FindNodeByKeyValue(te.team_id, tlWork->TopNode, false, true);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aStorage_AddExecute(TObject *Sender)
{
	/* Добавить получение со склада */
	/*
	std::auto_ptr<TfrmEdit_Storage> dlg (new TfrmEdit_Storage(this));
	Strct_Storage te;

	te.sheet_id		= ep_->sheet_id;
	te.storage_id	= 0;
	te.firm_id		= 0;
	te.date_receive	= Date();
    te.detail_name	= "";

	if (mrOk == dlg->Show(&te))
	{
		aLoad_Storage->Execute();
		tlStorage->FindNodeByKeyValue(te.storage_id, tlStorage->TopNode, false, true);
	}
	*/

	std::auto_ptr<TfrmEdit_Weight> dlg (new TfrmEdit_Weight(this));
	Strct_Weight te;

	te.sheet_id			= ep_->sheet_id;
	te.storage_id		= 0;
	te.firm_id			= 0;
	te.date_receive		= Date();
	te.date_enter		= GetDateTimeFromValue(rwFailDate->Properties->Value);
	te.date_exit		= Now();

	te.idle_time_hr		= 0;
	te.idle_cost_r		= 0;
	te.repair_time_hr	= 0;
	te.repair_cost_r	= 0;

	te.zip_name			= "";
	te.zip_cost			= 0;

	te.overhead_cost    = 0;
	te.sum_weight       = 0;


	if (mrOk == dlg->Show(&te))
	{
		aLoad_Storage->Execute();
        tlStorage->FindNodeByKeyValue(te.storage_id, tlStorage->TopNode, false, true);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aStorage_EditExecute(TObject *Sender)
{
	/* Редактировать получение со склада */

	if (tlStorage->FocusedNode == NULL)
		return;

	std::auto_ptr<TfrmEdit_Weight> dlg (new TfrmEdit_Weight(this));
	TClientDataSet	*cds = DMMain->cdsStorage;
	Strct_Weight te;

	te.sheet_id			= ep_->sheet_id;
	te.storage_id		= cds->FieldByName("storage_id")->AsInteger;
	te.firm_id			= cds->FieldByName("firm_id")->AsInteger;
	te.date_receive		= cds->FieldByName("date_receive")->AsDateTime;

	te.date_enter		= cds->FieldByName("date_enter")->AsString;
	te.date_exit		= cds->FieldByName("date_exit")->AsString;

	te.idle_time_hr		= cds->FieldByName("idle_time_hr")->AsString;
	te.idle_cost_r		= cds->FieldByName("idle_cost_rub")->AsString;

	te.repair_time_hr	= cds->FieldByName("repair_time_hr")->AsString;
	te.repair_cost_r	= cds->FieldByName("repair_cost_rub")->AsString;

	te.zip_name			= cds->FieldByName("zip_name")->AsString;;
	te.zip_cost			= cds->FieldByName("zip_cost_hr")->AsString;

	te.overhead_cost    = cds->FieldByName("overhead_cost")->AsString;
	te.sum_weight       = cds->FieldByName("sum_weight")->AsString;

	if (mrOk == dlg->Show(&te))
	{
		aLoad_Storage->Execute();
		tlStorage->FindNodeByKeyValue(te.storage_id, tlStorage->TopNode, false, true);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aStorage_DeleteExecute(TObject *Sender)
{
	/* Удалить получение со склада */

    std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	int qr = MessageBox(NULL, "Удалить выделенную позицию Вес?", "Подтверждение", MB_YESNO);
    if (IDYES == qr)
    {
        try
        {
            dsa->CommandText = "SMT.INCIDENT_PKG.storage_del";

			dsa->Params->CreateParam(ftInteger, "p_storage_id", ptInputOutput )->AsInteger	= DMMain->cdsStorage->FieldByName("storage_id")->AsInteger;
			dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput )->AsInteger	= UserID;
			dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput );
			dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput );

            TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

            if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
                throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
        }
        catch (Exception &e)
        {
			throw Exception ("< URS-46 > : Ошибка удаления позиции Веса.\n" + e.Message);
        }

        aLoad_Storage->Execute();
        tlStorage->SetFocus();
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aPause_AddExecute(TObject *Sender)
{
	/* Добавить паузу */

	std::auto_ptr<TfrmEdit_Pause> dlg (new TfrmEdit_Pause(this));
	Strct_Pause te;

	te.sheet_id		= ep_->sheet_id;
	te.pause_id		= 0;
	te.reason_id	= 0;
	te.date_begin	= Date();

	if (mrOk == dlg->Show(&te))
	{
		aLoad_Pause->Execute();
		tlPauseNew->FindNodeByKeyValue(te.pause_id, tlPauseNew->TopNode, false, true);
	}
}

//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aPause_DeleteExecute(TObject *Sender)
{
	/* Удалить паузу */

    std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    int qr = MessageBox(NULL, "Удалить выделенную Паузу?", "Подтверждение", MB_YESNO);
    if (IDYES == qr)
    {
        try
        {
            dsa->CommandText = "SMT.INCIDENT_PKG.pause_del";

            dsa->Params->CreateParam(ftInteger, "p_pause_id", ptInputOutput )->AsInteger = cdsPause->FieldByName("pause_id")->AsInteger;
            dsa->Params->CreateParam( ftInteger, "p_change_user_id", ptInput )->AsInteger	= UserID;
            dsa->Params->CreateParam( ftInteger, "o_Err_Code", ptInputOutput );
            dsa->Params->CreateParam( ftString, "o_Err_Msg", ptInputOutput );

            TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

            if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
                throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
        }
		catch (Exception &e)
        {
            throw Exception ("< URS-47 > : Ошибка удаления паузы.\n" + e.Message);
        }

        aLoad_Pause->Execute();
        tlPauseNew->SetFocus();
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aWorkaround_AddExecute(TObject *Sender)
{
	/* Добавить обходное решение */

	std::auto_ptr<TfrmEdit_Workaround> dlg (new TfrmEdit_Workaround(this));
	Strct_Workaround te;

	te.sheet_id		= ep_->sheet_id;
	te.wa_id		= 0;
	te.wa_type_id	= 0;
	te.date_begin	= Date();

	if (mrOk == dlg->Show(&te))
	{
		aLoad_Workaround->Execute();
		tlWorkaround->FindNodeByKeyValue(te.wa_id, tlWorkaround->TopNode, false, true);
	}
}
//---------------------------------------------------------------------------


void __fastcall TfrmRecordSheet::aWorkaround_EditExecute(TObject *Sender)
{
	/* Редактировать обходное решение */

	std::auto_ptr<TfrmEdit_Workaround> dlg (new TfrmEdit_Workaround(this));
    TClientDataSet	*cds = DMMain->cdsWorkaround;
	Strct_Workaround te;

    te.sheet_id		= ep_->sheet_id;
	te.wa_id		= cds->FieldByName("wa_id")->AsInteger;
	te.wa_type_id	= cds->FieldByName("wa_type_id")->AsInteger;
	te.date_begin	= cds->FieldByName("date_begin")->AsDateTime;
	te.date_finish	= cds->FieldByName("date_finish")->AsDateTime;

	if (mrOk == dlg->Show(&te))
	{
		aLoad_Workaround->Execute();
		tlWorkaround->FindNodeByKeyValue(te.wa_id, tlWorkaround->TopNode, false, true);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aWorkaround_DeleteExecute(TObject *Sender)
{
	/* Удалить обходное решение */

    std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    int qr = MessageBox(NULL, "Удалить выделенное Обходное решение?", "Подтверждение", MB_YESNO);
    if (IDYES == qr)
    {
        try
        {
            dsa->CommandText = "SMT.INCIDENT_PKG.workaround_del";

			dsa->Params->CreateParam(ftInteger,	"p_wa_id", ptInputOutput )->AsInteger		= DMMain->cdsWorkaround->FieldByName("wa_id")->AsInteger;
			dsa->Params->CreateParam(ftInteger,	"p_change_user_id", ptInput)->AsInteger	= UserID;
			dsa->Params->CreateParam(ftInteger,	"o_Err_Code", ptInputOutput);
            dsa->Params->CreateParam(ftString,	"o_Err_Msg", ptInputOutput);

            TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

            if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
                throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
        }
        catch (Exception &e)
		{
            throw Exception ("< URS-48 > : Ошибка удаления Обходного решения.\n" + e.Message);
        }

        aLoad_Workaround->Execute();
        tlWorkaround->SetFocus();
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aEscalation_AddExecute(TObject *Sender)
{
	/* Добавить эскалацию */

	std::auto_ptr<TfrmEdit_Escalation> dlg (new TfrmEdit_Escalation(this));
	Strct_Escalation te;

	te.sheet_id		= ep_->sheet_id;
	te.escal_id		= 0;
	te.kod_firm		= 0;
	te.date_begin	= Date();
	te.user_id		= 0;
	te.reason_id	= 0;
    te.descr		= "";

	if (mrOk == dlg->Show(&te))
	{
		aLoad_Escalation->Execute();
		tlEscalationNew->FindNodeByKeyValue(te.escal_id, tlEscalationNew->TopNode, false, true);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aAction_AddExecute(TObject *Sender)
{
	std::auto_ptr<TfrmEdit_Action> dlg (new TfrmEdit_Action(this));
	Strct_Action te;

	te.sheet_id				= ep_->sheet_id;
	te.action_id			= 0;
	te.leader_id			= 0;	// руководитель
	te.action_type_id		= 0;
	te.action_descr			= "";
	te.result_id			= 0;
	te.non_execute_descr	= "";
	te.rating				= 0;
    te.date_performance		= Date() + 10;

	if (mrOk == dlg->Show(&te))
	{
		aLoad_Action->Execute();
        tlAction->FindNodeByKeyValue(te.action_id, tlAction->TopNode, false, true);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aAction_EditExecute(TObject *Sender)
{
	if (tlAction->FocusedNode == NULL)
		return;

	std::auto_ptr<TfrmEdit_Action> dlg (new TfrmEdit_Action(this));
    TClientDataSet	*cds = DMMain->cdsAction;
	Strct_Action te;

	te.sheet_id				= ep_->sheet_id;
	te.action_id			= cds->FieldByName("action_id")->AsInteger;
	te.leader_id			= cds->FieldByName("leader_id")->AsInteger;
	te.action_type_id		= cds->FieldByName("action_type_id")->AsInteger;
	te.action_descr			= cds->FieldByName("action_descr")->AsString;
	te.result_id			= cds->FieldByName("result_id")->AsInteger;
	te.non_execute_descr	= cds->FieldByName("descr_noexec")->AsString;
	te.rating				= cds->FieldByName("rating")->AsInteger;
	te.date_performance		= cds->FieldByName("date_performance")->AsDateTime;

	if (mrOk == dlg->Show(&te))
	{
		aLoad_Action->Execute();
        tlAction->FindNodeByKeyValue(te.action_id, tlAction->TopNode, false, true);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aAction_DeleteExecute(TObject *Sender)
{
	/* Удалить мероприятие */

	if 	(tlAction->FocusedNode == NULL)
    	return;

    std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    int qr = MessageBox(NULL, "Удалить выделенное Мероприятие?", "Подтверждение", MB_YESNO);

    if (IDYES == qr)
    {
        try
        {
            dsa->CommandText = "SMT.INCIDENT_PKG.action_del";

			dsa->Params->CreateParam(ftInteger, "p_action_id", ptInputOutput )->AsInteger	= DMMain->cdsAction->FieldByName("action_id")->AsInteger;
			dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput )->AsInteger	= UserID;
			dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput );
			dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput );

            TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

			if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
				throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
		}
        catch (Exception &e)
        {
			throw Exception ("< URS-49 > : Ошибка удаления мероприятия.\n" + e.Message);
        }

        aLoad_Action->Execute();
        tlAction->SetFocus();
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aAttach_EditExecute(TObject *Sender)
{
	/* Добавить вложение */

	std::auto_ptr<TfrmEdit_Attach> dlg (new TfrmEdit_Attach(this));
	Strct_Attach te;

    TClientDataSet *cds = DMMain->cdsFile;

	te.sheet_id     = ep_->sheet_id;
	te.attach_id 	= cds->FieldByName("attach_id")->AsInteger;
	te.attach_descr = cds->FieldByName("descr")->AsString;
	te.file_name 	= cds->FieldByName("file_name")->AsString;
    te.group_id 	= cds->FieldByName("group_id")->AsInteger;

	if (mrOk == dlg->Show(&te))
	{
		aLoad_Attach->Execute();
        DMMain->btvRSh_Attach->DataController->LocateByKey(te.attach_id);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::DMMainbtvRSh_AttachKeyPress(TObject *Sender, wchar_t &Key)
{
	if (Key == VK_RETURN)
        aAttach_Show->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::DMMainclmnRSh_Attach_DownloadPropertiesButtonClick(TObject *Sender,
		  int AButtonIndex)
{
	if (AButtonIndex == 0)
		aAttach_Show->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aAttach_DeleteExecute(TObject *Sender)
{
	/* Удаление вложения */

	if (DMMain->cdsFile->Active == false
		|| DMMain->cdsFile->RecordCount == 0
		|| DMMain->cdsFile->FieldByName("file_name")->AsString.IsEmpty())
    	return;

    StructFTP st;
    std::auto_ptr<TfrmFTPTransfer> dlg (new TfrmFTPTransfer(this));
    std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    int qr = MessageBox(NULL, "Удалить выделенный файл?", "Подтверждение", MB_YESNO);
    if (IDYES == qr)
    {
        try
        {
            TDMMain::ClearDataSet(dsa.get());
            dsa->CommandText = "SMT.INCIDENT_PKG.attach_del";

			dsa->Params->CreateParam(ftInteger, "p_attach_id", ptInput)->AsInteger		= DMMain->cdsFile->FieldByName("attach_id")->AsInteger;
			dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput)->AsInteger	= UserID;
			dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
            dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

            TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

            if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
                throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
        }
        catch (Exception &e)
        {
            throw Exception ("< URS-50 > : Ошибка удаления информации о файле.\n" + e.Message);
        }

		// удалить с ftp
		st.FTPFileName		= DMMain->cdsFile->FieldByName("file_name")->AsString;
		st.FileName			= "";
		st.AutoRun			= false;
		st.FileNameShort	= DMMain->cdsFile->FieldByName("file_name_short")->AsString;
		st.DirNameYear		= DMMain->cdsFile->FieldByName("dir_name_year")->AsString;
        st.DirNameMonth		= DMMain->cdsFile->FieldByName("dir_name_month")->AsString;


        if ((st.FTPFileName).IsEmpty() == false)
            dlg->Delete( &st );

		aLoad_Attach->Execute();
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aAttach_ShowExecute(TObject *Sender)
{
	/* Просмотр вложения */

    if (DMMain->cdsFile->Active == false || DMMain->cdsFile->RecordCount == 0 || DMMain->cdsFile->FieldByName("file_name")->AsString.IsEmpty())
    	return;

    StructFTP st;
    std::auto_ptr<TfrmFTPTransfer> dlg (new TfrmFTPTransfer(this));
	st.FTPFileName		= DMMain->cdsFile->FieldByName("file_name")->AsString;
	st.FileName			= "";
	st.FileNameShort	= DMMain->cdsFile->FieldByName("file_name_short")->AsString;
	st.AutoRun			= true;
	st.DirNameYear		= DMMain->cdsFile->FieldByName("dir_name_year")->AsString;
	st.DirNameMonth		= DMMain->cdsFile->FieldByName("dir_name_month")->AsString;

	if ((st.FTPFileName).IsEmpty() == false)  // Выполняем только если сначала файл не был приложен
		dlg->DownLoad(&st);
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aAttach_AddExecute(TObject *Sender)
{
	/* Добавить вложение */

	std::auto_ptr<TfrmEdit_Attach> dlg (new TfrmEdit_Attach(this));
	Strct_Attach te;

	te.sheet_id     = ep_->sheet_id;
	te.attach_id    = 0;
	te.attach_descr = "";
	te.file_name    = "";
	te.group_id     = pcCommon->ActivePage->Tag;
	te.group_name   = pcCommon->ActivePage->Caption;

	if (mrOk == dlg->Show(&te))
	{
		aLoad_Attach->Execute();
		DMMain->btvRSh_Attach->DataController->LocateByKey(te.attach_id);
	}
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmRecordSheet::FirmSelectDialog(int TypeDialog, StrctSelectFirm* sf)
{


}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::btneFailPlacePropertiesButtonClick(TObject *Sender,
          int AButtonIndex)
{
    /* Выбрать место возникновения инцидента */

	StrctFirmTree_	sf;
    std::auto_ptr<TfrmFirmSelect> dlg (new TfrmFirmSelect(this));

	sf.PredID		= DMMain->cdsRSh->FieldByName("fail_place_id")->AsInteger;
    sf.only_depot	= false;

	if (mrOk == dlg->Show(&sf) /*FirmSelectDialog( int(cbTypePlace->EditValue), &sf )*/ )
    {
	   btneFailPlace->EditValue	= sf.PredName;
       ep_->FailPlaceId			= sf.PredID;
    }
}
//---------------------------------------------------------------------------


void __fastcall TfrmRecordSheet::btneResponsiblePropertiesButtonClick(TObject *Sender,
          int AButtonIndex)
{
    /* Выбрать предприятие - виновную службу */

	StrctSelectFirm	sf;
	std::auto_ptr<TfrmResponsTree> dlg (new TfrmResponsTree(this));
	StrctResponsTree ep;
	TModalResult vResult = mrCancel;

    ep.CommandText = "SMT.smt_nsi_pkg.smt_nsi_kasant_respons_cur";
    ep.AccLevel = 0;

    vResult =  dlg->Show(&ep);

    if (vResult == mrOk)
    {
		ep_->responsible_parent_id	= ep.ParentPredID;
		ep_->kasant_responsible_id	= ep.PredID;
        ep_->responsible_road_id	= ep.RoadKod;

		btneResponsibleParent->Text	= ep.ParentPredName;
		eResponsibleChild->Text		= ep.PredName;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::cbCriticalityPropertiesEditValueChanged(TObject *Sender)

{
	eCriticality->Text = cbCriticality->Text;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::btneLocPropertiesButtonClick(TObject *Sender, int AButtonIndex)
{
	aSearchLoc->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::cbTypePlacePropertiesChange(TObject *Sender)
{
	btneFailPlace->EditValue = "";
}

//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::FormClose(TObject *Sender, TCloseAction &Action)
{
	vgRunningElder->DataController->DataSource	= 0;
	vgRunningJunior->DataController->DataSource	= 0;

	tlWork->DataController->DataSource			= 0;
	tlTeamLeader->DataController->DataSource	= 0;
	tlTeamOwner->DataController->DataSource		= 0;
	tlAction->DataController->DataSource		= 0;
    TDMMain::ClearDataSet(DMMain->cdsRSh);
    TDMMain::ClearDataSet(DMMain->cdsRSh_Running);
    TDMMain::ClearDataSet(DMMain->cdsTeam);
    TDMMain::ClearDataSet(cdsPause);
	TDMMain::ClearDataSet(DMMain->cdsAnalyses);
	TDMMain::ClearDataSet(DMMain->cdsAnalyses);
	TDMMain::ClearDataSet(DMMain->cdsEscalation);
	TDMMain::ClearDataSet(cdsEscalationAction);
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::btneLocPropertiesEditValueChanged(TObject *Sender)
{
    eAnalyses_Loc->Text = btneLoc->Text;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::deFailDatePropertiesEditValueChanged(TObject *Sender)

{
    if (ep_->kod_ser != 0 /*&& ep_->has_running == 0*/)
    {
    	aGetRunningASOUP->Execute();
    	aGetTrainInfo->Execute();
    }
}
//---------------------------------------------------------------------------

bool __fastcall TfrmRecordSheet::CheckDiff(int PageTag)
{
	/* Проверка - вносились ли изменения */

    bool Result = false;
    TClientDataSet *cds = DMMain->cdsRSh;

	switch (PageTag)
    {
        case 16:
			Result = (cds->FieldByName("kod_ser")->AsInteger	!= ep_->kod_ser
					 || cds->FieldByName("kod_depo")->AsInteger != ep_->kod_depo
                     || cds->FieldByName("kod_firm_repair")->AsInteger != ep_->kod_firm_repair
                     || cds->FieldByName("kod_firm_service")->AsInteger != (int)cbServiceDepartment->EditValue
                     || cds->FieldByName("state_id")->AsInteger != (int)cbState->EditValue
                     || cds->FieldByName("source_type_id")->AsInteger != (int)cbInfoSourceType->EditValue
                     || cds->FieldByName("source_info_id")->AsInteger != ep_->source_info_id
                     || cds->FieldByName("criticality_id")->AsInteger != (int)cbCriticality->EditValue
                     || cds->FieldByName("category_id")->AsInteger != (int)cbCategory->EditValue
                     || cds->FieldByName("enter_depot_reason_id")->AsInteger != (int)cbEnter_Depot_Reason->EditValue
                     || cds->FieldByName("date_fail")->AsDateTime != GetDateTimeFromValue(deFailDate->EditValue)
                     || cds->FieldByName("date_diagnost_msg")->AsDateTime != GetDateTimeFromValue(deDiagMsgDate->EditValue)
                     || cds->FieldByName("incident_descr")->AsString != mmIncidentDescr->Text
                     || cds->FieldByName("fail_type_place")->AsInteger != (int)cbTypePlace->EditValue
                     || cds->FieldByName("fail_place_id")->AsInteger != ep_->FailPlaceId
                     || cds->FieldByName("kasant_idx_id")->AsInteger != (int)cbKasantMark->EditValue
                     || cds->FieldByName("kasant_traffic_safety_id")->AsInteger != (int)cbKasantSafety->EditValue
                     || cds->FieldByName("kasant_state_id")->AsInteger != (int)cbKasantState->EditValue
                     || cds->FieldByName("responsible_road_id")->AsInteger != ep_->responsible_road_id
                     || cds->FieldByName("responsible_parent_id")->AsInteger != (int)btneResponsibleParent->EditValue
					 || cds->FieldByName("responsible_id")->AsInteger != (int)eResponsibleChild->EditValue
                     || cds->FieldByName("descr1")->AsString != mmDescr1->Text
                     );
        	break;
		case 18:
        	break;
		case 19:
            Result = (DMMain->cdsTeam->FieldByName("department_id")->AsInteger != (int)cbTeamDepartment->EditValue);
        	break;
        case 26:
        	cds = DMMain->cdsAnalyses;
            if (cds->Active == true)
                Result = false;
        	break;
        /*case 29:
        	NULL;
        	break;*/
        default:
        	Result = false;
    }
    return Result;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::cbInfoSourceTypePropertiesEditValueChanged(TObject *Sender)
{
	if ((int)cbInfoSourceType->EditValue == vSourceType_KASANT)
    	cbKasantMark->Enabled = true;
    else
    	cbKasantMark->Enabled = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::tlPauseFocusedNodeChanged(TObject *Sender, TcxTreeListNode *APrevFocusedNode,
          TcxTreeListNode *AFocusedNode)
{
	aPause_SetAction->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::tlStorageFocusedNodeChanged(TObject *Sender, TcxTreeListNode *APrevFocusedNode,
          TcxTreeListNode *AFocusedNode)
{
	aStorage_SetAction->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::tlExecutor_FocusedNodeChanged(TObject *Sender, TcxTreeListNode *APrevFocusedNode,
          TcxTreeListNode *AFocusedNode)
{
	aCommandSetAction->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::DMMainbtvRSh_AttachFocusedRecordChanged(TcxCustomGridTableView *Sender,
          TcxCustomGridRecord *APrevFocusedRecord, TcxCustomGridRecord *AFocusedRecord,
          bool ANewItemRecordFocusingChanged)
{
	aAttachSetAction->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::tlActionFocusedNodeChanged(TObject *Sender, TcxTreeListNode *APrevFocusedNode,
          TcxTreeListNode *AFocusedNode)
{
 	aActionSetAction->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aRelationChildEditExecute(TObject *Sender)
{
	/* Добавление зависимых инцидентов */

	std::auto_ptr<TfrmIncident_Relation> dlg (new TfrmIncident_Relation(this));
	Strct_Relation r;

    r.sheet_id        = 0;
    r.parent_sheet_id = DMMain->cdsRSh->FieldByName("parent_sheet_id")->AsInteger;
    r.relation_type   = RT_ADD_CHILD;

	if (mrOk == dlg->Show(&r))
	{
		aLoad_Relation->Execute();
		btvRelation->DataController->LocateByKey(r.parent_sheet_id);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::Load_Relation(int p_parent_sheet_id)
{
	/* Обновить список зависимостей */

	TClientDataSet *cds_p			= cdsRelationParent;
	TDataSource *ds_p				= dsRelationParent;
	TcxGridDBBandedTableView *vw_p	= btvRelation;

    TClientDataSet *cds = cdsRelationChild;
    TDataSource *ds = dsRelationChild;
    TcxGridDBBandedTableView *vw = btvRelationChild;

    // Подчиненные
    TDMMain::ClearDataSet(cds);

    cds->CommandText = "SMT.test_pkg.related_incident_child_cur";
    cds->Params->CreateParam(ftInteger, "p_parent_sheet_id", ptInput)->AsInteger = p_parent_sheet_id;
    cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

	try
	{
        vw->OptionsView->NoDataToDisplayInfoText = NoDataTextDefault;
        vw->DataController->DataSource = 0;
        TDMMain::OpenDS(cds, "OPEN", "CT", 1);
        vw->DataController->DataSource = ds;
    }
	catch (Exception &e)
	{
        vw->OptionsView->NoDataToDisplayInfoText = ErrorRefreshText;
		throw Exception ("< URS-51 > : Связи: Ошибка загрузки списка зависимых ЛР.\n" + e.Message);
	}

    if ( cds->Active && cds->RecordCount > 0 )
    {
        // Главный
        TDMMain::ClearDataSet(cds_p);

        cds_p->CommandText = "SMT.test_pkg.related_incident_parent_cur";
        cds_p->Params->CreateParam(ftInteger, "p_parent_sheet_id", ptInput)->AsInteger = p_parent_sheet_id;
        cds_p->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        try
        {
            vw_p->OptionsView->NoDataToDisplayInfoText 	= NoDataTextDefault;
            vw_p->DataController->DataSource = 0;
            TDMMain::OpenDS(cds_p, "OPEN", "CT", 1);
            vw_p->DataController->DataSource = ds_p;
        }
        catch ( Exception &e )
        {
            vw_p->OptionsView->NoDataToDisplayInfoText = ErrorRefreshText;
            throw Exception ("< URS-52 > : Связи: Ошибка загрузки основного ЛР.\n" + e.Message);
        }

        vw_p->ViewData->Expand(true);
    }

	aRelation_SetAction->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_RelationExecute(TObject *Sender)
{
	Load_Relation(DMMain->cdsRSh->FieldByName("parent_sheet_id")->AsInteger);
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aRelationDeleteExecute(TObject *Sender)
{
	/* Отвязка инцидента */

    std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    int qr = MessageBox(NULL, AnsiString("Отвязать ЛР №" + cdsRelationChild->FieldByName("sheet_no")->AsString + " ?").c_str(), "Подтверждение", MB_YESNO);

    if (IDYES == qr)
    {
        try
        {
            dsa->CommandText = "SMT.INCIDENT_PKG.relation_iu";
			dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput )->AsInteger = cdsRelationChild->FieldByName("sheet_id")->AsInteger;
			dsa->Params->CreateParam(ftInteger, "p_parent_sheet_id", ptInput )->AsInteger = 0;
			dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput )->AsInteger = UserID;
			dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput );
            dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput );

            TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

            if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
                throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
        }
        catch (Exception &e)
        {
			throw Exception ("< URS-53 > : Ошибка выполнения операции отвязки ЛР.\n" + e.Message);
        }

        aLoad_Incident_RSh->Execute();
		aLoad_Relation->Execute();
        grdRelation->SetFocus();
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::btvRelationColumn2GetDisplayText(TcxCustomGridTableItem *Sender,
          TcxCustomGridRecord *ARecord, UnicodeString &AText)

{
	if (ARecord != NULL && !AText.IsEmpty())
		AText = FormatDateTime("dd.mm  hh:nn", StrToDateTime(AText));
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::btvRelationFocusedRecordChanged(TcxCustomGridTableView *Sender,
          TcxCustomGridRecord *APrevFocusedRecord, TcxCustomGridRecord *AFocusedRecord,
          bool ANewItemRecordFocusingChanged)
{
	aRelation_SetAction->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::grdRelationFocusedViewChanged(TcxCustomGrid *Sender,
		  TcxCustomGridView *APrevFocusedView, TcxCustomGridView *AFocusedView)
{
	if (APrevFocusedView != NULL)
		aRelation_SetAction->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aRelationAddParentExecute(TObject *Sender)
{
	/* Привязка к родительскому инциденту */

	std::auto_ptr<TfrmIncident_Relation> dlg (new TfrmIncident_Relation(this));
	Strct_Relation r;

	r.sheet_id = ep_->sheet_id;
	r.parent_sheet_id = 0;
	r.relation_type = RT_ADD_PARENT;

	if (mrOk == dlg->Show(&r))
	{
		aLoad_Incident_RSh->Execute();
		Load_Relation(DMMain->cdsRSh->FieldByName("parent_sheet_id")->AsInteger);
		aLoad_Relation->Execute();
		//btvRelation->DataController->LocateByKey(r.parent_sheet_id);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aCancelExecute(TObject *Sender)
{
	int qr = MessageBox(Handle, "Закрыть ЛР без сохранения?", "Подтверждение", MB_YESNO);

    if (IDYES == qr)
		ModalResult = mrCancel;
}
//---------------------------------------------------------------------------


void __fastcall TfrmRecordSheet::aSetState_CloseExecute(TObject *Sender)
{
	/* Закрыть ЛР */

	std::auto_ptr<TfrmIncidentClosing> dlg (new TfrmIncidentClosing(this));
	Strct_IncidentClosing te;

	te.sheet_id = ep_->sheet_id;

	te.close_reason_id	= DMMain->cdsRSh->FieldByName("close_reason_id")->AsInteger;
	te.descr			= DMMain->cdsRSh->FieldByName("descr8")->AsString;
	te.row_id           = DMMain->cdsRSh->FieldByName("row_id")->AsInteger;

	// Перепростой на канаве или Неверный ввод ТЧЭ
	if (ep_->reason_id == 155 || ep_->reason_id == 156) {
		// Код закрытия - "Не подтвердился"
		te.close_reason_new = closersnWasNotConfirmed;
	}
	else
		te.close_reason_new = (int)rwSolutionType->Properties->Value;

//------------
//Задача 2
//------------
	switch ((int)rwSolutionType->Properties->Value)
	{
		case 250: te.close_reason_new = closersnDecide; te.Flag = 0; break;
		case 251: te.close_reason_new = closersnDecide; te.Flag = 0; break;
		case 252: te.close_reason_new = closersnDecide; te.Flag = 0; break;
		case 174: te.close_reason_new = closersnDecide; te.Flag = 0; break;
		case 175: te.close_reason_new = closersnDecide; te.Flag = 0; break;
		case 267: te.close_reason_new = (int)rwSolutionType->Properties->Value; te.Flag = 1; break;
	}
//------------



	if (mrOk == dlg->Show(&te))
	{
		ep_->bWasChange = true;
		aLoad_Incident_RSh->Execute();
		cbState->EditValue = ep_->state_id;
		aLoad_TabSheet->Execute();
		pcCommon->ActivePage = pcCommon->Pages[tsRSh_Closing->PageIndex];
	}

	aSetAction->Execute();
}
//---------------------------------------------------------------------------


void __fastcall TfrmRecordSheet::aSetState_InWorkExecute(TObject *Sender)
{
	/* Взять инцидент в работу */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	dsa->CommandText = "SMT.INCIDENT_PKG.state_id_u_class";

	dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger 	= ep_->sheet_id;
	dsa->Params->CreateParam(ftInteger, "p_state_id", ptInput)->AsInteger 	= stateInWork;

	dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput)->AsInteger	= UserID;
	dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
	dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

    TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

	if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
		throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);

	ep_->bWasChange = true;
    aLoad_Incident_RSh->Execute();
    cbState->EditValue	= ep_->state_id;
    aLoad_TabSheet->Execute();
    // оборудование заполнить, т.к. теперь известна тяга
    aLoad_NSI_SystemTree->Execute();
    aFill_NSI_System->Execute();
    aLoad_Analyses->Execute();
	pcCommon->ActivePage = tsRSh_Team; //pcCommon->Pages[tsRSh_Team->PageIndex];

	// блокируем вкладку "Эскалация"
	pcPauseEscalation->ActivePage = tsPause;
	aEscalationAction_Add->Enabled = false;

	// Неплановый ремонт
	if ((int)rwEnterDepotReason->Properties->Value == 91)
		tsWt_CalcUnplannedRepair->Enabled = true;
	else
		tsWt_CalcUnplannedRepair->Enabled = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aSetState_StorageExecute(TObject *Sender)
{
	/* Перевести инцидент в статус Склад */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    aStorage_Add->Execute();

    if (tlStorage->AbsoluteCount == 0)
    	return;

	dsa->CommandText = "SMT.INCIDENT_PKG.state_id_u_class";

	dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger 	= ep_->sheet_id;
    dsa->Params->CreateParam(ftInteger, "p_state_id", ptInput)->AsInteger 	= stateStorage;

	dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput)->AsInteger	= UserID;
	dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
    dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

    TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

	if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
		throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);

    ep_->bWasChange = true;
    aLoad_Incident_RSh->Execute();
    cbState->EditValue	= ep_->state_id;
    aLoad_TabSheet->Execute();
	pcCommon->ActivePage = pcCommon->Pages[tsRSh_Storage->PageIndex];

	// блокируем вкладку "Эскалация"
	pcPauseEscalation->ActivePage = tsPause;
	// todo: tsEscalation->Enabled = false;
	aEscalationAction_Add->Enabled = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aSetState_PauseExecute(TObject *Sender)
{
	/*  Перевести инцидент в статус Пауза */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    aPause_Add->Execute();

	if (tlPauseNew->AbsoluteCount == 0)
		return;
	/*
	if (tlPauseNew->DataController->DataSet->FieldByName("pause_reason_id")->AsInteger == reasonEscalation) {
		tsEscalation->Enabled = true;
		aLoad_Escalation->Execute();
	}
	else
		tsEscalation->Enabled = false;
    */
	dsa->CommandText = "SMT.INCIDENT_PKG.state_id_u_class";
	dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger 	    = ep_->sheet_id;
	dsa->Params->CreateParam(ftInteger, "p_state_id", ptInput)->AsInteger 	    = statePauseNew;
	dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput)->AsInteger = UserID;
	dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
    dsa->Params->CreateParam(ftString,  "o_Err_Msg", ptInputOutput);
    TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

	if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
		throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);

    ep_->bWasChange = true;
    aLoad_Incident_RSh->Execute();
    cbState->EditValue	= ep_->state_id;
    aLoad_TabSheet->Execute();
	pcCommon->ActivePage = pcCommon->Pages[tsRSh_PauseEscalation->PageIndex];
	pcPauseEscalation->ActivePage = tsPause;

	// Неплановый ремонт
	if ((int)rwEnterDepotReason->Properties->Value == 91)
		tsWt_CalcUnplannedRepair->Enabled = true;
	else
		tsWt_CalcUnplannedRepair->Enabled = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aSetState_EscalationExecute(TObject *Sender)
{
	/* Эскалация инцидента */

	if (tlPauseNew->DataController->DataSet->RecordCount > 0
		&& tlPauseNew->DataController->DataSet->FieldByName("pause_reason_id")->AsInteger == reasonEscalation
		&& tlPauseNew->DataController->DataSet->FieldByName("date_finish")->AsDateTime.Val == 0)
	{
		std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

		aEscalation_Add->Execute();

		//if (tlEscalationNew->AbsoluteCount == 0)
		//	return;

		dsa->CommandText = "SMT.INCIDENT_PKG.state_id_u_class";

		dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger 	    = ep_->sheet_id;
		dsa->Params->CreateParam(ftInteger, "p_state_id", ptInput)->AsInteger 	    = stateEscalationNew;
	//	dsa->Params->CreateParam(ftInteger, "p_state_id", ptInput)->AsInteger 		= stateEscalation;
		dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput)->AsInteger = UserID;

		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput );
		dsa->Params->CreateParam(ftString,  "o_Err_Msg", ptInputOutput );

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception(dsa->Params->ParamByName("o_Err_Msg")->AsString);

		ep_->bWasChange = true;
		aLoad_Incident_RSh->Execute();
		cbState->EditValue = ep_->state_id;
		aLoad_TabSheet->Execute();

		pcCommon->ActivePage = pcCommon->Pages[tsRSh_PauseEscalation->PageIndex];
		// todo: tsEscalation->Enabled = true;
		aEscalationAction_Add->Enabled	= true;
		pcPauseEscalation->ActivePage	= tsEscalation;
	} else {
		MessageBox(Handle, "Перевод в режим 'Эскалация' возможен только из режима 'Пауза' - Причина: 'Эскалация'.", "Инфо", MB_ICONINFORMATION);
	}

	// Неплановый ремонт
	if ((int)rwEnterDepotReason->Properties->Value == 91)
		tsWt_CalcUnplannedRepair->Enabled = true;
	else
		tsWt_CalcUnplannedRepair->Enabled = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aSetState_ResolvedExecute(TObject *Sender)
{
	/* Перевести инцидент в статус Устранен */

    std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	dsa->CommandText = "SMT.INCIDENT_PKG.state_id_u_class";

	dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger 	= ep_->sheet_id;
	dsa->Params->CreateParam(ftInteger, "p_state_id", ptInput)->AsInteger 	= stateResolvedNew;

	dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput)->AsInteger	= UserID;
	dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
    dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

    TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

	if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
		throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);

    ep_->bWasChange = true;
    aLoad_Incident_RSh->Execute();
    aLoad_NSI_SystemTree->Execute();	// по тяге подгрузить НСИ оборудования

    cbState->EditValue	= ep_->state_id;
    aLoad_TabSheet->Execute();
	pcCommon->ActivePage = pcCommon->Pages[tsRSh_AnalyseAction->PageIndex];
	pcAnalyseAction->ActivePage = tsRSh_Analyses;

	// блокируем вкладку "Эскалация"
	pcPauseEscalation->ActivePage = tsPause;
	// todo: tsEscalation->Enabled = false;
	aEscalationAction_Add->Enabled = false;

	// Неплановый ремонт
	if ((int)rwEnterDepotReason->Properties->Value == 91)
		tsWt_CalcUnplannedRepair->Enabled = true;
	else
		tsWt_CalcUnplannedRepair->Enabled = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aStateHistoryExecute(TObject *Sender)
{
	/* Просмотреть историю нахождения в статусах */

	std::auto_ptr<TfrmStateHistory> dlg ( new TfrmStateHistory( this ) );

	dlg->Show(ep_->sheet_id);
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::eDateChangePropertiesButtonClick(TObject *Sender,
          int AButtonIndex)
{
	/* Просмотреть инфу об изменившем пользователе */

	std::auto_ptr<TfrmUsers> dlg (new TfrmUsers(this));
	dlg->Show(DMMain->cdsRSh->FieldByName("change_user_id")->AsInteger);
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_NSI_SystemTreeExecute(TObject *Sender)
{
	/* Загрузить полное дерево оборудований */

	TClientDataSet *cds	= cds_NSI_SystemTree;
    TDataSource *ds		= ds_NSI_SystemTree;

	try
    {
    	TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.NSI_PKG.eq_tree_new_cur";
    	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
    }
    catch (Exception &e)
    {
		TDMMain::ShowAppException(AET_EXCEPTION, "< URS-54 > : Ошибка загрузки дерева узлов.\n ", e.Message);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_NSI_ReasonTreeExecute(TObject *Sender)
{
    /* Загрузить дерево причин */

	TClientDataSet *cds	= DMMain->cds_NSI_ReasonTree;
    TDataSource *ds		= DMMain->ds_NSI_ReasonTree;

	try
    {
		tlReasonTree->DataController->DataSource = 0;

		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.NSI_PKG.reason_tree_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		tlReasonTree->DataController->DataSource = ds;
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< URS-55 > : Ошибка загрузки дерева причин.\n", e.Message);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aSelect_NSI_ReasonTreeExecute(TObject *Sender)
{
	/* Выбор причины */

	TcxTreeListNode *ln = NULL;
	ln = tlReasonTree->FocusedNode;

	if (ln != NULL && !ln->HasChildren)
	{
		ep_->reason_id				= DMMain->cds_NSI_ReasonTree->FieldByName("reason_id")->AsInteger;
		rwReason->Properties->Value = DMMain->cds_NSI_ReasonTree->FieldByName("reason_name_full")->AsString;

		try
		{
			// Перепростой на канаве или Неверный ввод ТЧЭ
			if (ep_->reason_id == 155 || ep_->reason_id == 156) {
				rwSystemType->Properties->Options->Editing	= false;
				rwSystem->Properties->Options->Editing		= false;
				rwFaultName->Properties->Options->Editing	= false;

				rwSystemType->Properties->Options->ShowEditButtons	= eisbNever;
				rwSystem->Properties->Options->ShowEditButtons		= eisbNever;
				rwFaultName->Properties->Options->ShowEditButtons	= eisbNever;

				rwSystemType->Properties->ImageIndex = -1;
				rwSystem->Properties->ImageIndex 	 = -1;
				rwFaultName->Properties->ImageIndex	 = -1;

				rwSystemType->Properties->Value	= 0;
				rwSystem->Properties->Value		= 0;
				rwFaultName->Properties->Value	= "";
			}
			else
			{
				rwSystemType->Properties->Options->Editing	= true;
				rwSystem->Properties->Options->Editing		= true;
				rwFaultName->Properties->Options->Editing	= true;

				rwSystemType->Properties->Options->ShowEditButtons	= eisbNever;
				rwSystem->Properties->Options->ShowEditButtons		= eisbNever;
				rwFaultName->Properties->Options->ShowEditButtons	= eisbNever;

				rwSystemType->Properties->ImageIndex = 12;
				rwSystem->Properties->ImageIndex 	 = 12;
				rwFaultName->Properties->ImageIndex	 = 12;
			}
		}
		catch (Exception &e)
		{

		}

		vgAnalyses->SetFocus();
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::vgAnalysesEditValueChanged(TObject *Sender,
          TcxCustomEditorRowProperties *ARowProperties)
{
	tsRSh_Analyses->ImageIndex = 47;
}

//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::rwReasonEditPropertiesInitPopup(TObject *Sender)

{
	pnlReasonTree->Width = vgAnalyses->Width - vgAnalyses->OptionsView->RowHeaderWidth;
    DMMain->cds_NSI_ReasonTree->Locate("reason_id", ep_->reason_id, TLocateOptions());
}
//---------------------------------------------------------------------------


void __fastcall TfrmRecordSheet::tlReasonTreeKeyPress(TObject *Sender, wchar_t &Key)

{
	if (Key == VK_RETURN) aSelect_NSI_ReasonTree->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aFill_NSI_SolutionTypeExecute(TObject *Sender)
{
    /* Заполнить список режимов устранения инцидента */

	try
	{
		TClientDataSet *cds	= DMMain->cds_NSI_SolutionType;
		TDataSource *ds		= DMMain->ds_NSI_SolutionType;
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT.NSI_PKG.nsi_solution_type_tree";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

	}
	catch (Exception &e)
	{
		throw Exception ("< URS-56 > : Ошибка заполнения списка режимов устранения инцидента.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::rwLocNameEditPropertiesButtonClick(TObject *Sender,
          int AButtonIndex)
{
	switch (AButtonIndex)
    {
        case 0:
            SearchLoc(0, 0);
        	break;
        case 1:
        	SearchLoc(ep_->kod_ser, ep_->nom_loc);
        	break;
    }
    vgCommon->NextVisibleRow(rwLocName)->Focused = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::rwFailPlaceEditPropertiesButtonClick(TObject *Sender,
          int AButtonIndex)
{
    /* Выбрать место возникновения инцидента */

    StrctFirmTree_ sf;
    std::auto_ptr<TfrmFirmSelect> dlg (new TfrmFirmSelect(this));

    sf.PredID = DMMain->cdsRSh->FieldByName("fail_place_id")->AsInteger;
    sf.only_depot = false;

	if (mrOk == dlg->Show(&sf))
    {
       rwFailPlace->Properties->Value = sf.PredName;
       ep_->FailPlaceId = sf.PredID;
       ep_->fail_type_place = sf.fail_type_place;
       //rwTrainInfoBtn->Focused = true;
       vgCommon->NextVisibleRow(rwFailPlace)->Focused = true;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::rwSourcePredIDEditPropertiesButtonClick(TObject *Sender,
          int AButtonIndex)
{
    /* Выбрать предприятие - источник информации */

    StrctFirmTree_ sf;
    std::auto_ptr<TfrmFirmSelect> dlg (new TfrmFirmSelect(this));

    sf.PredID = DMMain->cdsRSh->FieldByName("fail_place_id")->AsInteger;
    sf.only_depot = true;

	if (mrOk == dlg->Show(&sf))
    {
       rwSourcePred->Properties->Value = sf.PredName;
	   ep_->source_info_id 			   = sf.PredID;
       ctgrwKasant->Focused 		   = true;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::rwKasantResponseEditPropertiesButtonClick(TObject *Sender,
          int AButtonIndex)
{
	TModalResult vResult = mrCancel;
    StrctSelectFirm	sf;
    std::auto_ptr<TfrmResponsTree> dlg (new TfrmResponsTree(this));
    StrctResponsTree ep;

	switch (AButtonIndex)
    {
        case 0:
            // Выбрать предприятие - виновную службу
            ep.CommandText = "SMT.nsi_pkg.kasant_respons_cur";
            ep.AccLevel = 0;

            vResult =  dlg->Show(&ep);

            if (vResult == mrOk)
            {
                ep_->responsible_parent_id = ep.ParentPredID;
                ep_->kasant_responsible_id = ep.PredID;
                ep_->responsible_road_id   = ep.RoadKod;

                //btneResponsibleParent->Text = ep.ParentPredName;
                //eResponsibleChild->Text = ep.PredName;
                rwKasantResponse->Properties->Value = ep.ParentPredName + " : " + ep.PredName;
            }
            break;
        case 1:
            // Очистить значения виновной службы КАСАНТ
        	rwKasantResponse->Properties->Value = "";
			ep_->responsible_parent_id 			= 0;
			ep_->kasant_responsible_id 			= 0;
			ep_->responsible_road_id 			= 0;
            rwKasantSafety->Focused 			= true;
        	break;
    }
}
//---------------------------------------------------------------------------


void __fastcall TfrmRecordSheet::vgCommonEditValueChanged(TObject *Sender, TcxCustomEditorRowProperties *ARowProperties)
{
	tsRSh_Common_New->ImageIndex = 47;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::rwTrainInfoBtnEditPropertiesButtonClick(TObject *Sender,
          int AButtonIndex)
{
    if (ep_->kod_ser == 0)
		TDMMain::ShowAppException(AET_RESTRICTION, "< URS-57 > : Не выбрана секция локомотива", " Получение сведений о поезде недоступно.\n");
    else
		aGetTrainInfo->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::rwFailDateEditPropertiesEditValueChanged(TObject *Sender)
{
	int qr = IDCANCEL;
    if (ep_->kod_ser != 0 && VarToStr(rwNomTPE->Properties->Value) != "")
    {
        qr = MessageBox(NULL, "Дата/время инцидента были изменены. Заполнить сведения о поезде/составности и пробегах?", "Подтверждение", MB_YESNO);
        if ( IDYES == qr )
        {
            vgCommon->InplaceEditor->PostEditValue();
            aGetRunningASOUP->Execute();
            aGetTrainInfo->Execute();
        }
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::vgRunningElderEditValueChanged(TObject *Sender,
          TcxCustomEditorRowProperties *ARowProperties)
{
	tsRSh_Running->ImageIndex = 47;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::vgRunningJuniorEditValueChanged(TObject *Sender,
          TcxCustomEditorRowProperties *ARowProperties)
{
	tsRSh_Running->ImageIndex = 47;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::rwInfoSourceTypeEditPropertiesEditValueChanged(TObject *Sender)
{
	if ((int)rwInfoSourceType->Properties->Value == vSourceType_KASANT)
    	rwKasantState->Properties->ImageIndex = iiObligatoryField;
    else
    	rwKasantState->Properties->ImageIndex = -1;

    rwKasantSafety->Properties->ImageIndex = rwKasantSafety->Properties->ImageIndex;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::mmDescrTeamEditing(TObject *Sender, bool &CanEdit)
{
	tsRSh_Team->ImageIndex = 47;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::rwRSh_ResponsibleEditPropertiesEditValueChanged(TObject *Sender)
{
	ep_->owner_kod_filial     = DMMain->cdsOwnerFirmRepair->FieldByName("kod_firm_filial")->AsInteger;
    ep_->owner_kod_department = DMMain->cdsOwnerFirmRepair->FieldByName("kod_firm_podr")->AsInteger;
    ep_->owner_tchr_id        = DMMain->cdsOwnerFirmRepair->FieldByName("tchr_pred_id")->AsInteger;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aFill_NSI_OwnerExecute(TObject *Sender)
{
    /* Заполнить список для владельцев ЛРИ */

	TClientDataSet *cds	= DMMain->cdsFirmTree;
	TcxEditorRow *rw	= rwRSh_Responsible;
	TcxImageComboBoxItem 	   *itm		= NULL;
	TcxImageComboBoxProperties *cbep	= (TcxImageComboBoxProperties*)rw->Properties->EditProperties;

	try
	{
		cbep->Items->Clear();

		for (int i = 0; i < cds->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if (itm)
			{
				itm->Description	= cds->FieldByName("firm_name")->AsString;
				itm->Value			= cds->FieldByName("kod_firm")->AsInteger;
			}
			cds->Next();
		}

		if (cds->RecordCount > 0)
		{
      		cds->First();
			rw->Properties->Value = cds->FieldByName("kod_firm")->AsInteger;
		}
        else
        	rw->Properties->Value = 0;
	}
	catch (Exception &e)
	{
		throw Exception ("< URS-58 > : Ошибка заполнения списка подразделений - владельцев ЛРИ." + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::tlWorkaroundFocusedNodeChanged(TcxCustomTreeList *Sender,
          TcxTreeListNode *APrevFocusedNode, TcxTreeListNode *AFocusedNode)

{
	aWorkaround_SetAction->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::tlReasonTreeGetNodeImageIndex(TcxCustomTreeList *Sender,
          TcxTreeListNode *ANode, TcxTreeListImageIndexType AIndexType,
          TImageIndex &AIndex)
{
	if (ANode->HasChildren == false)
    	AIndex = 49;
    else
    	AIndex = 52;
}
//---------------------------------------------------------------------------
void __fastcall TfrmRecordSheet::rwResponsibleEditPropertiesChange(TObject *Sender)

{
	/* Загрузка НСИ виновных служб для Анализа "детализация" */

	/*try
	{
		TClientDataSet *cds	= DMMain->cdsRSh_NSI_ResponsibleChilds;
		TDataSource *ds		= DMMain->dsRSh_NSI_ResponsibleChilds;
		TDMMain::ClearDataSet(cds);
		rwResponsibleChild->Visible = false;


		switch	((int)rwResponsible->Properties->Value)
		{
			case 217:
			{
				cds->CommandText = "SMT.NSI_PKG.zdrm_factory_cur";
				cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
				TDMMain::OpenDS(cds, "OPEN", "CT", 1);
				rwResponsibleChild->Visible = true;
				break;
			}
			case 218:
			{
				cds->CommandText = "SMT.NSI_PKG.tmh_factory_cur";
				cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
				TDMMain::OpenDS(cds, "OPEN", "CT", 1);
				rwResponsibleChild->Visible = true;
				break;
			}
		}
	}
	catch (Exception &e)
	{
		throw Exception ("<М-302>: Ошибка загрузки НСИ заводов изготовителей (Анализ).\n" + e.Message);
	}*/
}
//---------------------------------------------------------------------------


void __fastcall TfrmRecordSheet::aEscalationAction_AddExecute(TObject *Sender)
{
	if (tlEscalationNew->DataController->DataSet->RecordCount > 0)
	{
		std::auto_ptr<TfrmEdit_EscalationAction> dlg (new TfrmEdit_EscalationAction(this));

		Strct_EscalationAction te;

		te.escal_id	  = tlEscalationNew->DataController->DataSet->FieldByName("escal_id")->AsInteger;
		te.action_id  = 0;
		te.user_id	  = UserID;
		te.file_descr = "";
		te.file_name  = "";

		if (mrOk == dlg->Show(&te))
		{
			aLoad_EscalationAction->Execute();
		}
	}
}
//---------------------------------------------------------------------------


void __fastcall TfrmRecordSheet::aPause_EditNewExecute(TObject *Sender)
{
	/* Редактировать паузу */

	if (tlPauseNew->DataController->DataSet->RecordCount > 0) {
		std::auto_ptr<TfrmEdit_Pause> dlg (new TfrmEdit_Pause(this));
		TClientDataSet *cds = cdsPause;
		Strct_Pause te;

		te.sheet_id    = ep_->sheet_id;
		te.pause_id    = cds->FieldByName("pause_id")->AsInteger;
		te.reason_id   = cds->FieldByName("pause_reason_id")->AsInteger;
		te.date_begin  = cds->FieldByName("date_begin")->AsDateTime;
		te.date_finish = cds->FieldByName("date_finish")->AsDateTime;

		if (mrOk == dlg->Show(&te))
		{
			aLoad_Pause->Execute();
			tlPauseNew->FindNodeByKeyValue(te.pause_id, tlPauseNew->TopNode, false, true);
		}
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_EscalationActionExecute(TObject *Sender)
{
	/* Эскалация - действия по решению */

	TcxGridDBBandedTableView  *btv = btvEscalationAction;
	TClientDataSet *cds            = cdsEscalationAction;
	TDataSource *ds                = dsEscalationAction;
	int escal_id = 0;

	try
	{
		if (tlEscalationNew->DataController->DataSet->RecordCount > 0)
		{
			escal_id = tlEscalationNew->DataController->DataSet->FieldByName("escal_id")->AsInteger;

			btv->OptionsView->NoDataToDisplayInfoText = RefreshText;
			btv->DataController->DataSource = 0;
			Update();

			TDMMain::ClearDataSet(cds);
			cds->CommandText = "SMT.INCIDENT_PKG.escalation_action_cur";
			cds->Params->CreateParam(ftInteger, "p_escal_id", ptInput)->AsInteger = escal_id;
			cds->Params->CreateParam(ftCursor,  "o_cur", ptInputOutput);
			TDMMain::OpenDS(cds, "OPEN", "CT", 1);

			btv->OptionsView->NoDataToDisplayInfoText = NoDataTextDefault;
			btv->DataController->DataSource 		  = ds;
		}

	}
	catch (Exception &e)
	{
		throw Exception ("< URS-59 > : Ошибка загрузки Эскалация - Действия по решению.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::DMMainclmnFilesDownloadPropertiesButtonClick(TObject *Sender, int AButtonIndex)
{
	if (AButtonIndex == 0)
		aEscalationAction_Show->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aEscalationAction_ShowExecute(TObject *Sender)
{
	/* Просмотр вложения */

	if (cdsEscalationAction->Active == false
		|| cdsEscalationAction->RecordCount == 0
		|| cdsEscalationAction->FieldByName("file_name")->AsString.IsEmpty())
		return;

    StructFTP st;
    std::auto_ptr<TfrmFTPTransfer> dlg (new TfrmFTPTransfer(this));
	st.FTPFileName   = cdsEscalationAction->FieldByName("file_name")->AsString;
	st.FileName      = "";
	st.FileNameShort = cdsEscalationAction->FieldByName("file_name_short")->AsString;
	st.AutoRun 		 = true;
	st.DirNameYear 	 = cdsEscalationAction->FieldByName("dir_name_year")->AsString;
	st.DirNameMonth	 = cdsEscalationAction->FieldByName("dir_name_month")->AsString;

    if ((st.FTPFileName).IsEmpty() == false)  // Выполняем только если сначала файл не был приложен
    	dlg->DownLoad(&st);
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::tlEscalationNewFocusedNodeChanged(TcxCustomTreeList *Sender,
		  TcxTreeListNode *APrevFocusedNode, TcxTreeListNode *AFocusedNode)

{
	aLoad_EscalationAction->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aFill_Class_System_TypeExecute(TObject *Sender)
{
	/* Анализ: заполнить список - тип оборудования - 1 уровень (новый классификатор) */

	TClientDataSet *cds	= cds_NSI_SystemTree;
	TDataSource *ds		= ds_NSI_SystemTree;
	TcxEditorRow *rw	= rwSystemType;
	TcxImageComboBoxItem 	   *itm		= NULL;
	TcxImageComboBoxProperties *cbep	= (TcxImageComboBoxProperties*)rw->Properties->EditProperties;

	try
	{
		cds->Filter = "lvl = 1";
		cds->Filtered = true;
		LogEvent("SystemType: " + cds->Filter + " : " + IntToStr(cds->RecordCount));

		cbep->Items->Clear();

		for (int i = 0; i < cds->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if (itm)
			{
				itm->Description	= cds->FieldByName("class_name")->AsString;
				itm->Value			= cds->FieldByName("class_id")->AsInteger;
			}
			cds->Next();
		}
	}
	catch (Exception &e)
	{
		throw Exception ("< URS-60 > : Ошибка заполнения списка - Тип оборудования.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aFill_Class_SystemExecute(TObject *Sender)
{
	/* Анализ: заполнить список - оборудование - 2 уровень (новый классификатор)*/

	TClientDataSet *cds	= cds_NSI_SystemTree;
	TDataSource *ds		= ds_NSI_SystemTree;
	TcxEditorRow *rw	= rwSystem;
	TcxImageComboBoxItem 	   *itm	 = NULL;
	TcxImageComboBoxProperties *cbep = (TcxImageComboBoxProperties*)rw->Properties->EditProperties;;

	try
	{
		cds->Filter = "parent_class_id = " + IntToStr((int)rwSystemType->Properties->Value) + " AND lvl = 2";
		cds->Filtered = true;
		LogEvent("System: " + cds->Filter + " : " + IntToStr(cds->RecordCount));

		cbep->Items->Clear();

		for (int i = 0; i < cds->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if (itm)
			{
				itm->Description = cds->FieldByName("class_name")->AsString;
				itm->Value		 = cds->FieldByName("class_id")->AsInteger;
			}
			cds->Next();
		}

		if (DMMain->cdsAnalyses->Active && DMMain->cdsAnalyses->RecordCount > 0)
		{
			rw->Properties->Value = DMMain->cdsAnalyses->FieldByName("system_id")->AsInteger;
		}
		else
			rw->Properties->Value = (cbep->Items->Count == 0 ? 0 : cbep->Items->Items[0]->Value);
	}
	catch (Exception &e)
	{
		throw Exception ("< URS-61 > : Ошибка заполнения списка - Оборудование.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aFill_Class_UnitExecute(TObject *Sender)
{
	/* Анализ: заполнить список - узлы - 3 уровень (новый классификатор)*/

	TClientDataSet *cds	= cds_NSI_SystemTree;
	TDataSource *ds		= ds_NSI_SystemTree;
	TcxEditorRow *rw	= rwUnit;
	TcxImageComboBoxItem 	   *itm	 = NULL;
	TcxImageComboBoxProperties *cbep = (TcxImageComboBoxProperties*)rw->Properties->EditProperties;

	try
	{
		cds->Filter = "parent_class_id = " + IntToStr((int)rwSystem->Properties->Value) + " AND lvl = 3";
		cds->Filtered = true;
		LogEvent("Unit: " + cds->Filter + " : " + IntToStr(cds->RecordCount));

		cbep->Items->Clear();

		for (int i = 0; i < cds->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if (itm)
			{
				itm->Description = cds->FieldByName("class_name")->AsString;
				itm->Value		 = cds->FieldByName("class_id")->AsInteger;
			}
			cds->Next();
		}

		if (DMMain->cdsAnalyses->Active && DMMain->cdsAnalyses->RecordCount > 0)
		{
			rw->Properties->Value = DMMain->cdsAnalyses->FieldByName("unit_id")->AsInteger;
		}
		else
			rw->Properties->Value = (cbep->Items->Count == 0 ? 0 : cbep->Items->Items[0]->Value);
	}
	catch (Exception &e)
	{
		throw Exception ("< URS-62 > : Ошибка заполнения списка - Узлы.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aFill_Class_DetailExecute(TObject *Sender)
{
	/* Анализ: заполнить список - детали - 4 уровень (новый классификатор) */

	TClientDataSet *cds	= cds_NSI_SystemTree;
	TDataSource *ds		= ds_NSI_SystemTree;
	TcxEditorRow *rw	= rwDetail;
	TcxImageComboBoxItem 	   *itm	 = NULL;
	TcxImageComboBoxProperties *cbep = (TcxImageComboBoxProperties*)rw->Properties->EditProperties;

	try
	{
		cds->Filter = "parent_class_id = " + IntToStr((int)rwUnit->Properties->Value) + " AND lvl = 4";
		cds->Filtered = true;
		LogEvent("Detail: " + cds->Filter + " : " + IntToStr(cds->RecordCount));

		cbep->Items->Clear();

		for (int i = 0; i < cds->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if (itm)
			{
				itm->Description = cds->FieldByName("class_name")->AsString;
				itm->Value		 = cds->FieldByName("class_id")->AsInteger;
			}
			cds->Next();
		}

		if (DMMain->cdsAnalyses->Active && DMMain->cdsAnalyses->RecordCount > 0)
		{
			rw->Properties->Value = DMMain->cdsAnalyses->FieldByName("detail_id")->AsInteger;
		}
		else
			rw->Properties->Value = (cbep->Items->Count == 0 ? 0 : cbep->Items->Items[0]->Value);

		// todo: вернуть на усмотрение заказчика
		/*
		if (cbep->Items->Count == 0)
		{
			rwDetail->Properties->Value = 0
			rwDetail->Visible	   		= false;
			rwDetailText->Visible		= true;
		}
		else
		{
			rwDetail->Visible				= true;
			rwDetailText->Properties->Value	= "";
			rwDetailText->Visible			= false;
		}
		*/

    }
	catch (Exception &e)
	{
		throw Exception ("< URS-63 > : Ошибка заполнения списка - Деталь.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::rwSystemTypeEditPropertiesChange(TObject *Sender)

{
	/* Анализ: Фильтрация 2 уровня */

	aFill_Class_System->Execute();
	aFill_Class_Unit->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::rwSystemEditPropertiesChange(TObject *Sender)
{
	/* Анализ: Фильтрация 3 уровня */

	aFill_Class_Unit->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::rwUnitEditPropertiesChange(TObject *Sender)

{
	/* Анализ: Фильтрация 4 уровня */

	aFill_Class_Detail->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::rwSolutionTypeEditPropertiesChange(TObject *Sender)

{
	/* При выборе "С обходным решением" */

	if ( rwSolutionType->Properties->Value 	 == 250
		|| rwSolutionType->Properties->Value == 251
		|| rwSolutionType->Properties->Value == 252)
	{
		rwSolutionDescr->Visible 				= true;
		rwSolutionDescr->Properties->ImageIndex = 12;


	}
	else
	{
		rwSolutionDescr->Visible 				= false;
		rwSolutionDescr->Properties->ImageIndex = -1;
		rwSolutionDescr->Properties->Value		= "";
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::rwEnterDepotReasonEditPropertiesEditValueChanged(TObject *Sender)

{
	/* Причина захода в депо - Неплановый ремонт */
	//tsWt_CalcUnshedRepair->Enabled = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aSetKassantExecute(TObject *Sender)
{
	/* При выборе "Отметка" - "Да" */

	if(rwKasantMark->Properties->Value == 257){
		rwKassantFailCategory->Properties->ImageIndex	= 12;
		rwKasantState->Properties->ImageIndex           = 12;
		rwKasantSafety->Properties->ImageIndex			= 12;
		rwKasantTrainDelayTime->Properties->ImageIndex	= 12;
		rwKasantCntPassenger->Properties->ImageIndex	= 12;
		rwKasantCntCargo->Properties->ImageIndex		= 12;
	}
	else {
		rwKassantFailCategory->Properties->ImageIndex	= -1;
		rwKasantState->Properties->ImageIndex           = -1;
		rwKasantSafety->Properties->ImageIndex			= -1;
		rwKasantTrainDelayTime->Properties->ImageIndex	= -1;
		rwKasantCntPassenger->Properties->ImageIndex	= -1;
		rwKasantCntCargo->Properties->ImageIndex		= -1;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::rwKasantMarkEditPropertiesEditValueChanged(TObject *Sender)

{
	aSetKassant->Execute();
}
//---------------------------------------------------------------------------
void __fastcall TfrmRecordSheet::aSetKnowMistakeExecute(TObject *Sender)
{
	/* Известная ошибка */
	int IDcnsl;
	IDcnsl = MessageBox(NULL, "Вы действительно хотите закрыть ЛРИ, без разработки мероприятий?", "Подтверждение", MB_YESNO);
	if (IDcnsl == IDYES)
	{

		std::auto_ptr<TfrmIncidentClosing> dlg (new TfrmIncidentClosing(this));
		Strct_IncidentClosing te;

		te.sheet_id = ep_->sheet_id;

		te.close_reason_id	= DMMain->cdsRSh->FieldByName("close_reason_id")->AsInteger;
		te.descr			= DMMain->cdsRSh->FieldByName("descr8")->AsString;

		// Перепростой на канаве или Неверный ввод ТЧЭ
		if (ep_->reason_id == 155 || ep_->reason_id == 156) {
		// Код закрытия - "Не подтвердился"
		te.close_reason_new = closersnWasNotConfirmed;
		}
		else
		te.close_reason_new = (int)rwSolutionType->Properties->Value;
		te.close_reason_new = closersnDecide;
		te.Flag = 0;
		if (mrOk == dlg->Show(&te))
		{
			ep_->bWasChange = true;
			aLoad_Incident_RSh->Execute();
			cbState->EditValue = ep_->state_id;
			aLoad_TabSheet->Execute();
			pcCommon->ActivePage = pcCommon->Pages[tsRSh_Closing->PageIndex];
		}
		//aSetState_Close->Execute();
	}

}
//---------------------------------------------------------------------------
void __fastcall TfrmRecordSheet::aSaveUnplannedRepairExecute(TObject *Sender)
{
	/* Сохранение вкладки Расчет НР */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "SMT.INCIDENT2_PKG.unplanned_repair_iu";

		dsa->Params->CreateParam(ftInteger, "o_repair_id", ptInputOutput)->AsInteger = ep_->repair_id;
		dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger		 = ep_->sheet_id;
		dsa->Params->CreateParam(ftString, "p_repair_num", ptInput)->AsString		 = rwRepairNum->Properties->Value;
		dsa->Params->CreateParam(ftDateTime, "p_repair_date", ptInput)->AsDateTime   = GetDateTimeFromValue(rwRepairDate->Properties->Value);
		dsa->Params->CreateParam(ftString, "p_repair_total_nds", ptInput)->AsFloat	 = rwRepairTotalNDS->Properties->Value;
		dsa->Params->CreateParam(ftString, "p_repair_descr", ptInput)->AsString      = mmDescrNR->Text;
		dsa->Params->CreateParam(ftInteger, "p_user_id", ptInput)->AsInteger   	     = UserID;

		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString,  "o_Err_Msg", ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
	}
	catch (Exception &e)
	{
		throw Exception ("< URS-64 > : Ошибка сохранения вкладки Расчет НР.\n" + e.Message);
	}
        aLoadUnplannedRepair->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoadUnplannedRepairExecute(TObject *Sender)
{
	/* Загрузка вкладки Расчет НР */

	TClientDataSet *cds		= DMMain->cdsUnplanned;

	TClientDataSet *cdsCr	= cdsRepairChrono;
	TDataSource *dsCr		= dsRepairChrono;

	TClientDataSet *cdsCo	= cdsRepairCompens;
	TDataSource *dsCo		= dsRepairCompens;

    try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.INCIDENT2_PKG.unplanned_repair_cur";
		cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = ep_->sheet_id;
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< URS-65 > : Ошибка загрузки данных раздела Расчет НР.\n" + e.Message);
	}

	if (DMMain->cdsUnplanned->RecordCount > 0)
	{
        // Поля главного раздела
		try
		{
			ep_->repair_id 						= cds->FieldByName("repair_id")->AsInteger;
			rwRepairNum->Properties->Value 		= cds->FieldByName("repair_num")->AsString;
			rwRepairDate->Properties->Value		= cds->FieldByName("repair_date")->AsString;
			rwRepairTotalNDS->Properties->Value	= cds->FieldByName("repair_total_nds")->AsString;
			mmDescrNR->Text						= cds->FieldByName("descr")->AsString;
		}
		catch (Exception &e)
		{
			throw Exception ("< URS-66 > : Ошибка заполнения данных раздела Расчет НР.\n" + e.Message);
		}

		// Хронология
		try
		{
			TDMMain::ClearDataSet(cdsCr);
			cdsCr->CommandText = "SMT.INCIDENT2_PKG.unplanned_repair_chrono_cur";
			cdsCr->Params->CreateParam(ftInteger, "o_repair_id", ptInput)->AsInteger = ep_->repair_id;
			cdsCr->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

			TDMMain::OpenDS(cdsCr, "OPEN", "CT", 1);

			tlRepairChrono->DataController->DataSource = dsCr;
		}
		catch (Exception &e)
		{
			throw Exception ("< URS-67 > : Ошибка заполнения данных раздела Расчет НР - Хронология.\n" + e.Message);
		}

		// Возмещение ущерба
		try
		{
			TDMMain::ClearDataSet(cdsCo);
			cdsCo->CommandText = "SMT.INCIDENT2_PKG.unplanned_repair_compens_cur_2";
			cdsCo->Params->CreateParam(ftInteger, "o_repair_id", ptInput)->AsInteger = ep_->repair_id;
			cdsCo->Params->CreateParam(ftCursor,  "o_cur", ptInputOutput);

			TDMMain::OpenDS(cdsCo, "OPEN", "CT", 1);
			tlRepairCompens->DataController->DataSource = dsCo;
		}
		catch (Exception &e)
		{
			throw Exception ("< URS-68 > : Ошибка заполнения данных раздела Расчет НР - Возмещение ущерба.\n" + e.Message);
		}
	}
	else
	{
		ep_->repair_id = 0;
	}

	//pcWeight->ActivePage = tsWt_CalcWeight;
}
//---------------------------------------------------------------------------


void __fastcall TfrmRecordSheet::aURepairChrono_AddExecute(TObject *Sender)
{
	/* Добавление записи - Расчет НР - Хронология */

	std::auto_ptr<TfrmEdit_WeightChrono> dlg (new TfrmEdit_WeightChrono(this));
	Strct_WeightChrono te;

	te.sheet_id		= ep_->sheet_id;
	te.repair_id	= ep_->repair_id;
	te.chrono_id	= 0;

	if (mrOk == dlg->Show(&te))
		aLoadUnplannedRepair->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aURepairComp_AddExecute(TObject *Sender)
{
	/* Добавление записи - Расчет НР - Возмещение ущерба */

	std::auto_ptr<TfrmEdit_WeightCompensation> dlg (new TfrmEdit_WeightCompensation(this));
	Strct_WeightCompens te;

	te.sheet_id		= ep_->sheet_id;
	te.repair_id	= ep_->repair_id;
	te.compen_id	= 0;

    dlg->Caption = "Расчет НР - Возмещение ущерба - Добавить запись";

	if (mrOk == dlg->Show(&te))
		aLoadUnplannedRepair->Execute();
}
//---------------------------------------------------------------------------
void __fastcall TfrmRecordSheet::pcCommonDrawTabEx(TcxCustomTabControl *AControl,
		  TcxTab *ATab, TFont *Font)
{
	if (ATab->Index == tbIndex && isRed)
	{
		Font->Color 	  = clRed;
		ATab->Highlighted = false;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::SafeSetFocus(TWinControl *Control)
{
	bool parentIsVisible = IsWindowVisible(Control->ParentWindow);

	if(Control->Enabled && Control->Visible && parentIsVisible)
		Control->SetFocus();
}
//---------------------------------------------------------------------------

int __fastcall TfrmRecordSheet::GetPage(TWinControl *Control)
{
	TComponent *comp;
	TComponent *compParent;
	TcxTabSheet *ts;
	int i;

	comp = Control->GetParentComponent();

	if (comp->ClassName() == "TcxTabSheet")
	{
	   compParent = comp->GetParentComponent();

	   if (compParent->Name == "pcCommon")
	   {
		   ts = (TcxTabSheet*)comp;
		   i = ts->PageIndex;
	   }
	   else
		   i = GetPage((TWinControl*)comp);
	}
	else
	   i = GetPage((TWinControl*)comp);

	return i;
}

void __fastcall TfrmRecordSheet::pcCommonPageChanging(TObject *Sender, TcxTabSheet *NewPage,
		  bool &AllowChange)
{
	NewPage->Highlighted = false;
    pcCommon->ActivePage->Highlighted = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoad_NSI_ResponsibleExecute(TObject *Sender)
{
	/* Виновная сторона */

	TClientDataSet *cds	= DMMain->cdsRSh_NSI_Responsible;
    TDataSource *ds		= DMMain->dsRSh_NSI_Responsible;

	try
    {
		tlResponsibleTree->DataController->DataSource = 0;

    	TDMMain::ClearDataSet(cds);
    	cds->CommandText = "SMT.SMT_NSI_PKG.smt_nsi_responsible_dpt_cur";
        cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
        cds->Params->CreateParam(ftInteger, "o_default", ptInputOutput)->AsInteger = 0;

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

    	tlResponsibleTree->DataController->DataSource = ds;
    }
	catch (Exception &e)
    {
		TDMMain::ShowAppException(AET_EXCEPTION, "< URS-69 > : Ошибка загрузки дерева виновных сторон. ", e.Message);
		ModalResult = mrAbort;
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::rwResponsibleEditPropertiesInitPopup(TObject *Sender)

{
	pnlResponsibleTree->Width = vgAnalyses->Width - vgAnalyses->OptionsView->RowHeaderWidth;
	DMMain->cdsRSh_NSI_Responsible->Locate("kod_firm_child", ep_->responsible_id, TLocateOptions());
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::tlResponsibleTreeGetNodeImageIndex(TcxCustomTreeList *Sender,
          TcxTreeListNode *ANode, TcxTreeListImageIndexType AIndexType,
          TImageIndex &AIndex)
{
	if (ANode->HasChildren == false)
    	AIndex = 49;
    else
    	AIndex = 52;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aSelect_NSI_ResponsibleExecute(TObject *Sender)
{
	/* Выбор виновной стороны */

	TcxTreeListNode *ln = NULL;
	ln = tlResponsibleTree->FocusedNode;

	// выбор только нижнего уровня
	//if (ln != NULL && !ln->HasChildren)
	//{
		ep_->responsible_id				 = DMMain->cdsRSh_NSI_Responsible->FieldByName("kod_firm_child")->AsInteger;
		rwResponsible->Properties->Value = DMMain->cdsRSh_NSI_Responsible->FieldByName("resp_name_full")->AsString;

		vgAnalyses->SetFocus();
	//}
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::tlResponsibleTreeKeyPress(TObject *Sender, System::WideChar &Key)

{
	if (Key == VK_RETURN) aSelect_NSI_Responsible->Execute();
}
//---------------------------------------------------------------------------


void __fastcall TfrmRecordSheet::aHistoryNREAddExecute(TObject *Sender)
{
	/* История НРЭ */

	std::auto_ptr<TfrmHistoryNRE> dlg (new TfrmHistoryNRE(this));
	RecordHistoryNRE te;

	te.hist_id	= 0;
	te.sheet_id	= ep_->sheet_id;
	te.user_id	= UserID;

	if (mrOk == dlg->Show(&te))
		aLoad_NRE->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aChronologyAddExecute(TObject *Sender)
{
	/* Хронология */

	std::auto_ptr<TfrmChronology> dlg (new TfrmChronology(this));
	RecordChronoNRE te;

	te.chrono_id	= 0;
	te.sheet_id		= ep_->sheet_id;
	te.user_id		= UserID;

	if (mrOk == dlg->Show(&te))
		aLoad_NRE->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aExpectRefusalAddExecute(TObject *Sender)
{
	/* Ожидаемый отказ - Добавить */

	std::auto_ptr<TfrmExpectRefusal> dlg (new TfrmExpectRefusal(this));
	RecordExrefNRE te;

	te.exref_id	= 0;
	te.sheet_id	= ep_->sheet_id;
	te.user_id	= UserID;

	if (mrOk == dlg->Show(&te))
		aLoad_NRE->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aExpectRefusalEditExecute(TObject *Sender)
{
	/* Ожидаемый отказ - Редактировать */

	std::auto_ptr<TfrmExpectRefusal> dlg (new TfrmExpectRefusal(this));
	TClientDataSet *cds = DMMain->cdsExceptRefusalNRE;

	if (cds->RecordCount == 0)
		return;

	RecordExrefNRE te;

	te.exref_id			= cds->FieldByName("exref_id")->AsInteger;
	te.sheet_id			= ep_->sheet_id;
	te.user_id			= UserID;
	te.system_type_id	= cds->FieldByName("system_type_id")->AsInteger;
	te.system_id		= cds->FieldByName("system_id")->AsInteger;

	if (mrOk == dlg->Show(&te))
		aLoad_NRE->Execute();
}
//---------------------------------------------------------------------------
void __fastcall TfrmRecordSheet::aLoad_NREExecute(TObject *Sender)
{
	/* Загрузка вкладки "Анализ - Меры" - раздел "НРЭ" */

	TClientDataSet *cdsHi	= DMMain->cdsHistoryNRE;
	TDataSource *dsHi		= DMMain->dsHistoryNRE;

	TClientDataSet *cdsER	= DMMain->cdsExceptRefusalNRE;
	TDataSource *dsER		= DMMain->dsExceptRefusalNRE;

	TClientDataSet *cdsCh	= DMMain->cdsChronoNRE;
	TDataSource *dsCh		= DMMain->dsChronoNRE;

	try
	{
		tlHistoryNRE->DataController->DataSource = 0;

		TDMMain::ClearDataSet(cdsHi);
		cdsHi->CommandText = "SMT.INCIDENT2_PKG.nre_history_cur";
		cdsHi->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = ep_->sheet_id;
		cdsHi->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cdsHi, "OPEN", "CT", 1);

		tlHistoryNRE->DataController->DataSource = dsHi;
	}
	catch (Exception &e)
	{
		throw Exception ("< URS-70 > : Ошибка заполнения данных раздела НРЭ - История НРЭ.\n" + e.Message);
	}


	try
	{
		tlExpectRefusalNRE->DataController->DataSource = 0;

		TDMMain::ClearDataSet(cdsER);
		cdsER->CommandText = "SMT.INCIDENT2_PKG.nre_exrefusal_cur";
		cdsER->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = ep_->sheet_id;
		cdsER->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cdsER, "OPEN", "CT", 1);

		tlExpectRefusalNRE->DataController->DataSource = dsER;
	}
	catch (Exception &e)
	{
		throw Exception ("< URS-71 > : Ошибка заполнения данных раздела НРЭ - Ожидаемый отказ.\n" + e.Message);
	}


	try
	{
		tlChronoNRE->DataController->DataSource = 0;

		TDMMain::ClearDataSet(cdsCh);
		cdsCh->CommandText = "SMT.INCIDENT2_PKG.nre_chrono_cur";
		cdsCh->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = ep_->sheet_id;
		cdsCh->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cdsCh, "OPEN", "CT", 1);

		tlChronoNRE->DataController->DataSource = dsCh;
	}
	catch (Exception &e)
	{
		throw Exception ("< URS-72 > : Ошибка заполнения данных раздела НРЭ - Хронология.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------



void __fastcall TfrmRecordSheet::aExpectRefusalDeleteExecute(TObject *Sender)
{
   /* Ожидаемый отказ - Удалить */

	if 	(tlExpectRefusalNRE->FocusedNode == NULL)
    	return;

    std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	int qr = MessageBox(NULL, "Удалить ожидаемый отказ?", "Подтверждение", MB_YESNO);

    if (IDYES == qr)
    {
        try
        {
			dsa->CommandText = "SMT.INCIDENT2_PKG.nre_exrefusal_del";

			dsa->Params->CreateParam(ftInteger, "p_exref_id", ptInputOutput )->AsInteger = DMMain->cdsExceptRefusalNRE->FieldByName("exref_id")->AsInteger;
			dsa->Params->CreateParam(ftInteger, "p_user_id", ptInput )->AsInteger		 = UserID;
			dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput );
			dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput );

            TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

			if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
				throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
		}
        catch (Exception &e)
        {
			throw Exception ("< URS-73 > : Ошибка удаления отказа.\n" + e.Message);
		}

        aLoad_NRE->Execute();
		tlExpectRefusalNRE->SetFocus();
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aLoadDocExecute(TObject *Sender)
{
	/* загрузить список документов */
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
		throw Exception ("< URS-80 > : Ошибка загрузки документов, актов и писем.\n" + e.Message);
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
		throw Exception ("< URS-81 > : Ошибка заполнения списка документов, актов и писем.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------


void __fastcall TfrmRecordSheet::aFomingDocExecute(TObject *Sender)
{
	/* Сформировать документ */

	if ( ep_->sheet_id == 0 )
	{
		throw Exception ("< URS-74 > : Исходная информация по инциденту еще не сохранена. Формирование документа невозможно.\n");
		return;
	}

	if ( bListDoc->EditValue == Null() )
	{
		throw Exception ("< URS-75 > : Тип документа не выбран. Формирование документа невозможно.\n");
		return;
	}

	RecordParamDoc pDoc;

	TcxImageComboBoxItem 	   *itm	 = NULL;
	TcxImageComboBoxProperties *cbep = (TcxImageComboBoxProperties*)bListDoc->Properties;

	pDoc.Size = 1;
	int* arr = new int[pDoc.Size];
	arr[0] = vgControlDateDBEditorRow3->Properties->Value;
	pDoc.NumLR = arr;
	pDoc.NumDoc = int(bListDoc->EditValue);

	if (pDoc.NumDoc == 6 )
	{
		pDoc.List_Id_Sheet  = ep_->sheet_id;
	}
	pDoc.dStart  = ep_->dBegin;
	pDoc.dFinish = ep_->dEnd;

	std::auto_ptr<TfrmListReports> dlg (new TfrmListReports(this));
	if (mrOk == dlg->Show( &pDoc ))
	{

	}
	delete arr;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aURepairComEditExecute(TObject *Sender)
{
	/* Редактирование записи - Расчет НР - Возмещение ущерба */
	TClientDataSet *cdsCo	= cdsRepairCompens;
	std::auto_ptr<TfrmEdit_WeightCompensation> dlg (new TfrmEdit_WeightCompensation(this));
	Strct_WeightCompens te;

	te.sheet_id		= ep_->sheet_id;
	te.repair_id	= ep_->repair_id;
	te.compen_id	= cdsCo->FieldByName("compen_id")->AsInteger;

	dlg->Caption = "Расчет НР - Возмещение ущерба - Изменить запись";

	if (mrOk == dlg->Show(&te))
		aLoadUnplannedRepair->Execute();

}
//---------------------------------------------------------------------------

void __fastcall TfrmRecordSheet::aURepairComDelExecute(TObject *Sender)
{
	/* Удаление записи - Расчет НР - Возмещение ущерба */


	TcxTreeListNode *ln = NULL;
	ln = tlRepairCompens->FocusedNode;

	if (ln == NULL)
	{
		throw Exception ("< URS-76 > : Не выбрана запись Возмещения ущерба.\n");
		return;
	}

	TClientDataSet *cdsCo	= cdsRepairCompens;
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "SMT.INCIDENT2_PKG.unplanned_repair_compens_del_2";

		dsa->Params->CreateParam(ftInteger,	"p_com_id", ptInputOutput)->AsInteger = cdsCo->FieldByName("compen_id")->AsInteger;
		dsa->Params->CreateParam(ftInteger,	"p_id_user", ptInput)->AsInteger	  = UserID;
		//
		dsa->Params->CreateParam(ftInteger, "o_err_code", ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception ("< URS-77 > : Ошибка удаления записи.\n");
	}
	catch (Exception &e)
	{
		throw Exception ("< URS-77 > : Ошибка удаления записи.\n");
	}
	aLoadUnplannedRepair->Execute();
}
//---------------------------------------------------------------------------







