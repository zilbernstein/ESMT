//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include <memory>

#include "UDMMain.h"
#include "config.h"
#include "public.h"
#include "Utils_JK.h"
#include "uEdit_WeightCompensation.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxGraphics"
#pragma link "cxGridBandedTableView"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxStyles"
#pragma link "cxTL"
#pragma link "cxVGrid"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma link "dxStatusBar"
#pragma link "cxCalendar"
#pragma link "cxContainer"
#pragma link "cxDateUtils"
#pragma link "cxDropDownEdit"
#pragma link "cxEdit"
#pragma link "cxLabel"
#pragma link "cxMaskEdit"
#pragma link "cxTextEdit"
#pragma link "dxCore"
#pragma link "cxImageComboBox"
#pragma resource "*.dfm"
TfrmEdit_WeightCompensation *frmEdit_WeightCompensation;
//---------------------------------------------------------------------------
__fastcall TfrmEdit_WeightCompensation::TfrmEdit_WeightCompensation(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
TModalResult __fastcall TfrmEdit_WeightCompensation::Show(Strct_WeightCompens* te)
{
	te_ = te;

	if (te_->compen_id != 0)
	{
		aLoadInfo->Execute();
	}

	tmr->Enabled = true;
	return ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TfrmEdit_WeightCompensation::aCancelExecute(TObject *Sender)
{
	/* Отмена изменения */

	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_WeightCompensation::tmrTimer(TObject *Sender)
{
	tmr->Enabled = false;

	try
	{
        if (te_->sheet_id == 0)
			throw Exception ("< UEWCM-1 > : Исходная информация по инциденту еще не сохранена. Добавление Ущерба невозможно.\n");
		if (te_->repair_id == 0)
			throw Exception ("< UEWCM-2 > : Исходная информация по Расчету НР еще не сохранена. Добавление Ущерба невозможно.\n");
	}
	catch (Exception &e)
	{
		MessageBox(Handle, AnsiString(e.Message).c_str(), "Операция прервана", MB_ICONSTOP);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmEdit_WeightCompensation::aSaveExecute(TObject *Sender)
{
	/* Сохранить изменения */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		if (VarToStr(edFault->EditValue) == "")
			throw Exception ("< UEWCM-3 > : Не выбрано значение поля Вина признана.\n");

		dsa->CommandText = "SMT.INCIDENT2_PKG.unplanned_repair_compens_iu_2";

		dsa->Params->CreateParam(ftInteger,	"o_repair_id", ptInputOutput)->AsInteger = te_->repair_id;
		dsa->Params->CreateParam(ftInteger,	"p_compen_id", ptInput)->AsInteger		 = te_->compen_id;
		dsa->Params->CreateParam(ftInteger,	"p_fault", ptInput)->AsInteger			 = edFault->EditValue;
		dsa->Params->CreateParam(ftDateTime, "p_fault_date", ptInput)->AsDateTime    = GetDateTimeFromValue(deFaultDate->EditValue);
		dsa->Params->CreateParam(ftInteger, "p_compen_ammount", ptInput)->AsInteger  = edCompenAmmount->EditValue;
		dsa->Params->CreateParam(ftInteger, "p_user_id", ptInput)->AsInteger  		 = UserID;
		//
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);

	}
	catch (Exception &e)
	{
		throw Exception ("< UEWCM-4 > : Ошибка сохранения Хронологии.\n" + e.Message);
	}

	ModalResult = mrOk;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_WeightCompensation::edFaultPropertiesEditValueChanged(TObject *Sender)

{
	if (VarToStr(edFault->EditValue) != "")
	{
		if (edFault->EditValue == 1)
		{
			cxLabel2->Enabled			= true;
			edCompenAmmount->Enabled	= true;
			cxLabel1->Enabled			= true;
			deFaultDate->Enabled		= true;
		}
		else
		{
			cxLabel2->Enabled			= false;
			edCompenAmmount->Enabled	= false;
			cxLabel1->Enabled			= false;
			deFaultDate->Enabled		= false;
		}
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_WeightCompensation::aLoadInfoExecute(TObject *Sender)
{
	TClientDataSet *cds	= cdsRec;
	TDataSource *ds		= dsRec;

	try
	{
		TDMMain::ClearDataSet(cdsRec);
		cdsRec->CommandText = "SMT.INCIDENT2_PKG.unplanned_repair_compens_rec_2";
		cdsRec->Params->CreateParam(ftInteger, "o_repair_id", ptInput)->AsInteger = te_->compen_id;
		cdsRec->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cdsRec, "OPEN", "CT", 1);

		edFault->EditValue         = cdsRec->FieldByName("fault")->AsInteger;
		deFaultDate->EditValue     = cdsRec->FieldByName("fault_date")->AsDateTime;
		edCompenAmmount->EditValue = cdsRec->FieldByName("compen_ammount")->AsInteger;

	}
	catch (Exception &e)
	{
		//throw Exception ("< URS-70 > : Ошибка заполнения данных раздела НРЭ - История НРЭ.\n" + e.Message);
	}

}
//---------------------------------------------------------------------------

