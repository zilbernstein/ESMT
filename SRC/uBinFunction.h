//---------------------------------------------------------------------------

#ifndef uBinFunctionH
#define uBinFunctionH

const WideString OKResult = "OK";
struct _TConfig;

typedef struct _TConfig
{
  int    	    TimeOut;
  WideString    DebugKey;
  WideString    Server;
  WideString    SQLAction;
  int		    SQLMode;
  WideString    WebServiceUrl;
  WideString    WebServiceNameSpace;
  TByteDynArray ObjBIN;
  bool          Compress;
} TConfig;

struct _TResultStruct;

typedef struct _TResultStruct
{
  int        Code;
  WideString Message;
} TResultStruct;


struct _TReq;

typedef struct _TReq
{
  TByteDynArray ObjBIN;
} TReq;

struct _TRespObj;

typedef struct _TRespObj
{
  TByteDynArray ObjBIN;
} TRespObj;

struct _TRespData;

typedef struct _TRespData
{
  TByteDynArray DataBIN;
} TRespData;

extern int TimeOut;

	// процедуры для работы с TClientDataSet, TByteDynArray
	void __fastcall ClientDataSetFromStream (TClientDataSet * ClientDataSet, TByteDynArray BinObjStream);
	TByteDynArray 		__fastcall ClientDataSetToStream (TClientDataSet * ClientDataObj);
	OleVariant 		__fastcall DataFromStream(TByteDynArray BinDataArray);

	// вызов получение данных через SOAP
	WideString __fastcall OpenLocalDataSet(TClientDataSet * ClientDataSet, WideString WebServiceUrl, WideString SQLAction, WideString Server, int SQLMode);

//---------------------------------------------------------------------------
#endif
