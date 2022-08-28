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


#ifndef CONFIG_H_
#define CONFIG_H_

#include <inifiles.hpp>

//
// ������ ������� �����
//
class config
{

	void __fastcall create(const AnsiString& file_name);

public:

	TIniFile	*ini;

	__fastcall config(const AnsiString& file_name);
	__fastcall config();
    __fastcall ~config();

	//
	// store TForm size && state in ini file
	//
	void __fastcall store_form(TForm* Source);

	//
	// restore TForm size && state from ini file
	//
	void __fastcall restore_form(TForm* Source);


	void __fastcall load();

	void __fastcall save();

	//
	// full path to root directory
	//
	AnsiString	ApplicationDirectory;


	// Application Parameters
	AnsiString	TemplateDirectory;

	// Application Server Parameters
	AnsiString	QueryProviderName;
	AnsiString	ProcProviderName;

	AnsiString	UserName;
    int			UserID;
    int			KodFirm;	// ������
    int			DepotID;
    bool		IsInternet;

	AnsiString	session_id;
	AnsiString	ip_address;
	AnsiString	hashedPwd;
	AnsiString	userLogin;

    // App Server

	AnsiString ServerName;
	int Port;
	AnsiString Host;

};

#endif // CONFIG_H_

