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
#include "UFTPTransfer.h"

#include "UEdit_KiparPrognos.h"
#include "UKipar_PrognosAction.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxControls"
#pragma link "cxDBVGrid"
#pragma link "cxEdit"
#pragma link "cxGraphics"
#pragma link "cxInplaceContainer"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxPC"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "cxStyles"
#pragma link "cxTextEdit"
#pragma link "cxVGrid"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "dxSkinscxPCPainter"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma link "dxStatusBar"
#pragma link "cxClasses"
#pragma link "cxGridBandedTableView"
#pragma link "cxTL"
#pragma link "cxButtonEdit"
#pragma link "cxCustomData"
#pragma link "cxData"
#pragma link "cxDataStorage"
#pragma link "cxDBData"
#pragma link "cxFilter"
#pragma link "cxGrid"
#pragma link "cxGridCustomTableView"
#pragma link "cxGridCustomView"
#pragma link "cxGridDBBandedTableView"
#pragma link "cxGridLevel"
#pragma link "cxGridTableView"
#pragma link "cxNavigator"
#pragma link "cxMemo"
#pragma link "cxGridDBTableView"
#pragma resource "*.dfm"
TfrmEditKiparPrognos *frmEditKiparPrognos;
//---------------------------------------------------------------------------
__fastcall TfrmEditKiparPrognos::TfrmEditKiparPrognos(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmEditKiparPrognos::Show(RecordKiparPrognos* ep)
{
	ep_	= ep;

//=== Исходная информация ======================================================
	//=== Серия локомотива
	vgSerLocom->Properties->Value = ep_->Sers_Lokmtv;
	//=== Номер локомотива
	vgNumLocom->Properties->Value = ep_->Numbr_Lokmtv;
	//=== Секция локомотива
	vgSectLocom->Properties->Value = ep_->Sectn_Lokmtv;
	//=== Филал
	vgFil->Properties->Value = ep_->Branch;
	//=== СЛД
	vgSLD->Properties->Value = ep_->SLD;
	//=== Базовое предприятие СО
	vgBsCmpnSO->Properties->Value = ep_->Bs_Compn_SO;
	//=== ФИО оператора постадиагностики
	vgFIOOprtrPstDgnstcs->Properties->Value = ep_->FIO_Oprtr_Fastng_Dignstcs;
	//=== Тип источника
	vgTpScr->Properties->Value = ep_->Typ_Src;
//=== Инцидент =================================================================
	//=== Дата/Время инцидента
	vgDtTmIncdnt->Properties->Value = ep_->DtTm_Incdnt;
	//=== Дата/Время диагностического сообщения
	vgDtTmDgnstcsMsg->Properties->Value = ep_->DTTm_Digntcs_Fetr;
	//=== Обстоятельство инцидента
	vgFctIncdnt->Properties->Value = ep_->Circmstnc_Incdnt;
	//=== Депо возникновения
	vgDeptEmrgnc->Properties->Value = ep_->Dept_Emrgnc;
	//=== Место возникновения
	vgPlcEmrgn->Properties->Value = ep_->Plc_Apprncs;
	//=== Сообщение
	vgMessg->Properties->Value = ep_->Messg;
	//=== Критичность
	vgCriticl->Properties->Value = ep_->Critclnss;
	//=== Категория
	vgCatgr->Properties->Value = ep_->Catgr;
	vgNode->Properties->Value = ep_->Node;
//==============================================================================

	aLoadAttach->Execute();
	clmnFiles->Properties->OnButtonClick = DMMainclmnFilesDownloadPropertiesButtonClick;

	if (ep_->msu_type == 28)
	{
		tsRSh_Result->Enabled = true;
		btnExcel->Enabled     = true;
		aLoad_Prognoz->Execute();
	}
	else
	{
		btnExcel->Enabled     = false;
		tsRSh_Result->Enabled = false;
	}

	return ShowModal();
}

void __fastcall TfrmEditKiparPrognos::FormClose(TObject *Sender, TCloseAction &Action)
{
	//=== Закрытие формы ===//
	Action = caFree;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditKiparPrognos::aCloseExecute(TObject *Sender)
{
	Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditKiparPrognos::aAddFileExecute(TObject *Sender)
{
	std::auto_ptr<TfrmKipar_PrognosAction> dlg (new TfrmKipar_PrognosAction(this));

	RecordKipProg sNSIId;
	sNSIId.NSI 		= ep_->NSI;
	sNSIId.user_id	= UserID;

	if (mrOk == dlg->Show(&sNSIId))
	{
    	aRefresh->Execute();
	}

	aLoadAttach->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditKiparPrognos::aDeleteFileExecute(TObject *Sender)
{
	//=== Удалить документ === //
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditKiparPrognos::aRefreshExecute(TObject *Sender)
{
	//=== Обновление ===//
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditKiparPrognos::aLoadAttachExecute(TObject *Sender)
{
	TClientDataSet *cds = cldskipProgDocum;
	TDataSource *ds		= dskipProgDocum;

	TcxGridDBBandedTableView  *btv = btvKiparPronos;

	try
	{
		btv->OptionsView->NoDataToDisplayInfoText = RefreshText;
		btv->DataController->DataSource = 0;
		Update();

		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.INCIDENT2_PKG.kiparis_prognoz_attach_cur";
		cds->Params->CreateParam(ftInteger, "p_isn_id", ptInput)->AsInteger = ep_->NSI;
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);        //=== ошибка

		btv->OptionsView->NoDataToDisplayInfoText = NoDataTextDefault;
		btv->DataController->DataSource 		  = ds;
	}
	catch (Exception &e)
	{
		throw Exception ("< UEKP-1 > : Ошибка загрузки серий.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditKiparPrognos::DMMainclmnFilesDownloadPropertiesButtonClick(TObject *Sender, int AButtonIndex)
{
	if (AButtonIndex == 0)
		aAttach_Show->Execute();
}

void __fastcall TfrmEditKiparPrognos::aAttach_ShowExecute(TObject *Sender)
{
	/* Просмотр вложения */

	if (cldskipProgDocum->Active == false
		|| cldskipProgDocum->RecordCount == 0
		|| cldskipProgDocum->FieldByName("file_name")->AsString.IsEmpty())
		return;

    StructFTP st;
	std::auto_ptr<TfrmFTPTransfer> dlg (new TfrmFTPTransfer(this));

	st.FTPFileName   = cldskipProgDocum->FieldByName("file_name")->AsString;
	st.FileName      = "";
	st.FileNameShort = cldskipProgDocum->FieldByName("file_name_short")->AsString;
	st.AutoRun 		 = true;
	st.DirNameYear 	 = cldskipProgDocum->FieldByName("dir_name_year")->AsString;
	st.DirNameMonth	 = cldskipProgDocum->FieldByName("dir_name_month")->AsString;

    if ((st.FTPFileName).IsEmpty() == false)  // Выполняем только если сначала файл не был приложен
    	dlg->DownLoad(&st);

}
//---------------------------------------------------------------------------

void __fastcall TfrmEditKiparPrognos::aLoad_PrognozExecute(TObject *Sender)
{
	/* Загрузка детализации по Прогнозу */

	TcxGridDBBandedTableView *btv	= btvPrognoz;
	TClientDataSet *cds				= cdsPrognoz;
	TDataSource *ds					= dsPrognoz;

	try
	{
		btv->OptionsView->NoDataToDisplayInfoText = RefreshText;
		btv->DataController->DataSource = 0;
		Update();
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.INCIDENT2_PKG.kiparis_prognoz_detail_cur";
		cds->Params->CreateParam(ftInteger, "p_calc_isn", ptInput)->AsInteger = ep_->calc_isn;
		cds->Params->CreateParam(ftCursor,   "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btv->OptionsView->NoDataToDisplayInfoText = NoDataTextDefault;
		btv->DataController->DataSource = ds;
	}
	catch (Exception &e)
	{
		throw Exception ("< UEKP-2 > : Ошибка загрузки детализации по Прогнозу.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEditKiparPrognos::aExpExcelExecute(TObject *Sender)
{
	/* Экспорт в Excel */
	try
	{
		btvPrognoz->OptionsCustomize->ColumnGrouping = false;
		TcxGrid *grd = grdPrognoz;

		AnsiString vFileName = TemporaryFolder + "result_diagnos_list" + "_" + FormatDateTime("ddmmyy_hhnnss", Now()) + ".xls";
		ExportGridToExcel(vFileName, grd, true, true, true, "xls");

		char buf_str[2000];
		sprintf(buf_str, vFileName.c_str() );
		ShellExecute(Application->Handle, NULL, buf_str, NULL, NULL, SW_MAXIMIZE);
	}
	__finally
	{
		btvPrognoz->OptionsCustomize->ColumnGrouping = true;
	}
}
//---------------------------------------------------------------------------

