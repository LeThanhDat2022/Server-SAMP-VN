// Filterscript ...
// Facebook: fb.me/NickyZ9400
// Yahoo: NickyZ9400@yahoo.com.vn
// facebook.com/nguyenkhacduc70
// facebook.com/comicalsamp

#include <a_samp>

#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

#else

main()
{
}

#endif

public OnGameModeInit()
{
    CreateObject(1340, 1789.53, -1622.01, 13.53,   0.00000, 0.00000, -14.50000);
	CreateObject(1969, 1808.66077, -1568.13000, 13.01700,   0.00000, 0.00000, 39.00000);
	CreateObject(1969, 1803.55481, -1572.39490, 13.01700,   0.00000, 0.00000, 39.00000);
	CreateObject(1969, 1807.00122, -1581.06250, 13.05700,   0.00000, 0.00000, -51.50000);
	CreateObject(1969, 1803.03040, -1584.34277, 13.05500,   0.00000, 0.00000, -51.50000);
	CreateObject(1969, 1798.21362, -1588.40540, 13.07300,   0.00000, 0.00000, -51.50000);
	CreateObject(1969, 1809.19763, -1568.79907, 13.01700,   0.00000, 0.00000, 39.00000);
	CreateObject(1969, 1804.09399, -1573.06030, 13.01700,   0.00000, 0.00000, 39.00000);
	CreateObject(1969, 1806.32849, -1581.59595, 13.05700,   0.00000, 0.00000, -51.50000);
	CreateObject(1969, 1802.36182, -1584.87854, 13.05500,   0.00000, 0.00000, -51.50000);
	CreateObject(1969, 1797.55090, -1588.93835, 13.07300,   0.00000, 0.00000, -51.50000);
	CreateObject(2683, 1808.48499, -1567.90869, 13.39910,   0.00000, 0.00000, 171.50000);
	CreateObject(2683, 1803.36096, -1572.14856, 13.40080,   0.00000, 0.00000, 0.00000);
	CreateObject(2683, 1806.12781, -1581.77124, 13.44100,   0.00000, 0.00000, 0.00000);
	CreateObject(2683, 1802.15479, -1585.03662, 13.43880,   0.00000, 0.00000, 0.00000);
	CreateObject(2683, 1797.38074, -1589.10254, 13.45690,   0.00000, 0.00000, 0.00000);
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

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/mycommand", cmdtext, true, 10) == 0)
	{
		// Do something here
		return 1;
	}
	return 0;
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
