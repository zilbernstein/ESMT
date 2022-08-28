#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"
#pragma hdrstop

#include <memory>
#include "uBinFunction.h"
#include "Utils_JK.h"
#include "config.h"
#include "public.h"
#include "UException.h"
#include "UDMMain.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxSpinEdit"
#pragma link "cxNavigator"
#pragma resource "*.dfm"

TDMMain *DMMain;
UnicodeString WebServiceUrl = "";

AnsiString NoDataTextDefault	= "Данные по Вашему запросу отсутствуют"; // NoDataToDisplayInfoText для гридов (по умолчанию)
AnsiString RefreshText 			= "Выполняется обновление данных .....";  // -//-//- для процесса рефреша
AnsiString ErrorRefreshText 	= "Обновление данных не выполнено";	 	  // -//-//- для невыполненного рефреша
AnsiString TemporaryFolder;
AnsiString SysFolder;
AnsiString TemplateFolder;
AnsiString ProfileFolder;
//---------------------------------------------------------------------------
__fastcall TDMMain::TDMMain(TComponent* Owner)
	: TDataModule(Owner)
{

	// некоторые танцы с бубном для переменной ini-файла isInternet
	/*
	// Перенесено в _OpenDS
	int IsInternet = 0;
	IsInternet = cfg_.ini->ReadInteger("UserOptions", "IsInternet", 1);

	// проверка 1 - интернет, 0 - СПД
	if (IsInternet == 1)
		WebServiceUrl = cfg_.ini->ReadString("ApplicationServers", "WebServiceUrl", "");
	else
		WebServiceUrl = cfg_.ini->ReadString("ApplicationServers", "WebServiceUrl1", "");

	if ( WebServiceUrl == "" )

	{
		MessageBox (NULL, "Неверные настройки сервера приложений в INI-файле. Приложение будет закрыто.", "Ошибка инициализации", MB_ICONSTOP);
		Application->Terminate();

	}
	*/

    TemporaryFolder = ExtractFilePath(Application->ExeName) + "\\Tmp\\";
    SysFolder = ExtractFilePath(Application->ExeName) + "Sys\\";
    TemplateFolder = ExtractFilePath(Application->ExeName) + "Templates\\";
    ProfileFolder  = ExtractFilePath(Application->ExeName) + "Profiles\\";
}
//---------------------------------------------------------------------------

void __fastcall TDMMain::ClearDataSet(TClientDataSet* cds)
{
    /*Закрытие и очистка датасета*/
	try
    {
        if ( cds->Active)
        {
        	cds->EmptyDataSet();
        }

        cds->Close();
        cds->Params->Clear();
        cds->Fields->Clear();
    }
    catch ( Exception &e )
    {
		throw Exception ("< UDMM-1 > : Ошибка закрытия датасета.\n" + e.Message);

	}

}
//---------------------------------------------------------------------------

void __fastcall TDMMain::OpenDS(TClientDataSet* cds, WideString SQLAction, WideString Server, int SQLMode)
{
	// открытие датасета (вызов с клиента)

	WideString vServer = Server;

	try
	{
		if (cfg_.IsInternet == true)
			vServer = "WEB-01";

		_OpenDS(cds, SQLAction, vServer, SQLMode);
	}
	catch ( Exception &e )
	{
		//if ( (e.Message.LowerCase()).Pos("connection with the server could not be established") > 0 )
			//throw Exception ("ВЕРОЯТНО, ОТСУТСТВУЕТ СЕТЕВОЕ ПОДКЛЮЧЕНИЕ! ПОВТОРИТЕ ПОПЫТКУ СНОВА. \n\n" + e.Message);

		if (   (e.Message.LowerCase()).Pos("04068") > 0
			|| (e.Message.LowerCase()).Pos("error reading from socket") > 0
			|| (e.Message.LowerCase()).Pos("connection with the server could not be established") > 0
		   )
		{
			LogEvent("Повторный вызов [" + cds->CommandText + "].");
			_OpenDS(cds, SQLAction, vServer, SQLMode);
		}
		else
		{
			throw Exception(e.Message);
		}
	}

}
//---------------------------------------------------------------------------

void __fastcall TDMMain::_OpenDS(TClientDataSet* cds, WideString SQLAction, WideString Server, int SQLMode)
{
	// внутренни вызов открытия датасета
	TParams *p = cds->Params;

	AnsiString ds;
	AnsiString mmm = cds->CommandText;
	ds.sprintf("[%s - %s] %s\n", (AnsiString)Server, (AnsiString)SQLAction, mmm.UpperCase());

	for ( int i = 0; i < cds->Params->Count; i++ )
	{
		if( i != 0 )
			ds += ", ";
		//name
		TParam* p = cds->Params->Items[i];
		ds += p->Name + " = " + p->Text ;
		if( !p->Text.IsEmpty() )
		ds += " ";

		//paramType
		switch( p->ParamType )
		{
		case ptUnknown      : ds+="[unknown]";break;
		case ptInput        : ds+="[in]"     ;break;
		case ptOutput       : ds+="[out]"    ;break;
		case ptInputOutput  : ds+="[inout]"  ;break;
		case ptResult       : ds+="[result]" ;break;
		default             : ds+="[error]"  ;
		}
	}

	if( cds->Params->Count == 0 )
		ds+" NONE ";
	LogEvent(ds);// + ")\n" );

	int IsInternet = 0;
	IsInternet = cfg_.ini->ReadInteger("UserOptions", "IsInternet", 1);

	// проверка 1 - интернет, 0 - СПД
	if (IsInternet == 1)
		WebServiceUrl = cfg_.ini->ReadString("ApplicationServers", "WebServiceUrl", "");
	else
		WebServiceUrl = cfg_.ini->ReadString("ApplicationServers", "WebServiceUrl1", "");

	if ( WebServiceUrl == "" )
	{
		MessageBox (NULL, "Неверные настройки сервера приложений в INI-файле. Приложение будет закрыто.", "Ошибка инициализации", MB_ICONSTOP);
		Application->Terminate();
	}

	WideString ss = OpenLocalDataSet(cds, WebServiceUrl, SQLAction, Server, SQLMode);

	if (ss != OKResult)
	{
		//LogEvent("dfdkgdfg" + ss);
		throw Exception (ss);
	}
	else
	{
		if (SQLAction == "OPEN")
			LogEvent("      Rows was return: " + IntToStr(cds->RecordCount) );
	}
}
//---------------------------------------------------------------------------

void __fastcall TDMMain::Load_NSI_GRDVW_Universal(TClientDataSet *cds, TDataSource *ds, TcxGridDBBandedTableView *vw)
{
	/*Стандартная загрузка НСИ для компонент с вьюхами (здесь TClientDataSet с подготовленными параметрами) */

	vw->DataController->DataSource = 0;

	TDMMain::OpenDS(cds, "OPEN", "CT", 1);

	vw->DataController->DataSource = ds;
}
//---------------------------------------------------------------------------

void __fastcall TDMMain::Load_NSI_Universal(TClientDataSet *cds, TDataSource *ds, TcxLookupComboBox *cb, WideString CommandTxt )
{
	/*Стандартная загрузка НСИ для комбобоксов (без <IN> параметров)*/

	cb->Properties->ListSource = 0;

	TDMMain::ClearDataSet(cds);

	cds->CommandText = CommandTxt;
	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);

	TDMMain::OpenDS(cds, "OPEN", "CT", 1);

	cb->Properties->ListSource = ds;
}
//---------------------------------------------------------------------------

void __fastcall TDMMain::Load_NSI_Universal_DefValue(TClientDataSet *cds, TDataSource *ds, TcxLookupComboBox *cb, WideString CommandTxt, int &oDefault)
{
	/* Стандартная загрузка НСИ для комбобоксов с курсором и одним OUT параметров для дефолтных значений */

	cb->Properties->ListSource = 0;

	TDMMain::ClearDataSet(cds);

	cds->CommandText = CommandTxt;
	cds->Params->CreateParam(ftCursor, "o_cur", ptInputOutput);
	cds->Params->CreateParam(ftInteger, "o_default", ptInputOutput)->AsInteger = oDefault;

	TDMMain::OpenDS(cds, "OPEN", "CT", 1);

	oDefault = cds->Params->ParamByName("o_default")->AsInteger;

	cb->Properties->ListSource = ds;
}
//---------------------------------------------------------------------------

/*void __fastcall TDMMain::Load_Loc_Running(TClientDataSet *cds, TDataSource *ds, TDateTime dt, StrctSearchLoc* l)
{
	//Загрузка сведений о пробегах

	ClearDataSet(cds);
	AnsiString	vErrMsg = "";
	TDateTime	ts = GetDateTime4Running(dt);

	try
	{
		TDMMain::ClearDataSet(cds);

		cds->CommandText ="LLPA02.SPL3314";

		cds->Params->CreateParam(ftString,"PRIZN_DATE", ptInput)->AsString = "1";
		cds->Params->CreateParam(ftString,"DATE_ZAP", ptInput);
		cds->Params->ParamByName("DATE_ZAP")->Value = FormatDateTime("yyyy-mm-dd-hh.00.00.000000",ts);

		// без детализации по виду тяги и при запросе по конкретной серии
		cds->Params->CreateParam(ftString,"TG", ptInput)->AsString = "*";

		cds->Params->CreateParam(ftString,"DOR_PRIP", ptInput)->AsString  = IntToStr(l->KodRoad);
		cds->Params->CreateParam(ftString,"DEPO_PRIP", ptInput)->AsString = l->NomDepo;
		cds->Params->CreateParam(ftString,"SER_LOC", ptInput)->AsString = l->KodSerOKDL;	// окдл серия
		cds->Params->CreateParam(ftString,"ZNS_LOC", ptInput)->AsString = l->ZnsLoc; // заводской номер без индекса секции: 00001234
		cds->Params->CreateParam(ftString,"PRS_LOC", ptInput)->AsString = l->PrsLoc; // индекс: 01, 00, 02

		cds->Params->CreateParam(ftSmallint,"P1", ptInputOutput)->AsInteger  = 0;
		cds->Params->CreateParam(ftInteger, "P2", ptInputOutput)->AsInteger  = 0;

		OpenDS(cds, "OPEN", "ABD-01", 1);
	}
	catch ( Exception &e )
	{
		switch ( cds->Params->ParamByName("P1")->AsInteger )
		{
			case 4:
				vErrMsg = "<DM-02>: В АСОУП нет данных по пробегам локомотива.\n";
				break;
			case 8:
				vErrMsg = "<DM-03>: Сбой в работе процедуры при обращении к БД АСОУП.\nРекомендуем сделать снимок текущего экрана (PrintScreen) и направить в адрес разработчиков.";
				break;
			case 12:
				vErrMsg = "<DM-04>: Ошибка во входных параметрах.\nРекомендуем сделать снимок текущего экрана (PrintScreen) и направить в адрес разработчиков.";
				break;
			case 16:
				vErrMsg = "<DM-05>: Недостаточно оперативной памяти при обращении к процедуре загрузки пробегов.";
				break;
			default:
				vErrMsg = "<DM-06>: Неклассифицированная ошибка определения пробегов: [" + cds->Params->ParamByName("P1")->AsString + "]\n" + e.Message;
				break;
		}
		vErrMsg = vErrMsg + "\nСлужебная информация: [" +
			cds->Params->ParamByName("DATE_ZAP")->AsString + " - " +
			IntToStr(l->KodRoad) + " - " +
			l->NomDepo + " - " +
			l->KodSerOKDL + " - " +
			l->ZnsLoc + " - " +
			l->PrsLoc + "]\n[P2 = " +
			cds->Params->ParamByName("P2")->AsString + "]";

		//throw Exception (vErrMsg);
		MessageBox(NULL, vErrMsg.c_str(), "Операция прервана", MB_ICONINFORMATION);
	}
}*/
//---------------------------------------------------------------------------

bool __fastcall TDMMain::IsUserFunction(AnsiString value)
{
	// Поиск заданного значения в датасете. Возвращает true, если найдет

	bool Result = cdsUserFunction->Locate("function_code", value, TLocateOptions());
	return Result;
}
//---------------------------------------------------------------------------

bool __fastcall TDMMain::IsStateOperationEnabled(int value)
{
	// Возвращает true, если в текущем ЛР доступен статус state_id (чтобы дизеблить и открывать кнопки)

	bool Result = cdsRSh_NSI_States->Locate("STATE_ID", value, TLocateOptions());
	return Result;
}
//---------------------------------------------------------------------------

Variant __fastcall TDMMain::Get_CDS_Value(TClientDataSet* cds, AnsiString field_name, Variant value, AnsiString result_field)
{
	// Поиск заданного значения в датасете. Возвращает значение поля result_field, если найдет

	Variant Result = "-";
	try
	{
		Result = cds->Lookup(field_name, value, result_field);
	}
	catch ( Exception &e )
	{                   /**/
		throw Exception ("< UDMM-2 > : Ошибка поиска значения датасета [" + cds->Name + "->" + field_name + "]:\n" + e.Message);
	}
	return Result;
}
//---------------------------------------------------------------------------

void __fastcall TDMMain::ShowAppException(int exception_type, AnsiString info_text, AnsiString exception_text)
{
	LogEvent( "ShowAppException TDMMain: " + exception_text );
	//MessageBox(NULL, e->Message.t_str(), "Операция прервана", MB_ICONSTOP);
	std::auto_ptr<TfrmException> expt ( new TfrmException( NULL ) );
	expt->ShowAppException_(exception_type, info_text, exception_text );
}
//---------------------------------------------------------------------------

void __fastcall TDMMain::LogEvenEnterExit(AnsiString EventInOut)
{
	/* Статистика. Событие, входа/выхода */

	std::auto_ptr<TClientDataSet> dsa (new TClientDataSet(NULL));

	try
	{
		dsa->CommandText = "SMT_ADM_PKG.asut_user_stat";
		dsa->Params->CreateParam(ftInteger, "p_id_user",    ptInputOutput)->AsInteger = UserID;
		dsa->Params->CreateParam(ftString,  "p_type_s",     ptInput)->AsString	      = EventInOut;
		dsa->Params->CreateParam(ftLargeint,"p_id_session", ptInput)->AsLargeInt	  = UserSes;
		dsa->Params->CreateParam(ftInteger, "o_Err_Code", ptInputOutput);
		dsa->Params->CreateParam(ftString,  "o_Err_Msg",  ptInputOutput);

		TDMMain::OpenDS(dsa.get(), "EXEC", "CT", 1);

		if (dsa->Params->ParamByName("o_Err_Code")->AsInteger < 0)
			throw Exception (dsa->Params->ParamByName("o_Err_Msg")->AsString);
	}
	catch (Exception &e)
	{
		TDMMain::ShowAppException(AET_EXCEPTION, "< UDMM-3 > : Ошибка сохранения события: "+ EventInOut +"\n", e.Message);
	}
}

//---------------------------------------------------------------------------
bool __fastcall TDMMain::IsFunction(AnsiString code, AnsiString value)
{
	// Поиск заданного значения в датасете. Возвращает true, если найдет

	bool Result = cdsUserRole->Locate(code, value, TLocateOptions());

	return Result;
}
