//---------------------------------------------------------------------------

#ifndef UVersionH
#define UVersionH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxEdit.hpp"
#include "cxGraphics.hpp"
#include "cxInplaceContainer.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxStyles.hpp"
#include "cxVGrid.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinsCore.hpp"

//---------------------------------------------------------------------------
class TfrmVersion : public TForm
{
__published:	// IDE-managed Components
	TcxVerticalGrid *cxVerticalGrid1;
	TcxCategoryRow *cxVerticalGrid1CategoryRow5;
	TcxEditorRow *cxVerticalGrid1EditorRow8;
private:	// User declarations
public:		// User declarations
	__fastcall TfrmVersion(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmVersion *frmVersion;
//---------------------------------------------------------------------------
#endif
