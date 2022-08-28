//---------------------------------------------------------------------------

#ifndef uAdminUserEditH
#define uAdminUserEditH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxDBVGrid.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxStyles.hpp"
#include "cxTextEdit.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include <Vcl.ExtCtrls.hpp>
#include "cxButtons.hpp"
#include <Vcl.Menus.hpp>
#include "cxPC.hpp"
#include "cxPCdxBarPopupMenu.hpp"
#include "dxSkinscxPCPainter.hpp"
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.ImgList.hpp>
#include "cxImageComboBox.hpp"
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include "cxCustomData.hpp"
#include "cxDBTL.hpp"
#include "cxDropDownEdit.hpp"
#include "cxMaskEdit.hpp"
#include "cxTLData.hpp"
#include "cxTLdxBarBuiltInMenu.hpp"
#include "dxSkinsdxStatusBarPainter.hpp"
#include "dxStatusBar.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxFilter.hpp"
#include "cxGrid.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxNavigator.hpp"
#include "cxButtonEdit.hpp"
#include "cxCheckBox.hpp"
#include "cxContainer.hpp"
#include "cxGroupBox.hpp"
#include "cxProgressBar.hpp"
#include "cxGridDBBandedTableView.hpp"

struct TParamAdmin
{
	int id_admin;       //ID кто завел пользователя
	int id_user;        //ID пользователь
	int id_firm;        //ID предприятие
	int id_tp_firm;     //ID тип предприятия
	int id_firm_role;   //ID предприятия роли
	int id_tam;         //Табельный номер
	int id_dol;         //ID должность
	int id_role;        //ID роли
	AnsiString fam;     //Фамилия
	AnsiString nam;     //Имя
	AnsiString mid;     //отчество
	AnsiString login;   //Логин
	AnsiString pas;     //Пароль
	AnsiString mphone;  //Моб.Телефон
	AnsiString wphone;  //Раб.Телефон
	AnsiString email;   //E-Mail
	AnsiString tpFirm;  //Тип предприятия
};

//---------------------------------------------------------------------------
class TfrmAdminUserEdit : public TForm
{
__published:	// IDE-managed Components
	TPanel *pnlSave;
	TcxButton *btnSave;
	TcxButton *btnCancel;
	TcxPageControl *pc;
	TcxTabSheet *tsMain;
	TcxTabSheet *tsOther;
	TActionList *al;
	TAction *aSave;
	TAction *aCancel;
	TcxVerticalGrid *vg;
	TcxEditorRow *rwULastName;
	TcxEditorRow *rwUFirstName;
	TcxEditorRow *rwUPatrName;
	TcxEditorRow *rwUDol;
	TcxEditorRow *rwUTypeFirm;
	TcxEditorRow *rwUFirmTree;
	TcxEditorRow *rwUEMail;
	TcxEditorRow *rwUWPhone;
	TcxEditorRow *rwUMPhone;
	TcxCategoryRow *vgCategoryRow1;
	TcxCategoryRow *vgCategoryRow2;
	TcxCategoryRow *vgCategoryRow3;
	TcxEditorRow *rwULogin;
	TcxEditorRow *rwUPassword;
	TcxCategoryRow *vgCategoryRow4;
	TAction *aLoadDol;
	TAction *aLoadAdmin;
	TAction *aLoadUser;
	TPanel *pnlFirmTree;
	TDataSource *dsFirmTree;
	TClientDataSet *cdsFirmTree;
	TAction *aLoadFirmTree;
	TcxDBTreeList *tlFirmTree;
	TcxDBTreeListColumn *clmn_FirmName;
	TcxDBTreeListColumn *clmn_FirmTypeMnemo;
	TcxDBTreeListColumn *clmn_KodFirm;
	TdxStatusBar *dxStatusBar4;
	TAction *aSelect_Firm;
	TPanel *pnlRole;
	TPanel *pnlFunction;
	TAction *aGenPas;
	TcxEditorRow *rwURole;
	TPanel *pnlFunctionAddDel;
	TcxButton *btnAddFunction;
	TcxButton *btnDeetelFunction;
	TAction *aAddFunction;
	TcxDBTreeList *tlRole;
	TcxDBTreeListColumn *cxDBTreeListColumn4;
	TAction *aLoadRole;
	TcxCategoryRow *vgCategoryRow5;
	TcxEditorRow *rwUFirmRole;
	TAction *aSelect_FirmRole;
	TAction *aLoadFirmRole;
	TDataSource *dsFirmTreeRole;
	TClientDataSet *cdsFirmTreeRole;
	TPanel *pnlFirmRole;
	TcxDBTreeList *tlFirmRole;
	TcxDBTreeListColumn *cxDBTreeListColumn7;
	TcxDBTreeListColumn *cxDBTreeListColumn8;
	TcxDBTreeListColumn *cxDBTreeListColumn9;
	TdxStatusBar *dxStatusBar1;
	TAction *aClose;
	TClientDataSet *cdsRole;
	TDataSource *dsRole;
	TAction *aRole;
	TDataSource *dsFunctionTree;
	TClientDataSet *cdsFunctionTree;
	TAction *aLoadFunctionTree;
	TAction *aDeleteFunction;
	TcxGroupBox *gb;
	TcxProgressBar *pb;
	TTimer *tmr;
	TcxGrid *grdFunction;
	TcxGridDBBandedTableView *btvFunction;
	TcxGridDBBandedColumn *btvFunctionColumn1;
	TcxGridDBBandedColumn *btvFunctionColumn2;
	TcxGridDBBandedColumn *clmnCheck;
	TcxGridLevel *lvlFunction;
	TcxGridDBBandedColumn *btvFunctionColumn3;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
	void __fastcall aLoadDolExecute(TObject *Sender);
	void __fastcall aLoadUserExecute(TObject *Sender);
	void __fastcall aLoadFirmTreeExecute(TObject *Sender);
	void __fastcall aSelect_FirmExecute(TObject *Sender);
	void __fastcall tlFirmTreeKeyPress(TObject *Sender, System::WideChar &Key);
	void __fastcall aGenPasExecute(TObject *Sender);
	void __fastcall aAddFunctionExecute(TObject *Sender);
	void __fastcall aLoadRoleExecute(TObject *Sender);
	void __fastcall aSelect_FirmRoleExecute(TObject *Sender);
	void __fastcall tlFirmRoleKeyPress(TObject *Sender, System::WideChar &Key);
	void __fastcall aLoadFirmRoleExecute(TObject *Sender);
	void __fastcall aRoleExecute(TObject *Sender);
	void __fastcall aLoadFunctionTreeExecute(TObject *Sender);
	void __fastcall aDeleteFunctionExecute(TObject *Sender);
	void __fastcall tmrTimer(TObject *Sender);



private:	// User declarations
	int	tmpUserId;
	bool Edit_;
	TParamAdmin* pAdmin;
public:		// User declarations
	__fastcall TfrmAdminUserEdit(TComponent* Owner);

	TModalResult __fastcall Show(TParamAdmin* pAdmin_);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmAdminUserEdit *frmAdminUserEdit;
//---------------------------------------------------------------------------
#endif
