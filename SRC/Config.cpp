//
// ----------------------------------------------------------------------------
// "THE BEER-WARE LICENSE":
// <chagin@center.rzd> wrote this file.  As long as you retain this notice you
// can do whatever you want with this stuff. If we meet some day, and you think
// this stuff is worth it, you can buy me a beer in return.   Dmitry Chagin.
// ----------------------------------------------------------------------------
//
// '$Id$'
//

#include <vcl.h>
#include <Windows.hpp>
#include <inifiles.hpp>
#include <Filectrl.hpp>

#include "config.h"
#pragma hdrstop


__fastcall config::~config()
{

	delete ini;
}

__fastcall config::config()
{
	create( ChangeFileExt( Application->ExeName, ".ini" ) );
}

__fastcall config::config(const AnsiString& file_name)
{
	create(file_name);
}

void __fastcall config::create(const AnsiString& file_name)
{
/*
	WORD wVersionRequested = MAKEWORD( 2, 2 );
	WSADATA wsaData;

	ip_address = "0.0.0.0";

	if ( 0 == WSAStartup( wVersionRequested, &wsaData ) )
	{
		char hn[MAX_PATH];
		gethostname( hn, sizeof( hn ) );
		struct hostent * hs = gethostbyname( hn );

		if ( hs )
		{
   	    	sockaddr_in sin;
			sin.sin_addr.S_un.S_un_b.s_b1 = hs->h_addr[0];
			sin.sin_addr.S_un.S_un_b.s_b2 = hs->h_addr[1];
			sin.sin_addr.S_un.S_un_b.s_b3 = hs->h_addr[2];
			sin.sin_addr.S_un.S_un_b.s_b4 = hs->h_addr[3];
			sin.sin_family = hs->h_addrtype;
			ip_address = inet_ntoa( sin.sin_addr );
		}

		WSACleanup();
	}
*/
	ApplicationDirectory = ExtractFilePath(Application->ExeName);

	TemplateDirectory = ApplicationDirectory + "Templates\\";
	if ( false == DirectoryExists(TemplateDirectory) )
		if ( false == CreateDir(TemplateDirectory) )
			throw Exception("Ќевозможно создать директорию дл€ шаблонов");

	SetCurrentDir(ApplicationDirectory);

	session_id = Now().FormatString("yyyymmddhhnnss");

   	ini = new TIniFile(file_name);
	load();
}

//
void __fastcall config::store_form(TForm *Source)
{
	ini->WriteInteger(Source->Name, "Top", Source->Top);
	ini->WriteInteger(Source->Name, "Left", Source->Left);
	ini->WriteInteger(Source->Name, "Height", Source->Height);
	ini->WriteInteger(Source->Name, "Width", Source->Width);
	ini->WriteBool(Source->Name, "InitMax", Source->WindowState == wsMaximized);
}

//
void __fastcall config::restore_form(TForm *Source)
{
	bool	fState;

	fState = ini->ReadBool(Source->Name, "InitMax", false);

	if ( fState )
	{
		Source->WindowState = wsMaximized;
	}
	else
	{
		Source->Top = ini->ReadInteger(Source->Name, "Top", 50);
		Source->Left = ini->ReadInteger(Source->Name, "Left", 100);
		Source->Height = ini->ReadInteger(Source->Name, "Height", 500);
		Source->Width = ini->ReadInteger(Source->Name, "Width", 400);

		if ( Source->Top < 0 )
		{
			Source->Top = 1;
			Source->Left = 3;
			Source->Height -= 35;
			Source->Width -= 30;
		}
		Source->WindowState = wsNormal;
	}
}


//
void __fastcall config::load()
{
	QueryProviderName = ini->ReadString("ApplicationServer", "QueryProviderName", "DataSetProvider1");
	ProcProviderName = ini->ReadString("ApplicationServer", "ProcProviderName", "PDataSetProvider1");

	UserName = ini->ReadString("UserOptions", "Identifier", "");

	AnsiString SectionValue = ini->ReadString("ApplicationServers", "ApplicationServer", "");

	if ( !SectionValue.IsEmpty() || SectionValue != "" ) {

		try
		{
			// Name
			int idx = SectionValue.LastDelimiter(":");
			ServerName = SectionValue.SubString(idx + 1, SectionValue.Length() - idx);
			SectionValue.Delete(idx, SectionValue.Length() - idx + 1);

			// Port
			idx = SectionValue.LastDelimiter(":");
			Port = SectionValue.SubString(idx + 1, SectionValue.Length() - idx).ToInt();
			SectionValue.Delete(idx, SectionValue.Length() - idx + 1);

			// Ip Address
			idx = SectionValue.LastDelimiter(":");
			Host = SectionValue.SubString(idx + 1, SectionValue.Length() - idx);
		}
		catch ( ... )
		{
		}
	}
}

//
void __fastcall config::save()
{
	ini->EraseSection("ApplicationServer");
	ini->EraseSection("UserOptions");

	ini->WriteString("ApplicationServer", "QueryProviderName", QueryProviderName);
	ini->WriteString("ApplicationServer", "ProcProviderName", ProcProviderName);

	ini->WriteString("UserOptions", "Identifier", UserName);
}
