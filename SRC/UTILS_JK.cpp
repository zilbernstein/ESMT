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
	// ��������������� �������� DevExpress

	cxSetResourceString(&_cxSFilterOperatorEqual, "�����");
	cxSetResourceString(&_cxSFilterOperatorNotEqual, "�� �����");
	cxSetResourceString(&_cxSFilterOperatorLess, "������");
	cxSetResourceString(&_cxSFilterOperatorLessEqual, "������ ���� �����");
	cxSetResourceString(&_cxSFilterOperatorGreater, "������");
	cxSetResourceString(&_cxSFilterOperatorGreaterEqual, "������ ���� �����");
	cxSetResourceString(&_cxSFilterOperatorLike, "������");
	cxSetResourceString(&_cxSFilterOperatorNotLike, "�� ������");
	cxSetResourceString(&_cxSFilterOperatorBetween, "�����");
	cxSetResourceString(&_cxSFilterOperatorNotBetween, "�� �����");
	cxSetResourceString(&_cxSFilterOperatorInList, "��");
	cxSetResourceString(&_cxSFilterOperatorNotInList, "�� ��");

	cxSetResourceString(&_cxSFilterOperatorYesterday, "�����");
	cxSetResourceString(&_cxSFilterOperatorToday, "�������");
	cxSetResourceString(&_cxSFilterOperatorTomorrow, "������");

	cxSetResourceString(&_cxSFilterOperatorLastWeek, "��������� ������");
	cxSetResourceString(&_cxSFilterOperatorLastMonth, "��������� �����");
	cxSetResourceString(&_cxSFilterOperatorLastYear, "��������� ���");

	cxSetResourceString(&_cxSFilterOperatorThisWeek, "��� ������");
	cxSetResourceString(&_cxSFilterOperatorThisMonth, "���� �����");
	cxSetResourceString(&_cxSFilterOperatorThisYear, "���� ���");

	cxSetResourceString(&_cxSFilterOperatorNextWeek, "��������� ������");
	cxSetResourceString(&_cxSFilterOperatorNextMonth, "��������� �����");
	cxSetResourceString(&_cxSFilterOperatorNextYear, "��������� ���");

	cxSetResourceString(&_cxSFilterAndCaption, "�");
	cxSetResourceString(&_cxSFilterOrCaption, "���");
	cxSetResourceString(&_cxSFilterNotCaption, "��");
	cxSetResourceString(&_cxSFilterBlankCaption, "�����");
	cxSetResourceString(&_scxGridChartToolBoxDataLevels, "������ �����������");
    cxSetResourceString(&_scxGridChartToolBoxDataLevelSelectValue, "�������� ��������");

	// derived
	cxSetResourceString(&_cxSFilterOperatorIsNull, "�����");
	cxSetResourceString(&_cxSFilterOperatorIsNotNull, "�� �����");
	cxSetResourceString(&_cxSFilterOperatorBeginsWith, "���������� �");
	cxSetResourceString(&_cxSFilterOperatorDoesNotBeginWith, "�� ���������� �");
	cxSetResourceString(&_cxSFilterOperatorEndsWith, "��������� ��");
	cxSetResourceString(&_cxSFilterOperatorDoesNotEndWith, "�� ��������� ��");
	cxSetResourceString(&_cxSFilterOperatorContains, "��������");
	cxSetResourceString(&_cxSFilterOperatorDoesNotContain, "�� ��������");

	// filter listbox"s values
	cxSetResourceString(&_cxSFilterBoxAllCaption, "(���)");
	cxSetResourceString(&_cxSFilterBoxCustomCaption, "(���������...)");
	cxSetResourceString(&_cxSFilterBoxBlanksCaption, "(������)");
	cxSetResourceString(&_cxSFilterBoxNonBlanksCaption, "(��������)");

	cxSetResourceString(&_cxSFilterBoolOperatorAnd, "�");  // all
	cxSetResourceString(&_cxSFilterBoolOperatorOr, "���");
	cxSetResourceString(&_cxSFilterBoolOperatorNotAnd, "� ��"); // not all
	cxSetResourceString(&_cxSFilterBoolOperatorNotOr, "��� ��");
	cxSetResourceString(&_cxSFilterRootButtonCaption, "������");
	cxSetResourceString(&_cxSFilterAddCondition, "�������� �������");
	cxSetResourceString(&_cxSFilterAddGroup, "�������� ������");
	cxSetResourceString(&_cxSFilterRemoveRow, "������� �������");
	cxSetResourceString(&_cxSFilterClearAll, "��������");
	cxSetResourceString(&_cxSFilterFooterAddCondition, "������� ������ ����� �������� �������");

	cxSetResourceString(&_cxSFilterGroupCaption, "����������� � ��������");
	cxSetResourceString(&_cxSFilterRootGroupCaption, "<������>");
	cxSetResourceString(&_cxSFilterControlNullString, "<���>");

	cxSetResourceString(&_cxSFilterErrorBuilding, "Can""t build filter from source");

	//FilterDialog
	cxSetResourceString(&_cxSFilterDialogCaption, "��������� �������");
	cxSetResourceString(&_cxSFilterDialogInvalidValue, "�������� ��������");
	cxSetResourceString(&_cxSFilterDialogUse, "������������");
	cxSetResourceString(&_cxSFilterDialogSingleCharacter, "��� ������ �������");
	cxSetResourceString(&_cxSFilterDialogCharactersSeries, "��� ������ ��������");
	cxSetResourceString(&_cxSFilterDialogOperationAnd, "�");
	cxSetResourceString(&_cxSFilterDialogOperationOr, "���");
	cxSetResourceString(&_cxSFilterDialogRows, "���������� ������, ��� �������:");

	// FilterControlDialog
	cxSetResourceString(&_cxSFilterControlDialogCaption, "�������� �������");
	cxSetResourceString(&_cxSFilterControlDialogNewFile, "��������.flt");
	cxSetResourceString(&_cxSFilterControlDialogOpenDialogCaption, "�������� �������");
	cxSetResourceString(&_cxSFilterControlDialogSaveDialogCaption, "���������� �������");
	cxSetResourceString(&_cxSFilterControlDialogActionSaveCaption, "���������...");
	cxSetResourceString(&_cxSFilterControlDialogActionOpenCaption, "�������...");
	cxSetResourceString(&_cxSFilterControlDialogActionApplyCaption, "���������");
	cxSetResourceString(&_cxSFilterControlDialogActionOkCaption, "��");
	cxSetResourceString(&_cxSFilterControlDialogActionCancelCaption, "������");
	cxSetResourceString(&_cxSFilterControlDialogFileExt, "flt");
	cxSetResourceString(&_cxSFilterControlDialogFileFilter, "����� �������� (*.flt)|*.flt");

	cxSetResourceString(&_scxGridRecursiveLevels, "You cannot create recursive levels");
	// _scxGridDeletingConfirmationCaption ������� �������������
	// �������� ������ https://www.devexpress.com/Support/WhatsNew/VCL/files/11.2.2.bc.xml
	//cxSetResourceString(&_scxGridDeletingConfirmationCaption, "�����������");
	cxSetResourceString(&_scxGridDeletingFocusedConfirmationText, "������� ������?");
	cxSetResourceString(&_scxGridDeletingSelectedConfirmationText, "������� ��� ��������� ������?");

	cxSetResourceString(&_scxGridNoDataInfoText, "<��� ������ ��� �����������>");

	cxSetResourceString(&_scxGridNewItemRowInfoText, "������� ���� ��� ���������� ������");

	cxSetResourceString(&_scxGridFilterIsEmpty, "<������ ����>");

	cxSetResourceString(&_scxGridCustomizationFormCaption, "���������");
	cxSetResourceString(&_scxGridCustomizationFormColumnsPageCaption, "�������");
	cxSetResourceString(&_scxGridGroupByBoxCaption, "���������� ���� ��������� ������� ��� �����������");
	cxSetResourceString(&_scxGridFilterCustomizeButtonCaption, "���������...");
	cxSetResourceString(&_scxGridColumnsQuickCustomizationHint, "������� ���� ��� ��������� ��������� �������");

	cxSetResourceString(&_scxGridCustomizationFormBandsPageCaption, "������ �������");
	cxSetResourceString(&_scxGridBandsQuickCustomizationHint, "������� ���� ��� ��������� ����� �������");

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

	cxSetResourceString(&_cxSDatePopupNow, "������");
	cxSetResourceString(&_cxSDatePopupClear, "��������");
	cxSetResourceString(&_cxSDatePopupToday, "�������");
	cxSetResourceString(&_cxSDateError, "���� ������� �������");
    cxSetResourceString(&_dxSBAR_DATETODAY, "�������");
    cxSetResourceString(&_dxSBAR_DATECLEAR, "��������");

    // Charts
    cxSetResourceString(&_scxGridChartToolBoxCustomizeButtonCaption, "���������");
    cxSetResourceString(&_scxGridChartCustomizationFormSeriesPageCaption, "�������� (����)");
    cxSetResourceString(&_scxGridChartCustomizationFormSortBySeries, "����������� ��");
    cxSetResourceString(&_scxGridChartCustomizationFormOptionsPageCaption, "�����");
    cxSetResourceString(&_scxGridChartColumnDiagramDisplayText, "�����������");
    cxSetResourceString(&_scxGridChartBarDiagramDisplayText, "����������");
    cxSetResourceString(&_scxGridChartLineDiagramDisplayText, "������");
    cxSetResourceString(&_scxGridChartAreaDiagramDisplayText, "� ���������");
    cxSetResourceString(&_scxGridChartPieDiagramDisplayText, "��������");
}
//---------------------------------------------------------------------------

int GetEditorClassID(AnsiString sClassName)
{
   // ���������� �������� �������� ������ (���)
   
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
		��������� ��������� ���� ������� (��������� ���� � �����)
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
		��������� �������� ���� ������� (��������� ���� � �����)
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
		��������� ���� � ������� ��� ������� �������� �� �������� ���� (���� �� 6 ��� 18 �����)
	*/

	TDateTime vResult = dt;

    //vResult = (double)Now() - (double)12/24;

	Word Year, Month, Day, Hour, Minute, Second, MilliSecond;
	DecodeDateTime(dt, Year, Month, Day, Hour, Minute, Second, MilliSecond);

    // 6.00 ������� �����, ���� ������� ����� 6.00 <= t < 18.00
    if ( Hour >= 6 && Hour < 18) {
        vResult = EncodeDateTime(Year, Month, Day, 6, 0, 0, 0);
    }

    // 18.00 ������� �����, ���� 18.00 <= t <= 23.59
    if ( Hour >= 18 && Hour <= 23 ) {
    	vResult = EncodeDateTime(Year, Month, Day, 18, 0, 0, 0);
    }

    // 18.00 ���������� �����, ���� 0.00 <= t < 6.00
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
		���������� ������� �� 30 ������
	*/

	TDateTime vResult = pDateTime;

	Word Year, Month, Day, Hour, Minute, Second, MilliSecond;
	DecodeDateTime(pDateTime, Year, Month, Day, Hour, Minute, Second, MilliSecond);

    // ���� ��.00 <= ���. ����� <= ��.29, �� �������� �� 00
    if ( Minute <= 29)
    {
        vResult = EncodeDateTime(Year, Month, Day, Hour, 0, 0, 0);
    }

    // ���� ��.30 <= ���. ����� <= ��.59, �� �������� �� 30
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
		��������� ������� ������ ������� �.�. �����
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
	// ������ � ����� � ��������

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
    	������� ����������� �����
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
	// �������� ����������� ��������� �����

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
		MessageBox (NULL, AnsiString("���������� �������� ���������� ��������� �����.\n" + e.Message).c_str(), "�������� ��������", MB_ICONSTOP);
	}
}
//---------------------------------------------------------------------------

__int64 __fastcall GetFileSize(AnsiString FileName)
{
	// ���� ���� �� ����������, �� ������ ������� ����� ������� ������ -1
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

		// ������ ������ ������ ����� ��������� ������� Format ������������, ������� ���������� ���� �������
		// �������� ������ https://forums.embarcadero.com/message.jspa?messageID=561472
		m_strVersion = Sysutils::Format("%d.%d.%d.%d", ARRAYOFCONST((MajorVersion, MinorVersion, BuildNumber, RevisionNumber)));
		//m_strVersion = m_strVersion + FormatDateTime("dd.mm.yyyy", FileDate);
    }
    catch ( Exception &e )
    {
    	m_strVersion = "������ �� ����������";
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
