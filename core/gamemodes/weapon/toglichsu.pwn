
#include "YSI\y_hooks"


#define MAX_LEVELGUN 10

stock GetLevelGun(level)
{
	new name[82];
	switch(level)
	{
		case 0: name = "{bfbfbf}Normal{ffffff}";
		case 1: name = "{00ff00}Common{ffffff}";
		case 2: name = "{3333ff}Uncommon{ffffff}";
		case 3: name = "{800080}Rare{ffffff}";
		case 4: name = "{fff81f}Epic{ffffff}";
		case 5: name = "{ff6a00}Unique{ffffff}";
		case 6: name = "{9900FF}Legendary{ffffff}";
        case 7: name = "{ff6a00}Mystic{ffffff}";
		case 8: name = "{f00000}Demon{ffffff}";
		case 9: name = "{00FFCC}God{ffffff}";
		case 10: name = "{FF0099}LAW{ffffff}";
	}
	return name;
}

enum pinfo
{
    pDeagle,
    pAK,
    pSpas12,
    pM4,
    pMP5,
    pShotgun,
	pUrani,
};

hook OnPlayerConnect(playerid)
{
	PlayerInfo[playerid][pDeagle] = 1;
	PlayerInfo[playerid][pAK] = 1;
	PlayerInfo[playerid][pM4] = 1;
	PlayerInfo[playerid][pSpas12] = 1;
	PlayerInfo[playerid][pMP5] = 1;
	PlayerInfo[playerid][pShotgun] = 1;
	return 1;
}

stock Float:GetPlayerDistanceToPlayer(playerid, targetid)
{
    new Float:x, Float:y, Float:z, Float:x2, Float:y2, Float:z2;
    GetPlayerPos(playerid, x, y, z);
    GetPlayerPos(targetid, x2, y2, z2);
    return PointToPoint3D(x, y, z, x2, y2, z2);
}

SendDamage(playerid, damagedid, Float:amount, weaponid)
{
	if(GetPVarInt(damagedid, "IsInArena") >= 0) return 1;
   	if(GetPVarInt(damagedid, "EventToken") != 0) return 1;

	new Float:TotalDamage, Float:Health, Float:Armor;
   	new PlayerVar;
   	if(weaponid == 24) // Deagle\nM4a1\nAK-47\nMP5\nShotgun
   	{
   		PlayerVar = PlayerInfo[playerid][pDeagle];
   		if(PlayerVar == 0) TotalDamage = 42;
		if(PlayerVar == 1) TotalDamage = 42.5;
		if(PlayerVar == 2) TotalDamage = 42.9;
		if(PlayerVar == 3) TotalDamage = 43;
		if(PlayerVar == 4) TotalDamage = 43.8;
		if(PlayerVar == 5) TotalDamage = 44.2;
		if(PlayerVar == 6) TotalDamage = 45.6;
		if(PlayerVar == 7) TotalDamage = 46.4;
		if(PlayerVar == 8) TotalDamage = 47;
		if(PlayerVar == 9) TotalDamage = 47.5;
		if(PlayerVar == 10) TotalDamage = 45;
		//TotalDamage = amount + PlayerVar;
   	}
  	else if(weaponid == 30)
   	{
   		PlayerVar = PlayerInfo[playerid][pAK];
   		if(PlayerVar == 0) TotalDamage = 6;
		if(PlayerVar == 1) TotalDamage = 7;
		if(PlayerVar == 2) TotalDamage = 8.4;
		if(PlayerVar == 3) TotalDamage = 9;
		if(PlayerVar == 4) TotalDamage = 9.5;
		if(PlayerVar == 5) TotalDamage = 9.9;
		if(PlayerVar == 6) TotalDamage = 10;
		if(PlayerVar == 7) TotalDamage = 10.8;
		if(PlayerVar == 8) TotalDamage = 11;
		if(PlayerVar == 9) TotalDamage = 11.5;
		if(PlayerVar == 10) TotalDamage = 9;

   		//TotalDamage = amount + PlayerVar;
   	}
   	else if(weaponid == 27)
   	{
   		PlayerVar = PlayerInfo[playerid][pSpas12];
   		if(PlayerVar == 0) TotalDamage = 18;
		if(PlayerVar == 1) TotalDamage = 18.5;
		if(PlayerVar == 2) TotalDamage = 19;
		if(PlayerVar == 3) TotalDamage = 19.5;
		if(PlayerVar == 4) TotalDamage = 20;
		if(PlayerVar == 5) TotalDamage = 20.7;
		if(PlayerVar == 6) TotalDamage = 21;
		if(PlayerVar == 7) TotalDamage = 21.3;
		if(PlayerVar == 8) TotalDamage = 21.9;
		if(PlayerVar == 9) TotalDamage = 23;
		if(PlayerVar == 10) TotalDamage = 20;
   		//TotalDamage = amount + PlayerVar;
   	}
  	else if(weaponid == 31)
   	{
   		PlayerVar = PlayerInfo[playerid][pM4];
   		if(PlayerVar == 0) TotalDamage = 6;
		if(PlayerVar == 1) TotalDamage = 7;
		if(PlayerVar == 2) TotalDamage = 8;
		if(PlayerVar == 3) TotalDamage = 9;
		if(PlayerVar == 4) TotalDamage = 10;
		if(PlayerVar == 5) TotalDamage = 10.5;
		if(PlayerVar == 6) TotalDamage = 11;
		if(PlayerVar == 7) TotalDamage = 12;
		if(PlayerVar == 8) TotalDamage = 12.5;
		if(PlayerVar == 9) TotalDamage = 13;
		if(PlayerVar == 10) TotalDamage = 10;
   		//TotalDamage = amount + PlayerVar;
   	}
  	else if(weaponid == 29)
   	{
   		PlayerVar = PlayerInfo[playerid][pMP5];
   		if(PlayerVar == 0) TotalDamage = 5;
		if(PlayerVar == 1) TotalDamage = 6;
		if(PlayerVar == 2) TotalDamage = 7;
		if(PlayerVar == 3) TotalDamage = 8;
		if(PlayerVar == 4) TotalDamage = 9.5;
		if(PlayerVar == 5) TotalDamage = 10.2;
		if(PlayerVar == 6) TotalDamage = 10.9;
		if(PlayerVar == 7) TotalDamage = 11;
		if(PlayerVar == 8) TotalDamage = 11.5;
		if(PlayerVar == 9) TotalDamage = 12;
		if(PlayerVar == 10) TotalDamage = 9;
   		//TotalDamage = amount + PlayerVar;
   	}
   	else if(weaponid == 25)
   	{
   		PlayerVar = PlayerInfo[playerid][pShotgun];
   		if(PlayerVar == 0) TotalDamage = 22;
		if(PlayerVar == 1) TotalDamage = 25;
		if(PlayerVar == 2) TotalDamage = 28;
		if(PlayerVar == 3) TotalDamage = 29;
		if(PlayerVar == 4) TotalDamage = 30;
		if(PlayerVar == 5) TotalDamage = 32.5;
		if(PlayerVar == 6) TotalDamage = 33;
		if(PlayerVar == 7) TotalDamage = 33.2;
		if(PlayerVar == 8) TotalDamage = 33.6;
		if(PlayerVar == 9) TotalDamage = 35;
		if(PlayerVar == 10) TotalDamage = 25;

   		//TotalDamage = amount + PlayerVar;
   	}
   	else TotalDamage = amount;
   	GetPlayerHealth(damagedid, Health);
   	GetPlayerArmour(damagedid, Armor);
   	if(Health > TotalDamage && Armor < 1)
	{
		SetPlayerHealth(damagedid, Health - TotalDamage);
	}
	if(Armor > TotalDamage)
	{
		SetPlayerArmour(damagedid, Armor - TotalDamage);
	}
	else
	{
	 	SetPlayerArmour(damagedid, 0);
	 	SetPlayerHealth(damagedid, (Health - TotalDamage) + Armor);
	}
	SendHistory(playerid, damagedid , TotalDamage , weaponid , PlayerVar);
	return 1;
}
SendHistory(playerid, playerid1 , Float:amount , weapon , Levelgun)
{
	new Float:Distance = GetDistanceBetweenPlayers(playerid1, playerid);
	new string[155], string1[155], Namex[MAX_PLAYER_NAME];
	GetWeaponName(weapon, Namex, MAX_PLAYER_NAME);
	format(string, 155, "[Tog Dame] [{ff0033}+%.02f{ffffff}] [{FF6600}%s{FFFFFF}] [{99FF00}%s] (%0.2fm)", amount ,GetPlayerNameEx(playerid1), Namex, Distance);
	format(string1, 155, "[Tog Dame] [{ff0000}-%.02f{ffffff}] [{FFCC33}%s{FFFFFF}] [{339966}%s] (%0.2fm)", amount ,GetPlayerNameEx(playerid), Namex, Distance);
	SendClientMessage(playerid, -1, string);
	SendClientMessage(playerid1, -1, string1);
	PlayerPlaySound(playerid, 17804, 0, 0, 0);
}

hook OnPlayerGiveDamage(playerid, damagedid, Float:amount, weaponid, bodypart)
{
	SendDamage(playerid, damagedid, amount, weaponid);
	return 1;
}

CMD:fixdame(playerid, params[])
{
    new string[1280];
    format(string, sizeof(string), "M4: %d",PlayerInfo[playerid][pM4]);
    SendClientMessageEx(playerid, -1, string);
    PlayerInfo[playerid][pM4] = 1;
    PlayerInfo[playerid][pDeagle] = 1;
	PlayerInfo[playerid][pAK] = 1;
	PlayerInfo[playerid][pSpas12] = 1;
	PlayerInfo[playerid][pMP5] = 1;
	PlayerInfo[playerid][pShotgun] = 1;
    return 1;
}
