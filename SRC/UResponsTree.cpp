#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#pragma hdrstop

#include "uBinFunction.h"
#include "UDMMain.h"

#include "UResponsTree.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxTLdxBarBuiltInMenu"
#pragma resource "*.dfm"
TfrmResponsTree *frmResponsTree;
//---------------------------------------------------------------------------
__fastcall TfrmResponsTree::TfrmResponsTree(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmResponsTree::Show( StrctResponsTree* ep )
{
	ep_ = ep;
    TClientDataSet *cds_r = DMMain->cdsResponseDlg_Road;

    	cbRoad->Properties->ListSource = 0;

    	TDMMain::ClearDataSet(cds_r);

    	cds_r->CommandText = "SMT.smt_nsi_pkg.smt_nsi_road_cur";

        cds_r->Params->CreateParam(ftInteger, "p_access_level", ptInput)->AsInteger = ep_->AccLevel;
    	cds_r->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

    	TDMMain::OpenDS(cds_r, "OPEN", "CT", 1);

        cbRoad->Properties->ListSource = DMMain->dsResponseDlg_Road;
        cbRoad->EditValue = DMMain->cdsResponseDlg_Road->FieldByName("kod_road")->AsInteger;


    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmResponsTree::aSelectExecute(TObject *Sender)
{
    ep_->ParentPredID	= DMMain->cdsFirmTree_KASANTResponse->FieldByName("parent_id")->AsInteger;
    ep_->PredID			= DMMain->cdsFirmTree_KASANTResponse->FieldByName("child_id")->AsInteger;
    ep_->RoadKod		= (int)cbRoad->EditValue;

    ep_->ParentPredName = DMMain->cdsFirmTree_KASANTResponse->FieldByName("parent_name")->AsString;
    ep_->PredName		= DMMain->cdsFirmTree_KASANTResponse->FieldByName("child_name")->AsString;

	ModalResult = mrOk;
}
//---------------------------------------------------------------------------
void __fastcall TfrmResponsTree::aRefreshExecute(TObject *Sender)
{
	/* Загрузка дерева служб по одной дороге */

    TClientDataSet *cds = DMMain->cdsFirmTree_KASANTResponse;

	try
	{
    	tlFirmTree->DataController->DataSource = 0;

    	TDMMain::ClearDataSet(cds);
    	cds->CommandText = ep_->CommandText;
        cds->Params->CreateParam(ftInteger, "p_road_kod", ptInput)->AsInteger = (int)cbRoad->EditValue;
    	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
    	TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        tlFirmTree->DataController->DataSource = DMMain->dsFirmTree_KASANTResponse;
    }
	catch ( Exception &e )
	{
		throw Exception ("< URTR-1 > : Ошибка загрузки иерархии служб.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmResponsTree::FormShow(TObject *Sender)
{
	//aRefresh->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmResponsTree::aCancelExecute(TObject *Sender)
{
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

