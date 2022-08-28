//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UDMMain.h"
#include "UFTPTransfer.h"
#include "Log.h"

#include "UEdit_DepoEnterAttach.h"
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
#pragma link "cxButtons"
#pragma link "cxButtonEdit"
#pragma link "cxEdit"
#pragma link "cxInplaceContainer"
#pragma link "cxMemo"
#pragma link "cxStyles"
#pragma link "cxVGrid"
#pragma link "cxClasses"
#pragma link "cxGridBandedTableView"
#pragma link "cxTL"
#pragma resource "*.dfm"
TfrmEdit_DepoEnterAttach *frmEdit_DepoEnterAttach;
//---------------------------------------------------------------------------

__fastcall TfrmEdit_DepoEnterAttach::TfrmEdit_DepoEnterAttach(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmEdit_DepoEnterAttach::Show(Strct_DepoEnter_Attach* te)
{
	te_ = te;

    rwDescription->Properties->Value = te_->descr;

	tmr->Enabled = true;

    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnterAttach::aCancelExecute(TObject *Sender)
{
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnterAttach::aSaveExecute(TObject *Sender)
{
	/* Сохранить */

	StructFTP st;
	std::auto_ptr<TfrmFTPTransfer> dlg (new TfrmFTPTransfer(this));

	if (rwFileName->Properties->Value != "")
    {
        if (dlgOpen->FileName == "")
			throw Exception ("< UEDEATT-1 > : Не указан файл для отправки.\n");

		st.FileName = dlgOpen->FileName;
		st.AutoRun  = false;

		if (mrOk != dlg->Send(&st))
			return;

		te_->file_name = st.FTPFileName;
	}

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
	try
	{
		dsa->CommandText = "smt.incident2_pkg.depo_enter_attach_iu";

		dsa->Params->CreateParam(ftInteger, "o_attach_id", ptInputOutput)->AsInteger = te_->attach_id;
		dsa->Params->CreateParam(ftInteger, "p_row_id", ptInputOutput)->AsInteger	 = te_->row_id;
		dsa->Params->CreateParam(ftDateTime, "p_file_name", ptInput)->AsString		 = te_->file_name;
		dsa->Params->CreateParam(ftInteger, "p_user_id", ptInput)->AsInteger		 = te_->user_id;
		dsa->Params->CreateParam(ftInteger, "p_descr", ptInput)->AsString			 = rwDescription->Properties->Value;
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);
		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
	}
	catch (Exception &e)
	{
		throw Exception ("< UEDEATT-2 > : Ошибка сохранения вложения.\n" + e.Message);
	}

	ModalResult = mrOk;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnterAttach::aSelectFileExecute(TObject *Sender)
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
		LogEvent("< UEDEATT-3 > : Не удалось получить параметры FTP-соединения: " + e.Message);
	}

	if (dlgOpen->Execute())
	{
		FileName4Send = dlgOpen->FileName;

		// Проверить существование и размер файла
		if (FindFirst(FileName4Send, 0, sr) == 0)
		{
			if (sr.Size > cds->FieldByName("max_file_size")->AsFloat)
				throw Exception("< UEDEATT-4 > : Размер файла не должен превышать " + cds->FieldByName("max_file_size_MB")->AsString);
		}
		else
			throw Exception("< UEDEATT-5 > : Ошибка, файл [" + FileName4Send + "] не найден!\n\nОперация прервана.\n");

		rwFileName->Properties->Value = ExtractFileName(FileName4Send) + " (" + FloatToStr(RoundTo(sr.Size / 1024, -1)) + " Кб)";

		if (rwDescription->Properties->Value == "")
        	rwDescription->Properties->Value = ExtractFileName(FileName4Send);

        FindClose(sr);

        aSave->Enabled = true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_DepoEnterAttach::rwFileNamePropertiesButtonClick(TObject *Sender,
          int AButtonIndex)
{
	aSelectFile->Execute();
}
//---------------------------------------------------------------------------

