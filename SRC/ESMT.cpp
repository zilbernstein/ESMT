//---------------------------------------------------------------------------

#include <vcl.h>
#include "Log.h"
#include "UException.h"
#pragma hdrstop
#include <memory>
#include "config.h"
#include "public.h"

USEFORM("UIncident.cpp", frmIncident);
USEFORM("UIncidentClosing.cpp", frmIncidentClosing);
USEFORM("UHistoryNRE.cpp", frmHistoryNRE);
USEFORM("UfmePreview.cpp", fmePreview); /* TFrame: File Type */
USEFORM("UFTPTransfer.cpp", frmFTPTransfer);
USEFORM("uListReports.cpp", frmListReports);
USEFORM("ULocPark.cpp", frmLocPark);
USEFORM("UKipar_PrognosAction.cpp", frmKipar_PrognosAction);
USEFORM("uIncidentExport.cpp", frmIncidentExport);
USEFORM("UKipar_Prognos.cpp", frmKiparPrognos);
USEFORM("UFirmTree.cpp", frmFirmTree);
USEFORM("uEdit_WeightChrono.cpp", frmEdit_WeightChrono);
USEFORM("uEdit_WeightCompensation.cpp", frmEdit_WeightCompensation);
USEFORM("uEdit_Weight.cpp", frmEdit_Weight);
USEFORM("UEdit_TeamLeader.cpp", frmEdit_TeamLeader);
USEFORM("UEdit_Template.cpp", frmEdit_Template);
USEFORM("uExpectRefusal.cpp", frmExpectRefusal);
USEFORM("UFirmSelect.cpp", frmFirmSelect);
USEFORM("UException.cpp", frmException);
USEFORM("UEdit_Work.cpp", frmEdit_Work);
USEFORM("UEdit_Workaround.cpp", frmEdit_Workaround);
USEFORM("ULoginDlg.cpp", frmLoginDlg);
USEFORM("UTemplates.cpp", frmTemplates);
USEFORM("UTextEditDialog.cpp", frmTextEditDialog);
USEFORM("UStateHistory.cpp", frmStateHistory);
USEFORM("USql_Execute.cpp", frmSqlExecute);
USEFORM("uWineSide.cpp", frmWineSide);
USEFORM("U_Edit_Reason.cpp", frm_Edit_Reason);
USEFORM("UVersion.cpp", frmVersion);
USEFORM("UUsers.cpp", frmUsers);
USEFORM("USearchLoc.cpp", frmSearchLoc);
USEFORM("UReason.cpp", frm_Reason);
USEFORM("URecordSheet.cpp", frmRecordSheet);
USEFORM("UNSI_Firm.cpp", frmNSI_Firm);
USEFORM("UMain.cpp", frmMain);
USEFORM("UMyAccess.cpp", frmMyAccess);
USEFORM("UReport_Interactive_Detail.cpp", frmReport_Interactive_Detail);
USEFORM("UResponsTree.cpp", frmResponsTree);
USEFORM("UReport_Interactive.cpp", frmReport_Interactive);
USEFORM("URecordSheetView.cpp", frmRecordSheetView);
USEFORM("UReports.cpp", frmReports);
USEFORM("UEdit_TeamExecutor.cpp", frmEdit_TeamExecutor);
USEFORM("UCallingControl.cpp", frmCallingControl);
USEFORM("uChronology.cpp", frmChronology);
USEFORM("uAdminUserEdit.cpp", frmAdminUserEdit);
USEFORM("UAppFileLoad.cpp", frmAppFileLoad);
USEFORM("uDictStandarts.cpp", frmStandarts);
USEFORM("UDict_Malfunction.cpp", frmDict_Malfunction);
USEFORM("uDicCloseDepoIncident.cpp", frmDicCloseDepoIncident);
USEFORM("UDepoEnter.cpp", frmDepoEnter);
USEFORM("uDepoEnterIncidentAdd.cpp", DepoEnterIncidentAdd);
USEFORM("uAdmin.cpp", frmAdmin);
USEFORM("uActivUsers.cpp", frmActivUsers);
USEFORM("uAddFunction.cpp", frmAddFunction);
USEFORM("UDic_Equipment.cpp", frmDic_Equipment);
USEFORM("UEdit_Escalation.cpp", frmEdit_Escalation);
USEFORM("UEdit_EscalationAction.cpp", frmEdit_EscalationAction);
USEFORM("UEdit_Dic_Equipment.cpp", frmEdit_Dic_Equipment);
USEFORM("uEdit_DepoEnterMalfuncton.cpp", frmEdit_DepoEnterMalfuncton);
USEFORM("uEdit_DictStandarts.cpp", frmEdit_DictStandarts);
USEFORM("UEdit_Pause.cpp", frmEdit_Pause);
USEFORM("UEdit_Storage.cpp", frmEdit_Storage);
USEFORM("UEdit_Loc.cpp", frmEdit_Loc);
USEFORM("UEdit_IncidentRelation.cpp", frmIncident_Relation);
USEFORM("UEdit_KiparPrognos.cpp", frmEditKiparPrognos);
USEFORM("UEdit_DepoEnterAttach.cpp", frmEdit_DepoEnterAttach);
USEFORM("uEditRole.cpp", frmEditRole);
USEFORM("uEditWineSide.cpp", frmEditWineSide);
USEFORM("UEditDict_Malfunction.cpp", frmEditDict_Malfunction);
USEFORM("UDMMain.cpp", DMMain); /* TDataModule: File Type */
USEFORM("uEditDicCloseDepoIncident.cpp", frmEditDicCloseDepoIncident);
USEFORM("UEdit_Department_TCHR.cpp", frmEdit_Department_TCHR);
USEFORM("UEdit_DepoEnter.cpp", frmEdit_DepoEnter);
USEFORM("UEdit_CallingControl.cpp", Form2);
USEFORM("UEdit_Action.cpp", frmEdit_Action);
USEFORM("UEdit_Attach.cpp", frmEdit_Attach);
USEFORM("uAnalyticsBMZ.cpp", frmAnalyticsBMZ);
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

