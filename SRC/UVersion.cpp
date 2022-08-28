//---------------------------------------------------------------------------
#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include "UVersion.h"
#include <winnt.h>
#include "UDMMain.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "dxSkinsCore"
#pragma resource "*.dfm"
TfrmVersion *frmVersion;
//---------------------------------------------------------------------------
__fastcall TfrmVersion::TfrmVersion(TComponent* Owner)
	: TForm(Owner)
{
	//rwVersion->Properties->Value = "3.0.0.3";
    /*PWideChar FFileName ;
    AnsiString AFileName = Application->ExeName;
    bool FValid;
    FValid = false;
    DWord FHandle, FSize;
    FFileName = StrPCopy(StrAlloc(AFileName.Length() + 1), AFileName);
    FSize = GetFileVersionInfoSize(FFileName, FHandle);



    DWORD  verHandle = NULL;
    UINT   size      = 0;
    LPBYTE lpBuffer  = NULL;
    DWORD  verSize   = GetFileVersionInfoSize( TEXT*(Application->ExeName), &verHandle);

    if (verSize != NULL)
    {
        LPSTR verData = new char[verSize];

        if (GetFileVersionInfo( szVersionFile, verHandle, verSize, verData))
        {
            if (VerQueryValue(verData,"\\",(VOID FAR* FAR*)&lpBuffer,&size))
            {
                if (size)
                {
                    VS_FIXEDFILEINFO *verInfo = (VS_FIXEDFILEINFO *)lpBuffer;
                    if (verInfo->dwSignature == 0xfeef04bd)
                    {
                        int major = HIWORD(verInfo->dwFileVersionMS);
                        int minor = LOWORD(verInfo->dwFileVersionMS);
                        int build = verInfo->dwFileVersionLS;
                    }
                }
            }
        }
        delete[] verData;
    } */



    /*HRESULT hr;

    struct LANGANDCODEPAGE {
      WORD wLanguage;
      WORD wCodePage;
    } *lpTranslate;

    // Read the list of languages and code pages.

    VerQueryValue(pBlock,
                  TEXT("\\VarFileInfo\\Translation"),
                  (LPVOID*)&lpTranslate,
                  &cbTranslate);

    // Read the file description for each language and code page.

    for( i=0; i < (cbTranslate/sizeof(struct LANGANDCODEPAGE)); i++ )
    {
      hr = StringCchPrintf(SubBlock, 50,
                TEXT("\\StringFileInfo\\%04x%04x\\FileDescription"),
                lpTranslate[i].wLanguage,
                lpTranslate[i].wCodePage);
        if (FAILED(hr))
        {
        // TODO: write error handler.
        }

      // Retrieve file description for language and code page "i".
      VerQueryValue(pBlock,
                    SubBlock,
                    &lpBuffer,
                    &dwBytes);
    } */


}
//---------------------------------------------------------------------------
