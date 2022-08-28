//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include <memory>

#include "UDMMain.h"
#include "config.h"
#include "public.h"

#include "Log.h"

#include "uEdit_DepoEnterMalfuncton.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxControls"
#pragma link "cxGraphics"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma link "dxStatusBar"
#pragma link "cxClasses"
#pragma link "cxGridBandedTableView"
#pragma link "cxStyles"
#pragma link "cxTL"
#pragma link "cxVGrid"
#pragma link "cxButtonEdit"
#pragma link "cxEdit"
#pragma link "cxInplaceContainer"
#pragma link "cxMemo"
#pragma link "cxTextEdit"
#pragma link "cxButtons"
#pragma link "cxImageComboBox"
#pragma resource "*.dfm"
TfrmEdit_DepoEnterMalfuncton *frmEdit_DepoEnterMalfuncton;
//---------------------------------------------------------------------------
__fastcall TfrmEdit_DepoEnterMalfuncton::TfrmEdit_DepoEnterMalfuncton(TComponent* Owner)
	: TForm(Owner)
{
	aLoadAll->Execute();
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmEdit_DepoEnterMalfuncton::Show(Strct_DepoEnter_Malfunct* te)
{
	te_ = te;

	rwWork->Properties->Value        = te_->wokr;
	rwMalfunction->Properties->Value = te_->malfunction;
	rwGuild->Properties->Value       = te_->guild;

	tmr->Enabled = true;

	return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnterMalfuncton::aSaveExecute(TObject *Sender)
{
	/* Сохранить */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	try
	{
		dsa->CommandText = "smt.incident2_pkg.depo_enter_malfunct_iu";

		dsa->Params->CreateParam(ftInteger, "o_malfunct_id", ptInputOutput)->AsInteger = te_->malfunct_id;
		dsa->Params->CreateParam(ftInteger, "p_row_id", ptInputOutput)->AsInteger	   = te_->row_id;
		dsa->Params->CreateParam(ftString,  "p_mwork", ptInput)->AsString		       = rwWork->Properties->Value;

		dsa->Params->CreateParam(ftString, "p_mmalfunct", ptInput)->AsString           = rwMalfunction->Properties->Value;
		dsa->Params->CreateParam(ftString, "p_mguild", ptInput)->AsString			   = rwGuild->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "p_user_id", ptInput)->AsString			   = te_->user_id;

		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);
		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
	}
	catch (Exception &e)
	{
		throw Exception ("< UEDEM-1 > : Ошибка сохранения исходной информации.\n" + e.Message);
	}
	ModalResult = mrOk;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnterMalfuncton::aCancelExecute(TObject *Sender)
{
	/* Отмена */

	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnterMalfuncton::aLoadWorkExecute(TObject *Sender)
{
	/* Загрузка справочников - Работа */

	TClientDataSet *cds					= cdsLoad;
	TcxEditorRow *rw					= rwWork;
	TcxImageComboBoxItem 	   *itm		= NULL;
	TcxImageComboBoxProperties *cbep	= (TcxImageComboBoxProperties*)rw->Properties->EditProperties;

	try
	{
		cds->Filter = "m_type = 0";
		cds->Filtered = true;
		cbep->Items->Clear();

		for (int i = 0; i < cds->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if ( itm )
			{
				itm->Description	= cds->FieldByName("m_descr")->AsString;
				itm->Value			= cds->FieldByName("m_id")->AsInteger;
			}
			cds->Next();
		}
	}
	catch ( Exception &e )
	{
		throw Exception ("< UEDEM-3 > : Ошибка загрузки справочника - Работа.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnterMalfuncton::aLoadAllExecute(TObject *Sender)
{
	/* загрузка общего справочника */
	TClientDataSet *cds = cdsLoad;
	TDataSource    *ds  = dsLoad;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "smt_nsi2_pkg.smt_nsi_malfunct_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		aLoadMalfunction->Execute();
		aLoadWork->Execute();
		aLoadGuild->Execute();
	}
	catch (Exception &e)
	{
		throw Exception ("< UEDEM-2 > : Ошибка загрузки общего справочника по работе устранения неисправности.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnterMalfuncton::aLoadMalfunctionExecute(TObject *Sender)
{
	/* Загрузка справочников - Неисправность */

	TClientDataSet *cds					= cdsLoad;
	TcxEditorRow *rw					= rwMalfunction;
	TcxImageComboBoxItem 	   *itm		= NULL;
	TcxImageComboBoxProperties *cbep	= (TcxImageComboBoxProperties*)rw->Properties->EditProperties;

	try
	{
		cds->Filter = "m_type = 1";
		cds->Filtered = true;
		cbep->Items->Clear();

		for (int i = 0; i < cds->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if ( itm )
			{
				itm->Description	= cds->FieldByName("m_descr")->AsString;
				itm->Value			= cds->FieldByName("m_id")->AsInteger;
			}
			cds->Next();
		}
	}
	catch ( Exception &e )
	{
		throw Exception ("< UEDEM-4 > : Ошибка загрузки справочника - Неисправность.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnterMalfuncton::aLoadGuildExecute(TObject *Sender)
{
	/* Загрузка справочников - Цех */

	TClientDataSet *cds					= cdsLoad;
	TcxEditorRow *rw					= rwGuild;
	TcxImageComboBoxItem 	   *itm		= NULL;
	TcxImageComboBoxProperties *cbep	= (TcxImageComboBoxProperties*)rw->Properties->EditProperties;

	try
	{
		cds->Filter = "m_type = 2";
		cds->Filtered = true;
		cbep->Items->Clear();

		for (int i = 0; i < cds->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if ( itm )
			{
				itm->Description	= cds->FieldByName("m_descr")->AsString;
				itm->Value			= cds->FieldByName("m_id")->AsInteger;
			}
			cds->Next();
		}
	}
	catch ( Exception &e )
	{
		throw Exception ("< UEDEM-5 > : Ошибка загрузки справочника - Цеха.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

