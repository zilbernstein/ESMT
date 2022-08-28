#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include <memory>
#include <math.h>

#include "UDMMain.h"
#include "UFTPTransfer.h"
#include "config.h"
#include "public.h"
#include "Utils_JK.h"

#include "UEdit_Attach.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmEdit_Attach *frmEdit_Attach;
//---------------------------------------------------------------------------
__fastcall TfrmEdit_Attach::TfrmEdit_Attach(TComponent* Owner)
	: TForm(Owner)
{

}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmEdit_Attach::Show( Strct_Attach* te )
{
	te_ = te;

    this->Caption = te_->group_name + " : Приложение файла";
    cxCategoryRow1->Properties->Caption = "Лист регистрации - " + IntToStr(te_->sheet_id);

	tmr->Enabled = true;

    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Attach::tmrTimer(TObject *Sender)
{
    tmr->Enabled = false;

    try
    {
        if ( te_->sheet_id == 0 )
			throw Exception ("< UEATT-1 > : Ошибка. Исходная информация по инциденту еще не сохранена. Добавление вложений невозможно.\n");

		try
		{
			rwDescr->Properties->Value = te_->attach_descr;
			rwFileName->Properties->Value = te_->file_name;
		}
		catch ( Exception &e )
		{
			throw Exception ("< UEATT-2 > : Ошибка установки ключевых значений.\nРекомендуем сделать снимок экрана и обратиться к разработчикам.\n" + e.Message);
		}

		aSelectFile->Enabled = ( te_->file_name == "" );
		aSave->Enabled = ( te_->file_name != "" );
		vg->SetFocus();
		// получить разрешенные типы файлов
		aLoadFileExtension->Execute();
		// И сразу диалог выбора файла
		aSelectFile->Execute();

//        vg->SetFocus();
	}
	catch ( Exception &e )
	{
		MessageBox(Handle, AnsiString(e.Message).c_str(), "Операция прервана", MB_ICONSTOP);
		ModalResult = mrAbort;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Attach::aCancelExecute(TObject *Sender)
{
	/* Отмена */

	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Attach::FormKeyPress(TObject *Sender, wchar_t &Key)

{
  if (Key == VK_RETURN)
		FindNextControl((TWinControl*)Sender,true,true, false)->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Attach::aSaveExecute(TObject *Sender)
{
	/* Заслать файл на FTP */

	StructFTP st;
	std::auto_ptr<TfrmFTPTransfer> dlg (new TfrmFTPTransfer(this));

	if (te_->file_name == "")  // Выполняем только если сначала файл не был приложен
	{
		if (dlgOpen->FileName == "")
			throw Exception ("< UEATT-3 > : Ошибка. Не указан файл для отправки.\n");

		st.FileName = dlgOpen->FileName;
		st.AutoRun  = false;
		//st.FolderName = TemporaryFolder;

		if (mrOk != dlg->Send(&st))
			return;

		te_->file_name = st.FTPFileName;
	}

	/* Сохранить аттач */

	te_->attach_descr = rwDescr->Properties->Value;
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "SMT.INCIDENT_PKG.attach_iu";

		dsa->Params->CreateParam(ftInteger, "p_attach_id", ptInputOutput )->AsInteger = te_->attach_id;
		dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger 		  = te_->sheet_id;
		dsa->Params->CreateParam(ftInteger, "p_group_id", ptInput)->AsInteger 	      = te_->group_id;
		dsa->Params->CreateParam(ftString,  "p_file_name", ptInput)->AsString 		  = te_->file_name;
		dsa->Params->CreateParam(ftString,  "p_descr", ptInput)->AsString 			  = te_->attach_descr;
		dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput)->AsInteger   = UserID;
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString,  "o_Err_Msg", ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
	}
	catch (Exception &e)
	{
		throw Exception ("< UEATT-4 > : Ошибка сохранения вложения.\n" + e.Message);
	}

	te_->attach_id = dsa->Params->ParamByName("p_attach_id")->AsInteger;

	ModalResult = mrOk;
}
//---------------------------------------------------------------------------

AnsiString __fastcall TfrmEdit_Attach::MultiSave(Strct_Attach* te)
{
	/* Сохранить аттач для нескольких инцидентов */

	AnsiString vResult = "";
	StructFTP st;
	TSearchRec	sr;
	std::auto_ptr<TfrmFTPTransfer> dlg ( new TfrmFTPTransfer( this ) );

	if ( te_->file_name == "" )  // Выполняем только если сначала файл не был приложен
	{
		if ( dlgOpen->FileName == "" )
			throw Exception ("< UEATT-5 > : Ошибка. Не указан файл для отправки.\n");

		st.FileName = dlgOpen->FileName;
		st.AutoRun = false;
		//st.FolderName = TemporaryFolder;

		if ( mrOk != dlg->Send( &st ) )
			return ("< UEATT-6 > : Ошибка. Файл не был загружен [" + st.FileName + "].\n");

		te_->file_name = st.FTPFileName;
	}

	/* Сохранить аттач */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "SMT.INCIDENT_PKG.attach_iu";

		dsa->Params->CreateParam(ftInteger, "p_attach_id", ptInputOutput )->AsInteger = te_->attach_id;
		dsa->Params->CreateParam(ftInteger, "p_sheet_id", ptInput )->AsInteger 		  = te_->sheet_id;
		dsa->Params->CreateParam(ftInteger, "p_group_id", ptInput )->AsInteger 		  = te_->group_id;
		dsa->Params->CreateParam(ftString, "p_file_name", ptInput )->AsString 		  = te_->file_name;
		dsa->Params->CreateParam(ftString, "p_descr", ptInput )->AsString 			  = te_->attach_descr;
		dsa->Params->CreateParam(ftInteger, "p_change_user_id", ptInput )->AsInteger  = UserID;
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput );
		dsa->Params->CreateParam(ftString, "o_Err_Msg", ptInputOutput );

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if ( dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0 )
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
	}
	catch (Exception &e)
	{
		throw Exception ("< UEATT-7 > : Ошибка сохранения вложения.\n" + e.Message);
	}

	te_->attach_id = dsa->Params->ParamByName("p_attach_id")->AsInteger;
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Attach::aSelectFileExecute(TObject *Sender)
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
				throw Exception("< UEATT-8 > : Ошибка. Размер файла не должен превышать " + cds->FieldByName("max_file_size_MB")->AsString);
		}
		else
			throw Exception("< UEATT-9 > : Ошибка. Файл [" + FileName4Send + "] не найден!\nОперация прервана.");

		rwFileName->Properties->Value = ExtractFileName(FileName4Send) + " (" + FloatToStr(RoundTo(sr.Size / 1024, -1)) + " Кб)";

		if (rwDescr->Properties->Value == "")
			rwDescr->Properties->Value = ExtractFileName(FileName4Send);

        FindClose(sr);

        aSave->Enabled = true;
	}
	else {
		ModalResult = mrCancel;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Attach::aLoadFileExtensionExecute(TObject *Sender)
{
	/* Загрузка допустимых типов файлов для аттача */

    std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));
    AnsiString filter;
    AnsiString filter_all;
    TOpenDialog *odlg = dlgOpen;

    try
    {
        dsa->CommandText = "SMT.df_document_pkg.df_extension_perm_cur";
        dsa->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
        dsa->Params->CreateParam(ftInteger, "p_ftp_id", ptInputOutput )->AsInteger = 1;

        TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);

        if ( dsa->Active == false )
        	throw Exception ("Не удалось открыть источник данных.");
    }
    catch ( Exception &e )
    {
		throw Exception ("< UEATT-10 > : Ошибка загрузки списка допустимых типов файлов: " + e.Message);
	}

	if ( dsa->Active && dsa->RecordCount == 0 )
		throw Exception ("< UEATT-11 > : Ошибка. Не найдены ограничения по типам файлов аттачей.\nОбратитесь, пожалуйста, к разработчикам!\n");

	try
	{
		filter = L"";
		filter_all = L"Все доступные типы файлов|";

		dsa->First();
		for (int i = 0; i < dsa->RecordCount; i++)
		{
			filter = filter + ( i > 0 ? "|" : "" ) + dsa->FieldByName("extension_name")->AsString + "|*." + dsa->FieldByName("extension_name")->AsString.LowerCase();
			filter_all = filter_all + ( i > 0 ? ";" : "" ) + "*." + dsa->FieldByName("extension_name")->AsString.LowerCase();
			dsa->Next();
		}
		odlg->Filter = filter_all + ")|" + filter;


	}
	catch ( Exception &e )
	{
		throw Exception ("< UEATT-12 > : Ошибка обработки списка допустимых типов файлов:\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmEdit_Attach::rwFileNameEditPropertiesButtonClick(TObject *Sender, int AButtonIndex)
{
	aSelectFile->Execute();
}
//---------------------------------------------------------------------------

