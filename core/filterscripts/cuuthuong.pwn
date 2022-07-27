/*=====================================Bleeding System===========================================
======================================Credits to Sunehildeep.====================================*/
//===========================================Includes=================================================

#include 		<a_samp>
#include        <zcmd>
#include 		<YSI\y_ini>
//=========================================Enum=========================================

enum BleedInfo
{
	Bleeding,
	pFirstaid
};

//==========================================New================================================

new FirstSpawn[MAX_PLAYERS];
new DecreaserLock[MAX_PLAYERS];
new decreaser[MAX_PLAYERS];
new bInfo[MAX_PLAYERS][BleedInfo];

//==========================================Defines============================================

#define Path 								"Bleed/%s.ini"
#define COLOR_YELLOW 						0xFFFF00FF
#define COLOR_GREY 							0xAFAFAFFF
//===========================================Forwards===========================================

forward DecreaseHealth(playerid);
forward LoadBleed_data(playerid, name[], value[]);
forward firstaid5(playerid);
forward firstaidexpire(playerid);

//========================================================================================

SaveMed(playerid)
{
	new string[120],Name[24];
	GetPlayerName(playerid, Name, sizeof(Name));
	format(string,sizeof(string),Path,Name);
	new INI:File = INI_Open(string);
	INI_WriteInt(File,"Bleeding",bInfo[playerid][Bleeding]);
	INI_WriteInt(File,"Firtaidkits",bInfo[playerid][pFirstaid]);
	INI_Close(File);
}

//===============================Public Functions===================================

public LoadBleed_data(playerid, name[], value[])
{
	INI_Int("Bleeding",bInfo[playerid][Bleeding]);
	INI_Int("Firtaidkits",bInfo[playerid][pFirstaid]);
	return 1;
}

public OnFilterScriptInit()
{

	print("\n--------------------------------------");
	print(" Bleeding System by Sunehildeep Loaded.");
	print("--------------------------------------\n");
	Create3DTextLabel("Type /buyfirstaid to buy a firt aid kit", 0x008080FF, 1171.75903, -1319.67737, 14.52226, 0, 0);
	return 1;
}


public OnPlayerConnect(playerid)
{
	bInfo[playerid][pFirstaid] = 0;
	bInfo[playerid][Bleeding] = 0;
	DecreaserLock[playerid] = 0;
	FirstSpawn[playerid] = 1;
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	SaveMed(playerid);
	return 1;
}

public OnPlayerSpawn(playerid)
{
	if(FirstSpawn[playerid] == 1)
	{
		new string[120],Name[24];
		GetPlayerName(playerid, Name, sizeof(Name));
		format(string,sizeof(string),Path,Name);
		FirstSpawn[playerid] = 0;
		if(fexist(string))
		{
	    	INI_ParseFile(string, "LoadBleed_%s", .bExtra = true, .extra = playerid);
	    	if(bInfo[playerid][Bleeding] == 1)
			{
		    SendClientMessage(playerid, COLOR_YELLOW, "(!) You are bleeding. Get a firtaid kit to heal yourself or you will die.");
	    	SendClientMessage(playerid,COLOR_GREY,"Your health will decrease by 10 per minute");
			decreaser[playerid] = SetTimerEx("DecreaseHealth", 60000, true, "i", playerid);
			DecreaserLock[playerid] = 1;
			}
		}
	}
	return 1;
}

public firstaid5(playerid)
{
	if(GetPVarInt(playerid, "usingfirstaid") == 1)
 	{
		new Float:health;
		GetPlayerHealth(playerid, health);
		if(health < 100.0)
		{
		    if((health+5.0) <= 100.0)
		    {
 				SetPlayerHealth(playerid, health+5.0);
			}
		}
	}
}

public firstaidexpire(playerid)
{
	SendClientMessage(playerid, COLOR_GREY, "Your first aid kit no longer takes effect.");
 	KillTimer(GetPVarInt(playerid, "firstaid5"));
  	SetPVarInt(playerid, "usingfirstaid", 0);
}

public DecreaseHealth(playerid)
{
    new Float:hp;
    GetPlayerHealth(playerid, hp);
	SetPlayerHealth(playerid, hp - 10.0);
	ApplyAnimation(playerid, "PED", "FLOOR_hit_f", 4.0, 0, 1, 1, 0, 2000, 1);
	return 1;
}


public OnPlayerDeath(playerid, killerid, reason)
{
	KillTimer(GetPVarInt(playerid, "firstaid5"));
  	DeletePVar(playerid, "usingfirstaid");
    KillTimer(decreaser[playerid]);
    return 1;
}


public OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid, bodypart)
{
	if(DecreaserLock[playerid] == 0 && amount >= 5 && issuerid != INVALID_PLAYER_ID)
	{
	    SendClientMessage(playerid, COLOR_YELLOW, "(!) You are bleeding. Get a firtaid kit to heal yourself or you will die.");
	    SendClientMessage(playerid,COLOR_GREY,"Your health will decrease by 10 every 30 second.");
	    decreaser[playerid] = SetTimerEx("DecreaseHealth", 30000, true, "i", playerid);
	    DecreaserLock[playerid] = 1;
	    bInfo[playerid][Bleeding] = 1;
    }
    return 1;
}

CMD:sudungtuicuuthuong(playerid, params[])
{
	if(bInfo[playerid][pFirstaid] > 0)
	{
		if(GetPVarInt(playerid, "usingfirstaid") == 0)
		{
		    if(bInfo[playerid][Bleeding] == 1)
		    {
				bInfo[playerid][Bleeding] = 0;
				DecreaserLock[playerid] = 0;
				KillTimer(decreaser[playerid]);
				bInfo[playerid][pFirstaid]--;
				SetPVarInt(playerid, "firstaid5", SetTimerEx("firstaid5", 5000, 1, "d", playerid));
				SetPVarInt(playerid, "firstaidexpire", SetTimerEx("firstaidexpire",10*60000, 0, "d", playerid));
				SetPVarInt(playerid, "usingfirstaid", 1);
				SendClientMessage(playerid,COLOR_GREY,"You used up one firt aid kit");
			}
		}
		else
		{
			SendClientMessage(playerid, COLOR_GREY, "ban khong co tui cuu thuong!");
		}
	}
	else
	{
		SendClientMessage(playerid, COLOR_GREY, "You don't have a first aid kit!");
	}
	return 1;
}

CMD:muatuicuuthuong(playerid, params[])
{
	if(IsPlayerInRangeOfPoint(playerid, 3.0, 1171.75903, -1319.67737, 14.52226))
	{
		if(GetPlayerMoney(playerid) >= 300)
		{
			bInfo[playerid][pFirstaid]++;
			SendClientMessage(playerid,COLOR_GREY,"ban da mua tui cuu thuong voi gia $300!");
			GivePlayerMoney(playerid,-300);
		}
		else
		{
			SendClientMessage(playerid,COLOR_GREY,"ban khong du tien!");
		}
	}
	else
	{
	    SendClientMessage(playerid,COLOR_GREY,"ban khong o gan benh vien");
	}
	return 1;
}
