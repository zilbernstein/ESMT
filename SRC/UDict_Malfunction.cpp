//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Log.h"

#include <memory>
#include <stdio.h>


#include "config.h"
#include "public.h"
#include "UDMMain.h"


#include "UEditDict_Malfunction.h"
#include "UDict_Malfunction.h"
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
#pragma link "cxGridDBTableView"
#pragma link "cxImageComboBox"
#pragma resource "*.dfm"
TfrmDict_Malfunction *frmDict_Malfunction;
//---------------------------------------------------------------------------
__fastcall TfrmDict_Malfunction::TfrmDict_Malfunction(TComponent* Owner)
	: TForm(Owner)
{
	TDMMain::LogEvenEnterExit("Вход. Справочник тип работы.");
}
//---------------------------------------------------------------------------
void __fastcall TfrmDict_Malfunction::aAddExecute(TObject *Sender)
{
	/* Добавить */
	RecordDicrMalf pDicrMalf;

	pDicrMalf.id       = 0;
	pDicrMalf.Type     = 3;
	pDicrMalf.Descrptn = "";
    pDicrMalf.flag     = 0;


	std::auto_ptr<TfrmEditDict_Malfunction> dlg (new TfrmEditDict_Malfunction(this));
	dlg->Caption = "[Добавление записи] - Редактирование справочника тип работы";
	if (mrOk == dlg->Show( &pDicrMalf ))
	{
		aRefresh->Execute();
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmDict_Malfunction::aEditExecute(TObject *Sender)
{
	/* Редактирование */

    if (((TcxGridDBBandedTableView*)grdMalfunction->ActiveView)->Controller->FocusedRow == NULL)
		return;

	RecordDicrMalf pDicrMalf;

	pDicrMalf.id       = cdsDict_Malf->FieldByName("m_id")->AsInteger;
	pDicrMalf.Type     = cdsDict_Malf->FieldByName("m_type")->AsInteger;
	pDicrMalf.Descrptn = cdsDict_Malf->FieldByName("m_descr")->AsString;
	pDicrMalf.flag     = 1;

	std::auto_ptr<TfrmEditDict_Malfunction> dlg (new TfrmEditDict_Malfunction(this));
	dlg->Caption = "[Редактирование записи] - Редактирование справочника тип работы";
	if (mrOk == dlg->Show( &pDicrMalf ))
	{
		aRefresh->Execute();
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmDict_Malfunction::aDeleteExecute(TObject *Sender)
{
	/* Удалить */

    if (((TcxGridDBBandedTableView*)grdMalfunction->ActiveView)->Controller->FocusedRow == NULL)
		return;

	std::auto_ptr<TClientDataSet> cds (new TClientDataSet(NULL));

	int qr = MessageBox(NULL, "Вы уверены, что хотите удалить данный тип работы?", "Подтверждение", MB_YESNO);
	if (IDYES == qr)
	{
		try
		{
			cds->CommandText = "smt_nsi2_pkg.smt_nsi_malfunct_del";
			cds->Params->CreateParam(ftInteger, "o_row_id", ptInputOutput)->AsInteger = cdsDict_Malf->FieldByName("m_id")->AsInteger;
			cds->Params->CreateParam(ftInteger, "p_m_user_id", ptInput)->AsInteger    = UserID;
			cds->Params->CreateParam(ftInteger, "o_err_code", ptInputOutput);
			cds->Params->CreateParam(ftString, "o_err_msg", ptInputOutput);
			TDMMain::OpenDS(cds.get(), "EXEC", "CT", 1);
		}
		catch (Exception &e)
		{
			throw Exception ("< UDM-1 > : Ошибка удаления выбранной записи.\n" + e.Message);
		}
		aRefresh->Execute();
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmDict_Malfunction::aRefreshExecute(TObject *Sender)
{
	/* Обновить */

	TClientDataSet *cds = cdsDict_Malf;
	TDataSource    *ds  = dsDict_Malf;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "smt_nsi2_pkg.smt_nsi_malfunct_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UDM-2 > : Ошибка загрузки работ по устранению неисправностей.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmDict_Malfunction::FormClose(TObject *Sender, TCloseAction &Action)
{
    TDMMain::LogEvenEnterExit("Выход. Справочник тип работы.");

	Action = caFree;
}
//---------------------------------------------------------------------------


