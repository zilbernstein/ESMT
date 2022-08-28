#ifndef UReportProgressH
#define UReportProgressH

#include "cxContainer.hpp"
#include "cxControls.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxGroupBox.hpp"
#include "cxImage.hpp"
#include "cxLabel.hpp"
#include "cxProgressBar.hpp"
#include "cxStyles.hpp"
#include <Classes.hpp>
#include <Controls.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <ImgList.hpp>
#include "UReports.h"
#include "public.h"
#include <math.h>
#include <Db.hpp>
#include <DBClient.hpp>
#include <MConnect.hpp>
#include <SConnect.hpp>
#include "cxLookAndFeelPainters.hpp"
#include "dxSkinsCore.hpp"
#include "MySkins.hpp"
//---------------------------------------------------------------------------
struct ReportProgressParams
{
	int			ActID;
	AnsiString	report_caption;	// заголовок для прогрессбара
    int			Id;
};
//---------------------------------------------------------------------------
const SleepDelay = 200;
/*
	Константы наименований текущей операции по подготовке отчетов (Current Operation Name)
*/
const AnsiString conOperationName [] 	= { "Получение предварительных установок", "Выполнение запроса", "Построение отчета" };
const int conGetSettings	= 0;
const int conQuery			= 1;
const int conTemplate		= 2;
/*
	Константы - индексы картинок для разных действий
*/
const Shortint imgSplashLoadModule 	= 1;
const Shortint imgRPLLoad 			= 2;
//---------------------------------------------------------------------------
class TfrmReportProgress : public TForm
{
__published:
	TcxImageList *imlReportProgress;
	TcxStyleRepository *stlrpReports;
	TcxStyle *stlBackground;
	TcxStyle *stlGroup;
	TcxStyle *stlContent;
	TcxStyle *stlHotTrack;
	TcxStyle *stlHeader;
	TcxStyle *stlBandHeader;
	TcxStyle *stlContentProgress;
	TTimer *tmrPrepareReports;
	TTimer *tmrFormClose;
	TClientDataSet *cdsR;
	TDataSource *dsR;
	TSocketConnection *scSocket;
	TcxImage *Image;
	TcxGroupBox *gbReportProgress;
	TcxProgressBar *prgsReport;
	TcxLabel *lblOperationCaption;
	void __fastcall tmrReportProgressTimer(TObject *Sender);
	void __fastcall tmrPrepareReportsTimer(TObject *Sender);
	void __fastcall tmrFormCloseTimer(TObject *Sender);
private:

	config	cfg;

	TModalResult				mr;
	ReportProgressParams		*p_;
	ReportsParam				*rp_;

	void __fastcall DrawProgress( int IdStep );
	void __fastcall InitialData_(AnsiString procname_, int templid_);

public:

	TModalResult __fastcall Start( ReportsParam* rp );

	__fastcall TfrmReportProgress(TComponent* Owner);
	__fastcall ~TfrmReportProgress();
};

#endif
