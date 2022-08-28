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

#include "uWineSide.h"
#include "uEditWineSide.h"
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
#pragma link "cxGridDBBandedTableView"
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
#pragma link "cxDBTL"
#pragma link "cxInplaceContainer"
#pragma link "cxTLData"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "cxMaskEdit"
#pragma link "cxTextEdit"
#pragma resource "*.dfm"
TfrmWineSide *frmWineSide;
//---------------------------------------------------------------------------
__fastcall TfrmWineSide::TfrmWineSide(TComponent* Owner)
	: TForm(Owner)
{
	TDMMain::LogEvenEnterExit("Вход. Анализ: Виновная сторона.");
}
//---------------------------------------------------------------------------
void __fastcall TfrmWineSide::FormClose(TObject *Sender, TCloseAction &Action)
{
	/* Закрываем форму */

    TDMMain::LogEvenEnterExit("Выход. Анализ: Виновная сторона.");

	Action = caFree;
}
//---------------------------------------------------------------------------
void __fastcall TfrmWineSide::aRefreshExecute(TObject *Sender)
{
	/* Обновить */
	TClientDataSet *cds	= cdsWineSide;
	TDataSource *ds		= dsWineSide;

	try
	{
		tlWineSide->DataController->DataSource = 0;

		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.smt_nsi2_pkg.smt_nsi_vinov_s_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		tlWineSide->DataController->DataSource = ds;
    }
	catch (Exception &e)
    {
		TDMMain::ShowAppException(AET_EXCEPTION, "< UWS-1 > : Ошибка загрузки дерева виновных сторон. ", e.Message);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmWineSide::aAddLrgExecute(TObject *Sender)
{
	/* Добавить */
	RecordWineSide pWineSide;

	pWineSide.id    = 0;
	pWineSide.pr_id = 0;

	std::auto_ptr<TfrmEditWineSide> dlg (new TfrmEditWineSide(this));

	dlg->Caption = "Редактировать анализ: Виновная сторона. [Добавить запись.]";
	if (mrOk == dlg->Show(&pWineSide))
	{
		aRefreshLrg->Execute();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmWineSide::aEditLrgExecute(TObject *Sender)
{
	/* Редактировать */
	TcxTreeListNode *ln = NULL;
	ln = tlWineSide->FocusedNode;

	if (ln == NULL)
	{
		return;
	}

	TClientDataSet *cds	= cdsWineSide;

	RecordWineSide pWineSide;

	pWineSide.id    = cds->FieldByName("kod_firm_child")->AsInteger;
	pWineSide.pr_id = cds->FieldByName("kod_firm_parent")->AsInteger;

	std::auto_ptr<TfrmEditWineSide> dlg (new TfrmEditWineSide(this));

	dlg->Caption = "Редактировать анализ: Виновная сторона. [редактировать запись.]";
	if (mrOk == dlg->Show(&pWineSide))
	{
		aRefreshLrg->Execute();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmWineSide::aDeleteLrgExecute(TObject *Sender)
{
	/* Удалить */

	TClientDataSet *cds	= cdsWineSide;
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "smt_nsi2_pkg.nsi_vinov_s_del";
		dsa->Params->CreateParam(ftInteger, "p_id_firm",  ptInputOutput)->AsInteger = cds->FieldByName("kod_firm_child")->AsInteger;
		dsa->Params->CreateParam(ftInteger, "p_user_id",  ptInput)->AsInteger       = UserID;
		dsa->Params->CreateParam(ftInteger, "o_err_code", ptInputOutput);
		dsa->Params->CreateParam(ftString,  "o_err_msg",  ptInputOutput);
		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		aRefreshLrg->Execute();
	}
	catch (Exception &e)
	{
		throw Exception ("< UWS-2 > : Ошибка удаления выбранной записи.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

int TfrmWineSide::check_children()
{
	/* Проверка на детей */

	TcxTreeListNode *ln = NULL;
	ln = tlWineSide->FocusedNode;

	if (ln == NULL)
	{
		return 2;
	}

	TClientDataSet *cds	= cdsWineSide;
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "smt_nsi2_pkg.nsi_vinov_s_child";

		dsa->Params->CreateParam(ftInteger, "p_kod_firm", ptInputOutput)->AsInteger = cds->FieldByName("kod_firm_child")->AsInteger;
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger == 0)
		{
			return 0;
		}
		else
		{
			return 1;
		}
	}
	catch (Exception &e)
	{
		throw Exception ("< UWS-3 > : Предупреждение.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmWineSide::aQueryDeleteExecute(TObject *Sender)
{
	/*  Вопрос. Удалять запись или нет. */

	/* 0 - Деток нету. 1 - Детки есть. */


	TClientDataSet *cds	= cdsWineSide;
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	switch ( check_children() )
	{
		case 1: {
					int qr = MessageBox(NULL, "Вы уверены, что хотите удалить виновную сторону, который содержит дочерние узлы?", "Подтверждение", MB_YESNO);
					if (IDYES == qr)
					{
						aDeleteLrg->Execute();
					}
					break;
				}
		case 0: {
					int qr = MessageBox(NULL, "Вы уверены, что хотите удалить виновную сторону?", "Подтверждение", MB_YESNO);
					if (IDYES == qr)
					{
						aDeleteLrg->Execute();
					}
					break;
				}
	}
}
//---------------------------------------------------------------------------

