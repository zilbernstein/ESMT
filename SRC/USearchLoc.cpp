#include <vcl.h>
#pragma hdrstop

#include "UDMMain.h"
#include "config.h"
#include "public.h"
#include "Utils_JK.h"
#include "USearchLoc.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxNavigator"
#pragma resource "*.dfm"
TfrmSearchLoc *frmSearchLoc;
config	cfg;
//---------------------------------------------------------------------------
__fastcall TfrmSearchLoc::TfrmSearchLoc(TComponent* Owner)
	: TForm(Owner)
{
//	eNumLoc->Value = cfg.ini->ReadInteger("SearchLoc", "eNumLoc", 0);
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmSearchLoc::Show( StrctSearchLoc_New* ep )
{
	ep_ = ep;

    if (ep_->NomLoc == 0)
    	eNumLoc->Value = cfg.ini->ReadInteger("SearchLoc", "eNumLoc", 0);
    else
    {
    	eNumLoc->Value = ep_->NomLoc;
        eNumLoc->Enabled = false;
    }
    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmSearchLoc::FormShow(TObject *Sender)
{
    if (ep_->NomLoc > 0)
    	aSearch->Execute();
    else
    	eNumLoc->SetFocus();
}
//---------------------------------------------------------------------------
void __fastcall TfrmSearchLoc::aSelectExecute(TObject *Sender)
{
    TClientDataSet *cds = cdsLoc;

    ep_->id_object 	= cds->FieldByName("id_object")->AsFloat;
    ep_->KodSer 	= cds->FieldByName("kod_ser")->AsInteger;
    ep_->SerName 	= cds->FieldByName("ser_name")->AsString;
    ep_->NomLoc		= cds->FieldByName("nom_loc")->AsInteger;
    ep_->NomSec		= cds->FieldByName("nom_sec")->AsInteger;
    ep_->NomTPE 	= cds->FieldByName("nom_tpe")->AsString;
    ep_->LocName	= cds->FieldByName("loc_name")->AsString;
    ep_->KodTjaga	= cds->FieldByName("kod_tjaga")->AsInteger;
    ep_->KodDepo	= cds->FieldByName("kod_depo")->AsInteger;
    ep_->RepairBaseFirmID = cds->FieldByName("kod_firm_repair")->AsInteger;
    ep_->RepairBaseFirmName = cds->FieldByName("repair_base_firm_name")->AsString;
    ep_->ServiceFirmID = cds->FieldByName("kod_firm_service")->AsInteger;
    ep_->KodDepartment = cds->FieldByName("kod_department")->AsInteger;
    ep_->DepoName	= cds->FieldByName("prip_name")->AsString;
    ep_->NSec		= cds->FieldByName("n_sec")->AsInteger;
    ep_->ServiceFirmNameFull = cds->FieldByName("service_firm_name_full")->AsString;

    cfg.ini->WriteInteger("SearchLoc", "eNumLoc", (int)eNumLoc->Value);

    //ep_->KodSerOKDL = DMMain->cdsLocSearchList->FieldByName("kod_ser_okdl")->AsString;
    //ep_->ZnsLoc		= DMMain->cdsLocSearchList->FieldByName("zns_loc")->AsString;
    //ep_->PrsLoc		= DMMain->cdsLocSearchList->FieldByName("nom_sec")->AsString;
    //ep_->KodRoad	= DMMain->cdsLocSearchList->FieldByName("kod_road")->AsInteger;

    //ep_->ServiceFirmName = DMMain->cdsLocSearchList->FieldByName("service_firm_name")->AsString;
    //ep_->WarrantyStateID = DMMain->cdsLocSearchList->FieldByName("warranty_state_id")->AsInteger;
    //ep_->WarrantyStateName = DMMain->cdsLocSearchList->FieldByName("warranty_state_name")->AsString;
    //ep_->NomDepo	= DMMain->cdsLocSearchList->FieldByName("depo_nom")->AsString;

	ModalResult = mrOk;
}
//---------------------------------------------------------------------------

void __fastcall TfrmSearchLoc::aSearchExecute(TObject *Sender)
{
	/*Найти локомотивы по номеру*/

	TcxGridDBBandedTableView *btv = btvSearchLoc;
    TClientDataSet *cds = cdsLoc;
    TDataSource *ds = dsLoc;

	try
	{
        btv->OptionsView->NoDataToDisplayInfoText = RefreshText;
        Update();
        btv->DataController->DataSource = NULL;

        TDMMain::ClearDataSet(cds);

		cds->CommandText = "SMT.LOC_PARK_PKG.search_loc_2_0_cur";
		cds->Params->CreateParam(ftInteger, "p_num_tpe", ptInput)->AsInteger = eNumLoc->Value;
		cds->Params->CreateParam(ftInteger, "p_kod_ser", ptInput)->AsInteger = ep_->KodSer;
		cds->Params->CreateParam(ftCursor,  "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		if (!cds->Active)
        	throw Exception ("Не удалось открыть источник данных.");

        btv->OptionsView->NoDataToDisplayInfoText = NoDataTextDefault;
        btv->DataController->DataSource = ds;
	}
	catch (Exception &e)
	{
        btv->OptionsView->NoDataToDisplayInfoText = ErrorRefreshText;
        TDMMain::ShowAppException(AET_EXCEPTION, "< USL-1 > : Ошибка загрузки списка локомотивов.\n", e.Message);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmSearchLoc::eNumLocKeyPress(TObject *Sender, wchar_t &Key)
{
	if (Key == VK_RETURN) aSearch->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmSearchLoc::btvSearchLocCustomDrawCell(TcxCustomGridTableView *Sender,
          TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
          bool &ADone)
{
	//if ((int) AViewInfo->GridRecord->Values[clmnServiceFirmID->Index] == 0)
	//	ACanvas->Font->Color = DMMain->stlRowDisabled->TextColor;
}
//---------------------------------------------------------------------------

void __fastcall TfrmSearchLoc::btvSearchLocColumn8CompareRowValuesForCellMerging(TcxGridColumn *Sender,
		  TcxGridDataRow *ARow1, TcxCustomEditProperties *AProperties1,
		  const Variant &AValue1, TcxGridDataRow *ARow2,
		  TcxCustomEditProperties *AProperties2, const Variant &AValue2,
		  bool &AAreEqual)
{
	//if (ARow1->Values[btvSearchLocColumn3->Index] != ARow2->Values[btvSearchLocColumn3->Index])
	//	AAreEqual = false;
}
//---------------------------------------------------------------------------


