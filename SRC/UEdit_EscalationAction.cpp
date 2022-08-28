//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop


#include "UDMMain.h"
#include "UFTPTransfer.h"

#include "UEdit_EscalationAction.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtonEdit"
#pragma link "cxButtons"
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxEdit"
#pragma link "cxGraphics"
#pragma link "cxGridBandedTableView"
#pragma link "cxInplaceContainer"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxMemo"
#pragma link "cxStyles"
#pragma link "cxTL"
#pragma link "cxVGrid"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsdxStatusBarPainter"
#pragma link "dxStatusBar"
#pragma resource "*.dfm"
TfrmEdit_EscalationAction *frmEdit_EscalationAction;
//---------------------------------------------------------------------------
__fastcall TfrmEdit_EscalationAction::TfrmEdit_EscalationAction(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
TModalResult __fastcall TfrmEdit_EscalationAction::Show(Strct_EscalationAction* tea)
{
	tea_ = tea;
	tmr->Enabled = true;

    return ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TfrmEdit_EscalationAction::tmrTimer(TObject *Sender)
{
	tmr->Enabled = false;

    try
    {
        if (tea_->escal_id == 0)
			throw Exception ("< UEEA-1 > : Исходная информация по действию еще не сохранена. Добавление вложений невозможно.\n");

    }
    catch (Exception &e)
    {
        MessageBox(Handle, AnsiString(e.Message).c_str(), "Операция прервана", MB_ICONSTOP);
    	ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_EscalationAction::aSelectFileExecute(TObject *Sender)
{
	/* Выбрать файл */

	TSearchRec	sr;
    AnsiString FileName4Send;
    TClientDataSet *cds = DMMain->cdsNSI_FTP_Params;

	if (dlgOpen->Execute())
	{
        FileName4Send = dlgOpen->FileName;
        // Проверить существование и размер файла
        if (FindFirst(FileName4Send, 0, sr ) == 0)
        {
			if (sr.Size > cds->FieldByName("max_file_size")->AsFloat)
				throw Exception("< UEEA-2 > : Размер файла не должен превышать " + cds->FieldByName("max_file_size_MB")->AsString);
		}
		else
			throw Exception("< UEEA-3 > : Файл [" + FileName4Send + "] не найден!\n\nОперация прервана.\n");

		rwFileName->Properties->Value = ExtractFileName(FileName4Send) + " (" + FloatToStr(RoundTo(sr.Size / 1024, -1)) + " Кб)";

		if (rwDescription->Properties->Value == "")
			rwDescription->Properties->Value = ExtractFileName(FileName4Send);

		FindClose(sr);

		aSave->Enabled = true;
	}
	else {
		ModalResult = mrCancel;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_EscalationAction::rwFileNameEditPropertiesButtonClick(TObject *Sender,
          int AButtonIndex)
{
    aSelectFile->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_EscalationAction::aSaveExecute(TObject *Sender)
{
    /* Заслать файл на FTP */

    StructFTP st;
    std::auto_ptr<TfrmFTPTransfer> dlg (new TfrmFTPTransfer(this));

	if (tea_->file_name == "")  // Выполняем только если сначала файл не был приложен
    {
        if (dlgOpen->FileName == "")
			throw Exception ("< UEEA-4 > : Не указан файл для отправки.\n");

		st.FileName = dlgOpen->FileName;
		st.AutoRun  = false;
		//st.FolderName = TemporaryFolder;

		if (mrOk != dlg->Send(&st))
			return;

		tea_->file_name = st.FTPFileName;
	}

	/*Сохранить аттач*/

//    te_->attach_descr = rwDescr->Properties->Value;
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "SMT.INCIDENT_PKG.escalation_action_iu";

		dsa->Params->CreateParam(ftInteger, "o_action_id", ptInputOutput )->AsInteger = tea_->action_id;
		dsa->Params->CreateParam(ftInteger, "p_escal_id", ptInput)->AsInteger 		  = tea_->escal_id;
		dsa->Params->CreateParam(ftInteger, "p_file_name", ptInput)->AsString 		  = tea_->file_name;
		dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput)->AsInteger   = tea_->user_id;
		dsa->Params->CreateParam(ftInteger, "p_descr", ptInput)->AsString 		  	  = VarToStr(rwDescription->Properties->Value);
		dsa->Params->CreateParam(ftInteger, "p_action", ptInput)->AsString 		  	  = VarToStr(rwAction->Properties->Value);


		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString,  "o_Err_Msg",  ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
	}
	catch (Exception &e)
	{
		throw Exception ("< UEEA-5 > : Ошибка сохранения вложения.\n" + e.Message);
	}

//    te_->attach_id = dsa->Params->ParamByName("p_attach_id")->AsInteger;

    ModalResult = mrOk;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_EscalationAction::aCancelExecute(TObject *Sender)
{
	/*Отмена*/

	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

