#include <vcl.h>
#pragma hdrstop
#include "UfmePreview.h"
#pragma package(smart_init)
#pragma resource "*.dfm"

TfmePreview *fmePreview;
const double cMinScale = 0.3;
const double cMaxScale = 2;
//---------------------------------------------------------------------------
__fastcall TfmePreview::TfmePreview(TComponent* Owner)
   : TFrame(Owner)
{
}
//---------------------------------------------------------------------------

AnsiString FormDateTimeStr()
{
	// Дата и время (символьные) - чтоб подставлять к имени файла
	TDateTime Present;
	Word Day, Month, Year, BHour, BMin, BSec, BMSec;
	AnsiString sDay, sMonth, sYear, sHour, sMin, sSec, sMSec;

	// настоящий (текущий) год, месяц, день
	Present = Now();
	DecodeDate(Now(), Year, Month, Day);
	if (Day < 10)         sDay   = "0"+ IntToStr(Day);
				  else    sDay   =      IntToStr(Day);
	if (Month < 10)       sMonth = "0"+ IntToStr(Month);
				  else    sMonth =      IntToStr(Month);
	sYear  =      IntToStr(Year);

	DecodeTime(Present, BHour, BMin, BSec, BMSec);
	if (BHour < 10)       sHour  = "0"+ IntToStr(BHour);
                  else    sHour  =      IntToStr(BHour);
	if (BMin < 10)        sMin   = "0"+ IntToStr(BMin);
                  else    sMin   =      IntToStr(BMin);
	if (BSec < 10)        sSec   = "0"+ IntToStr(BSec);
                  else    sSec   =      IntToStr(BSec);
   	if (BMSec < 10)       sMSec  = "0"+ IntToStr(BMSec);
                  else    sMSec   =      IntToStr(BMSec);

   return(sDay+sMonth+sYear+"_"+sHour+sMin+sSec);
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::FrameMouseWheel(TObject *Sender,
      TShiftState Shift, int WheelDelta, TPoint &MousePos, bool &Handled)
{
   // Чтоб скроллировалось как надо

	double NewValue = (WheelDelta != 0 ? (double)cbScale->EditValue + (0.1 * (abs(WheelDelta) / WheelDelta)) : (double)cbScale->EditValue);
    if ( Shift.Contains(ssCtrl) && NewValue >= cMinScale && NewValue <= cMaxScale )
    {
        cbScale->EditValue = FloatToStr(NewValue);
        aScale->Execute();
    }
    else
        frxPreview->MouseWheelScroll(WheelDelta, false, false);
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::frxPreviewPageChanged(TfrxPreview *Sender,
		int PageNo)
{
   // Переключаем спин с номерами страниц - ставим текущую

	if ( PageNo > 0 ) spnNumPage->Value = PageNo;
	frxPreview->Update();
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::aPrintExecute(TObject *Sender)
{
	// Печать отчета

   if (frxPreview->PageCount > 0)
		frxPreview->Print();
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::aEnableActionsExecute(TObject *Sender)
{
	aPrint->Enabled = ( frxPreview->PageCount > 0 );
	aSave->Enabled			= aPrint->Enabled;
	aShowTree->Enabled	= aPrint->Enabled;
	aFirstPage->Enabled	= aPrint->Enabled;
	aPrevPage->Enabled	= aPrint->Enabled;
	aNextPage->Enabled	= aPrint->Enabled;
	aLastPage->Enabled	= aPrint->Enabled;
	aExport->Enabled		= aPrint->Enabled;
	spnNumPage->Enabled 	= aPrint->Enabled;
	cbScale->Enabled		= aPrint->Enabled;
	//((TcxSpinEditProperties*)beiNumPage->Properties)->MaxValue = frxPreview->PageCount;
	spnNumPage->Properties->MaxValue = frxPreview->PageCount;

	aShowTree->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::aSaveExecute(TObject *Sender)
{
   // Сохраняем отчет

   SaveDlg->FileName = "_"+FormDateTimeStr()+".fp3";
   if ( SaveDlg->Execute() )
      frxPreview->SaveToFile(SaveDlg->FileName);
   else return;  	
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::aShowTreeExecute(TObject *Sender)
{
	// Показать / скрыть дерево

   frxPreview->OutlineVisible = bbtnTree->Down;
   frxPreview->Update();
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::aFirstPageExecute(TObject *Sender)
{
	// Встать на первую страничку

	frxPreview->First();
	spnNumPage->Value = 1;
	frxPreview->Update();
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::aPrevPageExecute(TObject *Sender)
{
	// Встать на предыдущую страничку

	frxPreview->Prior();
	spnNumPage->Value = frxPreview->PageNo;
	frxPreview->Update();
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::aNextPageExecute(TObject *Sender)
{
	// Встать на следующую страничку

	frxPreview->Next();
	spnNumPage->Value = frxPreview->PageNo;
	frxPreview->Update();
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::aLastPageExecute(TObject *Sender)
{
	// Встать на последнюю страничку

	frxPreview->Last();
	spnNumPage->Value = frxPreview->PageCount; // PageNo;
	frxPreview->Update();
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::aOpenExecute(TObject *Sender)
{
	// Открываем сохраненный отчет

	if ( OpenDlg->Execute() )
	{
		frxPreview->LoadFromFile(OpenDlg->FileName);
		frxPreview->SetFocus();
		bbtnTree->Down = frxPreview->OutlineVisible;
		//((TcxSpinEditProperties*)beiNumPage->Properties)->MaxValue = frxPreview->PageCount;
		spnNumPage->Properties->MaxValue = frxPreview->PageCount;
	}
	else return;
   
	aEnableActions->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::aExportExecute(TObject *Sender)
{
	TPoint PopupPoint;
	PopupPoint.x = Mouse->CursorPos.x;
	PopupPoint.y = Mouse->CursorPos.y;
	//PopupPoint.x = bbtnExport->Left;
	//PopupPoint.y = bbtnExport->Top + bbtnExport->Height;
	//PopupPoint = bdcPreviewCommon->ClientToScreen(PopupPoint);
	//pPrev->Popup(PopupPoint.x,PopupPoint.y);
	pmExport->Popup(PopupPoint.x, PopupPoint.y);
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::aAfterExportExecute(TObject *Sender)
{
	frxPreview->LoadFromFile(OpenDlg->FileName);
	frxPreview->SetFocus();
	aEnableActions->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::frxPreviewClick(TObject *Sender)
{
	frxPreview->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::aStartPreviewExecute(TObject *Sender)
{
	// Последние приготовления перед просмотром
   frxR->Preview = frxPreview;
   frxR->PreviewOptions->OutlineExpand = false;
   frxPreview->SetFocus();
   // Показываем отчет(ы)
   frxR->ShowPreparedReport();
   // Блокировка/разблокировка кнопок
   aEnableActions->Execute();
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::aExportToXLSExecute(TObject *Sender)
{
   // Экспорт в Ексель

	SaveDlg->FileName = "_"+FormDateTimeStr()+".xls";

	if ( SaveDlg->Execute() == true )
   {
      frxXLSExp->FileName = SaveDlg->FileName;
      frxXLSExp->ShowDialog = false;
      frxR->Export(frxXLSExp);
		aAfterExport->Execute();
   }	
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::aExportToHTMLExecute(TObject *Sender)
{
	// Экспорт в html

	SaveDlg->FileName = "_"+FormDateTimeStr()+".html";

	if ( SaveDlg->Execute() == true )
	{
      frxHTMLExp->FileName = SaveDlg->FileName;
      frxHTMLExp->ShowDialog = false;
      frxR->Preview->PreviewPages->Export(frxHTMLExp);
      aAfterExport->Execute();
	}	
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::aExportToPDFExecute(TObject *Sender)
{
	// Экспорт в pdf

	SaveDlg->FileName = "_"+FormDateTimeStr()+".pdf";

	if ( SaveDlg->Execute() == true )
	{
      frxPDFExp->FileName = SaveDlg->FileName;
      frxPDFExp->ShowDialog = false;
      frxR->Preview->PreviewPages->Export(frxPDFExp);
      aAfterExport->Execute();
	}	
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::aExportToRTFExecute(TObject *Sender)
{
	// Экспорт в rtf
      
	SaveDlg->FileName = "_"+FormDateTimeStr()+".rtf";

   if ( SaveDlg->Execute() == true )
   {
      frxRTFExp->FileName = SaveDlg->FileName;
      frxRTFExp->ShowDialog = false;
      frxR->Preview->PreviewPages->Export(frxRTFExp);
      aAfterExport->Execute();
	}	
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::aExitExecute(TObject *Sender)
{
	// Поработали. Выходим!

	frxPreview->Clear();
	frxPreview->Cancel();
	frxR->Clear();
	frxR->Preview = 0;

	// тута типа закрыть форму, на которой фрэйм лежит (или оставить на кнопке Выход на форме)
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::aGoToPageExecute(TObject *Sender)
{
	// Встать на страничку с номером

	if ( !spnNumPage->Text.IsEmpty() )
	{
		if ( (int)spnNumPage->Value < spnNumPage->Properties->MinValue )
			spnNumPage->Value = spnNumPage->Properties->MinValue;

		if ( (int)spnNumPage->Value > spnNumPage->Properties->MaxValue )
			spnNumPage->Value = spnNumPage->Properties->MaxValue;

		frxPreview->PageNo = (int) spnNumPage->Value;
		frxPreview->Update();
	}
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::aScaleExecute(TObject *Sender)
{
	// Масштабируем
	frxPreview->Zoom = (float) cbScale->EditValue;

	frxPreview->Update();
	frxPreview->SetFocus();
	Panel2->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TfmePreview::spnNumPageKeyPress(TObject *Sender, char &Key)
{
	if ( Key == 'e' || Key == 'E' ) Key = NULL;
	else aGoToPage->Execute();

	if ( Key == VK_RETURN && frxPreview->PageCount > 0 && frxPreview->CanFocus() )
	{
		frxPreview->SetFocus();
		Panel2->SetFocus();
	} 
}
//---------------------------------------------------------------------------

