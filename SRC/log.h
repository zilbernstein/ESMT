//
// ----------------------------------------------------------------------------
// "THE BEER-WARE LICENSE":
// <dchag@irk.esrr.ru> wrote this file.  As long as you retain this notice you
// can do whatever you want with this stuff. If we meet some day, and you think
// this stuff is worth it, you can buy me a beer in return.   Dmitry Chagin.
// ----------------------------------------------------------------------------
//
// '$Id: log.h,v 1.1.1.1 2004/02/27 02:39:25 chd Exp $'
//

#include <vcl.h>

#ifndef MFE_LOG_H_
#define MFE_LOG_H_


//
// Запись информации в лог журнал
//
void __stdcall LogEvent(AnsiString Message);

#endif // MFE_LOG_H_

