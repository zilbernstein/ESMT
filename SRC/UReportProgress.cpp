#include <vcl.h>

#include <inifiles.hpp>
#include "config.h"

#pragma hdrstop

#include "Utils_JK.h"
#include "UReportProgress.h"

#pragma package(smart_init)
#pragma resource "*.dfm"
//---------------------------------------------------------------------------
__fastcall TfrmReportProgress::TfrmReportProgress(TComponent* Owner)
	: TForm(Owner)
{
	//cfg.restore_form(this);
	scSocket->Host = cfg.Host;
	scSocket->Port = cfg.Port;
	scSocket->ServerName = cfg.ServerName;

	int Transparency = 75;	//насколько прозрачным будет окно (0-100%)
	/*long ExtStyle = GetWindowLong(Handle, GWL_EXSTYLE);

	SetWindowLong(Handle, GWL_EXSTYLE, ExtStyle | WS_EX_LAYERED);
	SetLayeredWindowAttributes(Handle, 0 , (255 * Transparency) / 100,LWA_ALPHA);
	*/
	AlphaBlendValue = (255 * Transparency) / 100;

	imlReportProgress->GetIcon(0, Image->Picture->Icon);

	mr = mrOk;
}

__fastcall TfrmReportProgress::~TfrmReportProgress()
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmReportProgress::Start( ReportsParam* rp )
{
	rp_ = rp;

	tmrPrepareReports->Enabled = true;

	return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmReportProgress::DrawProgress( int IdStep )
{
	TcxLabel	*lbl = lblOperationCaption;

	lbl->Caption = conOperationName[IdStep];
	lbl->Update();
}
//---------------------------------------------------------------------------


void __fastcall TfrmReportProgress::tmrReportProgressTimer(TObject *Sender)
{
	ModalResult = mrOk;
}
//---------------------------------------------------------------------------

void __fastcall TfrmReportProgress::tmrPrepareReportsTimer(TObject *Sender)
{
	tmrPrepareReports->Enabled = false;

	/*
		Подготовка отчетов
	*/

	TfrmReports 	*frm 						= (TfrmReports*)Owner;
	TfmePreview	  	*prv						= frm->fmePreviewReport;
	int				templid_ 				= 0;
	TcxTreeList		*lv 						= frm->tlReportList;
	TClientDataSet	*cds 						= cdsR;
	TDataSource		*ds_						= dsR;
	int 				cntr 						= 0;
	int 				not_generated_cnt 	= 0;
	AnsiString		not_generated_list 	= "";

	try
	{
		try
		{
			DrawProgress(conGetSettings);

			for ( int i = 0; i < lv->Nodes->Count; i++ )
				if ( !lv->Nodes->Items[i]->HasChildren && lv->Nodes->Items[i]->Values[frm->clmnTemplateChecked->ItemIndex] == 1 )	cntr++;
			if ( cntr == 0 ) throw Exception ("<RWR-1010>: Для построения не выбран ни один отчет.");

			try
			{
				prv->frxR->Preview 					= 0;
				//pcMain->ActivePage 				= tsReportProgress;
				Screen->Cursor 						= crHourGlass;
				prgsReport->Properties->Max 		= cntr;
				prgsReport->Position 				= 0;
				cntr 										= 0;
			}
			catch ( Exception &e )
			{
				throw Exception ("<RP-1001>: Ошибка выполнения предварительных настроек.\n" + e.Message);
			}

			for ( int i = 0; i < lv->Nodes->Count; i++ )
			{
				lv->OptionsSelection->HideSelection = false;
				try
				{
					templid_ = (int) lv->Nodes->Items[i]->Values[frm->clmnTemplateID->ItemIndex];
					if ( !lv->Nodes->Items[i]->HasChildren && (int) lv->Nodes->Items[i]->Values[frm->clmnTemplateChecked->ItemIndex] == 1 )
					{
						try
						{
							prv->frxDBNode->DataSource = 0;

							lv->Nodes->Items[i]->Selected = true;
							lv->Nodes->Items[i]->Focused = true;
							frm->Update();

							gbReportProgress->Caption = VarToStr(lv->Nodes->Items[i]->Values[frm->clmnTemplateMnemo->ItemIndex]);
							gbReportProgress->Update();

							DrawProgress(conQuery);

							InitialData_(VarToStr(lv->Nodes->Items[i]->Values[frm->clmnTemplateProcName->ItemIndex]), templid_);

							if ( cds->RecordCount < 1)
								throw Exception ("<RP-1002>: По заданным условиям данные не найдены.");

							DrawProgress(conTemplate);

							try
							{
								prv->frxDBNode->DataSource = ds_;

								prv->frxR->LoadFromFile(ExtractFilePath(Application->ExeName) + "Templates\\" +
										VarToStr(lv->Nodes->Items[i]->Values[frm->clmnTemplateTemplateName->ItemIndex]), true);

								if ( prv->frxR->PrepareReport( (cntr < 1) ) == false )
								{
									throw Exception ("Не удалось выполнить подготовку.");
								}
							}
							catch (Exception &e)
							{
								throw Exception ( "<RP-1003>: Ошибка построения отчета.\n" + e.Message);
							}
						}
						__finally
						{
							cntr++;
							prgsReport->Position = cntr;
							prgsReport->Update();
						}
					}
				}
				catch ( Exception &e )
				{
					not_generated_cnt++;
					not_generated_list = not_generated_list + ( not_generated_cnt > 0 ? "\n\n<" : "<" ) +
							VarToStr(lv->Nodes->Items[i]->Values[frm->clmnTemplateMnemo->ItemIndex]).UpperCase() + ">: " + e.Message;
				}
			}	// for

			if ( not_generated_cnt > 0 )
			{
				MessageBox(Handle,
									("Не удалось сформировать следующие отчеты(ы):\n" + not_generated_list).c_str(),
									(not_generated_cnt == 1) ? "Отчет не построен" : "Отчеты не построены",
									MB_ICONINFORMATION);
			}
			try
			{
				if ( prv->frxR->PreviewPages->Count > 0 )
				{
					frm->WindowState 											= wsMaximized;
					frm->pcMain->ActivePage 									= frm->tsReportPreview;
					prv->frxR->Preview 											= prv->frxPreview;
					prv->frxR->PreviewOptions->OutlineExpand 					= false;
					prv->frxPreview->SetFocus();
					prv->frxR->ShowPreparedReport();
					prv->aEnableActions->Execute();
					prv->frxPreview->OutlineWidth = 230;
					prv->aShowTree->Execute();
					prv->aScale->Execute();
				}
				else
					frm->pcMain->ActivePage = frm->tsReportMain;
			}
			catch ( Exception &e )
			{
				throw Exception ("<RP-1005>: Ошибка выполнения предварительного просмотра.\n" + e.Message);
			}
		}
		catch ( Exception &e )
		{
			MessageBox(Handle, e.Message.t_str(), "Операция прервана", MB_ICONSTOP);
			//rp_->frm->pcMain->ActivePage = tsReportMain;
		}
	}
	__finally
	{
		Screen->Cursor = crDefault;
		lv->OptionsSelection->HideSelection = true;
		tmrFormClose->Enabled = true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TfrmReportProgress::InitialData_(AnsiString procname_, int templid_)
{
	TClientDataSet	*cds = cdsR;

	cds->Close();
	cds->Params->Clear();
	cds->CommandText = procname_;

	cds->Params->CreateParam(ftInteger, 	"p_depot_id", 		ptInput)->AsInteger		= rp_->p_kod_firm;
	cds->Params->CreateParam(ftInteger, 	"p_fuel_id", 		ptInput)->AsInteger		= rp_->p_fuel_id;
	cds->Params->CreateParam(ftDateTime, 	"p_date_begin", 	ptInput)->AsDateTime		= rp_->p_date_begin;
	cds->Params->CreateParam(ftDateTime, 	"p_date_end", 		ptInput)->AsDateTime		= rp_->p_date_end;

	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

	//OpenDS(cds, scSocket, actOpen);
}
//---------------------------------------------------------------------------

void __fastcall TfrmReportProgress::tmrFormCloseTimer(TObject *Sender)
{
	ModalResult = mr;
}
//---------------------------------------------------------------------------

