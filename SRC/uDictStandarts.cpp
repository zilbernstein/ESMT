//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "Log.h"

#include <memory>
#include <stdio.h>


#include "config.h"
#include "public.h"
#include "UDMMain.h"


#include "uDictStandarts.h"
#include "uEdit_DictStandarts.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxCustomData"
#pragma link "cxData"
#pragma link "cxDataStorage"
#pragma link "cxDBData"
#pragma link "cxEdit"
#pragma link "cxFilter"
#pragma link "cxGraphics"
#pragma link "cxGrid"
#pragma link "cxGridBandedTableView"
#pragma link "cxGridCustomTableView"
#pragma link "cxGridCustomView"
#pragma link "cxGridDBTableView"
#pragma link "cxGridLevel"
#pragma link "cxGridTableView"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxNavigator"
#pragma link "cxStyles"
#pragma link "cxTL"
#pragma link "cxVGrid"
#pragma link "dxBar"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "dxSkinscxPCPainter"
#pragma link "dxSkinsdxBarPainter"
#pragma link "cxGridDBBandedTableView"
#pragma resource "*.dfm"
TfrmStandarts *frmStandarts;
//---------------------------------------------------------------------------
__fastcall TfrmStandarts::TfrmStandarts(TComponent* Owner)
	: TForm(Owner)
{
	TDMMain::LogEvenEnterExit("Вход. Справочник нормативов ТО, ТР.");
}
//---------------------------------------------------------------------------

void __fastcall TfrmStandarts::FormClose(TObject *Sender, TCloseAction &Action)
{
	/* Закрыть окно */

	TDMMain::LogEvenEnterExit("Выход. Справочник нормативов ТО, ТР.");

	Action = caFree;
}
//---------------------------------------------------------------------------

void __fastcall TfrmStandarts::aRefreshExecute(TObject *Sender)
{
	/* Обновить */

	TClientDataSet *cds	= cdsDict_Stand;
	TDataSource *ds		= dsDict_Stand;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "smt_nsi2_pkg.smt_nsi_standarts_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UDS-1 > : Ошибка загрузки справочника нормативов ТО и ТР.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmStandarts::aAddExecute(TObject *Sender)
{
	/* Добавить */

	RecordDicrStand pDicrStand;

	pDicrStand.id            = 0;
	pDicrStand.tr_id         = 0;
	pDicrStand.km            = 0;
	pDicrStand.hh            = 0;
	pDicrStand.Descrptn      = "";
	pDicrStand.st_id_exp_dep = 0;
	pDicrStand.st_id_dep     = 0;
	pDicrStand.st_lim        = 0;
	pDicrStand.st_id_ser     = 0;
	pDicrStand.st_note       = "";
	pDicrStand.flag          = 0;

	std::auto_ptr<TfrmEdit_DictStandarts> dlg (new TfrmEdit_DictStandarts(this));
	dlg->Caption = "[Добавление записи] - Редактирование cправочник нормативов ТО, ТР";
	if (mrOk == dlg->Show( &pDicrStand ))
	{
		aRefresh->Execute();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmStandarts::aEditExecute(TObject *Sender)
{
	/* Редактирование */

	if (((TcxGridDBBandedTableView*)grdStandart->ActiveView)->Controller->FocusedRow == NULL)
		return;

	RecordDicrStand pDicrStand;

	pDicrStand.id            = cdsDict_Stand->FieldByName("st_id")->AsInteger;
	pDicrStand.tr_id         = cdsDict_Stand->FieldByName("tr_id")->AsInteger;
	pDicrStand.km            = cdsDict_Stand->FieldByName("st_km")->AsInteger;
	pDicrStand.hh            = cdsDict_Stand->FieldByName("st_hh")->AsInteger;
	pDicrStand.st_id_exp_dep = cdsDict_Stand->FieldByName("st_id_exp_dep")->AsInteger;
	pDicrStand.st_id_dep     = cdsDict_Stand->FieldByName("st_id_dep")->AsInteger;
	pDicrStand.st_lim        = cdsDict_Stand->FieldByName("st_lim")->AsInteger;
	pDicrStand.st_note       = cdsDict_Stand->FieldByName("note")->AsString;
	pDicrStand.st_id_ser     = cdsDict_Stand->FieldByName("st_id_ser")->AsInteger;
//	pDicrStand.flag          = 1;

	std::auto_ptr<TfrmEdit_DictStandarts> dlg (new TfrmEdit_DictStandarts(this));
	dlg->Caption = "[Редактирование записи] - Редактирование cправочник нормативов ТО, ТР";
	if (mrOk == dlg->Show( &pDicrStand ))
	{
		aRefresh->Execute();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmStandarts::aDeleteExecute(TObject *Sender)
{
	/* Удалить */

	if (((TcxGridDBBandedTableView*)grdStandart->ActiveView)->Controller->FocusedRow == NULL)
		return;

	std::auto_ptr<TClientDataSet> cds (new TClientDataSet(NULL));

	int qr = MessageBox(NULL, "Вы уверены, что хотите удалить данный тип ремонта?", "Подтверждение", MB_YESNO);
	if (IDYES == qr)
	{
		try
		{
			cds->CommandText = "smt_nsi2_pkg.smt_nsi_standarts_del";
			cds->Params->CreateParam(ftInteger, "o_row_id", ptInputOutput)->AsInteger      = cdsDict_Stand->FieldByName("st_id")->AsInteger;
			cds->Params->CreateParam(ftInteger, "p_st_update_user_id", ptInput)->AsInteger = UserID;
			cds->Params->CreateParam(ftInteger, "o_err_code", ptInputOutput);
			cds->Params->CreateParam(ftString, "o_err_msg", ptInputOutput);
			TDMMain::OpenDS(cds.get(), "EXEC", "CT", 1);
		}
		catch (Exception &e)
		{
			throw Exception ("< UDS-2 > : Ошибка удаления выбранной записи.\n" + e.Message);
		}
		aRefresh->Execute();
	}
}
//---------------------------------------------------------------------------
