#ifndef Utils_JKH
#define Utils_JKH


// EditClass
const int   eclssNone               = 100;
const int   eclssTcxEditorRow       = 101;
const int   eclssTcxMultiEditorRow  = 102;
const int   eclssTcxCategoryRow     = 103;

const int actOpen = 1;
const int actExec = 2;
//

bool FindInArray(const int * array, const int ARRAY_SIZE, int value);
void __fastcall SetResourceString();
int GetEditorClassID(AnsiString sClassName);
TDateTime __fastcall GetDateTimeFromValue( Variant v );
Variant __fastcall DateTimeToVariant( TDateTime v );

TDateTime __fastcall GetDateBegin( TDateTime date, TDateTime time );
TDateTime __fastcall GetDateFinish( TDateTime date, TDateTime time );
TDateTime __fastcall GetDateTime4Running(TDateTime dt);
TDateTime __fastcall GetBeginTimeDefaultZD();

AnsiString __fastcall XMLReadValue(AnsiString Parent, AnsiString Key);
int __fastcall XMLReadInteger(AnsiString Parent, AnsiString Key);
AnsiString __fastcall XMLReadString(AnsiString Parent, AnsiString Key);
TDateTime __fastcall XMLReadDateTime(AnsiString Parent, AnsiString Key);
bool __fastcall XMLReadBool(AnsiString Parent, AnsiString Key);

AnsiString Date2Str(TDateTime date);

void __fastcall XMLWtiteValue(AnsiString Parent, AnsiString Key, AnsiString value);
void __fastcall XMLWriteDateTime( AnsiString Parent, AnsiString Key, TDateTime value );
void __fastcall XMLWriteInteger( AnsiString Parent, AnsiString Key, int value );
void __fastcall XMLWriteString( AnsiString Parent, AnsiString Key, AnsiString value );
void __fastcall XMLWriteBool( AnsiString Parent, AnsiString Key, bool value );

void __fastcall RequiredFolders();
void __fastcall CreateFolder(AnsiString DirName);
void __fastcall ClearTempDir();

TDateTime __fastcall GetBeginTimeRound30(TDateTime pDateTime);

__int64 __fastcall GetFileSize(AnsiString FileName);

AnsiString __fastcall GetAppVer();
bool GetAppVersion( char *LibName, WORD *MajorVersion, WORD *MinorVersion, WORD *BuildNumber, WORD *RevisionNumber, TDateTime *FileDate );

int VarToInt(Variant AVariant);

#endif
