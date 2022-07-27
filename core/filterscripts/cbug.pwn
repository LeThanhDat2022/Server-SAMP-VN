#include <a_samp>

#define COLOR_RED 0xAA3333AA

#undef MAX_PLAYERS
#define MAX_PLAYERS 500 // Change to you're servers max player count.

#define MAX_SLOTS 48

new NotMoving[MAX_PLAYERS];
new WeaponID[MAX_PLAYERS];
new CheckCrouch[MAX_PLAYERS];
new Ammo[MAX_PLAYERS][MAX_SLOTS];
public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" Simple & Accurate Anti-C-Bug by Whitetiger.");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if((newkeys & KEY_FIRE) && (oldkeys & KEY_CROUCH) && !((oldkeys & KEY_FIRE) || (newkeys & KEY_HANDBRAKE)) || (oldkeys & KEY_FIRE) && (newkeys & KEY_CROUCH) && !((newkeys & KEY_FIRE) || (newkeys & KEY_HANDBRAKE)) ) {
        switch(GetPlayerWeapon(playerid)) {
		    case 23..25, 27, 29..34, 41: {
		        if(Ammo[playerid][GetPlayerWeapon(playerid)] > GetPlayerAmmo(playerid)) {
					OnPlayerCBug(playerid);
				}
				return 1;
			}
		}
	}

	if(CheckCrouch[playerid] == 1)
	{
		switch(WeaponID[playerid])
		{
		    case 23..25, 27, 29..34, 41:
			{
		    	if((newkeys & KEY_CROUCH) && !((newkeys & KEY_FIRE) || (newkeys & KEY_HANDBRAKE)) && GetPlayerSpecialAction(playerid) != SPECIAL_ACTION_DUCK )
				{
		    		if(Ammo[playerid][GetPlayerWeapon(playerid)] > GetPlayerAmmo(playerid))
					{
						OnPlayerCBug(playerid);
					}
		    	}
		    }
		}
	}

	//if(newkeys & KEY_CROUCH || (oldkeys & KEY_CROUCH)) return 1;

	else if(((newkeys & KEY_FIRE) && (newkeys & KEY_HANDBRAKE) && !((newkeys & KEY_SPRINT) || (newkeys & KEY_JUMP))) ||
	(newkeys & KEY_FIRE) && !((newkeys & KEY_SPRINT) || (newkeys & KEY_JUMP)) ||
	(NotMoving[playerid] && (newkeys & KEY_FIRE) && (newkeys & KEY_HANDBRAKE)) ||
	(NotMoving[playerid] && (newkeys & KEY_FIRE)) ||
	(newkeys & KEY_FIRE) && (oldkeys & KEY_CROUCH) && !((oldkeys & KEY_FIRE) || (newkeys & KEY_HANDBRAKE)) ||
	(oldkeys & KEY_FIRE) && (newkeys & KEY_CROUCH) && !((newkeys & KEY_FIRE) || (newkeys & KEY_HANDBRAKE)) ) {
		SetTimerEx("CrouchCheck", 1000, 0, "d", playerid);
		CheckCrouch[playerid] = 1;
		WeaponID[playerid] = GetPlayerWeapon(playerid);
		Ammo[playerid][GetPlayerWeapon(playerid)] = GetPlayerAmmo(playerid);
		return 1;
	}

	return 1;
}

public OnPlayerUpdate(playerid)
{
	new Keys, ud, lr;
	GetPlayerKeys(playerid, Keys, ud, lr);
	if(CheckCrouch[playerid] == 1) {
		switch(WeaponID[playerid]) {
		    case 23..25, 27, 29..34, 41: {
		    	if((Keys & KEY_CROUCH) && !((Keys & KEY_FIRE) || (Keys & KEY_HANDBRAKE)) && GetPlayerSpecialAction(playerid) != SPECIAL_ACTION_DUCK ) {
		    		if(Ammo[playerid][GetPlayerWeapon(playerid)] > GetPlayerAmmo(playerid)) {
						OnPlayerCBug(playerid);
					}
		    	}
		    	//else SendClientMessage(playerid, COLOR_RED, "Failed in onplayer update");
		    }
		}
	}

	if(!ud && !lr) { NotMoving[playerid] = 1; /*OnPlayerKeyStateChange(playerid, Keys, 0);*/ }
	else { NotMoving[playerid] = 0; /*OnPlayerKeyStateChange(playerid, Keys, 0);*/ }

	return 1;
}

forward OnPlayerCBug(playerid);
public OnPlayerCBug(playerid) {
	new playername[MAX_PLAYER_NAME];
	GetPlayerName(playerid, playername, sizeof(playername));
	//new str2[128];
	//format(str2, sizeof(str2), "He thong da freeze %s vi Cbug voi vu khi (%s!) trong 5s", playername, aWeaponNames[WeaponID[playerid]]);
	//SetTimerEx("UnFreeze",5000,false,"i",playerid);
	//TogglePlayerControllable(playerid,false);
	//SendClientMessageToAll(COLOR_RED, str2);
	new Float: hp = GetPlayerHealth(playerid, hp);
	SetPlayerHealth(playerid, hp - 10);
	CheckCrouch[playerid] = 0;
	//Kick(playerid);
	return 1;
}
forward UnFreeze(i);
public UnFreeze(i)
{
        TogglePlayerControllable(i,true);
}
forward CrouchCheck(playerid);
public CrouchCheck(playerid) {
	CheckCrouch[playerid] = 0;
	return 1;
}
