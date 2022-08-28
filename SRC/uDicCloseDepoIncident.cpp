//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "config.h"
#include "public.h"
#include "UDMMain.h"
#include "Utils_JK.h"
#include <memory>
#include <stdio.h>
#include <string.h>
#include "Log.h"
#pragma hdrstop


#include "uDicCloseDepoIncident.h"
#include "uEditDicCloseDepoIncident.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxCustomData"
#pragma link "cxDBTL"
#pragma link "cxGraphics"
#pragma link "cxGridBandedTableView"
#pragma link "cxInplaceContainer"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxMaskEdit"
#pragma link "cxStyles"
#pragma link "cxTL"
#pragma link "cxTLData"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "cxVGrid"
#pragma link "dxBar"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsdxBarPainter"
#pragma link "dxBarExtItems"
#pragma link "cxData"
#pragma link "cxDataStorage"
#pragma link "cxDBData"
#pragma link "cxEdit"
#pragma link "cxFilter"
#pragma link "cxGrid"
#pragma link "cxGridCustomTableView"
#pragma link "cxGridCustomView"
#pragma link "cxGridDBBandedTableView"
#pragma link "cxGridLevel"
#pragma link "cxGridTableView"
#pragma link "cxNavigator"
#pragma link "dxSkinscxPCPainter"
#pragma link "cxBarEditItem"
#pragma link "cxImageComboBox"
#pragma resource "*.dfm"
TfrmDicCloseDepoIncident *frmDicCloseDepoIncident;
//---------------------------------------------------------------------------
__fastcall TfrmDicCloseDepoIncident::TfrmDicCloseDepoIncident(TComponent* Owner)
	: TForm(Owner)
{
	TDMMain::LogEvenEnterExit("Вход. Объединенный НСИ.");
}
//---------------------------------------------------------------------------
void __fastcall TfrmDicCloseDepoIncident::FormClose(TObject *Sender, TCloseAction &Action)
{
	/* Закрыть */

    TDMMain::LogEvenEnterExit("Выход. Объединенный НСИ.");

	Action = caFree;
}
//---------------------------------------------------------------------------
void __fastcall TfrmDicCloseDepoIncident::aAddExecute(TObject *Sender)
{
	/* Добавить */
	RecordThree pThree;

	pThree.id     = 0;
	pThree.pr_id  = 0;
	pThree.nam    = "";
	pThree.note   = "";

	std::auto_ptr<TfrmEditDicCloseDepoIncident> dlg ( new TfrmEditDicCloseDepoIncident( this ) );

	dlg->Caption = "Редактировать объединенный НСИ. [Добавить запись.]";
	if (mrOk == dlg->Show(&pThree))
	{
		aRefresh->Execute();
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmDicCloseDepoIncident::aEditExecute(TObject *Sender)
{
	/* Редактировать */

	if (((TcxGridDBBandedTableView*)grdThree->ActiveView)->Controller->FocusedRow == NULL)
		return;

	TClientDataSet *cds	= cdsThree;
	RecordThree pThree;

	pThree.id     =  cds->FieldByName("id")->AsInteger;
	pThree.pr_id  =  cds->FieldByName("parent_id")->AsInteger;
	pThree.nam    =  cds->FieldByName("name")->AsString;
	pThree.note   =  cds->FieldByName("mnemo")->AsString;

	std::auto_ptr<TfrmEditDicCloseDepoIncident> dlg ( new TfrmEditDicCloseDepoIncident( this ) );

	dlg->Caption = "Редактировать объединенный НСИ. [Редактировать запись.]";
	if (mrOk == dlg->Show(&pThree))
	{
		aRefresh->Execute();
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmDicCloseDepoIncident::aDeleteExecute(TObject *Sender)
{
	/* Удалить */

	if (((TcxGridDBBandedTableView*)grdThree->ActiveView)->Controller->FocusedRow == NULL)
		return;

    TClientDataSet *cds	= cdsThree;

	int qr = MessageBox(NULL, "Вы уверены, что хотите удалить данную запись?", "Подтверждение", MB_YESNO);
	if (IDYES != qr)
	{
		return;
	}

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "smt_nsi2_pkg.smt_nsi_univ_del";
		dsa->Params->CreateParam(ftInteger, "p_id",       ptInput)->AsInteger  = cds->FieldByName("id")->AsInteger;
		dsa->Params->CreateParam(ftInteger, "p_user_id",  ptInput)->AsInteger  = UserID;
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString,  "o_Err_Msg",  ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
        aRefresh->Execute();
	}
	catch (Exception &e)
	{
		throw Exception ("< UTHREE-2 > : Ошибка удаления данной записи.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmDicCloseDepoIncident::aRefreshExecute(TObject *Sender)
{
	/* Обновить */
	int i;

	try
	{
		i = int(icbb->EditValue);
	}
	catch (Exception &e)
	{
		throw Exception("Ошибка загрузки объединенного справочника НСИ.\n\nНе выбран тип.\n");
	}

	TClientDataSet *cds	= cdsThree;
	TDataSource     *ds	= dsThree;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "smt_nsi2_pkg.smt_nsi_univ_cur";
		cds->Params->CreateParam(ftCursor,  "o_cur", ptInputOutput);
		cds->Params->CreateParam(ftInteger, "p_id", ptInput)->AsInteger = int(icbb->EditValue);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UTHREE-1 > : Ошибка загрузки объединенного справочника НСИ.\n",  e.Message);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------
