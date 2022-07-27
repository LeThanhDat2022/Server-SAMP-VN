// This is a comment
// uncomment the line below if you want to write a filterscript
#define FILTERSCRIPT

#include <a_samp>
#include <zcmd>

new bool:attached[MAX_PLAYERS];
new bool:attached2[MAX_PLAYERS];
new object[MAX_PLAYERS];
new object2[MAX_PLAYERS];
#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print("           In Car Camera Mods           ");
	print("--------------------------------------\n");
	return 1;
}

CMD:camera1(playerid, params[])
{
	if(attached[playerid] == true) return SendClientMessage(playerid, 0xFF0000AA, "/tatcamera1 de tat!");
	if(attached2[playerid] == true) return SendClientMessage(playerid, 0xFF0000AA, "/tatcamera1 de tat!");
	if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, 0xFF0000AA, "/tatcamera1 de tat!");
    object[playerid] = CreateObject(19085,0,0,-1000,0,0,0,100);
	AttachObjectToVehicle(object[playerid], GetPlayerVehicleID(playerid), -0.449999,-0.685999,0.420000,-62.100013,0.000000,0.000000);
	AttachCameraToObject(playerid, object[playerid]);
	SendClientMessage(playerid, -1, "/tatcamera1 de tat!");
	attached[playerid] = true;
	return 1;
}

CMD:tatcamera1(playerid, params[])
{
    if(attached[playerid] == false) return SendClientMessage(playerid, 0xFF0000AA, "You didn't enter first person mod!");
    attached[playerid] = false;
    SendClientMessage(playerid, -1, "You have left first person mod!");
    DestroyObject(object[playerid]);
    SetCameraBehindPlayer(playerid);
    return 1;
}

CMD:camera2(playerid, params[])
{
	if(attached2[playerid] == true) return SendClientMessage(playerid, 0xFF0000AA, "/tatcamera2 de tat ");
	if(attached[playerid] == true) return SendClientMessage(playerid, 0xFF0000AA, "/tatcamera2 de tat");
	if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, 0xFF0000AA, "/tatcamera2 de tat");
	object2[playerid] = CreateObject(19085,0,0,-1000,0,0,0,100);
	AttachObjectToVehicle(object2[playerid], GetPlayerVehicleID(playerid), -1.049999,0.665000,-0.330000,113.399948,0.000000,0.000000);
	AttachCameraToObject(playerid, object2[playerid]);
	SendClientMessage(playerid, -1, "/tatcamera2 de tat");
	attached2[playerid] = true;
	return 1;
}

CMD:tatcamera2(playerid, params[])
{
    if(attached2[playerid] == false) return SendClientMessage(playerid, 0xFF0000AA, "You didn't enter cinematic mod!");
    attached2[playerid] = false;
    SendClientMessage(playerid, -1, "You have left cinematic mod!");
    DestroyObject(object2[playerid]);
    SetCameraBehindPlayer(playerid);
    return 1;
}


public OnPlayerDeath(playerid, killerid, reason)
{
	if(attached[playerid] == true)
	{
	    attached[playerid] = false;
	    DestroyObject(object[playerid]);
	    SetCameraBehindPlayer(playerid);
	}
	if(attached2[playerid] == true)
	{
	    attached2[playerid] = false;
	    DestroyObject(object2[playerid]);
	    SetCameraBehindPlayer(playerid);
	}
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	if(attached[playerid] == true)
	{
	    attached[playerid] = false;
	    DestroyObject(object[playerid]);
	    SetCameraBehindPlayer(playerid);
	}
	if(attached2[playerid] == true)
	{
	    attached2[playerid] = false;
	    DestroyObject(object2[playerid]);
	    SetCameraBehindPlayer(playerid);
	}
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	if(attached[playerid] == true)
	{
	    DestroyObject(object[playerid]);
	}
	if(attached2[playerid] == true)
	{
	    DestroyObject(object2[playerid]);
	}
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

#else

main()
{
	print("\n----------------------------------");
	print(" Blank Gamemode by your name here");
	print("----------------------------------\n");
}

#endif
