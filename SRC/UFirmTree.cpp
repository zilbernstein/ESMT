#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#pragma hdrstop

#include "uBinFunction.h"
#include "UDMMain.h"

#include "UFirmTree.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxNavigator"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma resource "*.dfm"
TfrmFirmTree *frmFirmTree;
//---------------------------------------------------------------------------
__fastcall TfrmFirmTree::TfrmFirmTree(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmFirmTree::Show( StrctFirmTree* ep )
{
	ep_ = ep;
    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmFirmTree::aSelectExecute(TObject *Sender)
{
    ep_->PredID = DMMain->cdsFirmTree->FieldByName(ep_->KeyFieldName)->AsInteger;
    ep_->ParentPredID = DMMain->cdsFirmTree->FieldByName(ep_->ParentFieldName)->AsInteger;

    if ( ep_->TypeTree == TT_Branch )
    {
    	ep_->PredName = DMMain->cdsFirmTree->FieldByName(ep_->CategoryFieldName)->AsString;
    	ep_->ParentPredName =	DMMain->cdsFirmTree->FieldByName(ep_->CategoryAddFieldName)->AsString;
    }
    else
    	ep_->PredName = DMMain->cdsFirmTree->FieldByName(ep_->ListFieldName)->AsString;

	ModalResult = mrOk;
}
//---------------------------------------------------------------------------

void __fastcall TfrmFirmTree::aRefreshExecute(TObject *Sender)
{
	/* Загрузка дерева предприятий */

    tlFirmTree->DataController->DataSource = 0;
    btvFirmTree->DataController->DataSource = 0;

    TClientDataSet *cds = DMMain->cdsFirmTree;

	try
	{
    	TDMMain::ClearDataSet(cds);

    	cds->CommandText = ep_->CommandText; //"SMT.SMT_NSI_PKG.smt_nsi_firm_tree_cur";

        if ( ep_->TypeTree == TT_PTOL || ep_->TypeTree == TT_TCHR || ep_->TypeTree == TT_Depot || ep_->TypeTree == TT_TMHFilial )
        	cds->Params->CreateParam(ftInteger, "p_road_kod", ptInput)->AsInteger = ep_->AccLevel;

    	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

    	TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        tlFirmTree->Visible = ( ep_->TypeTree == TT_FullTree || ep_->TypeTree == TT_Depot || ep_->TypeTree == TT_TCHR || ep_->TypeTree == TT_Branch );
        grdFirmTree->Visible = !tlFirmTree->Visible;
        Panel1->Visible = grdFirmTree->Visible;

        if ( tlFirmTree->Visible )
        {
        	tlFirmTree->Align = alClient;
            tlFirmTree->DataController->DataSource = DMMain->dsFirmTree;
            tlFirmTree->SetFocus();
        }
        else
        {
        	grdFirmTree->Align = alClient;
            btvFirmTree->DataController->DataSource = DMMain->dsFirmTree;
            teFilter->SetFocus();
        }


        switch ( ep_->TypeTree )
        {
        	case TT_Pereg:
            case TT_TMHFilial:
            case TT_Station:
            case TT_PTOL:
                clmnGrdName->DataBinding->FieldName = ep_->ListFieldName;
                clmnGrdCategory->DataBinding->FieldName = ep_->CategoryFieldName;
            	break;
            /*case TT_Station:
            	tlFirmTree->OptionsView->CategorizedColumn = clmnCategory;
            	break;
            /*case TT_PTOL:
            	tlFirmTree->OptionsView->CategorizedColumn = clmnCategory;
            	break;
            */
            case TT_FullTree:
            case TT_Depot:
            case TT_TCHR:
            case TT_Branch:
        		clmnName->DataBinding->FieldName = ep_->ListFieldName;
        		tlFirmTree->DataController->KeyField = ep_->KeyFieldName;
        		tlFirmTree->DataController->ParentField = ep_->ParentFieldName;

            	break;
        }
    }
	catch ( Exception &e )
	{
		throw Exception ("< UFRMTR-1 > : Ошибка загрузки дерева предприятий.\n" + e.Message);
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmFirmTree::FormShow(TObject *Sender)
{
    try
    {
		aRefresh->Execute();
    }
    catch ( Exception &e )
    {
        Application->ShowException(&e);
        ModalResult = mrCancel;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmFirmTree::aCancelExecute(TObject *Sender)
{
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------
void __fastcall TfrmFirmTree::btvFirmTreeTcxGridDBDataControllerTcxDataSummaryDefaultGroupSummaryItems0GetText(TcxDataSummaryItem *Sender,
          const Variant &AValue, bool AIsFooter, UnicodeString &AText)

{
	AText = "---";
}
//---------------------------------------------------------------------------

void __fastcall TfrmFirmTree::tlFirmTreeDblClick(TObject *Sender)
{
    if 	(
    		( ep_->AllowParent == false && tlFirmTree->FocusedNode->HasChildren ) ||
            ( ep_->TypeTree == TT_Branch && (int) tlFirmTree->FocusedNode->Values[clmnCategoryAdd->ItemIndex] == 0 )
    	)
    	return;

    aSelect->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmFirmTree::teFilterPropertiesChange(TObject *Sender)
{
    TcxFilterCriteriaItemList *root = btvFirmTree->DataController->Filter->Root;
	root->Clear();
    root->BoolOperatorKind = fboAnd;
    root->AddItem(clmnGrdName, foLike, "%" + teFilter->Text.UpperCase() + "%", teFilter->Text.UpperCase());
    btvFirmTree->DataController->Filter->Active = true;
}
//---------------------------------------------------------------------------

