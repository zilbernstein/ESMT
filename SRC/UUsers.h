#ifndef UUsersH
#define UUsersH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGraphics.hpp"
#include "cxGrid.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBBandedTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxStyles.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinscxPCPainter.hpp"
#include <DB.hpp>
#include <DBClient.hpp>
#include "cxButtons.hpp"
#include "cxLookAndFeelPainters.hpp"
#include <ExtCtrls.hpp>
#include <Menus.hpp>
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include "cxNavigator.hpp"
#include "cxGridExportLink.hpp"
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>

//---------------------------------------------------------------------------
class TfrmUsers : public TForm
{
__published:	// IDE-managed Components
	TClientDataSet *cdsUsers;
	TDataSource *dsUsers;
	TcxGrid *grdUsers;
	TcxGridDBBandedTableView *btvUsers;
	TcxGridLevel *lvlUsers;
	TcxGridDBBandedColumn *clmnSurname;
	TcxGridDBBandedColumn *clmnName;
	TcxGridDBBandedColumn *clmMiddleName;
	TcxGridDBBandedColumn *clmnComp_Filal;
	TcxGridDBBandedColumn *clmnPost;
	TcxGridDBBandedColumn *clmnPhone;
	TcxGridDBBandedColumn *clmnMail;
	TPanel *Panel6;
	TcxButton *btnCancel;
	TcxButton *btnExpExcel;
	TcxGridDBBandedColumn *clmnSLD;
	TcxGridDBBandedColumn *clmnCO_CY;
	TActionList *al;
	TAction *aLoadInfo;
	TAction *aClose;
	TAction *aExpExcel;
	void __fastcall aLoadInfoExecute(TObject *Sender);
	void __fastcall aCloseExecute(TObject *Sender);
	void __fastcall aExpExcelExecute(TObject *Sender);
private:	// User declarations
public:		// User declarations
    TModalResult __fastcall Show( int p_user_id );
	__fastcall TfrmUsers(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmUsers *frmUsers;
//---------------------------------------------------------------------------
#endif
