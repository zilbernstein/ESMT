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
#include "URecordSheet.h"
#include "UEdit_DepoEnterAttach.h"
#include "uEdit_DepoEnterMalfuncton.h"
#include "uDepoEnterIncidentAdd.h"
#include "USearchLoc.h"

#include "UEdit_DepoEnter.h"
#include "USearchLoc.h"
#include "UFTPTransfer.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtonEdit"
#pragma link "cxButtons"
#pragma link "cxCalendar"
#pragma link "cxClasses"
#pragma link "cxContainer"
#pragma link "cxControls"
#pragma link "cxCustomData"
#pragma link "cxData"
#pragma link "cxDataStorage"
#pragma link "cxDateUtils"
#pragma link "cxDBData"
#pragma link "cxDBEdit"
#pragma link "cxDBExtLookupComboBox"
#pragma link "cxDBLookupComboBox"
#pragma link "cxDBLookupEdit"
#pragma link "cxDBTL"
#pragma link "cxDBVGrid"
#pragma link "cxDropDownEdit"
#pragma link "cxEdit"
#pragma link "cxFilter"
#pragma link "cxGraphics"
#pragma link "cxGrid"
#pragma link "cxGridBandedTableView"
#pragma link "cxGridCustomTableView"
#pragma link "cxGridCustomView"
#pragma link "cxGridDBBandedTableView"
#pragma link "cxGridDBTableView"
#pragma link "cxGridLevel"
#pragma link "cxGridTableView"
#pragma link "cxGroupBox"
#pragma link "cxImageComboBox"
#pragma link "cxInplaceContainer"
#pragma link "cxLabel"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxLookupEdit"
#pragma link "cxMaskEdit"
#pragma link "cxMemo"
#pragma link "cxNavigator"
#pragma link "cxPC"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "cxSpinEdit"
#pragma link "cxStyles"
#pragma link "cxTextEdit"
#pragma link "cxTL"
#pragma link "cxTLData"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "cxVGrid"
#pragma link "dxCore"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "dxSkinscxPCPainter"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma link "dxStatusBar"
#pragma link "dxBar"
#pragma link "dxSkinsdxBarPainter"
#pragma link "cxHyperLinkEdit"
#pragma link "dxBarExtItems"
#pragma link "cxBarEditItem"
#pragma link "cxTrackBar"
#pragma resource "*.dfm"
TfrmEdit_DepoEnter *frmEdit_DepoEnter;
//---------------------------------------------------------------------------
const int stNew		= 0;
const int stExit	= 1;
const int stClose	= 2;
//---------------------------------------------------------------------------
__fastcall TfrmEdit_DepoEnter::TfrmEdit_DepoEnter(TComponent* Owner)
	: TForm(Owner)
{

}
//---------------------------------------------------------------------------
TModalResult __fastcall TfrmEdit_DepoEnter::Show(StrctDepoEnter* ep)
{
    aSetAction->Execute();

	ep_	= ep;

	pcCommon->ActivePage = pcCommon->Pages[0];

	// "Добавление/Редактирование" ЛРЗ
	if (ep_->edit)
	{
	   vgFrame->Visible			= false;

	   vgFrameEdit->Visible		= true;
	   btnSave->Visible			= true;
	   btnClose->Visible		= true;
	   pnlIncidentList->Visible	= true;
	   pnlMalfunction->Visible	= true;
	   pnlAttach->Visible		= true;

	   if (ep_->row_id > 0)
		((TcxButtonEditProperties*)rwLocName->Properties->EditProperties)->Buttons->Items[0]->Enabled = false;

	   rwLocName->Properties->Value		= ep_->loc_name;
	   rwDateOp->Properties->Value		= DateTimeToVariant(ep_->date_op);
	   rwDateNextOp->Properties->Value	= DateTimeToVariant(ep_->date_next_op);
	}
	else
	{
	   vgFrame->Visible			= true;

	   vgFrameEdit->Visible		= false;
	   btnSave->Visible			= false;
	   btnClose->Visible		= false;
	   pnlIncidentList->Visible	= false;
	   pnlMalfunction->Visible	= false;
	   pnlAttach->Visible		= false;
	}


	aLoadFrame->Execute();
	aLoadIncidentList->Execute();
	aLoadMalfunctList->Execute();
	aLoadAttach->Execute();
	aLoadRunning->Execute();

	return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::aLoadIncidentListExecute(TObject *Sender)
{
	/* Загрузка списка инцидентов */

	TcxGridDBBandedTableView *btv	= btvIncidentList;
	TClientDataSet *cds				= cdsIncidentList;
	TDataSource *ds					= dsIncidentList;

	try
	{
		btv->DataController->DataSource = 0;

		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.INCIDENT2_PKG.depo_enter_inc_list_cur";
		cds->Params->CreateParam(ftInteger, "p_row_id", ptInput)->AsInteger   = ep_->row_id;
		cds->Params->CreateParam(ftCursor,   "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btv->DataController->DataSource = ds;
    }
	catch (Exception &e)
	{
		btv->OptionsView->NoDataToDisplayInfoText = ErrorRefreshText;
		TDMMain::ShowAppException(AET_EXCEPTION, "< UEDE-1 > : Ошибка загрузки списка инцидентов.\n", e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::aLoadFrameExecute(TObject *Sender)
{
	/* Загрузка основнй информации */

	TClientDataSet *cds = cdsDepoEnterRecord;
    TDataSource *ds 	= dsDepoEnterRecord;

	try
    {
		vgFrame->DataController->DataSource = 0;

    	TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.INCIDENT2_PKG.depo_enter_record";
		cds->Params->CreateParam(ftInteger, "p_row_id", ptInput)->AsInteger = ep_->row_id;
    	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        vgFrame->DataController->DataSource = ds;
    }
	catch (Exception &e)
	{
		throw Exception ("< UEDE-2 > : Ошибка загрузки полной информации.\n" + e.Message);
	}

	// доступность кнопки закрыть в статусе "Выход без оформления" или "Новый"
	if ((cdsDepoEnterRecord->FieldByName("status")->AsInteger == stNew ||
		cdsDepoEnterRecord->FieldByName("status")->AsInteger == stExit) && ep_->edit)
		aCloseDepoEnter->Visible	= true;
	else
		aCloseDepoEnter->Visible	= false;
}
//---------------------------------------------------------------------------
void __fastcall TfrmEdit_DepoEnter::aDetailExecute(TObject *Sender)
{
	/* Детализация инцидента */

	if (((TcxGridDBBandedTableView*)grdIncidentList->ActiveView)->Controller->FocusedRow == NULL)
		return;

	std::auto_ptr<TfrmRecordSheet> dlg (new TfrmRecordSheet(this));
	TClientDataSet	*cds = (TClientDataSet*) ((TcxGridDBBandedTableView*)grdIncidentList->FocusedView)->DataController->DataSet; //   cdsIncidentList;
	StrctRecordSheet  ep;

	ep.bWasChange				= false;
	ep.sheet_id  				= cds->FieldByName("sheet_id")->AsInteger;
	ep.state_id  				= cds->FieldByName("state_id")->AsInteger;
	ep.sheet_no					= cds->FieldByName("sheet_no")->AsString;
	ep.create_mode				= cds->FieldByName("create_mode")->AsInteger;
	ep.criticality_id			= cds->FieldByName("criticality_id")->AsInteger;
	ep.date_fail				= cds->FieldByName("date_fail")->AsDateTime;
	ep.date_create				= cds->FieldByName("date_create")->AsDateTime;
	ep.date_diagnost_msg		= cds->FieldByName("date_diagnost_msg")->AsDateTime;
	ep.date_close				= cds->FieldByName("date_close")->AsDateTime;
	ep.incident_descr			= cds->FieldByName("incident_descr")->AsString;
	ep.incident_descr_e         = cds->FieldByName("incident_descr_e")->AsString;
	ep.row_id					= cds->FieldByName("row_id")->AsInteger;

	/*
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

	cfg.ini->WriteInteger("frmIncident", "Last_Sheet_ID", ep.sheet_id);
	*/
	if (mrOk == dlg->Show(&ep) || ep.bWasChange == true)
	{

	}

	aLoadIncidentList->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::aCancelExecute(TObject *Sender)
{
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::aCloseDepoEnterExecute(TObject *Sender)
{
	/* Перевести в статус закрыт */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	int qr = MessageBox(NULL, "Перевести лист регистрации захода в статус ""Закрыт""?", "Подтверждение", MB_YESNO);
	if (IDYES == qr)
	{
		try
		{
			TDMMain::ClearDataSet(dsa.get());
			dsa->CommandText = "SMT.INCIDENT2_PKG.depo_enter_close_rec";

			dsa->Params->CreateParam(ftInteger, "p_row_id", ptInput)->AsInteger		= cdsDepoEnterRecord->FieldByName("row_id")->AsInteger;
			dsa->Params->CreateParam(ftInteger, "p_user_id", ptInput)->AsInteger	= UserID;
			dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
			dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

			TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

			if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
				throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
		}
		catch (Exception &e)
		{
			throw Exception ("< UEDE-3 > : Ошибка смены статуса ЛРЗ.\n" + e.Message);
		}

		aLoadFrame->Execute();
		aLoadIncidentList->Execute();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::aAddWorkExecute(TObject *Sender)
{
	/* Раб.устр.неиспр. - Добавить  */

	if (ep_->row_id == 0)
		throw Exception ("Исходная информация по ЛРЗ еще не сохранена");

	std::auto_ptr<TfrmEdit_DepoEnterMalfuncton> dlg (new TfrmEdit_DepoEnterMalfuncton(this));

	Strct_DepoEnter_Malfunct strct;

	strct.row_id   = ep_->row_id;
	strct.user_id  = UserID;

	strct.malfunct_id = 0;
	strct.wokr        = "";
	strct.malfunction = "";
	strct.guild       = "";

	if (mrOk == dlg->Show(&strct))
	{

	}

	aLoadMalfunctList->Execute();

}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::aEditWorkExecute(TObject *Sender)
{
	/* Раб.устр.неиспр. - Изменить */

	if (cdsMalfunction->Active == false
		|| cdsMalfunction->RecordCount == 0)
		return;

	std::auto_ptr<TfrmEdit_DepoEnterMalfuncton> dlg (new TfrmEdit_DepoEnterMalfuncton(this));
	TClientDataSet *cds = cdsMalfunction;

	Strct_DepoEnter_Malfunct strct;

	strct.row_id   = cdsDepoEnterRecord->FieldByName("row_id")->AsInteger;
	strct.user_id  = UserID;

	strct.malfunct_id = cds->FieldByName("malfunct_id")->AsInteger;
	strct.wokr        = cds->FieldByName("mwork_id")->AsAnsiString;
	strct.malfunction = cds->FieldByName("mmalfunct_id")->AsAnsiString;
	strct.guild       = cds->FieldByName("mguild_id")->AsAnsiString;

	if (mrOk == dlg->Show(&strct))
	{

	}

	aLoadMalfunctList->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::aDeleteWorkExecute(TObject *Sender)
{
	/* Раб.устр.неиспр. - Удалить */

	if (cdsMalfunction->Active == false
		|| cdsMalfunction->RecordCount == 0)
		return;

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	int qr = MessageBox(NULL, "Удалить выделенную запись?", "Подтверждение", MB_YESNO);
	if (IDYES == qr)
	{
		try
		{
			TDMMain::ClearDataSet(dsa.get());
			dsa->CommandText = "SMT.INCIDENT2_PKG.depo_enter_malfunct_del";

			dsa->Params->CreateParam(ftInteger, "p_malfunct_id", ptInput)->AsInteger = cdsMalfunction->FieldByName("malfunct_id")->AsInteger;
			dsa->Params->CreateParam(ftInteger, "p_user_id", ptInput)->AsInteger	 = UserID;
			dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
			dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

			TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

			if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
				throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
		}
		catch (Exception &e)
		{
			throw Exception ("< UEDE-4 > : Ошибка удаления информации по работе устранению неисправностей.\n" + e.Message);
		}
	}
	aLoadMalfunctList->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::aAddAttachExecute(TObject *Sender)
{
	/* Документ - Добавить  */

	if (ep_->row_id == 0)
		throw Exception ("Исходная информация по ЛРЗ еще не сохранена");

	std::auto_ptr<TfrmEdit_DepoEnterAttach> dlg (new TfrmEdit_DepoEnterAttach(this));

	Strct_DepoEnter_Attach strct;
	strct.row_id   = ep_->row_id;
	strct.user_id  = UserID;

	strct.attach_id = 0;
	strct.file_name = "";
	strct.descr     = "";

	if (mrOk == dlg->Show(&strct))
	{

	}

	aLoadAttach->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::aEditAttachExecute(TObject *Sender)
{
	/* Документ - Изменить */

	std::auto_ptr<TfrmEdit_DepoEnterAttach> dlg (new TfrmEdit_DepoEnterAttach(this));

	TClientDataSet *cds = cdsAttachDoc;

	Strct_DepoEnter_Attach strct;

	strct.attach_id = cdsAttachDoc->FieldByName("attach_id")->AsInteger;
	strct.row_id    = cdsDepoEnterRecord->FieldByName("row_id")->AsInteger;
	strct.user_id   = UserID;
	strct.descr     = cds->FieldByName("descr")->AsString;
	strct.file_name = cds->FieldByName("file_name")->AsString;

	if (mrOk == dlg->Show(&strct))
	{
		aLoadAttach->Execute();
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::aDeleteAttachExecute(TObject *Sender)
{
	/* Документ - Удалить */

	if (cdsAttachDoc->Active == false
		|| cdsAttachDoc->RecordCount == 0)
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
			dsa->CommandText = "SMT.INCIDENT2_PKG.depo_enter_attach_del";

			dsa->Params->CreateParam(ftInteger, "p_attach_id", ptInput)->AsInteger	= cdsAttachDoc->FieldByName("attach_id")->AsInteger;
			dsa->Params->CreateParam(ftInteger, "p_user_id", ptInput)->AsInteger	= UserID;
			dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
			dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

			TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

			if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
				throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
		}
		catch (Exception &e)
		{
			throw Exception ("< UEDE-5 > : Ошибка удаления информации о файле." + e.Message);
		}

		// удалить с ftp
		st.FTPFileName		= cdsAttachDoc->FieldByName("file_name")->AsString;
		st.FileName			= "";
		st.AutoRun			= false;
		st.FileNameShort	= cdsAttachDoc->FieldByName("file_name_short")->AsString;
		st.DirNameYear		= cdsAttachDoc->FieldByName("dir_name_year")->AsString;
		st.DirNameMonth		= cdsAttachDoc->FieldByName("dir_name_month")->AsString;


		if ((st.FTPFileName).IsEmpty() == false)
			dlg->Delete(&st);
	}
	aLoadAttach->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::aLoadAttachExecute(TObject *Sender)
{
	/* Документ - Загрузка списка */

	TcxGridDBBandedTableView *btv	= btvDepoEnterAttach;
	TClientDataSet *cds				= cdsAttachDoc;
	TDataSource *ds					= dsAttachDoc;

	try
	{
		btv->DataController->DataSource = 0;

		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.INCIDENT2_PKG.depo_enter_attach_cur";
		cds->Params->CreateParam(ftInteger, "p_row_id", ptInput)->AsInteger = ep_->row_id;
		cds->Params->CreateParam(ftCursor,   "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btv->DataController->DataSource = ds;
	}
	catch (Exception &e)
	{
		btv->OptionsView->NoDataToDisplayInfoText = ErrorRefreshText;
		TDMMain::ShowAppException(AET_EXCEPTION, "< UEDE-6 > : Ошибка загрузки списка инцидентов.\n", e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::aLoadMalfunctListExecute(TObject *Sender)
{
	/* Раб.устр.неиспр. - Загрузка списка */

	TcxGridDBBandedTableView *btv	= btvMalfunction;
	TClientDataSet *cds				= cdsMalfunction;
	TDataSource *ds					= dsMalfunction;

	try
	{
		btv->DataController->DataSource = 0;

		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.INCIDENT2_PKG.depo_enter_malfunct_cur";
		cds->Params->CreateParam(ftInteger, "p_row_id", ptInput)->AsInteger   = ep_->row_id;
		cds->Params->CreateParam(ftCursor,   "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btv->DataController->DataSource = ds;
    }
	catch (Exception &e)
	{
		btv->OptionsView->NoDataToDisplayInfoText = ErrorRefreshText;
		TDMMain::ShowAppException(AET_EXCEPTION, "< UEDE-7 > : Ошибка загрузки списка работ.\n", e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::aIncidentListAddExecute(TObject *Sender)
{
	/* Добавить к списку инцидентов захода */

	TClientDataSet *cds = cdsIncidentList;

	if (ep_->row_id == 0)
		throw Exception ("Исходная информация по ЛРЗ еще не сохранена");

	if (ep_->kod_ser == 0 || ep_->nom_loc == 0)
		throw Exception ("Выберите секцию локомотива");

	std::auto_ptr<TDepoEnterIncidentAdd> dlg (new TDepoEnterIncidentAdd(this));
	StrctIncidentList st;

	st.row_id  = ep_->row_id;
	st.kod_ser = ep_->kod_ser;
	st.nom_loc = ep_->nom_loc;
	st.nom_sec = ep_->nom_sec;
	st.date_op = ep_->date_op;

	if (mrOk == dlg->Show(&st))
	{

	}
	aLoadIncidentList->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::aIncidentListDelExecute(TObject *Sender)
{
	/* Удалить из списка инцидентов захода */

	if (cdsIncidentList->Active == false
		|| cdsIncidentList->RecordCount == 0)
		return;

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	int qr = MessageBox(NULL, "Удалить выделенный ЛРИ из списка?", "Подтверждение", MB_YESNO);
	if (IDYES == qr)
	{
		try
		{
			TDMMain::ClearDataSet(dsa.get());
			dsa->CommandText = "SMT.INCIDENT2_PKG.depo_enter_incidentlist_del";

			dsa->Params->CreateParam(ftInteger, "p_row_id", ptInput)->AsInteger		= cdsIncidentList->FieldByName("row_id")->AsInteger;
			dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger	= cdsIncidentList->FieldByName("sheet_id")->AsInteger;
			dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
			dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

			TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

			if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
				throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
		}
		catch (Exception &e)
		{
			throw Exception ("< UEDE-8 > : Ошибка удаления информации по работе устранению неисправностей.\n" + e.Message);
		}

		aLoadIncidentList->Execute();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::aSaveExecute(TObject *Sender)
{
	/* Сохранить ЛРЗ */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
    int vRowID_old = ep_->row_id;

    try
	{
        TDMMain::ClearDataSet(dsa.get());
		dsa->CommandText = "SMT.INCIDENT2_PKG.depo_enter_iu";

		dsa->Params->CreateParam(ftInteger, "o_row_id", ptInputOutput)->AsInteger 		= ep_->row_id;
		dsa->Params->CreateParam(ftInteger, "p_ser_loc", ptInput)->AsInteger	  		= ep_->kod_ser;
		dsa->Params->CreateParam(ftInteger, "p_zns_loc", ptInput)->AsInteger	  		= ep_->nom_loc;
		dsa->Params->CreateParam(ftInteger, "p_prs_loc", ptInput)->AsInteger	  		= ep_->nom_sec;
		dsa->Params->CreateParam(ftDateTime, "o_date_op", ptInputOutput)->AsDateTime	= GetDateTimeFromValue(rwDateOp->Properties->Value);
		dsa->Params->CreateParam(ftDateTime, "p_date_next_op", ptInput)->AsDateTime		= GetDateTimeFromValue(rwDateNextOp->Properties->Value);
		dsa->Params->CreateParam(ftInteger, "p_user_id", ptInput)->AsInteger			= UserID;
		dsa->Params->CreateParam(ftInteger, "p_create_mode", ptInput)->AsInteger		= ep_->create_mode;
		dsa->Params->CreateParam(ftString, "p_reason", ptInput)->AsString				= VarToStr(rwDepoEnterReason->Properties->Value);
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);

		ep_->row_id     = dsa->Params->ParamByName("o_row_id")->AsInteger;
		ep_->date_op    = dsa->Params->ParamByName("o_date_op")->AsDateTime;
		ep_->was_edit	= true;
	}
    catch (Exception &e)
    {
		throw Exception ("< UEDE-9 > : Ошибка сохранения ЛРЗ.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::rwLocNameEditPropertiesButtonClick(TObject *Sender,
          int AButtonIndex)
{
	/* Выбрать или сменить секцию */

	switch (AButtonIndex)
    {
        case 0:
            SearchLoc(0, 0);
        	break;
        case 1:
			SearchLoc(ep_->kod_ser, ep_->nom_loc);
			break;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::SearchLoc(int kod_ser, int nom_loc)
{
	/* Искать локомотив */

	std::auto_ptr<TfrmSearchLoc> dlg (new TfrmSearchLoc(this));
	StrctSearchLoc_New ep;

	ep.NomLoc	= nom_loc;
	ep.KodSer	= kod_ser;

	if (mrOk == dlg->Show(&ep))
	{
        ep_->kod_ser = ep.KodSer;
		ep_->nom_loc = ep.NomLoc;
		ep_->nom_sec = ep.NomSec;

		rwLocName->Properties->Value = ep.LocName;
	}

	vgFrameEdit->NextVisibleRow(rwLocName)->Focused = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::FormClose(TObject *Sender, TCloseAction &Action)
{
	vgFrame->DataController->DataSource				= 0;
	btvIncidentList->DataController->DataSource 	= 0;
	btvMalfunction->DataController->DataSource		= 0;
	btvDepoEnterAttach->DataController->DataSource	= 0;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::aEditExecute(TObject *Sender)
{
	/* Активировать редактирование */

	vgFrame->Visible		 = false;

	vgFrameEdit->Visible	 = true;
	btnClose->Visible		 = true;
	btnSave->Visible		 = true;
	pnlIncidentList->Visible = true;
	pnlMalfunction->Visible	 = true;
	pnlAttach->Visible	     = true;

	if (ep_->row_id > 0)
	((TcxButtonEditProperties*)rwLocName->Properties->EditProperties)->Buttons->Items[0]->Enabled = false;

	rwLocName->Properties->Value			= ep_->loc_name;
	rwDateOp->Properties->Value				= DateTimeToVariant(ep_->date_op);
	rwDateNextOp->Properties->Value			= DateTimeToVariant(ep_->date_next_op);
	rwDepoEnterReason->Properties->Value	= ep_->reason;

	aLoadFrame->Execute();
	aLoadIncidentList->Execute();
	aLoadMalfunctList->Execute();

	aLoadAttach->Execute();
}
//---------------------------------------------------------------------------
void __fastcall TfrmEdit_DepoEnter::aLoadRunningExecute(TObject *Sender)
{
	/* Загрузить пробеги */

	TClientDataSet *cds = cdsRunning;
	TDataSource	*ds 	= dsRunning;

	if (ep_->row_id > 0)
	{
		try
		{
			TDMMain::ClearDataSet(cds);
			cds->CommandText = "SMT.INCIDENT2_PKG.depo_enter_running_cur";
			cds->Params->CreateParam(ftInteger,  "p_row_id", ptInput)->AsInteger = ep_->row_id;
			cds->Params->CreateParam(ftCursor,   "o_cur", ptInputOutput);

			TDMMain::OpenDS(cds, "OPEN", "CT", 1);

			vgRunningElder->DataController->DataSource  = ds;
			vgRunningJunior->DataController->DataSource = ds;
		}
		catch (Exception &e)
		{
			throw Exception ("< UEDE-10 > : Ошибка загрузки пробегов.\n" + e.Message);
		}
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::aSetActionExecute(TObject *Sender)
{
	aEdit->Enabled           = DMMain->IsFunction("f_code", "aDepoEnter_aEdit");
	aCloseDepoEnter->Enabled = DMMain->IsFunction("f_code", "aDepoEnter_aCloseDepoEnter");
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnter::btvIncidentListDblClick(TObject *Sender)
{
	aDetail->Execute();
}
//---------------------------------------------------------------------------


