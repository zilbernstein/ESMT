#ifndef UFTPTransferH
#define UFTPTransferH
//---------------------------------------------------------------------------
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxGraphics.hpp"
#include "cxImageComboBox.hpp"
#include "cxInplaceContainer.hpp"
#include "cxStyles.hpp"
#include "cxTextEdit.hpp"
#include "cxTL.hpp"
#include <Classes.hpp>
#include <Controls.hpp>
#include <ExtCtrls.hpp>
#include <IdBaseComponent.hpp>
#include <IdComponent.hpp>
#include <IdExplicitTLSClientServerBase.hpp>
#include <IdTCPClient.hpp>
#include <IdTCPConnection.hpp>
#include <IdFTP.hpp>
#include <IdStack.hpp>
#include <ImgList.hpp>
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include <Datasnap.Win.MConnect.hpp>
#include <Datasnap.Win.SConnect.hpp>
#include "dxSkinsCore.hpp"
#include <ActnList.hpp>
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include <System.Actions.hpp>
#include "cxTLdxBarBuiltInMenu.hpp"

#include <memory>
//---------------------------------------------------------------------------
struct StructFTP
{
	AnsiString FileName;
	AnsiString FTPFileName;
	AnsiString FileNameShort;
	//AnsiString	FolderName;
	AnsiString	DirNameYear, DirNameMonth;
	bool		AutoRun;
};
//  онстанты дл€ состо€ни€ операции (State Operation)
static const Shortint soWaitExec	= 0;	// ожидание выполнени€
static const Shortint soInExec		= 1;	// в процессе выполнени€
static const Shortint soComplete	= 2;	// выполнено
static const Shortint soError		= 3;	// ошибка
//---------------------------------------------------------------------------
class TfrmFTPTransfer : public TForm
{
__published:
	TcxImageList *cxImageList1;
	TIdFTP *IdFTP;
	TTimer *tmrSend;
	TcxTreeList *tlProgress;
	TcxTreeListColumn *clmnOperationState;
	TcxTreeListColumn *clmnOperationName;
	TTimer *tmrClose;
	TSocketConnection *sct;
	TActionList *al;
	TAction *aFTPConnect;
	TTimer *tmrGet;
	TAction *aFileExistsParse;
	TTimer *tmrDelete;
	void __fastcall tmrSendTimer(TObject *Sender);
	void __fastcall IdFTPStatus(TObject *ASender, const TIdStatus AStatus, const UnicodeString AStatusText);
	void __fastcall IdFTPAfterPut(TObject *Sender);
	void __fastcall tmrCloseTimer(TObject *Sender);
	void __fastcall aFTPConnectExecute(TObject *Sender);
	void __fastcall tmrGetTimer(TObject *Sender);
	void __fastcall tmrDeleteTimer(TObject *Sender);

private:
	StructFTP* st_;
	int Transparency; //насколько прозрачным будет окно (0-100%)
    TDateTime SysDateTime;
    int SysMSec;
	void __fastcall DrawProgress( int IdStep, int val0 );
    bool __fastcall FileExistsCheck();

public:
	TModalResult __fastcall Send( StructFTP *st );
    TModalResult __fastcall DownLoad( StructFTP *st);
	TModalResult __fastcall Delete( StructFTP *st);
	__fastcall TfrmFTPTransfer(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmFTPTransfer *frmFTPTransfer;
//---------------------------------------------------------------------------
#endif
