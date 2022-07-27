#include <a_samp>

new
    bool:swimming[ MAX_PLAYERS ]
;

forward OnPlayerStartSwimming( playerid ) ;
forward OnPlayerStopSwimming( playerid );
forward IsPlayerSwimming( playerid );

main()
{
    print("ON") ;
}

public OnGameModeInit()
{
    SetGameModeText( "[GVS-RP]Season 3.1" ) ;
    AddPlayerClass(0, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);
    return 1;
}

public OnGameModeExit()
{
    return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
    return 1;
}

public OnPlayerConnect(playerid)
{
    return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
    return 1;
}

public OnPlayerSpawn(playerid)
{
    return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
    return 1;
}

public OnVehicleSpawn(vehicleid)
{
    return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
    return 1;
}

public OnPlayerText(playerid, text[])
{
    return 1;
}


public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
    return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
    return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
    return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
    return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
    return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
    return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
    return 1;
}

public OnRconCommand(cmd[])
{
    return 1;
}

public OnPlayerRequestSpawn(playerid)
{
    return 1;
}

public OnObjectMoved(objectid)
{
    return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
    return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
    return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
    return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
    return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
    return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
    return 1;
}

public OnPlayerExitedMenu(playerid)
{
    return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
    return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
    return 1;
}

public OnPlayerUpdate(playerid)
{
    if(GetPlayerAnimationIndex(playerid))
    {
        new animlib[32];
        new animname[32];
        GetAnimationName(GetPlayerAnimationIndex(playerid),animlib,32,animname,32);
        if(strcmp(animlib, "SWIM", true) == 0 && !swimming[playerid])
        {
            swimming[playerid] = true;
            OnPlayerStartSwimming(playerid);
        }
        else if(strcmp(animlib, "SWIM", true) != 0 && swimming[playerid] && strfind(animname, "jump", true) == -1)
        {
            swimming[playerid] = false;
            OnPlayerStopSwimming(playerid);
        }
    }
    else if(swimming[playerid])
    {
        swimming[playerid] = false;
        OnPlayerStopSwimming(playerid);
    }
    return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
    return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
    return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
    return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
    return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
    return 1;
}

stock IsPlayerInWater( playerid ) {
    new Float:Z;
    GetPlayerPos(playerid, Z, Z, Z);
    if(Z < 0.7) switch(GetPlayerAnimationIndex(playerid)) { case 1543,1538,1539,1250: return (true); }
    if(GetPlayerDistanceFromPoint(playerid, -965, 2438, 42) <= 700 && Z < 45) return (true);
    new Float:water_places[][] =
    {
        {25.0,  2313.0, -1417.0,        23.0},
        {15.0,  1280.0, -773.0,         1082.0},
        {15.0,  1279.0, -804.0,         86.0},
        {20.0,  1094.0, -674.0,         111.0},
        {26.0,  194.0,  -1232.0,        76.0},
        {25.0,  2583.0, 2385.0,         15.0},
        {25.0,  225.0,  -1187.0,        73.0},
        {50.0,  1973.0, -1198.0,        17.0}
    };
    for(new t=0; t < sizeof water_places; t++)
    if(GetPlayerDistanceFromPoint(playerid, water_places[t][1], water_places[t][2], water_places[t][3]) <= water_places[t][0]) return (true);
    return (false);
}

public IsPlayerSwimming(playerid)
{
    if(swimming[playerid]) return 1;
    return 0;
}

public OnPlayerStartSwimming(playerid)
{
    if( !IsPlayerInWater( playerid ) ) SendClientMessage( playerid, -1, "FLY HACK DETECTED !" ) ;
    return 1;
}

public OnPlayerStopSwimming(playerid)
{
    return 1;
}
