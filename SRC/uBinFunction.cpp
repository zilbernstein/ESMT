//------------------------------------------------------------------------------
//-- ������ ��� ������ � ServWeb.dll (�������� � ��������� ������ ����� SOAP) --
//-- ���������� ����� ��������� �������, ������� � ������� Handle dll-��      --
//------------------------------------------------------------------------------

#include <vcl.h>
#include <classes.hpp>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>
#include "Log.h"

#include <System.hpp>
//#include <InvokeRegistry.hpp>
#include <XSBuiltIns.hpp>
#include <SOAPHTTPClient.hpp>


#pragma hdrstop

#include "uServWebSOAP.h"
#include "uBinFunction.h"

int TimeOut = 60000;

//---------------------------------------------------------------------------
// ��������������  TClientDataSet  �  TByteDynArray ��� ��������
TByteDynArray __fastcall ClientDataSetToStream (TClientDataSet * ClientDataObj)
{
  TMemoryStream * InMemStream;
  TMemoryStream	* OutMemStream;
  TByteDynArray	  ByteDynArray;

  ByteDynArray.set_length(0);
  try
  {
	InMemStream   =  new TMemoryStream();
	OutMemStream  =  new TMemoryStream();

	InMemStream->WriteComponent(ClientDataObj);
	InMemStream->Seek(0, soFromBeginning);
	ObjectBinaryToText(InMemStream,OutMemStream);
	OutMemStream->Seek(0, soFromBeginning);

	ByteDynArray.set_length(OutMemStream->Size);

	OutMemStream->ReadBuffer((void*)&ByteDynArray[0],OutMemStream->Size);

  }
  __finally
  {
	if (InMemStream)
		delete InMemStream;

	if  (OutMemStream)
		delete  OutMemStream;
  };//try

  return ByteDynArray;
};

// ��������������  TByteDynArray � TClientDataSet  ����� ��������� ������ �� ������� �� SOAP
void __fastcall ClientDataSetFromStream (TClientDataSet * ClientDataSet, TByteDynArray BinObjStream)
{
 TStringStream * strBinStream;
 TMemoryStream * outObjStream;
 TStringStream * strTextStream;

  try
  {
	if (BinObjStream.get_length() != 0)
	{
	  RegisterClasses(&__classid(TADTField),0);
	  RegisterClasses(&__classid(TDateField),0);
	  RegisterClasses(&__classid(TReferenceField),0);
	  RegisterClasses(&__classid(TAggregateField),0);
	  RegisterClasses(&__classid(TDateTimeField),0);
	  RegisterClasses(&__classid(TSmallintField),0);
	  RegisterClasses(&__classid(TArrayField),0);
	  RegisterClasses(&__classid(TFloatField),0);
//	  RegisterClasses(&__classid(TSQLTimeStampField),0);
	  RegisterClasses(&__classid(TAutoIncField),0);
//	  RegisterClasses(&__classid(TFMTBCDField),0);
	  RegisterClasses(&__classid(TStringField),0);
	  RegisterClasses(&__classid(TBCDField),0);
	  RegisterClasses(&__classid(TGraphicField),0);
	  RegisterClasses(&__classid(TTimeField),0);
	  RegisterClasses(&__classid(TBinaryField),0);
	  RegisterClasses(&__classid(TGuidField),0);
	  RegisterClasses(&__classid(TVarBytesField),0);
	  RegisterClasses(&__classid(TBlobField),0);
	  RegisterClasses(&__classid(TIDispatchField),0);
	  RegisterClasses(&__classid(TVariantField),0);
	  RegisterClasses(&__classid(TBooleanField),0);
	  RegisterClasses(&__classid(TIntegerField),0);
	  RegisterClasses(&__classid(TWideStringField),0);
	  RegisterClasses(&__classid(TBytesField),0);
	  RegisterClasses(&__classid(TInterfaceField),0);
	  RegisterClasses(&__classid(TWordField),0);
	  RegisterClasses(&__classid(TCurrencyField),0);
	  RegisterClasses(&__classid(TLargeintField),0);
	  RegisterClasses(&__classid(TDataSetField),0);
	  RegisterClasses(&__classid(TMemoField),0);

	  strBinStream  = new TStringStream();
	  outObjStream  = new TMemoryStream();

	  strBinStream->Seek(0, soFromBeginning);
	  strBinStream->Size  = BinObjStream.get_length();

	  strBinStream->WriteBuffer((void*)&BinObjStream[0],BinObjStream.get_length());

	  strTextStream  = new TStringStream(strBinStream->DataString);

	  ObjectTextToBinary(strTextStream,outObjStream);
	  outObjStream->Seek(0, soFromBeginning);

	  outObjStream->ReadComponent(ClientDataSet);

	}//if
  }
  __finally
  {
	if (strBinStream)
		delete strBinStream;

	if  (outObjStream)
		delete  outObjStream;

	if  (strTextStream)
		delete  strTextStream;

  };//try
};

// ��������������  TByteDynArray � TClientDataSet.Data (OleVariant) ����� ��������� ������ �� SOAP
OleVariant __fastcall DataFromStream(TByteDynArray BinDataArray)
{
   TClientDataSet * CDS;
   TMemoryStream  * mstrBinData;

   try
   {
	  CDS = new TClientDataSet(NULL);
	  // ������ ������� � MemoryStream
	  mstrBinData  = new TMemoryStream();
	  mstrBinData->Seek(0, soFromBeginning);
	  mstrBinData->SetSize(BinDataArray.get_length());
	  mstrBinData->WriteBuffer((void*)&BinDataArray[0],BinDataArray.get_length());
	  mstrBinData->Seek(0, soFromBeginning);
	  // �������� MemoryStream � ClientDataSet
	  CDS->LoadFromStream(mstrBinData);

	  return CDS->Data;
   }
   __finally
   {
	if (CDS)
	{
	   delete CDS;
	}

	if  (mstrBinData)
		delete mstrBinData;
   };//try
};

void CallWebServiceBin(_TConfig * Config, _TReq * Req, _TRespObj * RespObj, _TRespData * RespData, _TResultStruct * ResultStruct)
{
  _di_DataService  DataServ;

  Request      * pReq      = NULL;
  ResponseObj  * pRespObj  = NULL;
  ResponseData * pRespData = NULL;
  TMemoryStream  * mstrInBinObj  = NULL;
  TMemoryStream  * mstrOutBinObj = NULL;
  TMemoryStream  * mstrOutBinData= NULL;

  try
  {

	CoInitialize(NULL);

	try
	{
	   TimeOut =  Config->TimeOut;

	   InvRegistry()->RegisterInterface(__delphirtti(DataService), L"urn:ASUTTService", L"UTF-8");

	   DataServ = GetDataService(False,Config->WebServiceUrl,NULL);

	   if  (DataServ)
	   {

		 pReq  = new Request();

		 // ����� ���������
		 pReq->Req_Server    = Config->Server;    //  'CT';
		 pReq->Req_Command   = Config->SQLAction; //  'OPEN';
		 pReq->Req_Compress  = false;			  //  Config->Compress;
		 try
		 {
			  // ������ ������� ������� � MemoryStream
			  mstrInBinObj  = new TMemoryStream();
			  mstrInBinObj->Seek(0, soFromBeginning);
			  mstrInBinObj->SetSize(Req->ObjBIN.get_length());
			  mstrInBinObj->WriteBuffer((void*)&Req->ObjBIN[0],Req->ObjBIN.get_length());
			  mstrInBinObj->Seek(0, soFromBeginning);
			  pReq->Req_ObjBIN.set_length(mstrInBinObj->Size);
			  mstrInBinObj->ReadBuffer((void*)&pReq->Req_ObjBIN[0],mstrInBinObj->Size);
		 }
		 __finally
		 {
			if (mstrInBinObj)
			  delete mstrInBinObj;
		 }


		 pRespObj = new ResponseObj();
		 pRespObj->Resp_ObjBIN.set_length(0);

		 pRespData = new ResponseData();
		 pRespData->Resp_DataBIN.set_length(0);

		 // ����� �������
		 if (Config->SQLMode == 0) // "SQL"
		 {
			 // ����� ������� � SQL-��������
			 DataServ->ExecSqlBIN(pReq,pRespObj,pRespData);
		 }
		 else
		 {
			 // ����� ������� � ����������
			DataServ->GetDataBIN(pReq,pRespObj,pRespData);
		 }

		 if (pRespObj->Resp_ObjBIN.get_length()!=0)
		 {
		  try
		  {

			  // ������ ������� ������� � MemoryStream
			  mstrOutBinObj  = new TMemoryStream();
			  mstrOutBinObj->Seek(0, soFromBeginning);
			  mstrOutBinObj->SetSize(pRespObj->Resp_ObjBIN.get_length());
			  mstrOutBinObj->WriteBuffer((void*)&pRespObj->Resp_ObjBIN[0],pRespObj->Resp_ObjBIN.get_length());
			  mstrOutBinObj->Seek(0, soFromBeginning);
			  RespObj->ObjBIN.set_length(mstrOutBinObj->Size);
			  mstrOutBinObj->ReadBuffer((void*)&RespObj->ObjBIN[0],mstrOutBinObj->Size);

			  // ������ ������ �� ������� � MemoryStream
			  if ( pRespData != NULL && pRespData->Resp_DataBIN.get_length()!=0 )
			  {
				  mstrOutBinData  = new TMemoryStream();
				  mstrOutBinData->Seek(0, soFromBeginning);
				  mstrOutBinData->SetSize(pRespData->Resp_DataBIN.get_length());
				  mstrOutBinData->WriteBuffer((void*)&pRespData->Resp_DataBIN[0],pRespData->Resp_DataBIN.get_length());
				  mstrOutBinData->Seek(0, soFromBeginning);
				  RespData->DataBIN.set_length(mstrOutBinData->Size);
				  mstrOutBinData->ReadBuffer((void*)&RespData->DataBIN[0],mstrOutBinData->Size);
			  }
		  }
		  __finally
		  {
			if (mstrOutBinObj)
			  delete mstrOutBinObj;

			if (mstrOutBinData)
			  delete mstrOutBinData;

		  }
		 };//if pRespObj->Resp_ObjBIN.get_length()!=0)

		 //����� ������
		 ResultStruct->Code			= pRespObj->Resp_Code;
		 ResultStruct->Message  	= pRespObj->Resp_Message;

	   };//if
	}
	catch ( Exception &e )
	{
		// TODO - ���������� ���������� ����������
		 ResultStruct->Code			= 4;
		 ResultStruct->Message  	= "������ ������ ������� <CallWebServiceBin>\n" + e.Message;
	};
  }
  __finally
  {

	if (pReq)
	  delete pReq;

	if (pRespObj)
	  delete pRespObj;

	if (pRespData)
	  delete pRespData;

	 CoUninitialize;

  };
}

WideString __fastcall OpenLocalDataSet(TClientDataSet * ClientDataSet, WideString WebServiceUrl, WideString SQLAction, WideString Server, int SQLMode)
{
  _TConfig 	  *      lpConfig       = NULL;
  _TResultStruct  *      lpResultStruct = NULL;
  _TReq           *      lpReq          = NULL;
  _TRespObj       *      lpRespObj      = NULL;
  _TRespData      *      lpRespData     = NULL;
  TClientDataSet  *      CDS            = NULL;

  try
  {
	Screen->Cursor = crSQLWait;
		int Res; // ���������� ���������� ���������� 0 - �� / 1 � �.�. - ������

		// ��������� ��� ���������� ������ SOAP �������
		lpConfig       		      = new TConfig();
		// ������� ��� SOAP ������� � �������������
		// (��� �������� ��� �������� ���������� �� 2)
		// (��� �������� ������ ��� �������� ���������� �� 5)
		lpConfig->TimeOut             = TimeOut;
		// URL - ��� �������
		lpConfig->WebServiceUrl       = WebServiceUrl;

		// URL - namespace ��� �������
		lpConfig->WebServiceNameSpace = "";

		// ������ T ��� CT
		lpConfig->Server              = Server;
		// ������� OPEN ��� EXEC
		lpConfig->SQLAction           = SQLAction;

		// ����� ���������� ������� 0 - Query/ 1 - StoreProcedure
		lpConfig->SQLMode             = SQLMode;

		// ��������� ��� �������
		lpReq                         = new TReq();
		// ����������  ClientDataSet � ������ ���� TByteDynArray �
		// ���������� ��� � ������� ObjBIN ��������� lpReq
		lpReq->ObjBIN                 = ClientDataSetToStream(ClientDataSet);

		// ��������� ��� ������ (���������� ��� ������)
		lpRespObj  = new TRespObj();
		lpRespObj->ObjBIN.set_length(0);

		// ��������� ��� ������ (���������� ������)
		lpRespData  = new TRespData();
		lpRespData->DataBIN.set_length(0);


		// ��������� ��� ���������� ������ ���-������� (���������� ��� ������ � ��������� �� ������)
		lpResultStruct = new TResultStruct();
		lpResultStruct->Code    = -1;
		lpResultStruct->Message = "";

		// ����� �������
		 CallWebServiceBin(lpConfig,lpReq,lpRespObj,lpRespData,lpResultStruct);

		if (lpRespObj->ObjBIN.get_length()!=0)
		{

		  CDS  = (new TClientDataSet(NULL));

		  ClientDataSetFromStream(CDS, lpRespObj->ObjBIN);

		  // ��������� ���������� ������� �� ������� ���� TByteDynArray
		  ClientDataSet->Params->Assign(CDS->Params);
		  // ��������� �������� ���������� ������� �� ������� ���� TByteDynArray
		  ClientDataSet->Params->AssignValues(CDS->Params);

		  if (lpRespData->DataBIN.get_length()!=0)
			// �������� ������ �� ������� ���� TByteDynArray (lpRespData->DataBIN)
			ClientDataSet->Data = DataFromStream(lpRespData->DataBIN);
		}

		return lpResultStruct->Message;
  }
  __finally
  {
	Screen->Cursor = crDefault;

	if (lpConfig)
		  delete lpConfig;

	if (lpReq)
		{
	  &lpReq->ObjBIN = NULL;
	  delete lpReq;
		}
	if (lpRespObj)
		{
		  &lpRespObj->ObjBIN = NULL;
	  delete lpRespObj;
		}

	if (lpRespData)
		{
		  &lpRespData->DataBIN = NULL;
	  delete lpRespData;
		}

	if (lpResultStruct)
	  delete lpResultStruct;

	if (CDS)
	  delete CDS;
  };//try
};

#pragma package(smart_init)
