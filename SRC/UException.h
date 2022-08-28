//---------------------------------------------------------------------------

#ifndef UExceptionH
#define UExceptionH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxEdit.hpp"
#include "cxMemo.hpp"
#include "cxTextEdit.hpp"
#include "dxSkinsCore.hpp"
#include "cxButtons.hpp"
#include "cxGraphics.hpp"
#include "cxLookAndFeelPainters.hpp"
#include <ActnList.hpp>
#include <ImgList.hpp>
#include <Menus.hpp>
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include <ExtCtrls.hpp>
#include "cxImage.hpp"
#include <System.Actions.hpp>
//---------------------------------------------------------------------------
//enum AppExceptionTypes { AET_EXCEPTION, AET_WARNING, AET_INFO };

class AppException : public Exception
{
public:
	int exception_type;
	AnsiString info_text;
	AnsiString exception_text;

	__fastcall AppException(const AnsiString a, const AnsiString b, int c) : Exception(a), info_text(a), exception_text(b), exception_type(c)
    {
    }
};

/*class AppException : public Exception
{
public:
	__fastcall AppException(const AnsiString info_text, const AnsiString exception_text, int exception_type);
};*/

class TfrmException : public TForm
{
__published:	// IDE-managed Components
	TcxMemo *mmExceptionText;
	TcxImageList *cxImageList1;
	TActionList *ActionList1;
	TAction *aImage;
	TPanel *Panel1;
	TcxButton *btnClose;
	TPanel *Panel2;
	TcxMemo *mmInfoText;
	TcxButton *cxButton1;
	void __fastcall aImageExecute(TObject *Sender);
private:	// User declarations

public:

	//void __fastcall ShowAppException(AppException &app_excpt);
    void __fastcall ShowAppException_(int exception_type, AnsiString info_text, AnsiString exception_text);
	__fastcall TfrmException(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmException *frmException;
//---------------------------------------------------------------------------
#endif
