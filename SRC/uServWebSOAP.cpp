// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:9900/SOAP
//  >Import : http://localhost:9900/SOAP>0
// Encoding : UTF-8
// Version  : 1.0
// (08.06.2010 12:48:31 - - $Rev: 16699 $)
// ************************************************************************ //

#include <vcl.h>
#include <DB.hpp>
#include <DBClient.hpp>
#include <InvokeRegistry.hpp>

#include <System.hpp>
#include <XSBuiltIns.hpp>
#include <SOAPHTTPClient.hpp>
#pragma hdrstop

#if !defined(SOAPH)
#include "uServWebSOAP.h"
#include "uBinFunction.h"
#endif


namespace NS_SOAP {

_di_DataService GetDataService(bool useWSDL, AnsiString addr, THTTPRIO* HTTPRIO)
{
	static const char* defWSDL= "http://localhost:9900/SOAP";
	static const char* defURL = "http://localhost:9900/SOAP?service=DataService";
	static const char* defSvc = "DataService";
	static const char* defPrt = "DataServicePort";
	if (addr=="")
	addr = useWSDL ? defWSDL : defURL;
	THTTPRIO* rio = HTTPRIO ? HTTPRIO : new THTTPRIO(0);
	if (useWSDL) {
		rio->WSDLLocation = addr;
		rio->Service = defSvc;
		rio->Port = defPrt;
	} else {
		rio->URL = addr;
	}

	rio->HTTPWebNode->UseUTF8InHeader = false;
	rio->HTTPWebNode->SendTimeout     = TimeOut * 2;
	rio->HTTPWebNode->ReceiveTimeout  = TimeOut * 5;
	rio->HTTPWebNode->InvokeOptions   = TSOAPInvokeOptions(soIgnoreInvalidCerts);
	rio->Converter->Options           = rio->Converter->Options<<soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soDocument, soLiteralParams, soUTF8EncodeXML;


	_di_DataService service;
	rio->QueryInterface(service);
	if (!service && !HTTPRIO)
	delete rio;
	return service;
}


// ************************************************************************ //
// This routine registers the interfaces and types exposed by the WebService.
// ************************************************************************ //
static void RegTypes()
{
	/* DataService */
	InvRegistry()->RegisterInterface(__delphirtti(DataService), L"urn:ASUTTService", L"UTF-8");
	InvRegistry()->RegisterDefaultSOAPAction(__delphirtti(DataService), L"urn:uDataService-DataService#%operationName%");
	/* Request */
	RemClassRegistry()->RegisterXSClass(__classid(Request), L"urn:ASUTTService", L"Request");
	/* ResponseObj */
	RemClassRegistry()->RegisterXSClass(__classid(ResponseObj), L"urn:ASUTTService", L"ResponseObj");
	/* ResponseData */
	RemClassRegistry()->RegisterXSClass(__classid(ResponseData), L"urn:ASUTTService", L"ResponseData");
	/* RequestData */
	RemClassRegistry()->RegisterXSClass(__classid(RequestData), L"urn:ASUTTService", L"RequestData");
}
#pragma startup RegTypes 32

};     // NS_SOAP

