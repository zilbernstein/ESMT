/*
	Author  : Климова Юлия
	Created : 04.10.2009
	Purpose : ЕАСУ ДТ
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

// Типы исключительных ситуаций
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

// константы статусов
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

// константы кодов закрытия
const int closersnWasNotConfirmed	= 149; // Не подтвердился
const int closersnNotExecutable		= 150; // Нет решения
const int closersnDecide			= 247; // Решен

// константы для Action открытия / закрытия формы
const int isWindowOpen		= 0;
const int isWindowClose		= 1;

// экспешены из базы
const int dbException = -1;
const int dbWarning = -2;

// причина паузы - эскалация
const int reasonEscalation = 119;

// константы чекбоксов
const int chbChecked   = 1;
const int chbUnChecked = 0;

// константы типов шаблонов
const int tIncidents = 1;
const int tLocPark   = 2;
const int tDepoenter = 3;

// статусы шаблонов
const int stateNewTpl           = 0;
const int stateConsiderationTpl = 1;
const int statePublishTpl       = 2;
const int stateSourceTpl        = 3;

// константы категорий
const int catNRE	= 83;


/*struct _chng
{
    bool 	IsInternet;
    int		DepotID;
};
chng* _chng;
*/

#endif
