// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:9900/SOAP
//  >Import : http://localhost:9900/SOAP>0
// Encoding : UTF-8
// Version  : 1.0
// (08.06.2010 12:48:31 - - $Rev: 16699 $)
// ************************************************************************ //

#ifndef   uServWebSOAPH
#define   uServWebSOAPH

/*#include <System.hpp>
#include <InvokeRegistry.hpp>
#include <XSBuiltIns.hpp>
#include <SOAPHTTPClient.hpp>
*/

#if !defined(SOAP_REMOTABLE_CLASS)
#define SOAP_REMOTABLE_CLASS __declspec(delphiclass)
#endif

namespace NS_SOAP {

// ************************************************************************ //
// The following types, referred to in the WSDL document are not being represented
// in this file. They are either aliases[@] of other types represented or were referred
// to but never[!] declared in the document. The types from the latter category
// typically map to predefined/known XML or Borland types; however, they could also 
// indicate incorrect WSDL documents that failed to declare or import a schema type.
// ************************************************************************ //
// !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
// !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
// !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
// !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]

class SOAP_REMOTABLE_CLASS Request;
class SOAP_REMOTABLE_CLASS ResponseObj;
class SOAP_REMOTABLE_CLASS ResponseData;
class SOAP_REMOTABLE_CLASS RequestData;



// ************************************************************************ //
// XML       : Request, global, <complexType>
// Namespace : urn:ASUTTService
// ************************************************************************ //
class Request : public TRemotable {
private:
  UnicodeString   FReq_Command;
  UnicodeString   FReq_Server;
  TByteDynArray   FReq_ObjBIN;
  bool            FReq_Compress;
__published:
  __property UnicodeString Req_Command = { read=FReq_Command, write=FReq_Command };
  __property UnicodeString Req_Server = { read=FReq_Server, write=FReq_Server };
  __property TByteDynArray Req_ObjBIN = { read=FReq_ObjBIN, write=FReq_ObjBIN };
  __property bool       Req_Compress = { read=FReq_Compress, write=FReq_Compress };
};




// ************************************************************************ //
// XML       : ResponseObj, global, <complexType>
// Namespace : urn:ASUTTService
// ************************************************************************ //
class ResponseObj : public TRemotable {
private:
  int             FResp_Code;
  UnicodeString   FResp_Message;
  TByteDynArray   FResp_ObjBIN;
__published:
  __property int         Resp_Code = { read=FResp_Code, write=FResp_Code };
  __property UnicodeString Resp_Message = { read=FResp_Message, write=FResp_Message };
  __property TByteDynArray Resp_ObjBIN = { read=FResp_ObjBIN, write=FResp_ObjBIN };
};




// ************************************************************************ //
// XML       : ResponseData, global, <complexType>
// Namespace : urn:ASUTTService
// ************************************************************************ //
class ResponseData : public TRemotable {
private:
  TByteDynArray   FResp_DataBIN;
__published:
  __property TByteDynArray Resp_DataBIN = { read=FResp_DataBIN, write=FResp_DataBIN };
};




// ************************************************************************ //
// XML       : RequestData, global, <complexType>
// Namespace : urn:ASUTTService
// ************************************************************************ //
class RequestData : public TRemotable {
private:
  TByteDynArray   FReq_DataBIN;
__published:
  __property TByteDynArray Req_DataBIN = { read=FReq_DataBIN, write=FReq_DataBIN };
};



// ************************************************************************ //
// Namespace : urn:ASUTTService
// soapAction: urn:uDataService-DataService#%operationName%
// transport : http://schemas.xmlsoap.org/soap/http
// style     : rpc
// binding   : DataServiceBinding
// service   : DataService
// port      : DataServicePort
// URL       : http://localhost:9900/SOAP?service=DataService
// ************************************************************************ //
__interface INTERFACE_UUID("{97F36B5A-95A8-12B0-A90B-7EBD0811A902}") DataService : public IInvokable
{
public:
  virtual void            ExecSqlBIN(const Request* pReq, ResponseObj*& pRespObj, ResponseData*& pRespData) = 0; 
  virtual void            GetDataBIN(const Request* pReq, ResponseObj*& pRespObj, ResponseData*& pRespData) = 0; 
  virtual ResponseObj*    SetRPLDataBIN(const Request* pReq, const RequestData* pReqData) = 0; 
  virtual ResponseObj*    GetRPLDataBIN(const Request* pReq) = 0; 
};
typedef DelphiInterface<DataService> _di_DataService;

_di_DataService GetDataService(bool useWSDL=false, AnsiString addr="", THTTPRIO* HTTPRIO=0);


};     // NS_SOAP

#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using  namespace NS_SOAP;
#endif



#endif // SOAPH
