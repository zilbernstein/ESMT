#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include "uBinFunction.h"
#include "config.h"
#include "public.h"
#include "UDMMain.h"
#include "Utils_JK.h"
#include "UStateHistory.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxNavigator"
#pragma resource "*.dfm"
TfrmStateHistory *frmStateHistory;
//---------------------------------------------------------------------------
__fastcall TfrmStateHistory::TfrmStateHistory(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

TModalResult __fastcall TfrmStateHistory::Show( int p_sheet_id )
{
    TClientDataSet *cds = cdsStateHistory;
    TDataSource *ds = dsStateHistory;
    TcxGridDBBandedTableView	*btv = btvStateHistory;

    try
    {
    	TDMMain::ClearDataSet(cds);
    	cds->CommandText = "SMT.INCIDENT_PKG.state_history_cur";
    	cds->Params->CreateParam(ftInteger, "p_sheet_id", ptInput)->AsInteger = p_sheet_id;
    	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

        TDMMain::OpenDS(cds, "OPEN", "CT", 1);

        btv->OptionsView->NoDataToDisplayInfoText 	= NoDataTextDefault;
    	btv->DataController->DataSource = ds;
        btv->ViewData->Expand(true);
    }
	catch ( Exception &e )
	{
		throw Exception ("< USH-1 > : Ошибка загрузки истории статусов.\n" + e.Message);
	}

    return ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmStateHistory::btvStateHistoryColumn3GetDisplayText(TcxCustomGridTableItem *Sender,
          TcxCustomGridRecord *ARecord, UnicodeString &AText)

{
	if ( ARecord != NULL && !AText.IsEmpty() )
		AText = FormatDateTime("dd.mm.yy  hh:nn", StrToDateTime(AText));
}
//---------------------------------------------------------------------------

void __fastcall TfrmStateHistory::cxButton9Click(TObject *Sender)
{
	ModalResult = mrCancel;
}
//---------------------------------------------------------------------------
