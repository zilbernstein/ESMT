//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include <memory>
#include "UTemplates.h"
#include "config.h"
#include "public.h"
#include "UDMMain.h"
#include "UEdit_Template.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxClasses"
#pragma link "cxGraphics"
#pragma link "dxBar"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsdxBarPainter"
#pragma link "cxControls"
#pragma link "cxCustomData"
#pragma link "cxDBTL"
#pragma link "cxGridBandedTableView"
#pragma link "cxInplaceContainer"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxStyles"
#pragma link "cxTL"
#pragma link "cxTLData"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "cxVGrid"
#pragma link "cxMaskEdit"
#pragma link "cxData"
#pragma link "cxDataStorage"
#pragma link "cxDBData"
#pragma link "cxEdit"
#pragma link "cxFilter"
#pragma link "cxGrid"
#pragma link "cxGridCustomTableView"
#pragma link "cxGridCustomView"
#pragma link "cxGridDBTableView"
#pragma link "cxGridLevel"
#pragma link "cxGridTableView"
#pragma link "cxNavigator"
#pragma link "dxSkinscxPCPainter"
#pragma link "cxGridDBBandedTableView"
#pragma resource "*.dfm"
TfrmTemplates *frmTemplates;
//---------------------------------------------------------------------------
__fastcall TfrmTemplates::TfrmTemplates(TComponent* Owner)
	: TForm(Owner)
{
	tmr->Enabled = true;
}
//---------------------------------------------------------------------------
void __fastcall TfrmTemplates::FormClose(TObject *Sender, TCloseAction &Action)
{
   Action = caFree;
}
//---------------------------------------------------------------------------
TModalResult __fastcall TfrmTemplates::Show()
{
    return ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TfrmTemplates::aRefreshTplListExecute(TObject *Sender)
{
	/* Обновить список */

	TClientDataSet *cds = cdsTemplateList;
    TDataSource *ds     = dsTemplateList;

    try
    {
    	TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.ASUT_USER_TEMPLATES_PKG.templates_cur";
		cds->Params->CreateParam(ftCursor,  "o_cur", ptInputOutput);
		cds->Params->CreateParam(ftInteger, "p_user_id", ptInput )->AsInteger = cfg_.UserID;

		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		btvUserTemplate->OptionsView->NoDataToDisplayInfoText = NoDataTextDefault;
		btvUserTemplate->DataController->DataSource           = ds;
		btvUserTemplate->ViewData->Expand(true);

    }
	catch (Exception &e)
	{
		throw Exception ("< UT-1 > : Ошибка загрузки списка шаблонов.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmTemplates::aAddTplExecute(TObject *Sender)
{
/*
	StrctEditTemplate sf;
	std::auto_ptr<TfrmEdit_Template> dlg (new TfrmEdit_Template(this));

	sf.template_name = "";
	sf.Template = NULL;

	if (mrOk == dlg->Show(&sf))
	{
		aRefreshTplList->Execute();
	}
*/
}
//---------------------------------------------------------------------------

void __fastcall TfrmTemplates::aEditTplExecute(TObject *Sender)
{
	/* Редактирование шаблона */

	if (((TcxGridDBBandedTableView*)grdUserTemplate->ActiveView)->Controller->FocusedRow == NULL)
		return;

	StrctEditTemplate sf;
	TStringList *lst = new TStringList();

	std::auto_ptr<TfrmEdit_Template> dlg (new TfrmEdit_Template(this));
	dlg->Caption = "Редактировать шаблон";

	// передаём данные в структуру
	lst->Add(cdsTemplateList->FieldByName("template_c")->Value);

	sf.id            = cdsTemplateList->FieldByName("id")->AsInteger;
	sf.template_name = cdsTemplateList->FieldByName("name")->AsString;
	sf.Template      = lst;
	sf.type          = cdsTemplateList->FieldByName("type")->Value;
	sf.state_id		 = cdsTemplateList->FieldByName("state_id")->AsInteger;
	sf.file_name     = cdsTemplateList->FieldByName("file_name")->AsString;

	if (mrOk == dlg->Show(&sf))
	{
	    aRefreshTplList->Execute();
	}

	delete lst;
}
//---------------------------------------------------------------------------

void __fastcall TfrmTemplates::aDeleteTplExecute(TObject *Sender)
{
	/* Удаление шаблона */

	if (((TcxGridDBBandedTableView*)grdUserTemplate->ActiveView)->Controller->FocusedRow == NULL)
		return;

    std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

    int qr = MessageBox(NULL, "Удалить выделенный шаблон?", "Подтверждение", MB_YESNO);
    if (IDYES == qr)
    {
		try
		{
			TDMMain::ClearDataSet(dsa.get());
			dsa->CommandText = "SMT.ASUT_USER_TEMPLATES_PKG.template_del";

			dsa->Params->CreateParam(ftInteger, "p_id", ptInput)->AsInteger      = cdsTemplateList->FieldByName("id")->AsInteger;
			dsa->Params->CreateParam(ftInteger, "p_user_id", ptInput)->AsInteger = cfg_.UserID;

			dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
			dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

            TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

			if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
				throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
		}
		catch (Exception &e )
        {
            throw Exception ("< UT-2 > : Ошибка удаления шаблона.\n" + e.Message);
        }

        aRefreshTplList->Execute();
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmTemplates::tmrTimer(TObject *Sender)
{
	tmr->Enabled = false;
	aRefreshTplList->Execute();
}
//---------------------------------------------------------------------------
void __fastcall TfrmTemplates::aSetActionExecute(TObject *Sender)
{
	if (cdsTemplateList->RecordCount != 0)
	{
		switch (cdsTemplateList->FieldByName("state_id")->AsInteger)
		{
			// пользовательский
			case stateNewTpl:
				aPublish->Enabled 		= true;
				aCancelPublish->Enabled = false;
				aEditTpl->Enabled       = true;
				aDeleteTpl->Enabled		= true;
				// администраторские
				aPublishAdm->Enabled    = false;
				aCancelAdm->Enabled     = false;
				break;
			// на рассмотрении
			case stateConsiderationTpl:
				aPublish->Enabled 		= false;
				aCancelPublish->Enabled = true;
				aEditTpl->Enabled       = false;
				aDeleteTpl->Enabled		= false;
				// администраторские
				//aPublishAdm->Enabled    = (DMMain->IsUserFunction("esmt-template-publish"));
				aCancelAdm->Enabled     = false;
				break;
			// опубликован
			case statePublishTpl:
				aPublish->Enabled 		= false;
				aCancelPublish->Enabled = false;
				aEditTpl->Enabled       = false;
				aDeleteTpl->Enabled		= false;
				// администраторские
				aPublishAdm->Enabled    = false;
				//aCancelAdm->Enabled     = (DMMain->IsUserFunction("esmt-template-publish"));
				break;
			// исходный
			case stateSourceTpl:
				aPublish->Enabled 		= false;
				aCancelPublish->Enabled = false;
				aEditTpl->Enabled       = false;
				aDeleteTpl->Enabled		= false;
				// администраторские
				aPublishAdm->Enabled    = false;
				aCancelAdm->Enabled     = false;
				break;
		}
	}
	aPublish->Enabled       =  DMMain->IsFunction("f_code", "aIncident_aTemplatePublic");
	aCancelPublish->Enabled =  DMMain->IsFunction("f_code", "aIncident_aTemplatePublic");
	aPublishAdm->Enabled    =  DMMain->IsFunction("f_code", "aIncident_aTemplatePublic");
	aCancelAdm->Enabled     =  DMMain->IsFunction("f_code", "aIncident_aTemplatePublic");
}
//---------------------------------------------------------------------------


void __fastcall TfrmTemplates::aPublishExecute(TObject *Sender)
{
	/* Отправка на рассмотрение */

	ChangeStatus(stateConsiderationTpl);
}
//---------------------------------------------------------------------------

void __fastcall TfrmTemplates::aCancelPublishExecute(TObject *Sender)
{
	/* Отмена отправки на рассмотрение */

	ChangeStatus(stateNewTpl);
}
//---------------------------------------------------------------------------

void __fastcall TfrmTemplates::btvUserTemplateFocusedRecordChanged(TcxCustomGridTableView *Sender,
          TcxCustomGridRecord *APrevFocusedRecord, TcxCustomGridRecord *AFocusedRecord,
          bool ANewItemRecordFocusingChanged)
{
	aSetAction->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmTemplates::ChangeStatus(int stateId)
{
	if (((TcxGridDBBandedTableView*)grdUserTemplate->ActiveView)->Controller->FocusedRow == NULL)
		return;

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		TDMMain::ClearDataSet(dsa.get());
		dsa->CommandText = "SMT.ASUT_USER_TEMPLATES_PKG.status_change";

		dsa->Params->CreateParam(ftInteger, "p_id", ptInput)->AsInteger       = cdsTemplateList->FieldByName("id")->AsInteger;
		dsa->Params->CreateParam(ftInteger, "p_state_id", ptInput)->AsInteger = stateId;

		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
	}
	catch (Exception &e )
	{
		throw Exception ("< UT-3 > : Ошибка смены статуса шаблона.\n" + e.Message);
	}

	aRefreshTplList->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmTemplates::aPublishAdmExecute(TObject *Sender)
{
	/* Опубликовать шаблон */

	if (((TcxGridDBBandedTableView*)grdUserTemplate->ActiveView)->Controller->FocusedRow == NULL)
		return;

	ChangeStatus(statePublishTpl);
}
//---------------------------------------------------------------------------

void __fastcall TfrmTemplates::aCancelAdmExecute(TObject *Sender)
{
	/* Отмена публикации */

	if (((TcxGridDBBandedTableView*)grdUserTemplate->ActiveView)->Controller->FocusedRow == NULL)
		return;
	ChangeStatus(stateConsiderationTpl);
}
//---------------------------------------------------------------------------


void __fastcall TfrmTemplates::aApplyTplExecute(TObject *Sender)
{
	/* Применить шаблон*/

	if (((TcxGridDBBandedTableView*)grdUserTemplate->ActiveView)->Controller->FocusedRow == NULL)
		return;

	TStringList *lst = new TStringList();

	int qr = MessageBox(NULL, "Применить выделенный шаблон?", "Подтверждение", MB_YESNO);
	if (IDYES == qr)
	{
		if (cdsTemplateList->RecordCount != 0)
		{
			lst->Add(cdsTemplateList->FieldByName("template_c")->Value);
			lst->SaveToFile(ProfileFolder + cdsTemplateList->FieldByName("file_name")->Value);
		}
		delete lst;
	}

	/* Запись названия в ini-файл */
	switch (cdsTemplateList->FieldByName("type")->AsInteger)
	{
		case tIncidents:
			cfg_.ini->WriteString("Templates", "tplIncident", cdsTemplateList->FieldByName("name")->AsString);
			break;
		case tLocPark:
			cfg_.ini->WriteString("Templates", "tplLocPark", cdsTemplateList->FieldByName("name")->AsString);
			break;
		case tDepoenter:
			cfg_.ini->WriteString("Templates", "tplDepoEnter", cdsTemplateList->FieldByName("name")->AsString);
			break;
	}

	MessageBox(Handle, AnsiString("Для перехода к выбранному шаблону, окно «Конструктор шаблонов» будет закрыто !\"").c_str(), "Предупреждение", MB_ICONINFORMATION);

    ModalResult = mrOk;
}
//---------------------------------------------------------------------------

