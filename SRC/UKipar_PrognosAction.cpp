//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UDMMain.h"
#include "UFTPTransfer.h"
#include "Log.h"

#include "UKipar_PrognosAction.h"
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
TfrmKipar_PrognosAction *frmKipar_PrognosAction;
//---------------------------------------------------------------------------
__fastcall TfrmKipar_PrognosAction::TfrmKipar_PrognosAction(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmKipar_PrognosAction::Show(RecordKipProg* NSIUserId)
{
	NSI_UserId = NSIUserId;

	return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmKipar_PrognosAction::aCancelExecute(TObject *Sender)
{
  	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmKipar_PrognosAction::aSelectFileExecute(TObject *Sender)
{
	/* Выбрать файл */

	TSearchRec sr;
    AnsiString FileName4Send;
	TClientDataSet *cds = DMMain->cdsNSI_FTP_Params;

	try
	{
		cds->CommandText = "smt.smt_nsi_pkg.ftp_settings_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		LogEvent("< UKPAC-1 > : Не удалось получить параметры FTP-соединения: " + e.Message);
	}

	if (dlgOpen->Execute())
	{
		FileName4Send = dlgOpen->FileName;

		// Проверить существование и размер файла
		if (FindFirst(FileName4Send, 0, sr) == 0)
		{
			if (sr.Size > cds->FieldByName("max_file_size")->AsFloat)
				throw Exception("< UKPAC-2 > : Размер файла не должен превышать " + cds->FieldByName("max_file_size_MB")->AsString);
		}
		else
			throw Exception("< UKPAC-3 > : Файл [" + FileName4Send + "] не найден!\nОперация прервана.\n");

		rwFileName->Properties->Value = ExtractFileName(FileName4Send) + " (" + FloatToStr(RoundTo(sr.Size / 1024, -1)) + " Кб)";

		if (rwDescription->Properties->Value == "")
        	rwDescription->Properties->Value = ExtractFileName(FileName4Send);

        FindClose(sr);

        aSave->Enabled = true;
	}
/*	else {
		ModalResult = mrCancel;
	}
*/
}
//---------------------------------------------------------------------------

void __fastcall TfrmKipar_PrognosAction::rwFileNameEditPropertiesButtonClick(TObject *Sender,
          int AButtonIndex)
{
	aSelectFile->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmKipar_PrognosAction::aSaveExecute(TObject *Sender)
{
	//=== Сохранить ===//
	StructFTP st;
	std::auto_ptr<TfrmFTPTransfer> dlg (new TfrmFTPTransfer(this));

	if (rwFileName->Properties->Value != "")
    {
        if (dlgOpen->FileName == "")
			throw Exception ("< UKPAC-4 > : Не указан файл для отправки.\n");

		st.FileName = dlgOpen->FileName;
		st.AutoRun  = false;

        if (mrOk != dlg->Send(&st))
        	return;

		NSI_UserId->file_name = st.FTPFileName;
	}

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	try
	{
		dsa->CommandText = "smt.incident2_pkg.kiparis_prognoz_attach_iu";

		dsa->Params->CreateParam(ftInteger,  "o_attach_id", ptInputOutput)->AsInteger = NULL;
		dsa->Params->CreateParam(ftInteger,  "p_isn_id",    ptInputOutput)->AsInteger = NSI_UserId->NSI;
		dsa->Params->CreateParam(ftDateTime, "p_file_name", ptInput)->AsString	   	  = NSI_UserId->file_name;
		dsa->Params->CreateParam(ftInteger,  "p_user_id",   ptInput)->AsInteger	      = NSI_UserId->user_id;
		dsa->Params->CreateParam(ftInteger,  "p_descr",     ptInput)->AsString		  = rwDescription->Properties->Value;
		dsa->Params->CreateParam(ftInteger,  "o_Err_Code",  ptInputOutput);
		dsa->Params->CreateParam(ftString,   "o_Err_Msg",   ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);
		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
	}
	catch (Exception &e)
	{
		throw Exception ("< UKPAC-5 > : Ошибка сохранения вложения.\n" + e.Message);
	}

	ModalResult = mrOk;
}
//---------------------------------------------------------------------------

