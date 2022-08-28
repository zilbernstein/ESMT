#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include "UDMMain.h"
#include "config.h"
#include "public.h"
#include "Utils_JK.h"
#include <stdio.h>
#include "UAppFileLoad.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma resource "*.dfm"
//---------------------------------------------------------------------------

__fastcall TfrmAppFileLoad::TfrmAppFileLoad(TComponent* Owner)
	: TForm(Owner)
{
	Transparency = 80;
	AlphaBlendValue = (255 * Transparency) / 100;
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmAppFileLoad::App_File_Load()
{
	tmrGet->Enabled = true;
	return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAppFileLoad::DrawProgress( int IdStep, int val0 )
{
   TcxTreeList* tl = tlProgress;

   if (tl->Items[IdStep]->Values[clmnOperationState->ItemIndex] != val0)
   {
		tl->Items[IdStep]->Values[clmnOperationState->ItemIndex] = val0;
		tl->Items[IdStep]->Selected = true;
      	tl->Items[IdStep]->Focused = true;

        Update();
        Sleep(250);
   }
}
//---------------------------------------------------------------------------

void __fastcall TfrmAppFileLoad::IdFTPAfterPut(TObject *Sender)
{
	DrawProgress(2, soComplete);
}
//---------------------------------------------------------------------------

void __fastcall TfrmAppFileLoad::tmrCloseTimer(TObject *Sender)
{
	tmrClose->Enabled = false;
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmAppFileLoad::aFTPConnectExecute(TObject *Sender)
{
	// коннект к ftp
    TClientDataSet *cds = cdsFTPParams;

    try
    {
        DrawProgress(1, soInExec);

		IdFTP->Host     = cds->FieldByName("ftp_addr")->AsString;
        IdFTP->Port 	= cds->FieldByName("ftp_port")->AsInteger;
		IdFTP->Username = cds->FieldByName("login_name")->AsString;
		IdFTP->Password = cds->FieldByName("password")->AsString;
		IdFTP->ConnectTimeout = cds->FieldByName("con_timeout")->AsInteger;

		IdFTP->Connect();
    }
    catch (Exception &e)
    {
		throw Exception ("< UAPFL-1 > : Ошибка инициализации настроек FTP.\n" + e.Message);
	}

	if ( !IdFTP->Connected() )
		throw Exception ("< UAPFL-2 > : Ошибка. Не удалось установить соединение с сервером.\n");

	try
	{
		// меняем директорию на нужную
		IdFTP->ChangeDir(cds->FieldByName("remote_dir")->AsString);
		DrawProgress(1, soComplete);
	}
	catch (Exception &e)
	{
		throw Exception ("< UAPFL-3 > : Ошибка смены директории.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmAppFileLoad::tmrGetTimer(TObject *Sender)
{
	tmrGet->Enabled = false;

	TSearchRec  sr;
	AnsiString TargetFileName;
	int FileSearchResult = 0;
	int cnt = 0;
	__int64 fsz = 0;

	try
	{
		DrawProgress(0, soInExec);

		aLoadFileList->Execute();
		aLoad_FTP_Params->Execute();

		// коннект
		if (!IdFTP->Connected())
			aFTPConnect->Execute();

		// если список получили, начинаем качать по очереди
		cds->First();

		for (int i = 0; i < cds->RecordCount; i++)
		{
			if (FileExistsCheck(cds->FieldByName("file_name")->AsString) == false)
				throw Exception("< UAPFL-4 > : Ошибка. Файл [" + cds->FieldByName("file_name")->AsString + "] не найден.\n");

			switch (cds->FieldByName("type_id")->AsInteger)
			{
				case 2:
					TargetFileName = TemplateFolder + cds->FieldByName("file_name")->AsString;
					break;
				default:
					TargetFileName = SysFolder + cds->FieldByName("file_name")->AsString;
					break;
			}

			fsz = GetFileSize(TargetFileName);

			// сравнить размеры
			FileSearchResult = FindFirst(TargetFileName, 0, sr);

			if  (FileSearchResult != 0
				 || (FileSearchResult == 0
					 &&  IdFTP->Size(cds->FieldByName("file_name")->AsString) != fsz))
			{
				lbl->Caption = cds->FieldByName("file_name")->AsString;
				Update();

				// читаем файл с ftp
				DrawProgress(2, soInExec);
				IdFTP->Get(cds->FieldByName("file_name")->AsString, TargetFileName, true, false);
				DrawProgress(2, soComplete);

				if (FindFirst(TargetFileName, 0, sr) == 0)
					FindClose(sr);
				else
					throw Exception("< UAPFL-5 > : Ошибка. Файл [" + cds->FieldByName("file_name")->AsString + "] не загружен.\n");

				if (cds->FieldByName("type_id")->AsInteger != 2)
					cnt++;
			}
			FindClose(sr);
			cds->Next();
		}

		// делаем дисконнект
		try
		{
			if (IdFTP->Connected())
			{
				DrawProgress(3, soInExec);
				IdFTP->Disconnect();
			}
		}
		catch ( EIdSocketError &e )
		{
			IdFTP->Socket->Close();
			LogEvent("< UAPFL-6 > : Ошибка. IdFTP->Disconnect: EIdSocketError: " + e.Message);
		}
		DrawProgress(3, soComplete);
		Sleep(300);	// чтобы глаз успел увидеть, что всё ОК

		if (cnt > 0)
			ModalResult = mrOk;
		else
			ModalResult = mrCancel;
	}
	catch (EIdSocketError &e)
	{
		IdFTP->Socket->Close();
		MessageBox(Handle, AnsiString(e.Message).c_str(), "Операция прервана", MB_ICONSTOP);
		ModalResult = mrCancel;
	}
	catch (Exception &ee)
	{
		Application->ShowException(&ee);
		LogEvent(ee.Message);
		ModalResult = mrCancel;
	}
}
//---------------------------------------------------------------------------

bool __fastcall TfrmAppFileLoad::FileExistsCheck(AnsiString FileName)
{
	/* Проверка существования файла на ftp */

	bool Result = false;
	//TStringList *lst = new TStringList();
	//int idx = 0;

	IdFTP->List();

	for (int i = 0; i < IdFTP->DirectoryListing->Count; i++)
	{
		if (Result == true)
			break;

		Result = (IdFTP->DirectoryListing->Items[i]->FileName == FileName);
	}

	return Result;
}
//---------------------------------------------------------------------------

void __fastcall TfrmAppFileLoad::aLoadFileListExecute(TObject *Sender)
{
	try
	{
		cds->CommandText = "SMT.APP_UTILS_PKG.app_file_new_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch (Exception &e)
	{
		throw Exception ("< UAPFL-7 > : Ошибка загрузки списка системных файлов.\n" + e.Message);
	}

	if (cds->Active == false || cds->RecordCount == 0)
	{
		throw Exception ("< UAPFL-8 > : Ошибка. Список системных файлов не обнаружен.\n Обратитесь к разработчикам.\n");
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmAppFileLoad::aLoad_FTP_ParamsExecute(TObject *Sender)
{
	/* Получить настройки ftp */

	TClientDataSet *cds = cdsFTPParams;

	try
	{
		cds->CommandText = "SMT.nsi_pkg.ftp_settings_cur";
		if (cfg_.IsInternet == true)
			cds->Params->CreateParam(ftInteger, "p_ftp_id", ptInput)->AsInteger  = 5;  // из интернета!
		else
			cds->Params->CreateParam(ftInteger, "p_ftp_id", ptInput)->AsInteger  = 2;  // из СПД!

		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);

		DrawProgress(0, soComplete);
	}
	catch (Exception &e)
	{
		throw Exception ("< UAPFL-9 > : Ошибка. Не удалось получить параметры FTP-соединения: " + e.Message);
	}
}

//---------------------------------------------------------------------------

