//---------------------------------------------------------------------------
#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include <memory>
#include "uBinFunction.h"
#include "config.h"
#include "public.h"
#include "UDMMain.h"
#include "Utils_JK.h"
#include "UEdit_Department_TCHR.h"
#include "UNSI_Firm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxDBTL"
#pragma link "cxInplaceContainer"
#pragma link "cxMaskEdit"
#pragma link "cxTL"
#pragma link "cxTLData"
#pragma link "cxVGrid"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "dxSkinsCore"
#pragma resource "*.dfm"
TfrmNSI_Firm *frmNSI_Firm;
//---------------------------------------------------------------------------
__fastcall TfrmNSI_Firm::TfrmNSI_Firm(TComponent* Owner)
	: TForm(Owner)
{
	TDMMain::LogEvenEnterExit("Вход. Структура предприятий сервисного обслуживания.");
}
//---------------------------------------------------------------------------
void __fastcall TfrmNSI_Firm::aRefreshExecute(TObject *Sender)
{
	// Заполнение списка ТЧР с филиалами и подразделениями

	TClientDataSet	*cds	= cdsFirmTree;
	TDataSource		*ds		= dsFirmTree;
    TcxGridDBBandedTableView *btv = DMMain->btvNSI_Filial_Department_TCHR;
    int vID = 0;
    TcxTreeListNode *node = NULL;

    if (cds->Active && cds->RecordCount > 0)
		vID = cdsFirmTree->FieldByName("kod_firm")->AsInteger;

	try
	{
        tlFirmTree->DataController->DataSource = 0;

        TDMMain::ClearDataSet(cds);
		cds->CommandText 	= "SMT.APP_NSI_PKG.firm_tchr_tree_cur";
		cds->Params->CreateParam(ftInteger, "p_id_user",     ptInput )->AsInteger = UserID;
		cds->Params->CreateParam(ftString,  "p_code_object", ptInput )->AsString  = "aAdminNew";
		cds->Params->CreateParam(ftCursor,  "o_cur",         ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        tlFirmTree->DataController->DataSource = ds;
		if ( tlFirmTree->AbsoluteCount > 0 )
            tlFirmTree->TopVisibleNode->Expand(false);

		node = tlFirmTree->FindNodeByKeyValue(vID, tlFirmTree->Root, false, true);
		if (node != NULL)
       		node->Focused = true;
	}
	catch (Exception &e)
	{
		throw Exception ("< UNSIF-1 > : Ошибка загрузки дерева предприятий.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmNSI_Firm::FormClose(TObject *Sender, TCloseAction &Action)

{
	TDMMain::LogEvenEnterExit("Выход. Структура предприятий сервисного обслуживания.");
	Action = caFree;
}
//---------------------------------------------------------------------------
void __fastcall TfrmNSI_Firm::aAddExecute(TObject *Sender)
{
    StrctEditDepartmentTCHR sf;
    std::auto_ptr<TfrmEdit_Department_TCHR> dlg ( new TfrmEdit_Department_TCHR( this ) );
    TcxTreeListNode *node = NULL;

    sf.KodFirm = 0;
    sf.KodFirmParent = 0;
    sf.KodFirmType = 63;
    sf.KodRoad = 0;
    sf.FirmName = "";
    sf.Mnemo = "";
    sf.PredID = 0;

	if (mrOk == dlg->Show(&sf))
    {
		aRefresh->Execute();
		node = tlFirmTree->FindNodeByKeyValue(sf.KodFirm, tlFirmTree->Root, false, true);
		if ( node != NULL )
       		node->Focused = true;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmNSI_Firm::aEditExecute(TObject *Sender)
{
	TClientDataSet *cds = cdsFirmTree;
    StrctEditDepartmentTCHR sf;
	std::auto_ptr<TfrmEdit_Department_TCHR> dlg (new TfrmEdit_Department_TCHR(this));
    TcxTreeListNode *node = NULL;

	sf.KodFirm       = cds->FieldByName("kod_firm")->AsInteger;
	sf.KodFirmParent = cds->FieldByName("kod_firm_parent")->AsInteger;
	sf.KodFirmType 	 = cds->FieldByName("kod_firm_type")->AsInteger;
	sf.KodRoad 		 = cds->FieldByName("kod_road")->AsInteger;
	sf.FirmName 	 = cds->FieldByName("firm_name")->AsString;
	sf.Mnemo 	 	 = cds->FieldByName("mnemo")->AsString;
    sf.PredID 		 = cds->FieldByName("tchr_pred_id")->AsInteger;

	if (mrOk == dlg->Show(&sf))
    {
		aRefresh->Execute();
        node = tlFirmTree->FindNodeByKeyValue(sf.KodFirm, tlFirmTree->Root, false, true);
		if (node != NULL)
            node->Focused = true;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmNSI_Firm::aFirmTreeExpandExecute(TObject *Sender)
{
	if (tlFirmTree->AbsoluteCount > 0)
    	tlFirmTree->Root->Expand(true);
}
//---------------------------------------------------------------------------

void __fastcall TfrmNSI_Firm::aFirmTreeCollapseExecute(TObject *Sender)
{
	if (tlFirmTree->AbsoluteCount > 0)
    	tlFirmTree->Root->Collapse(true);
}
//---------------------------------------------------------------------------

void __fastcall TfrmNSI_Firm::aDeleteExecute(TObject *Sender)
{
	/* Удаление */
	TClientDataSet *cds = cdsFirmTree;
	TcxTreeListNode *ln = NULL;
	ln = tlFirmTree->FocusedNode;

	if (ln == NULL)
	{
		return;
	}

	switch ( check_children() )
	{
		case 0: {
					int qr = MessageBox(NULL, "Вы уверены, что хотите удалить данную запись?", "Подтверждение", MB_YESNO);
					if (IDYES != qr)
					{
						return;
					}
					break;
				}
		case 1: {
					int qr = MessageBox(NULL, "Вы уверены, что хотите удалить данную запись, которая содержит дочерние узлы?", "Подтверждение", MB_YESNO);
					if (IDYES != qr)
					{
						return;
					}
					break;
				}
	}


	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "SMT.APP_NSI_PKG.firm_tchr_tree_del";
		dsa->Params->CreateParam(ftInteger, "p_access",   ptInput )->AsInteger = cds->FieldByName("kod_firm")->AsInteger;
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput );
		dsa->Params->CreateParam(ftString, "o_err_msg", ptInputOutput );

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if ( dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0 )
		{
            throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
			//return; /* Имеются дочерние узлы */
		}
	}
	catch ( Exception &e )
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UNSIF-2 > : Ошибка удаления выбранной записи.\n", e.Message);
	}
	aRefresh->Execute();
}
//---------------------------------------------------------------------------

int TfrmNSI_Firm::check_children()
{
	/* Проверка на детей */

	TClientDataSet *cds = cdsFirmTree;
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "SMT.APP_NSI_PKG.firm_tchr_tree_child";
		dsa->Params->CreateParam(ftInteger, "p_access",   ptInput )->AsInteger = cds->FieldByName("kod_firm")->AsInteger;
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput );

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if ( dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0 )
		{
			return 1; /* Имеются дочерние узлы */
		}
		else
		{
			return 0; /* Нет дочерних узлов */
		}
	}
	catch ( Exception &e )
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UNSIF-2 > : Ошибка удаления выбранной записи.\n", e.Message);
	}
//------------------------------------------------------------------------------

}
