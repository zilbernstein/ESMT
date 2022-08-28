#ifndef UAppFileLoadH
#define UAppFileLoadH
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
//#include <DB.hpp>
//#include <DBClient.hpp>
//#include <MConnect.hpp>
//#include <SConnect.hpp>
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include <Datasnap.Win.MConnect.hpp>
#include <Datasnap.Win.SConnect.hpp>
#include "dxSkinsCore.hpp"
#include <ActnList.hpp>
#include "cxContainer.hpp"
#include "cxEdit.hpp"
#include "cxLabel.hpp"
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
    AnsiString	FolderName;
    bool		AutoRun;
};
//  онстанты дл€ состо€ни€ операции (State Operation)
static const Shortint soWaitExec	= 0;	// ожидание выполнени€
static const Shortint soInExec		= 1;	// в процессе выполнени€
static const Shortint soComplete	= 2;	// выполнено
static const Shortint soError		= 3;	// ошибка
//---------------------------------------------------------------------------
class TfrmAppFileLoad : public TForm
{
__published:
	TcxImageList *cxImageList1;
	TIdFTP *IdFTP;
	TcxTreeList *tlProgress;
	TcxTreeListColumn *clmnOperationState;
	TcxTreeListColumn *clmnOperationName;
	TTimer *tmrClose;
	TSocketConnection *sct;
	TActionList *al;
	TAction *aFTPConnect;
	TTimer *tmrGet;
	TAction *aFileExistsParse;
	TClientDataSet *cds;
	TAction *aLoadFileList;
	TAction *aLoad_FTP_Params;
	TClientDataSet *cdsFTPParams;
	TcxLabel *lbl;
	void __fastcall IdFTPAfterPut(TObject *Sender);
	void __fastcall tmrCloseTimer(TObject *Sender);
	void __fastcall aFTPConnectExecute(TObject *Sender);
	void __fastcall tmrGetTimer(TObject *Sender);
	void __fastcall aLoadFileListExecute(TObject *Sender);
	void __fastcall aLoad_FTP_ParamsExecute(TObject *Sender);

private:
	StructFTP* st_;
	int Transparency; //насколько прозрачным будет окно (0-100%)
	void __fastcall DrawProgress( int IdStep, int val0 );
    bool __fastcall FileExistsCheck(AnsiString FileName);

public:
	TModalResult __fastcall App_File_Load();
	__fastcall TfrmAppFileLoad(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmAppFileLoad *frmAppFileLoad;
//---------------------------------------------------------------------------
#endif
