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

    AnsiString FileName;	// ���������� ��� �����, ��� ����
    int crc = -1;
    TSearchRec	sr;
    float source_file_size;

	try
    {
        // ��������� ������������� � ������ ��������� �����
        if ( FindFirst(st_->FileName, 0, sr ) == 0 )
        {
            source_file_size = sr.Size;
        }
        else
			throw Exception("< UFTPT-1 > : FTP-91: ���� [" + st_->FileName + "] �� ������!\n\n�������� ��������.\n");

		// �������
		aFTPConnect->Execute();

		FileName = FormatDateTime("yymmdd_hhnnss", SysDateTime) + "_" + IntToStr(SysMSec) + ExtractFileExt(st_->FileName);

		// �������� ������� ������ ����� (YYYY)
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
				throw Exception ("< UFTPT-2 > : ������ ��������/�������� ����� �� ftp. ���������� � �������������.\n" + e.Message);
			}
		}

		// �������� ������� ������ ����� (MM)
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
				throw Exception ("< UFTPT-3 > : ������ ��������/�������� ����� �� ftp. ���������� � �������������." + e.Message);
			}
		}

		st_->FTPFileName = FormatDateTime("yyyy", SysDateTime) + "/" + FormatDateTime("mm", SysDateTime) + "/" + FileName;  // ����� �������� � ����, � ����

		DrawProgress(2, soInExec);

		// ���������� ���� �� ftp
		IdFTP->Put(st_->FileName, FileName, false);

		// crc �� ��� �������� � � ����� �� ��������
		/*if ( IdFTP->IsExtSupported("XCRC") == true )
		{
			LogEvent("XCRC is supported!");
			crc = IdFTP->CRC(FileName, 0, 0);
			if ( crc == -1 )
				throw Exception("<FTP-3>: ���� �� ��� �������. CRC = [" + IntToStr(crc) + "]. ��������� �������.");
		}
		else
		{
			LogEvent("XCRC is not supported. Check size starting.");
			if ( IdFTP->Size(FileName) != source_file_size)
			//if (IdFTP->VerifyFile(st_->FileName, FileName, 0, 0) == false )
				throw Exception("<FTP-3.1>: ���� �� ��� �������. ����������� ������� �� ������ [" + IntToStr(IdFTP->Size(FileName)) + "]");
			LogEvent("Check size finished successfull");
		}*/
		if ( IdFTP->Size(FileName) != source_file_size)
			throw Exception("< UFTPT-4 > : ���� �� ��� �������. ����������� ������� �� ������ [" + IntToStr(IdFTP->Size(FileName)) + "]");
		LogEvent("Check size finished successfull");

		DrawProgress(2, soComplete);

		// ������ ����������
		DrawProgress(3, soInExec);

		if ( IdFTP->Connected() )
			IdFTP->Disconnect();

		DrawProgress(3, soComplete);

		Sleep(300);	// ����� ���� ����� �������, ��� �� ��

		ModalResult = mrOk;
	}
	catch ( EIdSocketError &e )
	{
		IdFTP->Socket->Close();
		MessageBox(Handle, AnsiString("< UFTPT-5 > : ���������, ����������, ������� �����.\n������ FTP (EIdSocketError).\n" + e.Message).c_str(), "�������� ��������", MB_ICONSTOP);
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
	// ������� � ftp
	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		DrawProgress(0, soInExec);
		dsa->CommandText = "smt.nsi_pkg.ftp_settings_cur";
		if (cfg_.IsInternet == true)
			dsa->Params->CreateParam(ftInteger, "p_ftp_id", ptInput)->AsInteger	= 4;  // �� ���������!
		else
			dsa->Params->CreateParam(ftInteger, "p_ftp_id", ptInput)->AsInteger	= 1;  // �� ���!

		dsa->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(dsa.get(), "OPEN", "CT", 1);
		DrawProgress(0, soComplete);
	}
	catch (Exception &e)
	{
		throw Exception ("< UFTPT-6 > : �� ������� �������� ��������� ����������: \n" + e.Message);
	}

	if (dsa->Active == true && dsa->RecordCount == 0)
		throw Exception ("< UFTPT-7 > : ��������� ���������� �� ������� � ��.\n���������� � �������������.");

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
		throw Exception ("< UFTPT-8 > : ������ ������������� �������� FTP.\n" + e.Message);
	}

	if (!IdFTP->Connected())
		throw Exception ("< UFTPT-9 > : �� ������� ���������� ���������� � ��������.");

	LogEvent("ftp-connect: success");

	try
	{
		// ������ ���������� �� ������
		if ( dsa->FieldByName("remote_dir")->AsString.IsEmpty() == false )
		{
			IdFTP->ChangeDir(dsa->FieldByName("remote_dir")->AsString);
			LogEvent("change directory: success");
		}
		DrawProgress(1, soComplete);
	}
	catch ( Exception &e )
	{
		throw Exception ("< UFTPT-10 > : ������ ����� ����������.\n" + e.Message);
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
		// �������
		aFTPConnect->Execute();
		DrawProgress(2, soInExec);

		// ������� � ����� YYYY/MM
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
			throw Exception("< UFTPT-11 > : ���� [" + st_->FTPFileName + "] �� ������.\n");

		// ������ ���� � ftp
		IdFTP->Get(st_->FileNameShort, st_->FileName, true, false);

		LogEvent(st_->FTPFileName + " loading: success");

		if (FindFirst(st_->FileName, 0, sr) == 0)
			FindClose(sr);
		else
			throw Exception("< UFTPT-12 > : ���� <" + st_->FTPFileName + "> �� ��������.\n");
		DrawProgress(2, soComplete);

		// ������ ����������
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
		Sleep(300);	// ����� ���� ����� �������, ��� �� ��


		// ��������� ����
		char buf_str[2000];
		sprintf(buf_str, "%s", st_->FileName);
		if ( st_->AutoRun == true )
			ShellExecute(Application->Handle, NULL, buf_str, NULL, NULL, SW_MAXIMIZE);

		ModalResult = mrOk;
	}
	catch ( EIdSocketError &e )
	{
		IdFTP->Socket->Close();
		MessageBox(Handle, AnsiString("< UFTPT-14 > : " + e.Message).c_str(), "�������� ��������.\n", MB_ICONSTOP);
		ModalResult = mrCancel;
	}
	catch ( Exception &ee )
	{
		MessageBox(Handle, AnsiString("< UFTPT-15 > : " + ee.Message).c_str(), "�������� ��������.\n", MB_ICONSTOP);
		LogEvent(ee.Message);
		ModalResult = mrCancel;
	}
}
//---------------------------------------------------------------------------

bool __fastcall TfrmFTPTransfer::FileExistsCheck()
{
	/* �������� ������������� ����� �� ftp */

	bool Result = false;
	try
	{
		IdFTP->List();
	}
	catch ( Exception &e )
	{
		throw Exception("< UFTPT-16 > : �������� ������������� �����: ������ ������� LIST: " + e.Message);
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
		throw Exception("< UFTPT-17 > : ������ �������� ������������� �����: " + e.Message);
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
		// �������
		aFTPConnect->Execute();
		DrawProgress(2, soInExec);

		// ������� � ����� YYYY/MM
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
			throw Exception("< UFTPT-18 > : ������ �������� � ����� [" + st_->DirNameYear + "/" + st_->DirNameMonth +"]:\n" + e.Message);
		}

		if ( FileExistsCheck() == false )
			throw Exception("< UFTPT-19 > : ������ �������� ����� [" + st_->FTPFileName + "] : ���� �� ������.\n");

		// ������� ���� � ftp
		try
		{
			IdFTP->Delete(st_->FileNameShort);
			DrawProgress(2, soComplete);
		}
		catch ( Exception &e )
		{
			throw Exception("< UFTPT-20 > : ������ �������� ����� [" + st_->FTPFileName + "]:\n" + e.Message);
		}


		// ������ ����������
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
		Sleep(300);	// ����� ���� ����� �������, ��� �� ��

		ModalResult = mrOk;
	}
	catch ( EIdSocketError &e )
	{
		IdFTP->Socket->Close();
		LogEvent(e.Message);
        MessageBox(Handle, AnsiString(e.Message).c_str(), "�������� ��������", MB_ICONSTOP);
        ModalResult = mrCancel;
    }
    catch ( Exception &ee )
    {
    	Application->ShowException(&ee);
    	ModalResult = mrCancel;
    }
}
//---------------------------------------------------------------------------



