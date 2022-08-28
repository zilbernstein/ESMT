//
// ----------------------------------------------------------------------------
// "THE BEER-WARE LICENSE":
// <dchag@irk.esrr.ru> wrote this file.  As long as you retain this notice you
// can do whatever you want with this stuff. If we meet some day, and you think
// this stuff is worth it, you can buy me a beer in return.   Dmitry Chagin.
// ----------------------------------------------------------------------------
//
// '$Id: log.cpp,v 1.1.1.1 2004/02/27 02:39:25 chd Exp $'
//


#include "log.h"
#include <sys\stat.h>
#include <stdio.h>
#include <time.h>
#include <fcntl.h>
#include <io.h>

#include <memory.h>
#include <list>
#include <string>

using namespace std;


class CFileInfoEx
{
private:

	AnsiString		FFileName;
	FILETIME		FCreationTime;

public:

	CFileInfoEx(AnsiString FileName, FILETIME CreationTime)
	{
		FFileName = FileName;
		memcpy(&FCreationTime, &CreationTime, sizeof(FILETIME));
	}

	const char * FileName()
	{
		return FFileName.c_str();
	}

	bool operator<(const CFileInfoEx &y)
	{
		if (FCreationTime.dwHighDateTime < y.FCreationTime.dwHighDateTime)
			return true;

		if (FCreationTime.dwHighDateTime == y.FCreationTime.dwHighDateTime)
		{
			if (FCreationTime.dwLowDateTime < y.FCreationTime.dwLowDateTime)
				return true;
		}
		return false;
	}
};


void __stdcall LogEvent(AnsiString Message)
{
	static AnsiString	FileName;

	if ( FileName.IsEmpty() )
	{
		CHAR inifilename[MAX_PATH];

		if ( 0 == GetModuleFileName(NULL, (LPTSTR) &inifilename, sizeof(inifilename)) )
			return;

		FileName = ExtractFilePath(AnsiString(inifilename)) + "Log\\Current.log";
	}

	FILE* fh = fopen( FileName.c_str(), "a+" );

	if ( 0 == fh )
		return;

	fseek(fh, 0, SEEK_END);
	long fl = ftell(fh);

	if ( 50000 < fl )
	{
		struct stat st;

		stat( FileName.c_str(), &st );

		struct tm *tb = localtime(&st.st_mtime);

		char oldFileName[MAX_PATH];
		strftime(oldFileName, sizeof(oldFileName), "%d_%m_%y_%H_%M_%S.log", tb);

		// rotate log file
		AnsiString OldFileName = ExtractFilePath(FileName) + AnsiString(oldFileName);
		fprintf( fh, "%s: %s %s\n", FormatDateTime("dd-mm hh:nn:ss", Now()).c_str(), "Log file rotated to", oldFileName );
		fclose( fh );

		rename( FileName.c_str(), OldFileName.c_str() );

		fh = fopen( FileName.c_str(), "a+" );
		if ( 0 == fh )
			return;
	}

    AnsiString lll = FormatDateTime("dd.mm hh:nn:ss", Now());
	fprintf( fh, "%s: %s\n\n", lll.c_str(), Message.c_str() );
	fclose( fh );


	//
	// удалим лишние файлы
	//

	CHAR			search_directory[MAX_PATH + 1];
	HANDLE			hDirectorySearch;
	WIN32_FIND_DATA		find_data;
	list<CFileInfoEx>	Container;
    AnsiString ss = ExtractFilePath(FileName);

	sprintf(search_directory, "%s*.log", ss/*ExtractFilePath(FileName).c_str()*/);

	hDirectorySearch = FindFirstFile(search_directory, &find_data);
	if ( INVALID_HANDLE_VALUE == hDirectorySearch )
		return;

	do
	{
		if ( !(find_data.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) )
		{
			Container.push_back(CFileInfoEx(find_data.cFileName, find_data.ftLastWriteTime));
		}
	} while ( FindNextFile(hDirectorySearch, &find_data) );

	FindClose(hDirectorySearch);

	if ( Container.size() < 11 )
		return;

	Container.sort();

	do
	{
		sprintf(search_directory, "%s%s", ss/*ExtractFilePath(FileName).c_str()*/, Container.front().FileName());
		remove(search_directory);
		Container.pop_front();

	}
	while ( Container.size() > 10 );
}
