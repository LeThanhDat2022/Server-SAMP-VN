#define SERVER_GM_TEXT "[SAMP-RP]Version 1.0"

#include <a_samp>
#include <a_mysql>
#include <streamer>
#include <yom_buttons>
#include <ZCMD>
#include <keypad>
#include <sscanf2>
#include <foreach>
#include <YSI\y_timers>
#include <YSI\y_utils>
#include <YSI\y_ini>
#include <progress2>
#include <progress>
#include <SimpleINI>

#if defined SOCKET_ENABLED

#include <socket>

#endif
#include "./core/main.pwn"
#include "./weapon/toglichsu.pwn"
#include "./System/Bitcoin.pwn"

main() {}

public OnGameModeInit()
{
	print("Chuong trinh may chu dang duoc khoi dong, vui long cho doi....");
	g_mysql_Init();
	return 1;
}

public OnGameModeExit()
{
    g_mysql_Exit();
	return 1;
}
