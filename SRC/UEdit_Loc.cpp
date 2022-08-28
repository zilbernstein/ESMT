//---------------------------------------------------------------------------
#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include <memory>
#include "UDMMain.h"
#include "config.h"
#include "public.h"
#include "Utils_JK.h"
#include "UEdit_Loc.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)

#pragma link "dxSkinsCore"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma resource "*.dfm"
TfrmEdit_Loc *frmEdit_Loc;
//---------------------------------------------------------------------------
__fastcall TfrmEdit_Loc::TfrmEdit_Loc(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmEdit_Loc::Show( Strct_EditLoc* te )
{
	te_ = te;
	tmr->Enabled = true;
	aLoadDepo->Execute();
    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Loc::tmrTimer(TObject *Sender)
{
	tmr->Enabled = false;

    //aFillTCHR->Execute();
    aFillContractList->Execute();
    //DMMain->cdsFirmRepair->Filter = "";
    //DMMain->cdsFirmRepair->Filtered = false;

    DMMain->btvNSI_Filial_Department_TCHR->DataController->DataSource = DMMain->dsFirmRepair;

    rwFilial->Properties->Value = te_->kod_firm_repair;
	rwDateServiceBegin->Properties->Value = DateTimeToVariant(te_->date_service_begin);

	rwDepoName->Properties->Value = te_->id_depo_name;

//	cbDepoName->Properties->Value = ;

    if (te_->service_contract_id != 0)
    	rwServiceContract->Properties->Value = te_->service_contract_id;
    else
    	rwServiceContract->Properties->Value = 21; //cdsNSI_Contract->FieldByName("service_contract_id")->AsInteger;

    rwDateServiceFinish->Properties->Value = DateTimeToVariant(te_->date_service_finish);
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Loc::aSaveExecute(TObject *Sender)
{
	// Сохранить

    //TDMMain::ShowAppException(AET_INFO, "Раздел находится в разработке", "Полный функционал контроля и ведения сервисного парка планируется в следующем релизе.");
    //return;

    std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    try
    {
        dsa->CommandText = "SMT.LOC_PARK_PKG.loc_service_3_0_iu";

		dsa->Params->CreateParam(ftString, "p_id_object", ptInput )->AsString 				= te_->id_object_list;
		dsa->Params->CreateParam(ftInteger, "p_kod_firm_repair", ptInput )->AsInteger 		= (int) rwFilial->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "p_kod_firm_service", ptInput )->AsInteger 		= DMMain->cdsFirmRepair->FieldByName("kod_firm_filial")->AsInteger;
        dsa->Params->CreateParam(ftDateTime, "p_date_service_begin", ptInput )->AsDateTime 	= GetDateTimeFromValue(rwDateServiceBegin->Properties->Value);
        dsa->Params->CreateParam(ftDateTime, "p_date_service_finish", ptInput )->AsDateTime = GetDateTimeFromValue(rwDateServiceFinish->Properties->Value);
		dsa->Params->CreateParam(ftInteger, "p_service_contract", ptInput )->AsInteger 		= (int) rwServiceContract->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput )->AsInteger		= UserID;

		dsa->Params->CreateParam(ftInteger, "p_id_deponame", ptInput )->AsInteger           = (int) rwDepoName->Properties->Value;

		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput );
        dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput );

        TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);

		ModalResult = mrOk;
	}
    catch (Exception &e)
    {
		TDMMain::ShowAppException(AET_EXCEPTION, "< UEL-1 > : Ошибка сохранения реквизитов секций.\n", e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Loc::aCancelExecute(TObject *Sender)
{
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Loc::aFillContractListExecute(TObject *Sender)
{
	// Заполнение списка договоров

    TClientDataSet	*cds = cdsNSI_Contract;
    TDataSource		*ds = dsNSI_Contract;
	TcxEditorRow	*rw 	= rwServiceContract;
	TcxLookupComboBoxProperties	*cbep	= NULL;

	try
	{
		cbep = (TcxLookupComboBoxProperties*)rw->Properties->EditProperties;

        TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.NSI_PKG.service_contract_cur";
        cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        cbep->ListSource = ds;
	}
	catch (Exception &e)
	{
		throw Exception ("< UEL-2 > : Ошибка загрузки списка подразделений.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Loc::aLoadDepoExecute(TObject *Sender)
{

	/* загрузка общего справочника */
	TClientDataSet *cds = cdsLoadDepo;
	TDataSource    *ds  = dsLoadDepo;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText 	= "SMT.nsi_pkg.tche_full_list_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UEL-3 > : Ошибка загрузки ТЧЭ.\n" + e.Message);
	}


	TcxEditorRow *rw					= rwDepoName;
	TcxImageComboBoxItem 	   *itm		= NULL;
	TcxImageComboBoxProperties *cbep	= (TcxImageComboBoxProperties*)rw->Properties->EditProperties;

	try
	{
		cbep->Items->Clear();

		for (int i = 0; i < cds->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if ( itm )
			{
				itm->Description	= cds->FieldByName("firm_name")->AsString;
				itm->Value			= cds->FieldByName("pred_id")->AsInteger;
			}
			cds->Next();
		}
	}
	catch ( Exception &e )
	{
		throw Exception ("< UEL-4 > : Ошибка загрузки ТЧЭ.\n" + e.Message);
	}

}
//---------------------------------------------------------------------------

