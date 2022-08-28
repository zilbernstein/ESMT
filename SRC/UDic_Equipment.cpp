//---------------------------------------------------------------------------
#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include <memory>
#include <stdio.h>
#include "uBinFunction.h"
#include "config.h"
#include "public.h"
#include "UDMMain.h"
#include "Utils_JK.h"

#include "UDic_Equipment.h"
#include "UEdit_Dic_Equipment.h"
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
#pragma resource "*.dfm"
TfrmDic_Equipment *frmDic_Equipment;
//---------------------------------------------------------------------------
__fastcall TfrmDic_Equipment::TfrmDic_Equipment(TComponent* Owner)
	: TForm(Owner)
{
		TDMMain::LogEvenEnterExit("Вход. Справочник оборудования.");
}
//---------------------------------------------------------------------------
void __fastcall TfrmDic_Equipment::FormClose(TObject *Sender, TCloseAction &Action)

{
	/* Закрытие формы */

	TDMMain::LogEvenEnterExit("Выход. Справочник оборудования.");

	Action = caFree;
}
//---------------------------------------------------------------------------


void __fastcall TfrmDic_Equipment::aRefreshLrgExecute(TObject *Sender)
{
	/* Обновить */
	TClientDataSet	*cds	= cdsEqwipmentTree;
	TDataSource		*ds		= dsEqwipmentTree;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.NSI_PKG.eq_tree_new_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UDEQ-1 > : Ошибка загрузки классификатора оборудования.\n", e.Message);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmDic_Equipment::aAddLrgExecute(TObject *Sender)
{
	/* Добавить запись */
	TrEquipment eq;
	std::auto_ptr<TfrmEdit_Dic_Equipment> dlg ( new TfrmEdit_Dic_Equipment( this ) );

	eq.eq_id   =  0;
	eq.eq_p_id =  0;
	eq.eq_name =  "";
	eq.eq_sd   =  "";
	eq.lvl     =  1;

	dlg->Caption = "Редактор справочника оборудования. [Добавить запись.]";
	if (mrOk == dlg->Show(&eq))
	{
		aRefreshLrg->Execute();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmDic_Equipment::aEditLrgExecute(TObject *Sender)
{
	/* Редактировать запись */

	TClientDataSet *cds = cdsEqwipmentTree;
	TcxTreeListNode *node = NULL;
	TrEquipment eq;

	std::auto_ptr<TfrmEdit_Dic_Equipment> dlg ( new TfrmEdit_Dic_Equipment( this ) );

	eq.eq_id   = cds->FieldByName("class_id")->AsInteger;
	eq.eq_p_id = cds->FieldByName("parent_class_id")->AsInteger;
	eq.eq_name = cds->FieldByName("class_name")->AsString;
	eq.eq_sd   = cds->FieldByName("mnemo")->AsString;
	eq.lvl     = cds->FieldByName("lvl")->AsInteger;

	dlg->Caption = "Редактор справочника оборудования. [Редактировать запись.]";
	if (mrOk == dlg->Show(&eq))
	{
		aRefreshLrg->Execute();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmDic_Equipment::aDeleteLrgExecute(TObject *Sender)
{
	/* Удалить запись */
	TClientDataSet *cds = cdsEqwipmentTree;

	switch (if_child())
	{
		case 0: {
					int qr = MessageBox(NULL, "Вы уверены, что хотите удалить данную запись, которая содержит дочерние узлы?", "Подтверждение", MB_YESNO);
					if (IDYES != qr)
					{
						return;
					}
					break;
					}
		case 1: {
					int qr = MessageBox(NULL, "Вы уверены, что хотите удалить данную запись?", "Подтверждение", MB_YESNO);
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
		dsa->CommandText = "SMT.NSI_PKG.eq_tree_new_del";
		dsa->Params->CreateParam(ftInteger, "p_class_id", ptInput)->AsInteger = cds->FieldByName("class_id")->AsInteger;
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput );
		dsa->Params->CreateParam(ftString,  "o_err_msg",  ptInputOutput );

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if ( dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0 )
		{
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
			//return; /* Имеются дочерние узлы */
		}
		aRefreshLrg->Execute();
	}
	catch ( Exception &e )
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UDEQ-2 > : Ошибка удаления выбранной записи.\n", e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmDic_Equipment::aFirmTreeCollapseExecute(TObject *Sender)
{
	/*  */
	if (tlEqwipmentTree->AbsoluteCount > 0)
		tlEqwipmentTree->Root->Collapse(true);
}
//---------------------------------------------------------------------------

void __fastcall TfrmDic_Equipment::aFirmTreeExpandExecute(TObject *Sender)
{
	/*  */
	if (tlEqwipmentTree->AbsoluteCount > 0)
		tlEqwipmentTree->Root->Expand(true);
}
//---------------------------------------------------------------------------

int TfrmDic_Equipment::if_child()
{
	/* Проверка на дочернии узлы */
	TcxTreeListNode *node = NULL;
	TClientDataSet *cds = cdsEqwipmentTree;
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "SMT.NSI_PKG.eq_tree_new_child";
		dsa->Params->CreateParam(ftInteger, "p_class_id", ptInput)->AsInteger = cds->FieldByName("class_id")->AsInteger;
		dsa->Params->CreateParam(ftInteger, "o_err_code", ptInputOutput);
		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger == 0)
		{
			return 1; /* Нет дочерних узлов */
		}
		else
		{
			return 0; /* имеются дочерние узлы */
		}

	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UDEQ-3 > : Ошибка загрузки информации по данной записи.\n", e.Message);
		ModalResult = mrAbort;
	}
}

