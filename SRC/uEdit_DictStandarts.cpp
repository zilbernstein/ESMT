//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "Log.h"

#include <memory>
#include <stdio.h>


#include "config.h"
#include "public.h"
#include "UDMMain.h"

#include "uEdit_DictStandarts.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxEdit"
#pragma link "cxGraphics"
#pragma link "cxGridBandedTableView"
#pragma link "cxImageComboBox"
#pragma link "cxInplaceContainer"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxStyles"
#pragma link "cxTextEdit"
#pragma link "cxTL"
#pragma link "cxVGrid"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "cxMaskEdit"
#pragma resource "*.dfm"
TfrmEdit_DictStandarts *frmEdit_DictStandarts;
//---------------------------------------------------------------------------
__fastcall TfrmEdit_DictStandarts::TfrmEdit_DictStandarts(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmEdit_DictStandarts::Show( RecordDicrStand* pDicrStand )
{
	/* Подготовка формы */

	/* Загрузка справочников */
	aLoadTypeRepairs->Execute();  // Тип ремонта
	aLoadDepo->Execute();         // Депо
	aLoad_Exp_Depo->Execute();    // Эксплуатационное депо
	aLoad_SerName->Execute();     // Серия

	pDicrStand_ = pDicrStand;

	rwHH->Properties->Value          = pDicrStand_->hh;
	rwKM->Properties->Value          = pDicrStand_->km;
	rwTypeRepairs->Properties->Value = pDicrStand_->tr_id;
	rwDepo->Properties->Value        = pDicrStand_->st_id_dep ;
	rwSer_Name->Properties->Value    = pDicrStand_->st_id_ser;
	rwExpDepo->Properties->Value     = pDicrStand_->st_id_exp_dep;
	rwLim->Properties->Value         = pDicrStand_->st_lim;
	rwNote->Properties->Value        = pDicrStand_->st_note;

	return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DictStandarts::aSaveExecute(TObject *Sender)
{
	/* Сохранить */

	std::auto_ptr<TClientDataSet> cds (new TClientDataSet(NULL));

	try
	{
		cds->CommandText = "smt_nsi2_pkg.smt_nsi_standarts_iu";

		cds->Params->CreateParam(ftInteger, "o_row_id", ptInputOutput)->AsInteger   = pDicrStand_->id;
		cds->Params->CreateParam(ftInteger, "p_st_tr_id", ptInput)->AsInteger       = int(rwTypeRepairs->Properties->Value);
		cds->Params->CreateParam(ftInteger, "p_st_km", ptInput)->AsInteger          = int(rwKM->Properties->Value);
		cds->Params->CreateParam(ftInteger, "p_st_hh", ptInput)->AsInteger          = int(rwHH->Properties->Value);
		cds->Params->CreateParam(ftInteger, "p_st_id_dep", ptInput)->AsInteger      = int(rwDepo->Properties->Value);
		cds->Params->CreateParam(ftInteger, "p_st_id_ser", ptInput)->AsInteger      = int(rwSer_Name->Properties->Value);
		cds->Params->CreateParam(ftInteger, "p_st_id_exp_dep", ptInput)->AsInteger  = int(rwExpDepo->Properties->Value);
		cds->Params->CreateParam(ftInteger, "p_st_lim", ptInput)->AsInteger         = int(rwLim->Properties->Value);
		cds->Params->CreateParam(ftInteger, "p_st_note", ptInput)->AsString         = rwNote->Properties->Value;
		cds->Params->CreateParam(ftInteger, "p_st_user_id", ptInput)->AsInteger     = UserID;

		cds->Params->CreateParam(ftInteger, "o_err_code", ptInputOutput);
		cds->Params->CreateParam(ftString, "o_err_msg", ptInputOutput);

		TDMMain::OpenDS(cds.get(), "EXEC", "CT", 1);

		if (cds->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (cds->Params->ParamByName("o_Err_Msg")->AsString);

		ModalResult = mrOk;
	}
	catch (Exception &e)
	{
		throw Exception ("< UEDS-1 > : Ошибка сохранение информации.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DictStandarts::aCloseExecute(TObject *Sender)
{
	/* Отмена */

	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DictStandarts::aLoadTypeRepairsExecute(TObject *Sender)
{
	/* Загрузка справочника - Тип ремонта */

	TClientDataSet *cds	= cdsEdit_Dict_Stand;
	TDataSource *ds		= dsEdit_Dict_Stand;

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText = "smt_nsi2_pkg.smt_nsi_type_repairs_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UEDS-2 > : Ошибка загрузки справочника - Тип ремонта.\n" + e.Message);
	}

	TcxEditorRow *rw				 = rwTypeRepairs;
	TcxImageComboBoxItem 	   *itm	 = NULL;
	TcxImageComboBoxProperties *cbep = (TcxImageComboBoxProperties*)rw->Properties->EditProperties;

	try
	{
		cbep->Items->Clear();
		for (int i = 0; i < cds->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if ( itm )
			{
				itm->Description = cds->FieldByName("td_descr")->AsString;
				itm->Value		 = cds->FieldByName("tr_id")->AsInteger;
			}
			cds->Next();
		}
	}
	catch ( Exception &e )
	{
		throw Exception ("< UEDS-3 > : Ошибка заполнения списка - тип ремонта.\n" + e.Message);
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DictStandarts::aLoadDepoExecute(TObject *Sender)
{
	/* Загрузка справочника - Эксплуатационное депо */

	TClientDataSet *cds = cdsDepo;
	TDataSource    *ds  = dsDepo;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "smt_nsi2_pkg.tche_full_list_cur_1";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UEDS-4 > : Ошибка загрузки справочника - Эксплуатационное депо.\n" + e.Message);
	}

	TcxEditorRow *rw				 = rwDepo;
	TcxImageComboBoxItem 	   *itm	 = NULL;
	TcxImageComboBoxProperties *cbep = (TcxImageComboBoxProperties*)rw->Properties->EditProperties;

	try
	{
		cbep->Items->Clear();

		for (int i = 0; i < cds->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if ( itm )
			{
				itm->Description = cds->FieldByName("fname")->AsString;
				itm->Value		 = cds->FieldByName("pred_id")->AsInteger;
			}
			cds->Next();
		}
	}
	catch ( Exception &e )
	{
		throw Exception ("< UEDS-5 > : Ошибка заполнения списка - эксплуатационное депо.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DictStandarts::aLoad_Exp_DepoExecute(TObject *Sender)
{
	/* Загрузка справочника - Депо */

	TClientDataSet *cds = cdsExpDepo;
	TDataSource    *ds  = dsExpDepo;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "smt_nsi2_pkg.tche_full_list_cur_1";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UEDS-6 > : Ошибка загрузки справочника - Депо.\n" + e.Message);
	}

	TcxEditorRow *rw				 = rwExpDepo;
	TcxImageComboBoxItem 	   *itm	 = NULL;
	TcxImageComboBoxProperties *cbep = (TcxImageComboBoxProperties*)rw->Properties->EditProperties;

	try
	{
		cbep->Items->Clear();

		for (int i = 0; i < cds->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if (itm)
			{
				itm->Description = cds->FieldByName("firm_name")->AsString;
				itm->Value		 = cds->FieldByName("pred_id")->AsInteger;
			}
			cds->Next();
		}
	}
	catch (Exception &e)
	{
		throw Exception ("< UEDS-7 > : Ошибка заполнения списка - Депо.\n" + e.Message);
	}

}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DictStandarts::aLoad_SerNameExecute(TObject *Sender)
{
	/* Загрузка справочника - Серии */

	TClientDataSet *cds = cdsSerNam;
	TDataSource    *ds  = dsSerNam;

	try
	{
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.nsi_pkg.loc_ser_2_0_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UEDS-8 > : Ошибка загрузки справочника - Серия.\n" + e.Message);
	}

	TcxEditorRow *rw				 = rwSer_Name;
	TcxImageComboBoxItem 	   *itm	 = NULL;
	TcxImageComboBoxProperties *cbep = (TcxImageComboBoxProperties*)rw->Properties->EditProperties;

	try
	{
		cbep->Items->Clear();

		for (int i = 0; i < cds->RecordCount; i++)
		{
			itm = cbep->Items->Add();
			if ( itm )
			{
				itm->Description = cds->FieldByName("ser_name")->AsString;
				itm->Value		 = cds->FieldByName("kod_ser")->AsInteger;
			}
			cds->Next();
		}
	}
	catch (Exception &e)
	{
		throw Exception ("<CLS-2>: Ошибка заполнения списка - серия.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------





