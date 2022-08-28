//---------------------------------------------------------------------------

#ifndef UEdit_TemplateH
#define UEdit_TemplateH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxButtons.hpp"
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxGridBandedTableView.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxStyles.hpp"
#include "cxTL.hpp"
#include "cxVGrid.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Menus.hpp>
#include "cxImageComboBox.hpp"
//---------------------------------------------------------------------------
struct StrctEditTemplate
{
	int id;
	int type;
	int state_id;
	AnsiString  template_name;
	AnsiString  file_name;
	TStringList *Template;
};
//---------------------------------------------------------------------------
class TfrmEdit_Template : public TForm
{
__published: // IDE-managed Components
	TcxVerticalGrid *vg;
	TPanel *Panel5;
	TcxButton *cxButton6;
	TcxButton *cxButton7;
	TActionList *alAction;
	TAction *aSave;
	TAction *aCancel;
	TAction *aSelectFile;
	TAction *aLoadFileExtension;
	TTimer *tmr;
	TOpenDialog *dlgOpen;
	TcxCategoryRow *vgCategoryRow1;
	TcxEditorRow *rwTemplateName;
	TcxEditorRow *rwTemplateType;
	void __fastcall tmrTimer(TObject *Sender);
	void __fastcall aSaveExecute(TObject *Sender);
	void __fastcall aCancelExecute(TObject *Sender);
private: 	 // User declarations
	StrctEditTemplate *tep_;
public:  	 // User declarations
	__fastcall TfrmEdit_Template(TComponent* Owner);
	TModalResult __fastcall Show(StrctEditTemplate* ep);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmEdit_Template *frmEdit_Template;
//---------------------------------------------------------------------------
#endif
