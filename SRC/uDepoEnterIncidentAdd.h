//---------------------------------------------------------------------------

#ifndef uDepoEnterIncidentAddH
#define uDepoEnterIncidentAddH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include "cxButtons.hpp"
#include "cxGraphics.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include <Vcl.Menus.hpp>
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.ImgList.hpp>
#include "cxClasses.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include "cxCheckBox.hpp"
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGrid.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBBandedTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxNavigator.hpp"
#include "dxSkinscxPCPainter.hpp"
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
//---------------------------------------------------------------------------
struct StrctIncidentList
{
	int	 row_id;
	AnsiString status;
	TDateTime date_op;

	// локомотив
	int	 kod_ser;
	int	 nom_loc;
	int	 nom_sec;
};
//---------------------------------------------------------------------------
class TDepoEnterIncidentAdd : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TcxButton *cxButton1;
	TcxButton *cxButton2;
	TActionList *ActionList;
	TAction *aSelectIncidents;
	TAction *aCancel;
	TcxGrid *grdIncidentList;
	TcxGridDBBandedTableView *btvIncidentList;
	TcxGridDBBandedColumn *btvIncidentListColumn1;
	TcxGridDBBandedColumn *btvIncidentListColumn2;
	TcxGridDBBandedColumn *btvIncidentListColumn3;
	TcxGridDBBandedColumn *btvIncidentListColumn4;
	TcxGridDBBandedColumn *btvIncidentListColumn5;
	TcxGridDBBandedColumn *btvIncidentListColumn6;
	TcxGridDBBandedColumn *btvIncidentListColumn7;
	TcxGridDBBandedColumn *btvIncidentListColumn8;
	TcxGridDBBandedColumn *btvIncidentListColumn10;
	TcxGridDBBandedColumn *btvIncidentListColumn9;
	TcxGridDBBandedColumn *btvIncidentListColumn11;
	TcxGridDBBandedColumn *btvIncidentListColumn12;
	TcxGridLevel *lvlIncidentList;
	TcxGridDBBandedColumn *clmnCheck;
	TClientDataSet *cdsIncidentList;
	TDataSource *dsIncidentList;
	TAction *aLoadIncidents;
	void __fastcall aSelectIncidentsExecute(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall aLoadIncidentsExecute(TObject *Sender);
private:
	StrctIncidentList* ep_;
public:
	__fastcall TDepoEnterIncidentAdd(TComponent* Owner);
	TModalResult __fastcall Show(StrctIncidentList* ep);
};
//---------------------------------------------------------------------------
extern PACKAGE TDepoEnterIncidentAdd *DepoEnterIncidentAdd;
//---------------------------------------------------------------------------
#endif
