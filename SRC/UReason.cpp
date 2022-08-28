//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include <memory>
#include <stdio.h>

#include "config.h"
#include "public.h"
#include "UReason.h"
#include "UDMMain.h"
#include "U_Edit_Reason.h"
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
#pragma link "cxTextEdit"
#pragma link "cxTL"
#pragma link "cxTLData"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "cxVGrid"
#pragma link "dxBar"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsdxBarPainter"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma link "dxStatusBar"
#pragma resource "*.dfm"
Tfrm_Reason *frm_Reason;
int flag;
//---------------------------------------------------------------------------
__fastcall Tfrm_Reason::Tfrm_Reason(TComponent* Owner)
	: TForm(Owner)
{
	TDMMain::LogEvenEnterExit("Вход. НСИ. Причины инцидентов.");
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_Reason::aAddLrgExecute(TObject *Sender)
{
	/* Добавить */

	std::auto_ptr<Tfrm_Edit_Reason> dlg (new Tfrm_Edit_Reason(this));
	RecordReason pReason;

	pReason.reason_id    = 0;
	pReason.parent_id    = 0;
	pReason.sReasonName  = "";
	pReason.sMnemo       = "";
	pReason.sDescr       = "";

	if (mrOk == dlg->Show(&pReason))
	{
		aRefresh->Execute();
	}
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_Reason::FormClose(TObject *Sender, TCloseAction &Action)
{
	TDMMain::LogEvenEnterExit("Выход. НСИ. Причины инцидентов.");

	Action = caFree;
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_Reason::aFirmTreeCollapseExecute(TObject *Sender)
{
	if (tlReasonTree->AbsoluteCount > 0)
		tlReasonTree->Root->Collapse(true);
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_Reason::aFirmTreeExpandExecute(TObject *Sender)
{
	if (tlReasonTree->AbsoluteCount > 0)
		tlReasonTree->Root->Expand(true);
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_Reason::aRefreshExecute(TObject *Sender)
{
	/* Обновить */

	TClientDataSet *cds	= DMMain->cds_NSI_ReasonTree;
	TDataSource *ds		= DMMain->ds_NSI_ReasonTree;

	try
	{
		tlReasonTree->DataController->DataSource = 0;

		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.NSI_PKG.reason_tree_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		tlReasonTree->DataController->DataSource = ds;
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UR-1 > : Ошибка загрузки дерева причин.\n", e.Message);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_Reason::aEditExecute(TObject *Sender)
{
	/* Редактирование */

	TcxTreeListNode *ln = NULL;
	ln = tlReasonTree->FocusedNode;

	if (ln == NULL)
	{
		return;
	}

	TClientDataSet *cds	= DMMain->cds_NSI_ReasonTree;

	std::auto_ptr<Tfrm_Edit_Reason> dlg (new Tfrm_Edit_Reason(this));
	RecordReason pReason;

	pReason.reason_id    = cds->FieldByName("reason_id")->AsInteger;
	pReason.parent_id    = cds->FieldByName("parent_reason_id")->AsInteger;
	pReason.sReasonName  = cds->FieldByName("reason_name")->AsString;
	pReason.sMnemo       = cds->FieldByName("mnemo")->AsString;
	pReason.sDescr       = cds->FieldByName("descr")->AsString;

	if (mrOk == dlg->Show(&pReason))
	{
		aRefresh->Execute();
	}
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_Reason::aDeleteExecute(TObject *Sender)
{
	/* Удалить */

	TClientDataSet *cds	= DMMain->cds_NSI_ReasonTree;
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "SMT.NSI_PKG.reason_tree_del";

		dsa->Params->CreateParam(ftInteger, "p_reason_id", ptInputOutput )->AsInteger = cds->FieldByName("reason_id")->AsInteger;
		dsa->Params->CreateParam(ftInteger, "p_flag", ptInput )->AsInteger            = flag;
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput );
		dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput );

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
	}
	catch (Exception &e)
	{
		throw Exception ("< UR-2 > : Ошибка удаления причины инцидента.\n" + e.Message);
	}

	aRefresh->Execute();
	tlReasonTree->SetFocus();
}

//---------------------------------------------------------------------------

void __fastcall Tfrm_Reason::aQueryDeleteExecute(TObject *Sender)
{
	/* Вопрос. Удалять запись или нет. */

	TClientDataSet *cds	= DMMain->cds_NSI_ReasonTree;
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	/* 0 - Деток нету. 1 - Детки есть. */

	switch ( check_children() )
	{
		case 1: {
					int qr = MessageBox(NULL, "Вы уверены, что хотите удалить причину инцидента, который содержит дочерние узлы?", "Подтверждение", MB_YESNO);
					if (IDYES == qr)
					{
						flag = 1;
						aDelete->Execute();
					}
					break;
				}
		case 0: {
					int qr = MessageBox(NULL, "Вы уверены, что хотите удалить причину инцидента?", "Подтверждение", MB_YESNO);
					if (IDYES == qr)
					{
						flag = 0;
						aDelete->Execute();
					}
					break;
				}
	}
}
//---------------------------------------------------------------------------

int Tfrm_Reason::check_children()
{
	/* Проверка на детей */

	TcxTreeListNode *ln = NULL;
	ln = tlReasonTree->FocusedNode;

	if (ln == NULL)
	{
		return 2;
	}

	TClientDataSet *cds	= DMMain->cds_NSI_ReasonTree;
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "SMT.NSI_PKG.reason_tree_check_chil";

		dsa->Params->CreateParam(ftInteger, "p_reason_id", ptInputOutput )->AsInteger = cds->FieldByName("reason_id")->AsInteger;
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput );
		dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput );

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
		{
			return 1;
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
		}
		else
		{
			return 0;
		}
	}
	catch (Exception &e)
	{
		throw Exception ("< UR-3 > : Предупреждение.\n" + e.Message);
	}
}

