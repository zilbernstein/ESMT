//---------------------------------------------------------------------------

#include <vcl.h>
#include "Log.h"
#include "UException.h"
#pragma hdrstop
#include <memory>
#include "config.h"
#include "public.h"

USEFORM("ULocPark.cpp", frmLocPark);
USEFORM("UIncidentClosing.cpp", frmIncidentClosing);
USEFORM("ULoginDlg.cpp", frmLoginDlg);
USEFORM("URecordSheet.cpp", frmRecordSheet);
USEFORM("UMain.cpp", frmMain);
USEFORM("UFirmTree.cpp", frmFirmTree);
USEFORM("UException.cpp", frmException);
USEFORM("UfmePreview.cpp", fmePreview); /* TFrame: File Type */
USEFORM("UIncident.cpp", frmIncident);
USEFORM("UFTPTransfer.cpp", frmFTPTransfer);
USEFORM("URecordSheetView.cpp", frmRecordSheetView);
USEFORM("UStateHistory.cpp", frmStateHistory);
USEFORM("UTextEditDialog.cpp", frmTextEditDialog);
USEFORM("UUsers.cpp", frmUsers);
USEFORM("UReport_Interactive.cpp", frmReport_Interactive);
USEFORM("UReports.cpp", frmReports);
USEFORM("UReport_Interactive_Detail.cpp", frmReport_Interactive_Detail);
USEFORM("USearchLoc.cpp", frmSearchLoc);
USEFORM("UResponsTree.cpp", frmResponsTree);
USEFORM("UEdit_Workaround.cpp", frmEdit_Workaround);
USEFORM("UAppFileLoad.cpp", frmAppFileLoad);
USEFORM("UDMMain.cpp", DMMain); /* TDataModule: File Type */
USEFORM("UEdit_Storage.cpp", frmEdit_Storage);
USEFORM("UEdit_Pause.cpp", frmEdit_Pause);
USEFORM("UEdit_TeamExecutor.cpp", frmEdit_TeamExecutor);
USEFORM("UEdit_Work.cpp", frmEdit_Work);
USEFORM("UEdit_TeamLeader.cpp", frmEdit_TeamLeader);
USEFORM("UEdit_Attach.cpp", frmEdit_Attach);
USEFORM("UEdit_Action.cpp", frmEdit_Action);
USEFORM("UEdit_Escalation.cpp", frmEdit_Escalation);
USEFORM("UEdit_Loc.cpp", frmEdit_Loc);
USEFORM("UEdit_IncidentRelation.cpp", frmIncident_Relation);
USEFORM("UVersion.cpp", frmVersion);
USEFORM("UFirmSelect.cpp", frmFirmSelect);
USEFORM("UDepoEnter.cpp", frmDepoEnter);
USEFORM("UMyAccess.cpp", frmMyAccess);
//---------------------------------------------------------------------------
config cfg_;
//
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
	try
	{
		Application->Initialize();
		Application->Title = "ЕСМТ";
		//Application->CreateForm(__classid(TfrmException), &frmException);
		Application->CreateForm(__classid(TfrmMain), &frmMain);
		Application->CreateForm(__classid(TDMMain), &DMMain);
		Application->CreateForm(__classid(TfrmException), &frmException);
		Application->Run();

	}
    catch (TDeadException &e)
    {
        ShowMessage(e.Message);
        LogEvent("!!! DEAD EXCEPTION : " + e.Message);
        Application->Terminate();
    }
    /*catch (AppException &app_excpt)
    {
        frmException->ShowAppException(app_excpt);
    }*/
    catch (Exception &exception)
    {
        LogEvent("EXCEPTION : " + exception.Message);
        //Application->ShowException(&exception);
        MessageBox(Application->Handle, AnsiString(exception.Message).c_str(), "Операция прервана", MB_ICONSTOP);
        //ShowMessage(exception.Message);
    }

    return 0;
}
//---------------------------------------------------------------------------

