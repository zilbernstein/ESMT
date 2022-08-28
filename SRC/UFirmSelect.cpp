//---------------------------------------------------------------------------
#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include "UDMMain.h"
#include "config.h"
#include "public.h"
#include "Utils_JK.h"
#include "UFirmSelect.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxNavigator"
#pragma link "dxSkinsCore"
#pragma resource "*.dfm"
TfrmFirmSelect *frmFirmSelect;
//---------------------------------------------------------------------------
__fastcall TfrmFirmSelect::TfrmFirmSelect(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmFirmSelect::Show( StrctFirmTree_* ep )
{
	ep_ = ep;

    if ( ep_->only_depot == false )
    	rgFirmGroup->EditValue = cfg_.ini->ReadInteger("TfrmFirmSelect", "FirmGroup", TT_Depot_);
    else
    {
    	rgFirmGroup->EditValue = TT_Depot_;
        rgFirmGroup->Enabled = false;
    }

    aFirmGroupChange->Execute();
    btvFirmTree->DataController->LocateByKey(ep_->PredID);

    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmFirmSelect::aCancelExecute(TObject *Sender)
{
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmFirmSelect::aSelectExecute(TObject *Sender)
{
    TClientDataSet *cds;
    TcxGridDBTableView	*btv = btvFirmTree;
    try
    {
		if	( btv->DataController->RowCount > 0 &&  btv->Controller->FocusedRow != NULL )
        {
            cds = (TClientDataSet*)btvFirmTree->DataController->DataSource->DataSet;

            ep_->PredID = cds->FieldByName(clmnGrdPredID->DataBinding->FieldName)->AsInteger;
            //ep_->ParentPredID = DMMain->cdsFirmTree->FieldByName(ep_->ParentFieldName)->AsInteger;

            ep_->PredName = cds->FieldByName(clmnGrdName->DataBinding->FieldName)->AsString;
            //ep_->ParentPredName =	DMMain->cdsFirmTree->FieldByName(ep_->CategoryAddFieldName)->AsString;
            ep_->fail_type_place = (int)rgFirmGroup->EditValue;

            cfg_.ini->WriteInteger("TfrmFirmSelect", "FirmGroup", (int)rgFirmGroup->EditValue);

            ModalResult = mrOk;
        }
    }
    catch ( Exception &e )
    {
    	TDMMain::ShowAppException(AET_EXCEPTION, "< UFRMS-1 > : Ошибка возврата предприятия.\n", e.Message);
    }

}
//---------------------------------------------------------------------------

void __fastcall TfrmFirmSelect::aFirmGroupChangeExecute(TObject *Sender)
{
    // Назначить нужный датасет в зависимости от выбранной группы предприятий

    TcxGridDBTableView	*tv = btvFirmTree;

	switch ( (int)rgFirmGroup->EditValue )
    {
        case TT_Pereg_:
        	tv->DataController->DataSource = DMMain->ds_NSI_Pereg;
        	break;
		case TT_Station_:
        	tv->DataController->DataSource = DMMain->ds_NSI_Station;
        	break;
        case TT_Depot_: case TT_PTOL_:
        	tv->DataController->DataSource = DMMain->ds_NSI_TCH_Full_List;
        	break;
    }
}
//---------------------------------------------------------------------------
