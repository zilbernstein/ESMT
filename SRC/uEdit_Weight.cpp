#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"

#pragma hdrstop

#include <memory>

#include "UDMMain.h"
#include "config.h"
#include "public.h"
#include "Utils_JK.h"
#include "uEdit_Weight.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxCalendar"
#pragma link "cxContainer"
#pragma link "cxControls"
#pragma link "cxDateUtils"
#pragma link "cxDropDownEdit"
#pragma link "cxEdit"
#pragma link "cxGraphics"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxMaskEdit"
#pragma link "cxTextEdit"
#pragma link "dxCore"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma link "dxStatusBar"
#pragma link "cxClasses"
#pragma link "cxGridBandedTableView"
#pragma link "cxImageComboBox"
#pragma link "cxInplaceContainer"
#pragma link "cxStyles"
#pragma link "cxTL"
#pragma link "cxVGrid"
#pragma link "cxLabel"
#pragma resource "*.dfm"
TfrmEdit_Weight *frmEdit_Weight;
//---------------------------------------------------------------------------
__fastcall TfrmEdit_Weight::TfrmEdit_Weight(TComponent* Owner)
	: TForm(Owner)
{

}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmEdit_Weight::Show(Strct_Weight* te)
{
	te_ = te;
	tmr->Enabled = true;
	return ShowModal();
}

//---------------------------------------------------------------------------
void __fastcall TfrmEdit_Weight::aCancelExecute(TObject *Sender)
{
	/* Отмена изменения */

	ModalResult = mrCancel;
}

//---------------------------------------------------------------------------
void __fastcall TfrmEdit_Weight::aSaveExecute(TObject *Sender)
{
	/* Сохранить изменения */

	aCalcWeight->Execute();

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		if (deDateExit->Date <= deDateEnter->Date)
			throw Exception ("< UEW-1 > : Дата и время захода должна быть меньше даты выхода.\n");

		dsa->CommandText = "SMT.INCIDENT_PKG.storage_2_1_iu";

		dsa->Params->CreateParam(ftInteger,	"o_storage_id", ptInputOutput)->AsInteger	= te_->storage_id;
		dsa->Params->CreateParam(ftInteger,	"p_sheet_id", ptInput)->AsInteger			= te_->sheet_id;
		dsa->Params->CreateParam(ftDateTime, "p_date_receive", ptInput)->AsDateTime		= te_->date_receive;
		dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput)->AsInteger		= UserID;
		//
		dsa->Params->CreateParam(ftDateTime, "p_date_enter", ptInput)->AsDateTime  = deDateEnter->Date;
		dsa->Params->CreateParam(ftDateTime, "p_date_exit", ptInput)->AsDateTime   = deDateExit->Date;

		dsa->Params->CreateParam(ftFloat, "p_idle_cost_rub", ptInput)->AsFloat		 = (Double)edIdleInDepoRub->EditValue;
		dsa->Params->CreateParam(ftInteger, "p_repair_time_hr", ptInput)->AsInteger	 = (int)edDateRepairHr->EditValue;

		dsa->Params->CreateParam(ftString,  "p_zip_name", ptInput)->AsString	= edZipname->EditValue;
		dsa->Params->CreateParam(ftFloat, "p_zip_cost_hr", ptInput)->AsFloat	= (Double)edZipCost->EditValue;

		dsa->Params->CreateParam(ftInteger, "p_idle_time_hr", ptInput)->AsInteger	= (int)edIdleInDepoHr->EditValue;
		dsa->Params->CreateParam(ftFloat, "p_repair_cost_rub", ptInput)->AsFloat	= (Double)edDateRepairRub->EditValue;


		dsa->Params->CreateParam(ftFloat, "p_overhead_cost", ptInput)->AsFloat	= (Double)EditOverhead->EditValue;
		dsa->Params->CreateParam(ftFloat, "p_sum_weight", ptInput)->AsFloat	    = (Double)EditWeiht->EditValue;

		//
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

        if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
            throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);

	}
	catch (Exception &e)
	{
		throw Exception ("< UEW-2 > : Ошибка сохранения вкладки Вес.\n" + e.Message);
	}

    ModalResult = mrOk;
}

//---------------------------------------------------------------------------
void __fastcall TfrmEdit_Weight::tmrTimer(TObject *Sender)
{
	tmr->Enabled = false;

	try
	{
        if (te_->sheet_id == 0)
			throw Exception ("< UEW-3 > : Исходная информация по инциденту еще не сохранена. Добавление ВЕСа невозможно.\n");

		deDateEnter->Date			= te_->date_enter;
		deDateExit->Date			= te_->date_exit;

		edIdleInDepoHr->EditValue	= te_->idle_time_hr;
		edIdleInDepoRub->EditValue	= te_->idle_cost_r;

		edDateRepairHr->EditValue	= te_->repair_time_hr;
		edDateRepairRub->EditValue	= te_->repair_cost_r;

		edZipname->EditValue		= te_->zip_name;
		edZipCost->EditValue		= te_->zip_cost;

		EditOverhead->EditValue     = te_->overhead_cost;
		EditWeiht->EditValue        = te_->sum_weight;
	}
	catch (Exception &e)
	{
		MessageBox(Handle, AnsiString(e.Message).c_str(), "Операция прервана", MB_ICONSTOP);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmEdit_Weight::aLoad_WeightExecute(TObject *Sender)
{
	/* Загрузка полей */
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Weight::FormKeyPress(TObject *Sender, System::WideChar &Key)
{
	if (Key == VK_RETURN)
		FindNextControl((TWinControl*)Sender,true,true, false)->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Weight::rwDateExitEditPropertiesEditValueChanged(TObject *Sender)

{
	//
	/*
	int diff = 0;
	TDateTime dtb, dte;

	dtb = GetDateTimeFromValue(rwDateEnter->Properties->Value);
	dte = GetDateTimeFromValue(rwDateExit->Properties->Value);

	diff = HoursBetween(GetDateTimeFromValue(dte), GetDateTimeFromValue(dtb));

	ShowMessage("rwDateEnter = " + DateTimeToStr(dtb) +
				"rwDateExit = " + DateTimeToStr(dte) +
				" rwDateExitEditPropertiesEditValueChanged = " + IntToStr(diff));
	*/
	//rwIdleInDepoHr->Properties->Value = diff;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Weight::deDateExitPropertiesEditValueChanged(TObject *Sender)

{
	if (deDateExit->Date > deDateEnter->Date)
		edIdleInDepoHr->Text = HoursBetween(deDateExit->Date, deDateEnter->Date);

//        throw Exception ("<ВЕС-03>: Дата и время захода должна быть меньше даты выхода.");
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Weight::edDateRepairHrPropertiesEditValueChanged(TObject *Sender)

{
	//
	edDateRepairRub->EditValue = /*edDateRepairHr->EditValue * */50;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Weight::aCalcWeightExecute(TObject *Sender)
{
	/* Расчет веса */

	/* Вес. расчитываеться по формуле: Wight = ( p1 * p2 ) + p3 + p4 + p5 */
	Double Wight;

	/* Фактическое (технологическое) время ремонта, в часах */
	/* Время ремонта факт., ч. - edDateRepairHr */
	Double p1 = (Double)edDateRepairHr->EditValue;

	/* Стоимость простоя, в рублях  -  стоимость одного часа простоя */
	/* Стоимость простоя, руб. - edIdleInDepoRub */
	 Double p2 = (Double)edIdleInDepoRub->EditValue;

	/* стоимость работы (человек/час), в рублях */
	/* Стоимость работы (чел*час), руб. - edDateRepairRub */
	Double p3 = (Double)edDateRepairRub->EditValue;

	/* стоимость ремонта, в рублях. - использования деталей и расходных материалов */
	/* Стоимость ЗИП, руб  - edZipCost */
	Double p4 = (Double)edZipCost->EditValue;

	/* Накладные расходы конкретного депо, в рублях на выполнение ремонта */
	/* Накладные расходы, руб.  - EditOverhead */
	Double p5 = (Double)EditOverhead->EditValue;

	Wight = (p1 * p2) + p3 + p4 + p5;

	EditWeiht->EditValue = FormatFloat("0.00",Wight);
}
//---------------------------------------------------------------------------

