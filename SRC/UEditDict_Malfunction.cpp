//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include <memory>
#include <stdio.h>

#include "config.h"
#include "public.h"
#include "UDMMain.h"

#include "UEditDict_Malfunction.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxControls"
#pragma link "cxEdit"
#pragma link "cxGraphics"
#pragma link "cxInplaceContainer"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxStyles"
#pragma link "cxVGrid"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "cxDropDownEdit"
#pragma link "cxClasses"
#pragma link "cxGridBandedTableView"
#pragma link "cxMemo"
#pragma link "cxTL"
#pragma link "cxImageComboBox"
#pragma resource "*.dfm"
TfrmEditDict_Malfunction *frmEditDict_Malfunction;
/* 0 - Работа */
/* 1 - Неисправность */
/* 2 - Цех */

//---------------------------------------------------------------------------
__fastcall TfrmEditDict_Malfunction::TfrmEditDict_Malfunction(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmEditDict_Malfunction::Show( RecordDicrMalf* pDicrMalf )
{
	/*  */
	pDicrMalf_ = pDicrMalf;

	if (pDicrMalf_->flag == 1)
	{
		rwTypeWork->Properties->Options->Editing = false;
	}
	else
	{
	    rwTypeWork->Properties->Options->Editing = true;
	}

	if (pDicrMalf_->Type != 3)
	{
		rwTypeWork->Properties->Value = pDicrMalf_->Type;
		rwDescr->Properties->Value    = pDicrMalf_->Descrptn;
	}

	return ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TfrmEditDict_Malfunction::aCloseExecute(TObject *Sender)
{
    /* Отмена (Закрыть форму) */
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------
void __fastcall TfrmEditDict_Malfunction::aSaveExecute(TObject *Sender)
{
	/* Сохранить */

	std::auto_ptr<TClientDataSet> cds (new TClientDataSet(NULL));

	try
	{
		cds->CommandText = "smt_nsi2_pkg.smt_nsi_malfunct_iu";

		cds->Params->CreateParam(ftInteger, "o_row_id", ptInputOutput)->AsInteger = pDicrMalf_->id;
		cds->Params->CreateParam(ftInteger, "p_m_typ", ptInput)->AsInteger        = int(rwTypeWork->Properties->Value);
		cds->Params->CreateParam(ftString, "p_m_descr", ptInput)->AsString        = rwDescr->Properties->Value;
		cds->Params->CreateParam(ftInteger, "p_m_user_id", ptInput)->AsInteger    = UserID;

		cds->Params->CreateParam(ftInteger, "o_err_code", ptInputOutput);
		cds->Params->CreateParam(ftString, "o_err_msg", ptInputOutput);

		TDMMain::OpenDS(cds.get(), "EXEC", "CT", 1);

		ModalResult = mrOk;
	}
	catch ( Exception &e )
	{
		throw Exception ("< UEDM-1 > : Ошибка сохранение информации.Could not convert variant of type (UnicodeString) into type (Boolean).\n"+ e.Message);
	}
}
//---------------------------------------------------------------------------
