//---------------------------------------------------------------------------

#ifndef uExportThreadH
#define uExportThreadH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
//---------------------------------------------------------------------------
class ExportThread : public TThread
{
private:
protected:
	void __fastcall Execute();
public:
	__fastcall ExportThread(bool CreateSuspended);
};
//---------------------------------------------------------------------------
#endif
