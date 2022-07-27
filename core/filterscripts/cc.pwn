/*
    Weapons on body system by GoldenLion

    Credits
    * Y_Less & Emmet_ for sscanf2
    * SickAttack for Command Processor

    Please don't remove the credits. :)
*/

#define FILTERSCRIPT

#include <a_samp>
#include <sscanf2>
#include <command_processor>

#undef MAX_PLAYERS
#define MAX_PLAYERS 100

#define DIALOG_EDIT_BONE 5000

enum weaponSettings
{
    Float:Position[6],
    Bone,
    Hidden
}
new WeaponSettings[MAX_PLAYERS][17][weaponSettings], WeaponCheckTimer[MAX_PLAYERS], EditingWeapon[MAX_PLAYERS];

GetWeaponObjectSlot(weaponid)
{
    new objectslot;

    switch (weaponid)
    {
        case 22..24: objectslot = 0;
        case 25..27: objectslot = 1;
        case 28, 29, 32: objectslot = 2;
        case 30, 31: objectslot = 3;
        case 33, 34: objectslot = 4;
        case 35..38: objectslot = 5;
    }
    return objectslot;
}

GetWeaponModel(weaponid)
{
    new WeaponModels[] =
    {
        0, 331, 333, 334, 335, 336, 337, 338, 339, 341, 321, 322, 323, 324,
        325, 326, 342, 343, 344, 0, 0, 0, 346, 347, 348, 349, 350, 351, 352,
        353, 355, 356, 372, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366,
        367, 368, 368, 371
    };
    return WeaponModels[weaponid];
}

PlayerHasWeapon(playerid, weaponid)
{
    new weapon, ammo;

    for (new i; i <= 12; i++)
    {
        GetPlayerWeaponData(playerid, i, weapon, ammo);
        if (weapon == weaponid && ammo) return 1;
    }
    return 0;
}

IsWeaponWearable(weaponid)
{
    if (weaponid >= 22 && weaponid <= 38) return 1;
    return 0;
}

IsWeaponHideable(weaponid)
{
    switch (weaponid) {
        case 22..24, 28, 32: return 1;
    }
    return 0;
}

ResetWeaponSettings(playerid)
{
    for (new i = 22; i <= 38; i++)
    {
        WeaponSettings[playerid][i - 22][Position][0] = -0.115999;
        WeaponSettings[playerid][i - 22][Position][1] = 0.189000;
        WeaponSettings[playerid][i - 22][Position][2] = 0.087999;
        WeaponSettings[playerid][i - 22][Position][3] = 0.000000;
        WeaponSettings[playerid][i - 22][Position][4] = 44.500007;
        WeaponSettings[playerid][i - 22][Position][5] = 0.000000;
        WeaponSettings[playerid][i - 22][Bone] = 1;
        WeaponSettings[playerid][i - 22][Hidden] = false;
    }
}

forward WeaponCheck(playerid);
public WeaponCheck(playerid)
{
    new weapon[13], ammo[13], objectslot, weaponcount;

    for (new i; i <= 12; i++)
    {
        GetPlayerWeaponData(playerid, i, weapon[i], ammo[i]);

        if (weapon[i] && ammo[i] && !WeaponSettings[playerid][weapon[i] - 22][Hidden] && IsWeaponWearable(weapon[i]) && EditingWeapon[playerid] != weapon[i])
        {
            objectslot = GetWeaponObjectSlot(weapon[i]);

            if (GetPlayerWeapon(playerid) != weapon[i])
				SetPlayerAttachedObject(playerid, objectslot, GetWeaponModel(weapon[i]), WeaponSettings[playerid][weapon[i] - 22][Bone], WeaponSettings[playerid][weapon[i] - 22][Position][0], WeaponSettings[playerid][weapon[i] - 22][Position][1], WeaponSettings[playerid][weapon[i] - 22][Position][2], WeaponSettings[playerid][weapon[i] - 22][Position][3], WeaponSettings[playerid][weapon[i] - 22][Position][4], WeaponSettings[playerid][weapon[i] - 22][Position][5], 1.000000, 1.000000, 1.000000);

			else if (IsPlayerAttachedObjectSlotUsed(playerid, objectslot)) RemovePlayerAttachedObject(playerid, objectslot);
        }
    }
    for (new i; i <= 5; i++) if (IsPlayerAttachedObjectSlotUsed(playerid, i))
    {
        weaponcount = 0;

        for (new j = 22; j <= 38; j++) if (PlayerHasWeapon(playerid, j) && GetWeaponObjectSlot(j) == i)
			weaponcount++;

        if (!weaponcount) RemovePlayerAttachedObject(playerid, i);
    }
    return 1;
}

public OnFilterScriptInit()
{
    SetTimer(" ", 0, false); //This has to be here as it will fix the timer bug, otherwise players' timers will not work
	return 1;
}

public OnPlayerConnect(playerid)
{
	ResetWeaponSettings(playerid);
    WeaponCheckTimer[playerid] = SetTimerEx("WeaponCheck", 150, true, "d", playerid);
    return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
    KillTimer(WeaponCheckTimer[playerid]);
    return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if (dialogid == DIALOG_EDIT_BONE)
    {
        if (response)
        {
            new weaponid = EditingWeapon[playerid], weaponname[18], string[68];

            GetWeaponName(weaponid, weaponname, sizeof(weaponname));
            WeaponSettings[playerid][weaponid - 22][Bone] = listitem + 1;

            format(string, sizeof(string), "You have successfully changed the bone of your %s.", weaponname);
            SendClientMessage(playerid, -1, string);
        }
        EditingWeapon[playerid] = 0;
    }
}

public OnPlayerEditAttachedObject(playerid, response, index, modelid, boneid, Float:fOffsetX, Float:fOffsetY, Float:fOffsetZ, Float:fRotX, Float:fRotY, Float:fRotZ, Float:fScaleX, Float:fScaleY, Float:fScaleZ)
{
	new weaponid = EditingWeapon[playerid];

    if (weaponid)
    {
        if (response)
        {
            new weaponname[18], string[80];

            GetWeaponName(weaponid, weaponname, sizeof(weaponname));

            WeaponSettings[playerid][weaponid - 22][Position][0] = fOffsetX;
            WeaponSettings[playerid][weaponid - 22][Position][1] = fOffsetY;
            WeaponSettings[playerid][weaponid - 22][Position][2] = fOffsetZ;
            WeaponSettings[playerid][weaponid - 22][Position][3] = fRotX;
            WeaponSettings[playerid][weaponid - 22][Position][4] = fRotY;
            WeaponSettings[playerid][weaponid - 22][Position][5] = fRotZ;

            RemovePlayerAttachedObject(playerid, GetWeaponObjectSlot(weaponid));
            SetPlayerAttachedObject(playerid, GetWeaponObjectSlot(weaponid), GetWeaponModel(weaponid), WeaponSettings[playerid][weaponid - 22][Bone], fOffsetX, fOffsetY, fOffsetZ, fRotX, fRotY, fRotZ, 1.000000, 1.000000, 1.000000);

            format(string, sizeof(string), "You have successfully adjusted the position of your %s.", weaponname);
            SendClientMessage(playerid, -1, string);
        }
        EditingWeapon[playerid] = 0;
    }
    return 1;
}

CMD:weapon(playerid, params[])
{
    new weaponid = GetPlayerWeapon(playerid);

    if (!weaponid)
        return SendClientMessage(playerid, -1, "You are not holding a weapon.");

    if (!IsWeaponWearable(weaponid))
        return SendClientMessage(playerid, -1, "This weapon cannot be edited.");

    if (!strcmp(params, "adjustpos", true))
    {
        if (EditingWeapon[playerid])
            return SendClientMessage(playerid, -1, "You are already editing a weapon.");

		if (WeaponSettings[playerid][weaponid - 22][Hidden])
			return SendClientMessage(playerid, -1, "You cannot adjust a hidden weapon.");

        SetPlayerArmedWeapon(playerid, 0);
        SetPlayerAttachedObject(playerid, GetWeaponObjectSlot(weaponid), GetWeaponModel(weaponid), WeaponSettings[playerid][weaponid - 22][Bone], WeaponSettings[playerid][weaponid - 22][Position][0], WeaponSettings[playerid][weaponid - 22][Position][1], WeaponSettings[weaponid - 22][weaponid - 22][Position][2], WeaponSettings[playerid][weaponid - 22][Position][3], WeaponSettings[playerid][weaponid - 22][Position][4], WeaponSettings[playerid][weaponid - 22][Position][5], 1.000000, 1.000000, 1.000000);
        EditAttachedObject(playerid, GetWeaponObjectSlot(weaponid));
        EditingWeapon[playerid] = weaponid;
    }
    else if (!strcmp(params, "bone", true))
    {
        if (EditingWeapon[playerid])
            return SendClientMessage(playerid, -1, "You are already editing a weapon.");

        ShowPlayerDialog(playerid, DIALOG_EDIT_BONE, DIALOG_STYLE_LIST, "Bone", "Spine\nHead\nLeft upper arm\nRight upper arm\nLeft hand\nRight hand\nLeft thigh\nRight thigh\nLeft foot\nRight foot\nRight calf\nLeft calf\nLeft forearm\nRight forearm\nLeft shoulder\nRight shoulder\nNeck\nJaw", "Choose", "Cancel");
        EditingWeapon[playerid] = weaponid;
    }
    else if (!strcmp(params, "hide", true))
    {
        if (EditingWeapon[playerid])
            return SendClientMessage(playerid, -1, "You cannot hide a weapon while you are editing it.");

        if (!IsWeaponHideable(weaponid))
            return SendClientMessage(playerid, -1, "This weapon cannot be hidden.");

        new weaponname[18], string[48];

        GetWeaponName(weaponid, weaponname, sizeof(weaponname));

        if (WeaponSettings[playerid][weaponid - 22][Hidden])
        {
            format(string, sizeof(string), "You have set your %s to show.", weaponname);
            WeaponSettings[playerid][weaponid - 22][Hidden] = false;
        }
        else
        {
            if (IsPlayerAttachedObjectSlotUsed(playerid, GetWeaponObjectSlot(weaponid)))
				RemovePlayerAttachedObject(playerid, GetWeaponObjectSlot(weaponid));

            format(string, sizeof(string), "You have set your %s to not show.", weaponname);
            WeaponSettings[playerid][weaponid - 22][Hidden] = true;
        }
        SendClientMessage(playerid, -1, string);
    }
    else SendClientMessage(playerid, -1, "USAGE: /weapon [adjustpos/bone/hide]");
    return 1;
}
