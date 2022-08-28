/*
	Author  : ������� ����
	Created : 04.10.2009
	Purpose : ���� ��
*/

#ifndef PUBLIC_H
#define PUBLIC_H

class TDeadException : public Exception
{
public:
	__fastcall TDeadException(AnsiString msg) : Exception(msg)
    {
    	Message = msg;
    }
};

class TMyException : public Exception
{
public:
	int IconType;
    int MaxTransparency;

	__fastcall TMyException(AnsiString msg, int it, int mt) : Exception(msg)
    {
    	Message			= msg;
        IconType		= it;
        MaxTransparency	= mt;
    }
};

// ���� �������������� ��������
enum AppExceptionTypes { AET_EXCEPTION, AET_WARNING, AET_INFO, AET_RESTRICTION };

extern config cfg_;
extern int DepotID;
extern AnsiString DepotName;
extern int UserID;
extern long long UserSes;
extern AnsiString UserName;

extern AnsiString NoDataTextDefault;
extern AnsiString RefreshText;
extern AnsiString ErrorRefreshText;
extern AnsiString TemporaryFolder;
extern AnsiString SysFolder;
extern AnsiString TemplateFolder;
extern AnsiString ProfileFolder;

const AnsiString CTServerName 	= "ServTP.RMServCT";
const AnsiString TServerName 	= "ServTP.RMServT";

const AnsiString DefaultIP		= "127.0.0.1";

// ��������� ��������
const int stateNew 			 = 3;
const int stateInWork 		 = 4;
const int stateStorage 		 = 5;
const int statePause 		 = 6;
const int stateWorkaround	 = 7;
const int stateEscalation	 = 8;
const int stateResolved		 = 9;
const int stateClose 		 = 10;

const int statePauseNew 	 = 241;
const int stateEscalationNew = 242;
const int stateResolvedNew	 = 254;

// ��������� ����� ��������
const int closersnWasNotConfirmed	= 149; // �� ������������
const int closersnNotExecutable		= 150; // ��� �������
const int closersnDecide			= 247; // �����

// ��������� ��� Action �������� / �������� �����
const int isWindowOpen		= 0;
const int isWindowClose		= 1;

// ��������� �� ����
const int dbException = -1;
const int dbWarning = -2;

// ������� ����� - ���������
const int reasonEscalation = 119;

// ��������� ���������
const int chbChecked   = 1;
const int chbUnChecked = 0;

// ��������� ����� ��������
const int tIncidents = 1;
const int tLocPark   = 2;
const int tDepoenter = 3;

// ������� ��������
const int stateNewTpl           = 0;
const int stateConsiderationTpl = 1;
const int statePublishTpl       = 2;
const int stateSourceTpl        = 3;

// ��������� ���������
const int catNRE	= 83;


/*struct _chng
{
    bool 	IsInternet;
    int		DepotID;
};
chng* _chng;
*/

#endif
