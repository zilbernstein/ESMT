#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include <stdio.h>

#include "UDMMain.h"
#include "config.h"
#include "public.h"
#include "Utils_JK.h"
#include "UFTPTransfer.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxTLdxBarBuiltInMenu"
#pragma link "cxTLdxBarBuiltInMenu"
#pragma resource "*.dfm"
//---------------------------------------------------------------------------

__fastcall TfrmFTPTransfer::TfrmFTPTransfer(TComponent* Owner)
	: TForm(Owner)
{
	Transparency = 80;
	AlphaBlendValue = (255 * Transparency) / 100;
}
//---------------------------------------------------------------------------

void __fastcall TfrmFTPTransfer::DrawProgress( int IdStep, int val0 )
{
   TcxTreeList* tl = tlProgress;

   if ( tl->Items[IdStep]->Values[clmnOperationState->ItemIndex] != val0 )
   {
		tl->Items[IdStep]->Values[clmnOperationState->ItemIndex] = val0;
		tl->Items[IdStep]->Selected = true;
      	tl->Items[IdStep]->Focused = true;

        Update();
        Sleep(250);
   }
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmFTPTransfer::Send( StructFTP *st)
{
    st_ = st;

    tmrSend->Enabled = true;
	return ShowModal();
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmFTPTransfer::DownLoad( StructFTP *st)
{
    st_ = st;

    tmrGet->Enabled = true;
	return ShowModal();
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmFTPTransfer::Delete( StructFTP *st)
{
    st_ = st;

    tmrDelete->Enabled = true;
	return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmFTPTransfer::tmrSendTimer(TObject *Sender)
{
	tmrSend->Enabled = false;

    AnsiString FileName;	// Сгенерённое имя файла, без пути
    int crc = -1;
    TSearchRec	sr;
    float source_file_size;

	try
    {
        // Проверить существование и размер исходного файла
        if ( FindFirst(st_->FileName, 0, sr ) == 0 )
        {
            source_file_size = sr.Size;
        }
        else
			throw Exception("< UFTPT-1 > : FTP-91: Файл [" + st_->FileName + "] не найден!\n\nОперация прервана.\n");

		// коннект
		aFTPConnect->Execute();

		FileName = FormatDateTime("yymmdd_hhnnss", SysDateTime) + "_" + IntToStr(SysMSec) + ExtractFileExt(st_->FileName);

		// проверка наличия нужной папки (YYYY)
		try
		{
			IdFTP->ChangeDir(FormatDateTime("yyyy", SysDateTime));
		}
		catch ( Exception &e )
		{
			LogEvent(e.Message);
			if ( (e.Message.LowerCase()).Pos("no such file or directory") > 0 )
			{
				IdFTP->MakeDir(FormatDateTime("yyyy", SysDateTime));
				LogEvent("Create directory: " + FormatDateTime("yyyy", SysDateTime));
				IdFTP->ChangeDir(FormatDateTime("yyyy", SysDateTime));
			}
			else
			{
				throw Exception ("< UFTPT-2 > : Ошибка проверки/создания папок на ftp. Обратитесь к разработчикам.\n" + e.Message);
			}
		}

		// проверка наличия нужной папки (MM)
		try
		{
			IdFTP->ChangeDir(FormatDateTime("mm", SysDateTime));
		}
		catch ( Exception &e )
		{
			LogEvent(e.Message);
			if ( (e.Message.LowerCase()).Pos("no such file or directory") > 0 )
			{
				IdFTP->MakeDir(FormatDateTime("mm", SysDateTime));
				LogEvent("Create directory: " + FormatDateTime("mm", SysDateTime));
				IdFTP->ChangeDir(FormatDateTime("mm", SysDateTime));
			}
			else
			{
				throw Exception ("< UFTPT-3 > : Ошибка проверки/создания папок на ftp. Обратитесь к разработчикам." + e.Message);
			}
		}

		st_->FTPFileName = FormatDateTime("yyyy", SysDateTime) + "/" + FormatDateTime("mm", SysDateTime) + "/" + FileName;  // будет записано в базу, с путём

		DrawProgress(2, soInExec);

		// записываем файл на ftp
		IdFTP->Put(st_->FileName, FileName, false);

		// crc на фтп тестовом и у вовки не работает
		/*if ( IdFTP->IsExtSupported("XCRC") == true )
		{
			LogEvent("XCRC is supported!");
			crc = IdFTP->CRC(FileName, 0, 0);
			if ( crc == -1 )
				throw Exception("<FTP-3>: Файл не был записан. CRC = [" + IntToStr(crc) + "]. Повторите попытку.");
		}
		else
		{
			LogEvent("XCRC is not supported. Check size starting.");
			if ( IdFTP->Size(FileName) != source_file_size)
			//if (IdFTP->VerifyFile(st_->FileName, FileName, 0, 0) == false )
				throw Exception("<FTP-3.1>: Файл не был записан. Верификация размера не прошла [" + IntToStr(IdFTP->Size(FileName)) + "]");
			LogEvent("Check size finished successfull");
		}*/
		if ( IdFTP->Size(FileName) != source_file_size)
			throw Exception("< UFTPT-4 > : Файл не был записан. Верификация размера не прошла [" + IntToStr(IdFTP->Size(FileName)) + "]");
		LogEvent("Check size finished successfull");

		DrawProgress(2, soComplete);

		// делаем дисконнект
		DrawProgress(3, soInExec);

		if ( IdFTP->Connected() )
			IdFTP->Disconnect();

		DrawProgress(3, soComplete);

		Sleep(300);	// чтобы глаз успел увидеть, что всё ОК

		ModalResult = mrOk;
	}
	catch ( EIdSocketError &e )
	{
		IdFTP->Socket->Close();
		MessageBox(Handle, AnsiString("< UFTPT-5 > : Повторите, пожалуйста, попытку снова.\nОшибка FTP (EIdSocketError).\n" + e.Message).c_str(), "Операция прервана", MB_ICONSTOP);
		ModalResult = mrCancel;
	}
	catch ( Exception &ee )
	{
		Application->ShowException(&ee);
		ModalResult = mrCancel;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmFTPTransfer::IdFTPStatus(TObject *ASender, const TIdStatus AStatus, const UnicodeString AStatusText)

{
	switch ( AStatus )
	{
		case 6 /*ftpTransfer*/:
			DrawProgress(1, soComplete);
			DrawProgress(2, soInExec);
			break;
		case 3 /*hsDisconnecting*/:
			DrawProgress(3, soInExec);
			break;
		case 4 /*hsDisconnected*/:
			DrawProgress(3, soComplete);
			break;
		default:
			NULL;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmFTPTransfer::IdFTPAfterPut(TObject *Sender)
{
	DrawProgress(2, soComplete);
}
//---------------------------------------------------------------------------

void __fastcall TfrmFTPTransfer::tmrCloseTimer(TObject *Sender)
{
	tmrClose->Enabled = false;
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------

void __fastcall TfrmFTPTransfer::aFTPConnectExecute(TObject *Sender)
{
	// коннект к ftp
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		DrawProgress(0, soInExec);
		dsa->CommandText = "smt.nsi_pkg.ftp_settings_cur";
		if (cfg_.IsInternet == true)
			dsa->Params->CreateParam(ftInteger, "p_ftp_id", ptInput)->AsInteger	= 4;  // из интернета!
		else
			dsa->Params->CreateParam(ftInteger, "p_ftp_id", ptInput)->AsInteger	= 1;  // из СПД!

		dsa->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);
		DrawProgress(0, soComplete);
	}
	catch (Exception &e)
	{
		throw Exception ("< UFTPT-6 > : Не удалось получить параметры соединения: \n" + e.Message);
	}

	if (dsa->Active == true && dsa->RecordCount == 0)
		throw Exception ("< UFTPT-7 > : Параметры соединения не найдены в БД.\nОбратитесь к разработчикам.");

   LogEvent("ftp-get-settings: success");

	try
	{
		DrawProgress(1, soInExec);

		IdFTP->Host     = dsa->FieldByName("ftp_addr")->AsString;
		IdFTP->Port 	= dsa->FieldByName("ftp_port")->AsInteger;
		IdFTP->Username = dsa->FieldByName("login_name")->AsString;
		IdFTP->Password = dsa->FieldByName("password")->AsString;
		IdFTP->ConnectTimeout = dsa->FieldByName("con_timeout")->AsInteger;

		SysDateTime = dsa->FieldByName("sys_datetime")->AsDateTime;
		SysMSec = dsa->FieldByName("msec")->AsInteger;

		LogEvent("ftp-set-settings: success; " + IdFTP->Host + ":" + IntToStr(IdFTP->Port) + "/" + dsa->FieldByName("remote_dir")->AsString);

		IdFTP->Connect();
	}
	catch (Exception &e)
	{
		throw Exception ("< UFTPT-8 > : Ошибка инициализации настроек FTP.\n" + e.Message);
	}

	if (!IdFTP->Connected())
		throw Exception ("< UFTPT-9 > : Не удалось установить соединение с сервером.");

	LogEvent("ftp-connect: success");

	try
	{
		// меняем директорию на нужную
		if ( dsa->FieldByName("remote_dir")->AsString.IsEmpty() == false )
		{
			IdFTP->ChangeDir(dsa->FieldByName("remote_dir")->AsString);
			LogEvent("change directory: success");
		}
		DrawProgress(1, soComplete);
	}
	catch ( Exception &e )
	{
		throw Exception ("< UFTPT-10 > : Ошибка смены директории.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmFTPTransfer::tmrGetTimer(TObject *Sender)
{
	tmrGet->Enabled = false;

	TSearchRec  sr;
	st_->FileName = TemporaryFolder + st_->FileNameShort;

	try
	{
		// коннект
		aFTPConnect->Execute();
		DrawProgress(2, soInExec);

		// Перейти в папку YYYY/MM
		if ( st_->DirNameYear.Length()> 0 )
		{
			IdFTP->ChangeDir(st_->DirNameYear);
			LogEvent("ChangeDir: " + IdFTP->RetrieveCurrentDir());
		}

		if ( st_->DirNameMonth.Length()> 0 )
		{
			IdFTP->ChangeDir(st_->DirNameMonth);
			LogEvent("ChangeDir: " + IdFTP->RetrieveCurrentDir());
		}

		if ( FileExistsCheck() == false )
			throw Exception("< UFTPT-11 > : Файл [" + st_->FTPFileName + "] не найден.\n");

		// читаем файл с ftp
		IdFTP->Get(st_->FileNameShort, st_->FileName, true, false);

		LogEvent(st_->FTPFileName + " loading: success");

		if (FindFirst(st_->FileName, 0, sr) == 0)
			FindClose(sr);
		else
			throw Exception("< UFTPT-12 > : Файл <" + st_->FTPFileName + "> не загружен.\n");
		DrawProgress(2, soComplete);

		// делаем дисконнект
		DrawProgress(3, soInExec);
		try
		{
			if ( IdFTP->Connected() )
				IdFTP->Disconnect();
		}
		catch ( EIdSocketError &e )
		{
			IdFTP->Socket->Close();
			LogEvent("< UFTPT-13 > : IdFTP->Disconnect: EIdSocketError: " + e.Message);
		}
		DrawProgress(3, soComplete);
		Sleep(300);	// чтобы глаз успел увидеть, что всё ОК


		// Открываем файл
		char buf_str[2000];
		sprintf(buf_str, "%s", st_->FileName);
		if ( st_->AutoRun == true )
			ShellExecute(Application->Handle, NULL, buf_str, NULL, NULL, SW_MAXIMIZE);

		ModalResult = mrOk;
	}
	catch ( EIdSocketError &e )
	{
		IdFTP->Socket->Close();
		MessageBox(Handle, AnsiString("< UFTPT-14 > : " + e.Message).c_str(), "Операция прервана.\n", MB_ICONSTOP);
		ModalResult = mrCancel;
	}
	catch ( Exception &ee )
	{
		MessageBox(Handle, AnsiString("< UFTPT-15 > : " + ee.Message).c_str(), "Операция прервана.\n", MB_ICONSTOP);
		LogEvent(ee.Message);
		ModalResult = mrCancel;
	}
}
//---------------------------------------------------------------------------

bool __fastcall TfrmFTPTransfer::FileExistsCheck()
{
	/* Проверка существования файла на ftp */

	bool Result = false;
	try
	{
		IdFTP->List();
	}
	catch ( Exception &e )
	{
		throw Exception("< UFTPT-16 > : Проверка существования файла: Ошибка команды LIST: " + e.Message);
	}

	try
	{
		for ( int i = 0; i < IdFTP->DirectoryListing->Count; i++ )
		{
			if ( Result == true )
				break;

			Result = ( IdFTP->DirectoryListing->Items[i]->FileName == st_->FileNameShort );
		}
	}
	catch ( Exception &e )
	{
		throw Exception("< UFTPT-17 > : Ошибка проверки существования файла: " + e.Message);
	}

	return Result;
}
//---------------------------------------------------------------------------

void __fastcall TfrmFTPTransfer::tmrDeleteTimer(TObject *Sender)
{
	tmrDelete->Enabled = false;

	TSearchRec  sr;

	try
	{
		// коннект
		aFTPConnect->Execute();
		DrawProgress(2, soInExec);

		// Перейти в папку YYYY/MM
		try
		{
			if ( st_->DirNameYear.Length()> 0 )
			{
				IdFTP->ChangeDir(st_->DirNameYear);
				LogEvent("ChangeDir:" + IdFTP->RetrieveCurrentDir());
			}

			if ( st_->DirNameMonth.Length()> 0 )
			{
				IdFTP->ChangeDir(st_->DirNameMonth);
				LogEvent("ChangeDir:" + IdFTP->RetrieveCurrentDir());
			}
		}
		catch ( Exception &e )
		{
			throw Exception("< UFTPT-18 > : Ошибка перехода в папку [" + st_->DirNameYear + "/" + st_->DirNameMonth +"]:\n" + e.Message);
		}

		if ( FileExistsCheck() == false )
			throw Exception("< UFTPT-19 > : Ошибка удаления файла [" + st_->FTPFileName + "] : файл не найден.\n");

		// удаляем файл с ftp
		try
		{
			IdFTP->Delete(st_->FileNameShort);
			DrawProgress(2, soComplete);
		}
		catch ( Exception &e )
		{
			throw Exception("< UFTPT-20 > : Ошибка удаления файла [" + st_->FTPFileName + "]:\n" + e.Message);
		}


		// делаем дисконнект
		DrawProgress(3, soInExec);
		try
		{
			if ( IdFTP->Connected() )
				IdFTP->Disconnect();
		}
		catch ( EIdSocketError &e )
		{
			IdFTP->Socket->Close();
			LogEvent("< UFTPT-21 > : IdFTP->Disconnect: EIdSocketError: " + e.Message);
		}
		DrawProgress(3, soComplete);
		Sleep(300);	// чтобы глаз успел увидеть, что всё ОК

		ModalResult = mrOk;
	}
	catch ( EIdSocketError &e )
	{
		IdFTP->Socket->Close();
		LogEvent(e.Message);
        MessageBox(Handle, AnsiString(e.Message).c_str(), "Операция прервана", MB_ICONSTOP);
        ModalResult = mrCancel;
    }
    catch ( Exception &ee )
    {
    	Application->ShowException(&ee);
    	ModalResult = mrCancel;
    }
}
//---------------------------------------------------------------------------



