//---------------------------------------------------------------------------

#ifndef UEdit_TeamLeaderH
#define UEdit_TeamLeaderH
#include "cxButtons.hpp"
#include "cxCheckBox.hpp"
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
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxStyles.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinscxPCPainter.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include <ActnList.hpp>
#include <Classes.hpp>
#include <Controls.hpp>
#include <DB.hpp>
#include <ExtCtrls.hpp>
#include <Menus.hpp>
#include <StdCtrls.hpp>
#include "cxLookAndFeels.hpp"
#include "dxSkinCaramel.hpp"
#include <System.Actions.hpp>
#include "cxNavigator.hpp"

//---------------------------------------------------------------------------
struct Strct_TeamLeader
{
    int	sheet_id;
    int team_id;
    int	sign;
};
//---------------------------------------------------------------------------
class TfrmEdit_TeamLeader : public TForm
{
__published:
	TTimer *tmr;
	TActionList *alTeamExecutor;
	TAction *aSave;
	TAction *aCancel;
	TPanel *Panel6;
	TcxButton *cxButton9;
	TcxButton *cxButton10;
	TAction *aLoadLeader;
	TdxStatusBar *dxStatusBar1;
	TcxGrid *grd;
	TcxGridDBTableView *btvTeamLeader;
	TcxGridLevel *lvl;
	TcxGridDBColumn *btvTeamLeaderColumn1;
	TcxGridDBColumn *btvTeamLeaderColumn2;
	TcxGridDBColumn *btvTeamLeaderColumn3;
	TcxGridDBColumn *clmnCheck;
	void __fastcall aLoadLeaderExecute(TObject *Sender);
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall FormKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall aSaveExecute(TObject *Sender);
private:
	Strct_TeamLeader* te_;
public:
	TModalResult __fastcall Show( Strct_TeamLeader* tp );
	__fastcall TfrmEdit_TeamLeader(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEdit_TeamLeader *frmEdit_TeamLeader;
//---------------------------------------------------------------------------
#endif
