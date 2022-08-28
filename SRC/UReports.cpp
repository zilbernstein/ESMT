#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include <memory>

#include "uBinFunction.h"
#include "UDMMain.h"

#include "config.h"
#include "public.h"
#include "Utils_JK.h"
//#include "UReportProgress.h"
#include "UReports.h"

#pragma package(smart_init)
#pragma link "cxDateUtils"
#pragma link "cxNavigator"
#pragma link "cxPCdxBarPopupMenu"
#pragma link "dxCore"
#pragma link "frxChart"
#pragma resource "*.dfm"

using namespace std;
//---------------------------------------------------------------------------

/*TcxTreeListNode* __fastcall TfrmReports::FindNodeByKey( TcxTreeList *TreeList, TcxTreeListColumn *Column, int Key )
{
/*	// Поиск строки по ключевому значению

	TcxTreeListNode 	*ln = NULL;
   int 					i = 0;

	if ( TreeList->Nodes->Count > 0 )
	{
		do
		{
			if ( (int) TreeList->Nodes->Items[i]->Values[Column->ItemIndex] == Key )
				ln = TreeList->Nodes->Items[i];
			i++;
		}
		while ( ln == NULL && i < TreeList->Nodes->Count );

		if ( ln != NULL )
		{
			ln->Selected	= true;
			ln->Focused		= true;
		}
	}
   return ln;
}*/

//---------------------------------------------------------------------------

void __fastcall TfrmReports::Start( )
{
	//rp_ = rp;
	pcMain->ActivePage  	= tsReportMain;
	pcMain->HideTabs 		= true;
	tmrReports->Enabled 	= true;

	deDateBegin->Date = cfg.ini->ReadDate("frmReports", "DateBegin", Date() - 7);
	deDateFinish->Date = cfg.ini->ReadDate("frmReports", "DateFinish", Date());
	aGetFirmList->Execute();
	TDMMain::LogEvenEnterExit("Вход. Стандартные отчеты.");
	Show();
}
//---------------------------------------------------------------------------

__fastcall TfrmReports::TfrmReports(TComponent* Owner)
	: TForm(Owner)
{
	pcMain->ActivePage  	= tsReportMain;
	pcMain->HideTabs 		= true;
	tmrReports->Enabled 	= true;

	deDateBegin->Date = cfg.ini->ReadDate("frmReports", "DateBegin", Date() - 7);
	deDateFinish->Date = cfg.ini->ReadDate("frmReports", "DateFinish", Date());
	aGetFirmList->Execute();

	TDMMain::LogEvenEnterExit("Вход. Стандартные отчеты.");
}
//---------------------------------------------------------------------------

__fastcall TfrmReports::~TfrmReports()
{
}
//---------------------------------------------------------------------------

void __fastcall TfrmReports::aExitExecute(TObject *Sender)
{
	// Закрыть
	TDMMain::LogEvenEnterExit("Выход. Стандартные отчеты.");
	this->Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmReports::FormClose(TObject *Sender,
		TCloseAction &Action)
{
/*		gbMainProgress->Caption 	= "Сохранение параметров";
		pcMain->ActivePage			= tsProgressMain;
		gbMainProgress->Update();
		prgsMain->Position			= 0;
		prgsMain->Properties->Max	= 2;

		// 1

		if ( rp_->need2saveINI == true ) aStoreIniSettings->Execute();

		prgsMain->Position++;
		prgsMain->Update();
*/
	cfg.ini->WriteDate("frmReports", "DateBegin", deDateBegin->Date);
    cfg.ini->WriteDate("frmReports", "DateFinish", deDateFinish->Date);

    TDMMain::LogEvenEnterExit("Выход. Стандартные отчеты.");

    Action = caFree;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReports::aStoreIniSettingsExecute(TObject *Sender)
{
	// Сохранение параметров в INI

	cfg.ini->WriteString("ReportSettings", "rsDateBegin", deDateBegin->Text);
	cfg.ini->WriteString("ReportSettings", "rsDateEnd", deDateFinish->Text);

}
//---------------------------------------------------------------------------

void __fastcall TfrmReports::aRestoreIniSettingsExecute(TObject *Sender)
{
	// Восстановление параметров из INI

/*	bdcDateBegin->Text = InterChange->IniFile->ReadDate("ReportSettings", "rsDateBegin", DateToStr(Date()));
	bdcDateEnd->Text	 = InterChange->IniFile->ReadDate("ReportSettings", "rsDateEnd", DateToStr(Date()));
*/
}
//---------------------------------------------------------------------------

void __fastcall TfrmReports::tmrReportsTimer(TObject *Sender)
{
	Word Year, Month, Day;

	tmrReports->Enabled 		= false;
	Screen->Cursor 				= crAppStart;
	prgsMain->Properties->Max 	= 6;

	try
	{
		try
		{
			// 7
			try
			{
				stsCommon->Panels->Items[0]->Text = "Восстановление интерфейсных свойств .....";
				stsCommon->Update();

				DecodeDate(Date(), Year, Month, Day);

				//deDateBegin->EditValue = Date() - 3;//EncodeDate(Year, Month, 1);
				//deDateEnd->EditValue 	= /*EncodeDate(Year, 8, 5);//*/Date();
                Update();

				prgsMain->Position++;
				prgsMain->Update();
			}
			catch ( Exception &e )
			{
				throw Exception ("< URP-1 > : Ошибка восстановления интерфейсных свойств.\n" + e.Message);
			}

			// 6
			stsCommon->Panels->Items[0]->Text = "Заполнение списка шаблонов отчетов .....";
			stsCommon->Update();

			aGetTemplates->Execute();

			prgsMain->Position++;
			prgsMain->Update();

			prgsMain->Visible 						= false;
			stsCommon->Panels->Items[0]->Text 	= "";

			fmePreviewReport->bbtnExit->OnClick = fmePreview1bbtnExitClick;
		}
		catch ( Exception &e )
		{
			Screen->Cursor 	= crDefault;
			MessageBox(Handle, AnsiString(e.Message + "\n\nОкно будет закрыто.").c_str(), "Операция прервана", MB_OK | MB_ICONSTOP);
			//rp_->p_need2saveINI	= false;
			this->Close();
		}
	}
	__finally
	{
		Screen->Cursor = crDefault;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmReports::FormMouseWheel(TObject *Sender,
		TShiftState Shift, int WheelDelta, TPoint &MousePos, bool &Handled)
{
	if ( fmePreviewReport->Visible )
		fmePreviewReport->frxPreview->MouseWheelScroll(WheelDelta, false, false);
}
//---------------------------------------------------------------------------

void __fastcall TfrmReports::CheckedOnOff(TcxTreeList *tl, TcxTreeListColumn *clmn, bool SetToAll, bool MultiSelect, bool AllowAllUncheck)
{
	// Выделение или снятие выделения строки

	int NewValue = 0;
	TcxTreeListColumn	*clmn_value;
	TcxTreeListColumn	*clmn_name;

	try
	{
		if ( tl->AbsoluteCount > 0 )
		{
			if ( SetToAll )
			{
				NewValue = ( 0 == tl->TopNode->Values[clmn->ItemIndex] ? 1 : 0);
				for ( int i=0; i < tl->AbsoluteCount; i++ )
					tl->Items[i]->Values[clmn->ItemIndex] = NewValue;
			}
			else
			{
				if ( !MultiSelect )
				{
					NewValue = ( 0 == tl->FocusedNode->Values[clmn->ItemIndex] ? 1 : 0);

					for ( int i = 0; i < tl->AbsoluteCount; i++ )
						tl->Items[i]->Values[clmn->ItemIndex] = 0;

					if ( !AllowAllUncheck ) tl->FocusedNode->Values[clmn->ItemIndex] = 1;
					else tl->FocusedNode->Values[clmn->ItemIndex] = NewValue;
				}
				else
					tl->FocusedNode->Values[clmn->ItemIndex] =
							( tl->FocusedNode->Values[clmn->ItemIndex] == 0 ? 1 : 0 );
			}
		}
	}
   catch ( Exception &e )
	{
		MessageBox(Handle, AnsiString("< URP-2 > : Ошибка установки выделения строки.\n" + e.Message).c_str(),"Операция прервана", MB_ICONSTOP);
   }
}
//---------------------------------------------------------------------------

void __fastcall TfrmReports::aGetTemplatesExecute(TObject *Sender)
{
	// Список отчетов

	TClientDataSet *cds = DMMain->cdsReport_ReportTree;
	TDataSource *ds = DMMain->dsReport_ReportTree;
	//TcxDBTreeList *tl = tlReportTree;

	/*TcxTreeList			*tl = tlReportList;
	TcxTreeListNode	*ln;
	std::auto_ptr<TClientDataSet> dsa ( new TClientDataSet(NULL) );
	*/

	try
	{
		btvReportTree->DataController->DataSource = 0;
		TDMMain::ClearDataSet(cds);
		cds->CommandText = "SMT.SMT_REPORT_PKG.template_cur";
		cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
	}
	catch ( Exception &e )
	{
		throw Exception("< URP-3 > : Ошибка загрузки списка шаблонов отчетов.\n" + e.Message);
	}

	try
	{
		btvReportTree->DataController->DataSource = ds;
		btvReportTree->ViewData->Expand(true);

	}
	catch ( Exception &e )
	{
		throw Exception("< URP-4 > : Ошибка заполнения списка шаблонов отчетов.\n" + e.Message);
	}

/*	try
	{
		tl->Nodes->Clear();

		for ( int i = 0; i < dsa->RecordCount; i++ )
		{
			ln = tl->Add();

			ln->Values[clmnTemplateChecked->ItemIndex]		= 0;
			ln->Values[clmnTemplateReportName->ItemIndex]	= dsa->FieldByName("REPORT_NAME")->AsString;
			ln->Values[clmnTemplateID->ItemIndex]				= dsa->FieldByName("REPORT_ID")->AsString;
			ln->Values[clmnTemplateMnemo->ItemIndex]			= dsa->FieldByName("MNEMO")->AsString;
			ln->Values[clmnTemplateProcName->ItemIndex]		= dsa->FieldByName("PROC_NAME")->AsString;
			ln->Values[clmnTemplateTemplateName->ItemIndex]	= dsa->FieldByName("TEMPLATE_NAME")->AsString;

			dsa->Next();
		}

		if ( tl->Nodes->Count > 0 )
		{
			ln = tl->TopNode;
			ln->Selected	= true;
			ln->Focused		= true;
			ln->Expand(false);
			//CheckedOnOff(tl, clmnNodeChecked, false, false, false);
		}
	}
	catch ( Exception &e )
	{
		throw Exception ("<RWR-1019>: Ошибка заполнения списка отчетов.\n" + e.Message);
	} */
}
//---------------------------------------------------------------------------

void __fastcall TfrmReports::aPrepareOutParamsExecute(TObject *Sender)
{
	// подготовка параметров для выполенения запроса

/*	TcxTreeList 			  *tl 	= NULL;
	TcxTreeListColumn 	  *lic 	= NULL;
	TcxTreeListColumn		  *lc 	= NULL;
	int 						  cntr 	= 0;

	// предприятие ремонта
	try
	{
		GetCheckedRowCount(tlFirms, clmnNodeChecked, clmnNodeID, rp_->kod_firm);
		GetCheckedRowCount(tlRepair, clmnRepairChecked, clmnRepairID, rp_->repair_id);
		GetCheckedRowCount(tlTjaga, clmnTjaga_Checked, clmnTjaga_ID, rp_->kod_tjaga);
		GetCheckedRowCount(tlSeria, clmnSerChecked, clmnSerID, rp_->kod_ser);

		GetCheckedRowCount(tlSeria, clmnSerChecked, clmnSerParentID, rp_->kod_ser_group);
		if ( rp_->kod_ser == rp_->kod_ser_group ) rp_->kod_ser = 0;

		GetCheckedRowCount(tlSection, clmnSectionChecked, clmnSectionIDObject, rp_->id_object);
	}
	catch ( Exception &e )
	{
		throw Exception (e.Message);
	}
*/
}
//---------------------------------------------------------------------------




void __fastcall TfrmReports::aHelpSupportExecute(TObject *Sender)
{
	//
}
//---------------------------------------------------------------------------

void __fastcall TfrmReports::aGoOnForumExecute(TObject *Sender)
{
	// Идем на форум .....

	char buf_str[2000];
	sprintf(buf_str, "http://10.240.36.83:8080/phorum/list.php?topic=203" );
	ShellExecute(Application->Handle, NULL, buf_str, NULL, NULL, SW_MAXIMIZE);
}
//---------------------------------------------------------------------------

void __fastcall TfrmReports::aViewHelpExecute(TObject *Sender)
{
   // Читаем руководство .....

   char buf_str[2000];
   sprintf(buf_str, "ftp://10.200.1.70/Software/ASUT-T/Docs/Monitoring/REP/rem_plan.doc" );
   ShellExecute(Application->Handle, NULL, buf_str, NULL, NULL, SW_MAXIMIZE);
}
//---------------------------------------------------------------------------

void __fastcall TfrmReports::aSendMailExecute(TObject *Sender)
{
   // Пишем письмо разработчикам .....

	ShellExecute(Application->Handle, NULL, "mailto:asut_prog@center.rzd?subject='Отчеты цеха ремонта'", NULL, NULL, SW_MAXIMIZE);
}
//---------------------------------------------------------------------------

void __fastcall TfrmReports::fmePreview1bbtnExitClick(TObject *Sender)
{
	fmePreviewReport->aExitExecute(Sender);

	//this->WindowState		= wsNormal;
	pcMain->ActivePage	= tsReportMain;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReports::InitialData(AnsiString procname_, int templid_)
{
	TClientDataSet	*cds = cdsR;

	/*cds->Close();
	cds->Params->Clear();*/
	TDMMain::ClearDataSet(cds);
	cds->CommandText = procname_;

	cds->Params->CreateParam(ftDateTime, "p_date_begin", ptInput)->AsDateTime = deDateBegin->Date;
	cds->Params->CreateParam(ftDateTime, "p_date_finish", ptInput)->AsDateTime = deDateFinish->Date;
	cds->Params->CreateParam(ftString, "p_status", ptInput)->AsString = "";
	cds->Params->CreateParam(ftInteger, "p_access", ptInput)->AsInteger	= (int)cbFirmTree_->EditValue;//GetValue_Firm();
	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

	TDMMain::OpenDS(cds, "OPEN", "CT", 1);
}
//---------------------------------------------------------------------------

void __fastcall TfrmReports::aPrepareReportsExecute(TObject *Sender)
{
	// Splash

	/*ReportsParam rp;
	std::auto_ptr<TfrmReportProgress> dlg ( new TfrmReportProgress( this ) );

	rp.p_date_begin			= StrToDateTime(bdcDateBegin->Text);
	rp.p_date_end			= StrToDateTime(bdcDateEnd->Text);
	rp.p_kod_firm			= cfg.KodFirm; //DepotID;
	rp.p_fuel_id			= (int) cmFuel->EditValue;

	dlg->Start( &rp );
	*/

	TcxGridDBTableView *btv = btvReportTree;

	TClientDataSet *cds = (TClientDataSet*)btv->DataController->DataSource->DataSet;
	TfmePreview	   *prv = fmePreviewReport;
	int templid_ = 0;
	int cntr = 0;
	int 			not_generated_cnt 	= 0;
	AnsiString		not_generated_list 	= "";

	prv->frxR->Preview 					= 0;
	Screen->Cursor 						= crHourGlass;

	try
	{
		for ( int i = 0; i < btv->DataController->RowCount; i++ )
		{
			// Открыть датасет
			// загрузить шаблон
			try
			{
				//if ( btv->DataController->Values[i][clmnCheck->Index] == 1 )
				if ( 	btv->Controller->FocusRecord(i, true) == true
					&&	btv->Controller->FocusedRecord->Expandable == false
					&&	( (int)btv->Controller->FocusedRecord->Values[clmnCheck->Index] == 1
						|| cds->FieldByName("checked")->AsInteger != 0
						)
					)
				{

						prv->frxDBNode->DataSource = 0;

						btv->Controller->FocusRecord(i, true);
						templid_ = cds->FieldByName("report_id")->AsInteger;
						try
						{
							InitialData(cds->FieldByName("proc_name")->AsString, templid_);
						}

						catch ( Exception &e )
						{
							throw Exception ("< URP-5 > : Ошибка загрузки данных." + e.Message);
						}

						if ( cds->RecordCount < 1 )
							throw Exception ("< URP-6 > : По заданным условиям данные не найдены.\n");

						try
						{
							prv->frxDBNode->DataSource = dsR;

							prv->frxR->LoadFromFile(TemplateFolder + cds->FieldByName("template_name")->AsString, true);
//                            prv->frxR->ShowReport(true);

							if ( prv->frxR->PrepareReport( (cntr < 1) ) == false )
							{
								throw Exception ("Не удалось выполнить подготовку отчета.");
							}

							cntr++;
						}
						catch (Exception &e)
						{
							throw Exception ( "< URP-7 > : Ошибка построения отчета.\n" + e.Message);
						}

					/*_finally
					{
						cntr++;
						//prgsReport->Position = cntr;
						//prgsReport->Update();
					}*/
				}
			}
			catch ( Exception &e )
			{
				not_generated_cnt++;
				not_generated_list = not_generated_list + ( not_generated_cnt > 0 ? "\n\n<" : "<" ) +
						cds->FieldByName("report_name")->AsString.UpperCase() + ">: " + e.Message;
			}
		}

		if ( not_generated_cnt > 0 )
			ShowMessage(not_generated_list);


			try
			{
				if ( prv->frxR->PreviewPages->Count > 0 )
				{
					WindowState 							 = wsMaximized;
					pcMain->ActivePage 						 = tsReportPreview;
					prv->frxR->Preview 						 = prv->frxPreview;
					prv->frxR->PreviewOptions->OutlineExpand = false;
					//prv->frxR->PreviewOptions->OutlineVisible = false;
					prv->frxPreview->SetFocus();
					prv->frxR->ShowPreparedReport();
					prv->aEnableActions->Execute();
					prv->frxPreview->OutlineWidth = 230;
					prv->aShowTree->Execute();
					prv->aScale->Execute();
				}
				else
					pcMain->ActivePage = tsReportMain;
			}
			catch ( Exception &e )
			{
				throw Exception ("< URP-8 > : Ошибка выполнения предварительного просмотра.\n" + e.Message);
			}

	}
	__finally
	{
		Screen->Cursor = crDefault;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmReports::FormKeyPress(TObject *Sender, char &Key)
{
	if ( Key == VK_ESCAPE ) aExit->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfrmReports::aGetFirmListExecute(TObject *Sender)
{
	/*Загрузить дерево предприятий*/

	TClientDataSet *cds = DMMain->cdsReport_FirmTree;
	TDataSource *ds = DMMain->dsReport_FirmTree;
	TdxLookupTreeView *tw = cbFirmTree;

	TDMMain::ClearDataSet(cds);
	cds->CommandText = "SMT.SMT_REPORT_PKG.firm_tree_cur";
	cds->Params->CreateParam(ftInteger, "p_access", ptInput )->AsInteger = DepotID;
	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

	try
	{
		tw->ListSource = 0;
		TDMMain::OpenDS(cds, "OPEN", "CT", 1);
		tw->ListSource = ds;
		cbFirmTree_->Properties->ListSource = ds;
		cbFirmTree_->EditValue = DepotID;
		/*cbFirmTree->Text = VarToStr(cds->Lookup(tw->KeyField, DepotID, tw->ListField));
		cds->Locate(tw->KeyField, DepotID, TLocateOptions());
		*/
	}
	catch ( Exception &e )
	{
		throw Exception ("< URP-9 > : Ошибка загрузки дерева предприятий.\n" + e.Message);
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmReports::btvReportTreeCustomDrawCell(TcxCustomGridTableView *Sender,
		  TcxCanvas *ACanvas, TcxGridTableDataCellViewInfo *AViewInfo,
		  bool &ADone)
{
	if 	( (int) AViewInfo->GridRecord->Values[clmnCheck->Index] == 1 )
		ACanvas->Font->Color = clBlue;
	else
		ACanvas->Font->Color = clBlack;
}
//---------------------------------------------------------------------------

int __fastcall TfrmReports::GetValue_Firm()
{
	// Вернуть значение комбобокса выбора предприятия (ибо он кривой)
	int vResult = 0;
	TClientDataSet *cds = DMMain->cdsReport_FirmTree;

    if ( cbFirmTree->Text.IsEmpty() == false && cds->State != dsInactive && cds->RecordCount > 0 )
    	vResult = cds->FieldByName("kod_firm")->AsInteger;

    return vResult;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReports::clmnCheckPropertiesEditValueChanged(TObject *Sender)

{
	// Проверить, выбраны ли отчеты, и открыть/закрыть кнопку формирования отчетов

	TcxGridDBTableView *btv = btvReportTree;
	int cnt = 0;

	for ( int i = 0; i < btv->DataController->RecordCount; i++ )
	{
        if ( btv->DataController->Values[i][clmnCheck->Index] == 1 )
			cnt++;
	}

	if ( cnt > 0 )
    	aPrepareReports->Enabled = true;
	else
		aPrepareReports->Enabled = false;

	eSelectedCount->EditValue = cnt;
}
//---------------------------------------------------------------------------

