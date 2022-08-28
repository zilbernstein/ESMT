#pragma hdrstop

#include <algorithm>
#include <cxClasses.hpp>
#include <cxEditConsts.hpp>
#include <cxGridStrs.hpp>
#include <cxFilterConsts.hpp>
#include <cxFilterControlStrs.hpp>
#include <cxGridStrs.hpp>
#include <dxBarStrs.hpp>
#include <DateUtils.hpp>
#include <XMLDoc.hpp>
#include <xmldom.hpp>
#include <XMLIntf.hpp>
#include <AnsiStrings.hpp>

#include "config.h"
#include "public.h"
#include "Log.h"
#include "Utils_JK.h"
#include <memory>
#pragma comment(lib,"Version.lib")

using namespace std;

bool FindInArray(const int * array, const int ARRAY_SIZE, int value)
{
  return find(array, array + ARRAY_SIZE, value) != array + ARRAY_SIZE;
}

//---------------------------------------------------------------------------
void __fastcall SetResourceString()
{
	// Переопределение констант DevExpress

	cxSetResourceString(&_cxSFilterOperatorEqual, "равно");
	cxSetResourceString(&_cxSFilterOperatorNotEqual, "не равно");
	cxSetResourceString(&_cxSFilterOperatorLess, "меньше");
	cxSetResourceString(&_cxSFilterOperatorLessEqual, "меньше либо равно");
	cxSetResourceString(&_cxSFilterOperatorGreater, "больше");
	cxSetResourceString(&_cxSFilterOperatorGreaterEqual, "больше либо равно");
	cxSetResourceString(&_cxSFilterOperatorLike, "похоже");
	cxSetResourceString(&_cxSFilterOperatorNotLike, "не похоже");
	cxSetResourceString(&_cxSFilterOperatorBetween, "между");
	cxSetResourceString(&_cxSFilterOperatorNotBetween, "не между");
	cxSetResourceString(&_cxSFilterOperatorInList, "из");
	cxSetResourceString(&_cxSFilterOperatorNotInList, "не из");

	cxSetResourceString(&_cxSFilterOperatorYesterday, "вчера");
	cxSetResourceString(&_cxSFilterOperatorToday, "сегодня");
	cxSetResourceString(&_cxSFilterOperatorTomorrow, "завтра");

	cxSetResourceString(&_cxSFilterOperatorLastWeek, "последняя неделя");
	cxSetResourceString(&_cxSFilterOperatorLastMonth, "последний месяц");
	cxSetResourceString(&_cxSFilterOperatorLastYear, "последний год");

	cxSetResourceString(&_cxSFilterOperatorThisWeek, "эта неделя");
	cxSetResourceString(&_cxSFilterOperatorThisMonth, "этот месяц");
	cxSetResourceString(&_cxSFilterOperatorThisYear, "этот год");

	cxSetResourceString(&_cxSFilterOperatorNextWeek, "следующая неделя");
	cxSetResourceString(&_cxSFilterOperatorNextMonth, "следующий месяц");
	cxSetResourceString(&_cxSFilterOperatorNextYear, "следующий год");

	cxSetResourceString(&_cxSFilterAndCaption, "И");
	cxSetResourceString(&_cxSFilterOrCaption, "ИЛИ");
	cxSetResourceString(&_cxSFilterNotCaption, "НЕ");
	cxSetResourceString(&_cxSFilterBlankCaption, "ПУСТО");
	cxSetResourceString(&_scxGridChartToolBoxDataLevels, "Уровни детализации");
    cxSetResourceString(&_scxGridChartToolBoxDataLevelSelectValue, "Выберите значение");

	// derived
	cxSetResourceString(&_cxSFilterOperatorIsNull, "пусто");
	cxSetResourceString(&_cxSFilterOperatorIsNotNull, "не пусто");
	cxSetResourceString(&_cxSFilterOperatorBeginsWith, "начинается с");
	cxSetResourceString(&_cxSFilterOperatorDoesNotBeginWith, "не начинается с");
	cxSetResourceString(&_cxSFilterOperatorEndsWith, "кончается на");
	cxSetResourceString(&_cxSFilterOperatorDoesNotEndWith, "не кончается на");
	cxSetResourceString(&_cxSFilterOperatorContains, "содержит");
	cxSetResourceString(&_cxSFilterOperatorDoesNotContain, "не содержит");

	// filter listbox"s values
	cxSetResourceString(&_cxSFilterBoxAllCaption, "(Все)");
	cxSetResourceString(&_cxSFilterBoxCustomCaption, "(Настройка...)");
	cxSetResourceString(&_cxSFilterBoxBlanksCaption, "(Пустые)");
	cxSetResourceString(&_cxSFilterBoxNonBlanksCaption, "(Непустые)");

	cxSetResourceString(&_cxSFilterBoolOperatorAnd, "И");  // all
	cxSetResourceString(&_cxSFilterBoolOperatorOr, "ИЛИ");
	cxSetResourceString(&_cxSFilterBoolOperatorNotAnd, "И НЕ"); // not all
	cxSetResourceString(&_cxSFilterBoolOperatorNotOr, "ИЛИ НЕ");
	cxSetResourceString(&_cxSFilterRootButtonCaption, "Фильтр");
	cxSetResourceString(&_cxSFilterAddCondition, "Добавить условие");
	cxSetResourceString(&_cxSFilterAddGroup, "Добавить группу");
	cxSetResourceString(&_cxSFilterRemoveRow, "Удалить условие");
	cxSetResourceString(&_cxSFilterClearAll, "Очистить");
	cxSetResourceString(&_cxSFilterFooterAddCondition, "нажмите кнопку чтобы добавить условие");

	cxSetResourceString(&_cxSFilterGroupCaption, "применяется к условиям");
	cxSetResourceString(&_cxSFilterRootGroupCaption, "<корень>");
	cxSetResourceString(&_cxSFilterControlNullString, "<нет>");

	cxSetResourceString(&_cxSFilterErrorBuilding, "Can""t build filter from source");

	//FilterDialog
	cxSetResourceString(&_cxSFilterDialogCaption, "Настройка фильтра");
	cxSetResourceString(&_cxSFilterDialogInvalidValue, "Неверное значение");
	cxSetResourceString(&_cxSFilterDialogUse, "Использовать");
	cxSetResourceString(&_cxSFilterDialogSingleCharacter, "для одного символа");
	cxSetResourceString(&_cxSFilterDialogCharactersSeries, "для набора символов");
	cxSetResourceString(&_cxSFilterDialogOperationAnd, "И");
	cxSetResourceString(&_cxSFilterDialogOperationOr, "ИЛИ");
	cxSetResourceString(&_cxSFilterDialogRows, "Показывать строки, для которых:");

	// FilterControlDialog
	cxSetResourceString(&_cxSFilterControlDialogCaption, "Создание фильтра");
	cxSetResourceString(&_cxSFilterControlDialogNewFile, "БезИмени.flt");
	cxSetResourceString(&_cxSFilterControlDialogOpenDialogCaption, "Открытие фильтра");
	cxSetResourceString(&_cxSFilterControlDialogSaveDialogCaption, "Сохранение фильтра");
	cxSetResourceString(&_cxSFilterControlDialogActionSaveCaption, "Сохранить...");
	cxSetResourceString(&_cxSFilterControlDialogActionOpenCaption, "Открыть...");
	cxSetResourceString(&_cxSFilterControlDialogActionApplyCaption, "Применить");
	cxSetResourceString(&_cxSFilterControlDialogActionOkCaption, "ОК");
	cxSetResourceString(&_cxSFilterControlDialogActionCancelCaption, "Отмена");
	cxSetResourceString(&_cxSFilterControlDialogFileExt, "flt");
	cxSetResourceString(&_cxSFilterControlDialogFileFilter, "Файлы фильтров (*.flt)|*.flt");

	cxSetResourceString(&_scxGridRecursiveLevels, "You cannot create recursive levels");
	// _scxGridDeletingConfirmationCaption удалено разрабочиками
	// смотреть ресурс https://www.devexpress.com/Support/WhatsNew/VCL/files/11.2.2.bc.xml
	//cxSetResourceString(&_scxGridDeletingConfirmationCaption, "Подтвердите");
	cxSetResourceString(&_scxGridDeletingFocusedConfirmationText, "Удалить запись?");
	cxSetResourceString(&_scxGridDeletingSelectedConfirmationText, "Удалить все выбранные записи?");

	cxSetResourceString(&_scxGridNoDataInfoText, "<Нет данных для отображения>");

	cxSetResourceString(&_scxGridNewItemRowInfoText, "Нажмите сюда для добавления записи");

	cxSetResourceString(&_scxGridFilterIsEmpty, "<Фильтр пуст>");

	cxSetResourceString(&_scxGridCustomizationFormCaption, "Настройка");
	cxSetResourceString(&_scxGridCustomizationFormColumnsPageCaption, "Колонки");
	cxSetResourceString(&_scxGridGroupByBoxCaption, "Перенесите сюда заголовок колонки для группировки");
	cxSetResourceString(&_scxGridFilterCustomizeButtonCaption, "Настройка...");
	cxSetResourceString(&_scxGridColumnsQuickCustomizationHint, "Нажмите сюда для настройки выбранных колонок");

	cxSetResourceString(&_scxGridCustomizationFormBandsPageCaption, "Группы колонок");
	cxSetResourceString(&_scxGridBandsQuickCustomizationHint, "Нажмите сюда для настройки групп колонок");

	cxSetResourceString(&_scxGridCustomizationFormRowsPageCaption, "Rows");

	//  cxSetResourceString(&_scxGridConverterIntermediaryMissing, "Missing an intermediary component!"#13#10"Please add a %s component to the form.");
	cxSetResourceString(&_scxGridConverterNotExistGrid, "cxGrid does not exist");
	cxSetResourceString(&_scxGridConverterNotExistComponent, "Component does not exist");
	cxSetResourceString(&_scxImportErrorCaption, "Import error");

	cxSetResourceString(&_scxNotExistGridView, "Grid view does not exist");
	cxSetResourceString(&_scxNotExistGridLevel, "Active grid level does not exist");
	cxSetResourceString(&_scxCantCreateExportOutputFile, "Can""t create the export output file");

	cxSetResourceString(&_cxSEditRepositoryExtLookupComboBoxItem, "ExtLookupComboBox|Represents an ultra-advanced lookup using the QuantumGrid as its drop down control");

	cxSetResourceString(&_scxGridChartValueHintFormat, "%s : [ %s ] = %s%");  // series display text, category, valu);

	cxSetResourceString(&_cxSDatePopupNow, "Сейчас");
	cxSetResourceString(&_cxSDatePopupClear, "Сбросить");
	cxSetResourceString(&_cxSDatePopupToday, "Сегодня");
	cxSetResourceString(&_cxSDateError, "Дата введена неверно");
    cxSetResourceString(&_dxSBAR_DATETODAY, "Сегодня");
    cxSetResourceString(&_dxSBAR_DATECLEAR, "Очистить");

    // Charts
    cxSetResourceString(&_scxGridChartToolBoxCustomizeButtonCaption, "Настройка");
    cxSetResourceString(&_scxGridChartCustomizationFormSeriesPageCaption, "Элементы (ряды)");
    cxSetResourceString(&_scxGridChartCustomizationFormSortBySeries, "Сортировать по");
    cxSetResourceString(&_scxGridChartCustomizationFormOptionsPageCaption, "Опции");
    cxSetResourceString(&_scxGridChartColumnDiagramDisplayText, "Гистограмма");
    cxSetResourceString(&_scxGridChartBarDiagramDisplayText, "Линейчатая");
    cxSetResourceString(&_scxGridChartLineDiagramDisplayText, "График");
    cxSetResourceString(&_scxGridChartAreaDiagramDisplayText, "С областями");
    cxSetResourceString(&_scxGridChartPieDiagramDisplayText, "Круговая");
}
//---------------------------------------------------------------------------

int GetEditorClassID(AnsiString sClassName)
{
   // Возвращает числовое значение класса (своё)
   
   int   iResult = eclssNone;

   if ( sClassName == "TcxEditorRow" )
      iResult = eclssTcxEditorRow;

   if ( sClassName == "TcxMultiEditorRow" )
      iResult = eclssTcxMultiEditorRow;

   if ( sClassName == "TcxCategoryRow" )
      iResult = eclssTcxCategoryRow;

   return iResult;
}
//---------------------------------------------------------------------------

TDateTime __fastcall GetDateTimeFromValue( Variant v )
{
	TDateTime vResult = TDateTime();

	try
	{
		vResult = VarToDateTime(v);
	}
	catch ( EVariantError &e )
	{
		vResult = TDateTime();
	}
	return vResult;
}
//---------------------------------------------------------------------------

Variant __fastcall DateTimeToVariant( TDateTime v )
{
	Variant vResult = v;

	if ( DateTimeToStr(v) == "30.12.1899" )
		vResult = Null();

	return vResult;
}
//---------------------------------------------------------------------------

TDateTime __fastcall GetDateBegin( TDateTime date, TDateTime time )
{
	/*
		Получение начальной даты периода (склеивает дату и время)
	*/

	TDateTime vResult;

	Word Year, Month, Day, Hour, Minute, Second, MilliSecond;
	DecodeDate(date, Year, Month, Day);
    DecodeTime(time, Hour, Minute, Second, MilliSecond);

    vResult = EncodeDateTime(Year, Month, Day, Hour, Minute, 0, 0);

	return vResult;
}
//---------------------------------------------------------------------------

TDateTime __fastcall GetDateFinish( TDateTime date, TDateTime time )
{
	/*
		Получение конечной даты периода (склеивает дату и время)
	*/

	TDateTime vResult;

	Word Year, Month, Day, Hour, Minute, Second, MilliSecond;
	DecodeDate(date, Year, Month, Day);
    DecodeTime(time, Hour, Minute, Second, MilliSecond);

    vResult = EncodeDateTime(Year, Month, Day, Hour, Minute, 0, 0);

	return vResult;
}
//---------------------------------------------------------------------------

TDateTime __fastcall GetDateTime4Running(TDateTime dt)
{
	/*
		Получение даты и времени для запроса пробегов на заданную дату (срез на 6 или 18 часов)
	*/

	TDateTime vResult = dt;

    //vResult = (double)Now() - (double)12/24;

	Word Year, Month, Day, Hour, Minute, Second, MilliSecond;
	DecodeDateTime(dt, Year, Month, Day, Hour, Minute, Second, MilliSecond);

    // 6.00 текущих суток, если текущее время 6.00 <= t < 18.00
    if ( Hour >= 6 && Hour < 18) {
        vResult = EncodeDateTime(Year, Month, Day, 6, 0, 0, 0);
    }

    // 18.00 текущих суток, если 18.00 <= t <= 23.59
    if ( Hour >= 18 && Hour <= 23 ) {
    	vResult = EncodeDateTime(Year, Month, Day, 18, 0, 0, 0);
    }

    // 18.00 предыдущих суток, если 0.00 <= t < 6.00
    if ( Hour < 6 )
    {
        DecodeDateTime(dt - 1, Year, Month, Day, Hour, Minute, Second, MilliSecond);
    	vResult = EncodeDateTime(Year, Month, Day, 18, 0, 0, 0);
    }

	return vResult;
}
//---------------------------------------------------------------------------

TDateTime __fastcall GetBeginTimeRound30(TDateTime pDateTime)
{
	/*
		округление времени до 30 секунд
	*/

	TDateTime vResult = pDateTime;

	Word Year, Month, Day, Hour, Minute, Second, MilliSecond;
	DecodeDateTime(pDateTime, Year, Month, Day, Hour, Minute, Second, MilliSecond);

    // Если чч.00 <= тек. время <= чч.29, то округляю до 00
    if ( Minute <= 29)
    {
        vResult = EncodeDateTime(Year, Month, Day, Hour, 0, 0, 0);
    }

    // Если чч.30 <= тек. время <= чч.59, то округляю до 30
    if ( Minute >= 30 && Minute <= 59 )
    {
    	vResult = EncodeDateTime(Year, Month, Day, Hour, 30, 0, 0);
    }

	return vResult;
}
//---------------------------------------------------------------------------

TDateTime __fastcall GetBeginTimeDefaultZD()
{
	/*
		Получение времени начала текущих ж.д. суток
	*/

	TDateTime vResult = Now();

	Word Year, Month, Day, Hour, Minute, Second, MilliSecond;
	DecodeDateTime(Now(), Year, Month, Day, Hour, Minute, Second, MilliSecond);

    if ( Hour >= 18 )
    	vResult = EncodeDateTime(Year, Month, Day + 1, 0, 0, 0, 0);

    if ( Hour < 18 )
		vResult = EncodeDateTime(Year, Month, Day, 0, 0, 0, 0);

	return vResult;
}

//---------------------------------------------------------------------------

AnsiString __fastcall XMLReadValue(AnsiString Parent, AnsiString Key)
{
    AnsiString vResult = "";
    _di_IXMLDocument	xml = NewXMLDocument(L"1.0");
    _di_IXMLNode 		Root;
    _di_IXMLNode 		rw;

    xml->LoadFromFile(AnsiString("props.xml"));
    xml->Active = true;

    Root	= xml->DocumentElement->ChildNodes->FindNode(Parent);
    rw		= Root->ChildNodes->FindNode(Key);

    if (rw != NULL && !rw->NodeValue.IsNull() )
   		vResult = rw->NodeValue;

    xml->Active = false;

    return vResult;
}
//---------------------------------------------------------------------------

int __fastcall XMLReadInteger(AnsiString Parent, AnsiString Key)
{
    int vResult = 0;

    try
    {
    	vResult = StrToInt(XMLReadValue(Parent, Key));
    }
    catch ( Exception &e )
    {
    	NULL;
    }

    return vResult;
}
//---------------------------------------------------------------------------

AnsiString __fastcall XMLReadString(AnsiString Parent, AnsiString Key)
{
    AnsiString vResult = "";

    try
    {
    	vResult = XMLReadValue(Parent, Key);
    }
    catch ( Exception &e )
    {
    	NULL;
    }

    return vResult;
}
//---------------------------------------------------------------------------

TDateTime __fastcall XMLReadDateTime(AnsiString Parent, AnsiString Key)
{
    TDateTime vResult = TDateTime();

    try
    {
    	vResult = StrToDateTime(XMLReadValue(Parent, Key));
    }
    catch ( Exception &e )
    {
    	NULL;
    }

    return vResult;
}
//---------------------------------------------------------------------------

bool __fastcall XMLReadBool(AnsiString Parent, AnsiString Key)
{
    bool vResult = false;

	vResult = XMLReadInteger(Parent, Key);

 	return vResult;
}
//---------------------------------------------------------------------------

AnsiString Date2Str(TDateTime date)
{
	// Строка с датой и временем

	return( FormatDateTime("yyyymmdd_hhnnsszzz", date) );
}
//---------------------------------------------------------------------------

void __fastcall XMLWtiteValue(AnsiString Parent, AnsiString Key, AnsiString value)
{
    _di_IXMLDocument	xml = NewXMLDocument(L"1.0");
    _di_IXMLNode 		Root;
    _di_IXMLNode 		rw;

    xml->Active = true;
    xml->LoadFromFile(AnsiString("props.xml"));

    Root	= xml->DocumentElement->ChildNodes->FindNode(Parent);
    rw		= Root->ChildNodes->FindNode(Key);

    if (rw != NULL)
   		rw->NodeValue = value;

    xml->SaveToFile(xml->FileName);
    xml->Active = false;
}
//---------------------------------------------------------------------------

void __fastcall XMLWriteDateTime( AnsiString Parent, AnsiString Key, TDateTime value )
{
	AnsiString sValue = TDateTime();
    try
    {
    	sValue = DateTimeToStr(value);
        XMLWtiteValue(Parent, Key, sValue);
    }
    catch ( Exception &e )
    {
    	NULL;
    }
}
//---------------------------------------------------------------------------

void __fastcall XMLWriteInteger( AnsiString Parent, AnsiString Key, int value )
{
	AnsiString sValue = "0";
    try
    {
    	sValue = IntToStr(value);
        XMLWtiteValue(Parent, Key, sValue);
    }
    catch ( Exception &e )
    {
    	NULL;
    }
}
//---------------------------------------------------------------------------

void __fastcall XMLWriteString( AnsiString Parent, AnsiString Key, AnsiString value )
{
	AnsiString sValue = value;
    try
    {
        XMLWtiteValue(Parent, Key, sValue);
    }
    catch ( Exception &e )
    {
    	NULL;
    }
}
//---------------------------------------------------------------------------

void __fastcall XMLWriteBool( AnsiString Parent, AnsiString Key, bool value )
{
	AnsiString sValue = "0";
    try
    {
    	sValue = BoolToStr(value, false);
        XMLWtiteValue(Parent, Key, sValue);
    }
    catch ( Exception &e )
    {
    	NULL;
    }
}
//---------------------------------------------------------------------------

void __fastcall RequiredFolders()
{
    /*
    	Создать необходимые папки
    */

    CreateFolder("Log");
    CreateFolder("Tmp");
    CreateFolder("Sys");
    CreateFolder("Templates");
    CreateFolder("Profiles");
}
//---------------------------------------------------------------------------

void __fastcall CreateFolder(AnsiString DirName)
{
    if ( !DirectoryExists(DirName) )
    	CreateDir(DirName);
}
//---------------------------------------------------------------------------

void __fastcall ClearTempDir()
{
	// Удаление содержимого временной папки

	AnsiString	FileName_;
	//AnsiString	TmpPath = ExtractFilePath(Application->ExeName) + "\\tmp\\";
	TSearchRec  sr;

	try
	{
		if (FindFirst(TemporaryFolder + "*.*", 0, sr) == 0)
		{
			do if ( sr.Attr != faDirectory )
			{
				FileName_ = sr.Name;
                //LogEvent(TemporaryFolder + FileName_);
				//DeleteFile(TemporaryFolder + FileName_);
			}
			while ( FindNext(sr) == 0 );
			FindClose(sr);
		}
	}
	catch (Exception &e)
	{
		MessageBox (NULL, AnsiString("Невозможно очистить содержимое временной папки.\n" + e.Message).c_str(), "Операция прервана", MB_ICONSTOP);
	}
}
//---------------------------------------------------------------------------

__int64 __fastcall GetFileSize(AnsiString FileName)
{
	// Если файл не существует, то вместо размера файла функция вернет -1
	TFileStream *fs = NULL;
	__int64 Result = 0;

	try
	{
    	try
        {
            fs = new TFileStream(FileName, fmOpenRead);
        }
        catch (Exception &e)
        {
            Result = -1;
        }

        if (Result != -1)
            Result = fs->Size;
	}
	__finally
	{
		fs->Free();
	}
	return Result;
}
//---------------------------------------------------------------------------

AnsiString __fastcall GetAppVer()
{
    WORD MajorVersion	=0;
    WORD MinorVersion	=0;
    WORD BuildNumber	=0;
    WORD RevisionNumber	=0;
    TDateTime FileDate	=0;
    TCHAR fileName[4096];
    AnsiString m_strVersion;

    try
    {
        GetModuleFileName(NULL, fileName, 4096);

        GetAppVersion(fileName,
                      &MajorVersion,
                      &MinorVersion,
                      &BuildNumber,
                      &RevisionNumber,
                      &FileDate);

		// студия иногда путает какая конкретно функция Format используется, поэтому необходимо явно указать
		// смотреть ресурс https://forums.embarcadero.com/message.jspa?messageID=561472
		m_strVersion = Sysutils::Format("%d.%d.%d.%d", ARRAYOFCONST((MajorVersion, MinorVersion, BuildNumber, RevisionNumber)));
		//m_strVersion = m_strVersion + FormatDateTime("dd.mm.yyyy", FileDate);
    }
    catch ( Exception &e )
    {
    	m_strVersion = "версия не определена";
    }
    return (m_strVersion);
}
//---------------------------------------------------------------------------

bool GetAppVersion( char *LibName, WORD *MajorVersion, WORD *MinorVersion, WORD *BuildNumber, WORD *RevisionNumber, TDateTime *FileDate)
{
    DWORD dwHandle, dwLen;
    UINT BufLen;
    LPTSTR lpData;
    VS_FIXEDFILEINFO *pFileInfo;
    _FILETIME local;
    _SYSTEMTIME st;
    FILETIME    ft;

	dwLen = GetFileVersionInfoSize( LibName, &dwHandle );

	if (!dwLen)
    	return FALSE;

	lpData = (LPTSTR) malloc (dwLen);

	if ( !lpData )
		return FALSE;

    if ( !GetFileVersionInfo( LibName, dwHandle, dwLen, lpData ) )
    {
    	free (lpData);
    	return FALSE;
    }

    if ( VerQueryValue( lpData, "\\", (LPVOID *) &pFileInfo, (PUINT)&BufLen ) )
    {
        *MajorVersion = HIWORD(pFileInfo->dwFileVersionMS);
        *MinorVersion = LOWORD(pFileInfo->dwFileVersionMS);
        *BuildNumber = HIWORD(pFileInfo->dwFileVersionLS);
        *RevisionNumber = LOWORD(pFileInfo->dwFileVersionLS);

        ft.dwLowDateTime = pFileInfo->dwFileDateLS;
        ft.dwHighDateTime = pFileInfo->dwFileDateMS;

        FileTimeToLocalFileTime(&ft, &local);
        FileTimeToSystemTime(&local, &st) ;
        GetLocalTime(&st);           // <-- This is the solution.. for now...
        *FileDate = SystemTimeToDateTime(st) ;

    	free (lpData);
    	return TRUE;
    }

    free (lpData);
    return FALSE;
}
//---------------------------------------------------------------------------

int VarToInt(Variant AVariant)
{
	int Result = 0;

	if (VarIsNull(AVariant) || AVariant.IsEmpty() || AVariant == "")
		return Result;
	else
		return StrToInt(VarToStr(AVariant));
}
