main ()
{
}

//Inc
#include <a_samp>
#include <Dini>
#include <streamer>
#include "../include/gl_common.inc"

//define
#define MAX_FURNITURE 2000
#define SCM SendClientMessage
#define Dialog_Edit 0
#define Dialog_Down 1
#define Dialog_GetRangeFurniture 2
//
enum fInfo
{
	fID,
	fObject,
	fModel,
	Float:fX,
	Float:fY,
	Float:fZ,
	Float:fRX,
	Float:fRY,
	Float:fRZ,
	fvID,
	fInt,
	Text3D:fText,
	bool:fLiftup,
}
new FurnitureInfo[MAX_FURNITURE][fInfo];

new PlayerUseingFurniture[MAX_PLAYERS];
new bool:PlayerLiftup[MAX_PLAYERS];
new bool:PlayerPutDown[MAX_PLAYERS];

new RecoveryLiftTimer;
new ShowPlayerRangeFurniture[MAX_PLAYERS][MAX_FURNITURE];
//Forward
forward SaveFurniture(idx);
forward LoadFurniture();
forward CreateFurniture(ID);
forward Lift(playerid);
forward PutDown(playerid);
forward RecoveryLift();
//
public SaveFurniture(idx)
{
	new string[256];
	format(string,sizeof(string),"Furniture/%d.ini",idx);
	if(!fexist(string))
	{
	    dini_Create(string);
	}
	dini_IntSet(string,"Model",FurnitureInfo[idx][fModel]);
	dini_FloatSet(string,"X",FurnitureInfo[idx][fX]);
	dini_FloatSet(string,"Y",FurnitureInfo[idx][fY]);
	dini_FloatSet(string,"Z",FurnitureInfo[idx][fZ]);
	dini_FloatSet(string,"RX",FurnitureInfo[idx][fRX]);
	dini_FloatSet(string,"RY",FurnitureInfo[idx][fRY]);
	dini_FloatSet(string,"RZ",FurnitureInfo[idx][fRZ]);
	dini_IntSet(string,"vID",FurnitureInfo[idx][fvID]);
	dini_IntSet(string,"Int",FurnitureInfo[idx][fInt]);
	return 1;
}

public LoadFurniture()
{
	for(new idx=1;idx<MAX_FURNITURE;idx++)
	{
		new string[256];
        format(string,sizeof(string),"Furniture/%d.ini",idx);
        if(fexist(string))
        {
            FurnitureInfo[idx][fID] = idx;
            FurnitureInfo[idx][fModel] = dini_Int(string,"Model");
            FurnitureInfo[idx][fX] = dini_Float(string,"X");
            FurnitureInfo[idx][fY] = dini_Float(string,"Y");
            FurnitureInfo[idx][fZ] = dini_Float(string,"Z");
            FurnitureInfo[idx][fRX] = dini_Float(string,"RX");
            FurnitureInfo[idx][fRY] = dini_Float(string,"RY");
            FurnitureInfo[idx][fRZ] = dini_Float(string,"RZ");
            FurnitureInfo[idx][fvID] = dini_Int(string,"vID");
            FurnitureInfo[idx][fInt] = dini_Int(string,"Int");
            CreateFurniture(idx);
        }
	}
	return 1;
}

public CreateFurniture(ID)
{
	FurnitureInfo[ID][fObject] = CreateDynamicObject(FurnitureInfo[ID][fModel], FurnitureInfo[ID][fX], FurnitureInfo[ID][fY], FurnitureInfo[ID][fZ], 0, 0, 0, FurnitureInfo[ID][fvID], FurnitureInfo[ID][fInt]);
	new string[128];
	format(string, sizeof(string), "Furniture ID: %d\nObject ID: %d\nPress 'Y' To Operate", FurnitureInfo[ID][fID], FurnitureInfo[ID][fObject]);
	FurnitureInfo[ID][fText] = CreateDynamic3DTextLabel(string, 0xFFFFFFFF, FurnitureInfo[ID][fX], FurnitureInfo[ID][fY], FurnitureInfo[ID][fZ], 20.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, -1, FurnitureInfo[ID][fvID], FurnitureInfo[ID][fInt]);
    return 1;
}

public Lift(playerid)
{
    FurnitureInfo[PlayerUseingFurniture[playerid]][fLiftup] = true;
	PlayerLiftup[playerid] = true;
	ClearAnimations(playerid);
    ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 1, 1, 1);
	DestroyDynamic3DTextLabel(FurnitureInfo[PlayerUseingFurniture[playerid]][fText]);
    DestroyDynamicObject(FurnitureInfo[PlayerUseingFurniture[playerid]][fObject]);
	SetPlayerAttachedObject(playerid, 9, FurnitureInfo[PlayerUseingFurniture[playerid]][fModel], 1, 0, 0.6, 0, 0, 90, 0, 1, 1, 1);
    SCM(playerid,0xFFFF00C8,"* You lift the furniture!");
	return 1;
}

public PutDown(playerid)
{
	PlayerPutDown[playerid] = false;
    FurnitureInfo[PlayerUseingFurniture[playerid]][fLiftup] = false;
    GetPlayerPos(playerid, FurnitureInfo[PlayerUseingFurniture[playerid]][fX], FurnitureInfo[PlayerUseingFurniture[playerid]][fY], FurnitureInfo[PlayerUseingFurniture[playerid]][fZ]);
    FurnitureInfo[PlayerUseingFurniture[playerid]][fZ] -= 0.5;
    FurnitureInfo[PlayerUseingFurniture[playerid]][fvID] = GetPlayerVirtualWorld(playerid);
    FurnitureInfo[PlayerUseingFurniture[playerid]][fInt] = GetPlayerInterior(playerid);
    CreateFurniture(PlayerUseingFurniture[playerid]);
    SCM(playerid,0xFFFF00C8,"* You put down the furniture!");
    SaveFurniture(FurnitureInfo[PlayerUseingFurniture[playerid]][fID]);
    ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0); //ClearAnimation
	return 1;
}

public RecoveryLift()
{
	for(new i=0; i<MAX_PLAYERS; i++)
	{
	    if(!IsPlayerInAnyVehicle(i))
	    {
		    if(GetPlayerAnimationIndex(i))
		    {
		        if(PlayerLiftup[i] == true)
		        {
					new animlib[32];
			        new animname[32];
			        GetAnimationName(GetPlayerAnimationIndex(i), animlib, 32, animname, 32);
		            if(strcmp(animname, "crry_prtial", true) != 0)
		    		{
			            ApplyAnimation(i, "CARRY", "crry_prtial", 4.0, 0, 0, 1, 1, 1);
					}
				}
			}
		}
	}
	return 1;
}

//Stock

stock GetFurnitureID()
{
	new i=1;
	while(i != MAX_FURNITURE) {
	    if(FurnitureInfo[i][fID] == 0) {
	        return i;
		}
		i++;
	}
	return -1;
}

stock GetClosestFurniture(playerid)
{
	new i=1;
	while(i != MAX_FURNITURE) {
	    if(IsPlayerInRangeOfPoint(playerid, 2, FurnitureInfo[i][fX], FurnitureInfo[i][fY], FurnitureInfo[i][fZ]) && FurnitureInfo[i][fLiftup] == false) {
	        return i;
		}
		i++;
	}
	return -1;
}

PreloadAnimLib(playerid, animlib[])
{
	ApplyAnimation(playerid, animlib, "null", 0.0, 0, 0, 0, 0, 0);
}

//Function
public OnFilterScriptInit()
{
    LoadFurniture();
    RecoveryLiftTimer = SetTimer("RecoveryLift", 2000, true);
    for(new i=0; i<=MAX_PLAYERS; i++)
    {
		if(IsPlayerConnected(i))
		{
		    PlayerUseingFurniture[i] = 0;
		    PlayerLiftup[i] = false;
		    PlayerPutDown[i] = false;
		}
    }
	return 1;
}

public OnFilterScriptExit()
{
	KillTimer(RecoveryLiftTimer);
	
	for(new i=1; i<MAX_FURNITURE; i++)
	{
	    if(FurnitureInfo[i][fID] != 0)
	    {
			DestroyDynamic3DTextLabel(FurnitureInfo[i][fText]);
			DestroyDynamicObject(FurnitureInfo[i][fObject]);
			FurnitureInfo[i][fID] = 0;
		 	FurnitureInfo[i][fLiftup] = true;
	    }
	}
	return 1;
}

public OnPlayerConnect(playerid)
{
    PlayerUseingFurniture[playerid] = 0;
    PlayerLiftup[playerid] = false;
    PlayerPutDown[playerid] = false;
	//
	PreloadAnimLib(playerid, "CARRY");
	PreloadAnimLib(playerid, "Freeweights");
	return 1;
}

public OnPlayerDisconnect(playerid,reason)
{
    if(PlayerLiftup[playerid] == true)
	{
	    PlayerLiftup[playerid] = false;
    	FurnitureInfo[PlayerUseingFurniture[playerid]][fLiftup] = false;
    	CreateFurniture(PlayerUseingFurniture[playerid]);
    	RemovePlayerAttachedObject(playerid, 9);
	}
	return 1;
}

public OnPlayerSpawn(playerid)
{
	if(PlayerLiftup[playerid] == true)
	{
	    SetPlayerAttachedObject(playerid, 9, FurnitureInfo[PlayerUseingFurniture[playerid]][fModel], 1, 0, 0.6, 0, 0, 90, 0, 1, 1, 1);
		SCM(playerid,0xFFFFFFC8,"* You just died, furniture has been restore to your hands up.");
	}
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	new idx;
	new cmd[256];
	cmd = strtok(cmdtext, idx);
	if(strcmp(cmd,"/Create",true) == 0)
	{
		new tmp[128], Model, Float:x, Float:y, Float:z;
		new NewID = GetFurnitureID();
        tmp = strtok(cmdtext, idx);
		if(!strlen(tmp))
		{
			SendClientMessage(playerid, 0xBFC0C2FF, "Use: /Create [Model]");
			return 1;
		}
		Model = strval(tmp);
		
		if(NewID == -1) return SCM(playerid, 0xFF0000C8, "* No extra furniture that you can not continue to create.");
		
		GetPlayerPos(playerid,x,y,z);
		FurnitureInfo[NewID][fID] = NewID;
		FurnitureInfo[NewID][fModel] = Model;
		FurnitureInfo[NewID][fX] = x +1;
		FurnitureInfo[NewID][fY] = y +1;
		FurnitureInfo[NewID][fZ] = z;
		FurnitureInfo[NewID][fRX] = 0;
		FurnitureInfo[NewID][fRY] = 0;
		FurnitureInfo[NewID][fRZ] = 0;
		FurnitureInfo[NewID][fvID] = GetPlayerVirtualWorld(playerid);
		FurnitureInfo[NewID][fInt] = GetPlayerInterior(playerid);
		FurnitureInfo[NewID][fLiftup] = false;
		CreateFurniture(NewID);
		SaveFurniture(NewID);
		return 1;
	}
	if(strcmp(cmd,"/Remove",true) == 0)
	{
	    new tmp[128], id, string[256];
		tmp = strtok(cmdtext, idx);
		if(!strlen(tmp))
		{
			SCM(playerid, 0xB4B5B7FF, "Use: /Remove [Furniture ID]");
			return 1;
		}
		id = strval(tmp);
		if(FurnitureInfo[id][fLiftup] == true) return SCM(playerid, 0xFFFF00C8, "* Someone is using this furniture! (Can not delete)");
		DestroyDynamic3DTextLabel(FurnitureInfo[id][fText]);
		DestroyDynamicObject(FurnitureInfo[id][fObject]);
		FurnitureInfo[id][fID] = 0;
      	FurnitureInfo[id][fLiftup] = true;
		format(string, sizeof(string), "Furniture/%d.ini", id);
		if(fexist(string))
		{
			dini_Remove(string);
	     	format(string, sizeof(string), "* Successfully removed (Furniture ID: %d).", id);
	       	SCM(playerid, 0xFF0000C8, string);
		}
		else
		{
		    format(string, sizeof(string), "* Error (Furniture ID: %d).", id);
		    SCM(playerid, 0xFF0000C8, string);
		}
	    return 1;
	}
	if(strcmp(cmd,"/Closest",true) == 0)
	{
		new string[256];
		new id = 0;
		for(new i=1; i<MAX_FURNITURE; i++)
		{
			if(IsPlayerInRangeOfPoint(playerid, 30, FurnitureInfo[i][fX], FurnitureInfo[i][fY], FurnitureInfo[i][fZ]) && FurnitureInfo[i][fLiftup] == false)
			{
				new Smg[128];
				format(Smg, sizeof(Smg), "[Furniture ID: %d][Model: %d]\n", FurnitureInfo[i][fID], FurnitureInfo[i][fModel]);
				strcat(string, Smg);
            	ShowPlayerRangeFurniture[playerid][id] = FurnitureInfo[i][fID];
          		id ++;
			}
		}
		ShowPlayerDialog(playerid, Dialog_GetRangeFurniture, DIALOG_STYLE_LIST, "[Near Furniture]", string, "Select","Close");
		return 1;
	}
	return 0;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys == 65536)
    {
		new string[256];
        if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
		{
            PlayerUseingFurniture[playerid] = GetClosestFurniture(playerid);
            if(PlayerUseingFurniture[playerid] != -1)
            {
	            if(PlayerLiftup[playerid] == true) return SCM(playerid, 0xFFFF00C8, "* You are using a furniture So, You can not use other furniture!");
				if(GetPlayerVirtualWorld(playerid) != FurnitureInfo[PlayerUseingFurniture[playerid]][fvID] || GetPlayerInterior(playerid) != FurnitureInfo[PlayerUseingFurniture[playerid]][fInt]) return 1;
				format(string, sizeof(string), "[Furniture ID]: %d", FurnitureInfo[PlayerUseingFurniture[playerid]][fID]);
 		 		ShowPlayerDialog(playerid, Dialog_Edit, DIALOG_STYLE_LIST, string, "Liftup\nEdit Position", "Select", "Close");
			}
		}
    }
	return 1;
}

public OnPlayerUpdate(playerid)
{
 	new k, ud, lr;
	GetPlayerKeys(playerid, k, ud, lr);
    if(k == 128)
	{
	    if(PlayerLiftup[playerid] == true && PlayerPutDown[playerid] == false)
        {
            ShowPlayerDialog(playerid, Dialog_Down, DIALOG_STYLE_MSGBOX, "Furniture Operate", "PutDown", "PutDown", "Close");
        }
	}
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == Dialog_Edit)
	{
        if(!response) return 1;
		if(listitem == 0)
		{
			ApplyAnimation(playerid, "CARRY", "liftup", 4, 0, 0, 0, 0, 0);
			SetTimerEx("Lift", 1500, false, "i", playerid);
			SCM(playerid, 0xFFFFFFC8, "* right click the mouse, can put down furniture.");
		}
		if(listitem == 1)
		{
  			FurnitureInfo[PlayerUseingFurniture[playerid]][fLiftup] = true;
			EditDynamicObject(playerid, FurnitureInfo[PlayerUseingFurniture[playerid]][fObject]);
		}
	}
	if(dialogid == Dialog_Down)
	{
	    if(!response) return 1;
		ApplyAnimation(playerid, "Freeweights", "gym_free_putdown", 2, 0, 0, 0, 0, 0);
      	SetTimerEx("PutDown", 1500, false, "i", playerid);
		RemovePlayerAttachedObject(playerid, 9);
		PlayerPutDown[playerid] = true;
		PlayerLiftup[playerid] = false;
	}
	if(dialogid == Dialog_GetRangeFurniture)
	{
		if(!response) return 1;
      	new string[256];
     	PlayerUseingFurniture[playerid] = ShowPlayerRangeFurniture[playerid][listitem];
		format(string, sizeof(string), "[Furniture ID]: %d", FurnitureInfo[PlayerUseingFurniture[playerid]][fID]);
       	ShowPlayerDialog(playerid, Dialog_Edit, DIALOG_STYLE_LIST, string, "Liftup\nEdit Position", "Select", "Close");
	}
	return 0;
}

//Inc Public
public OnPlayerEditDynamicObject(playerid, objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz)
{
    DestroyDynamic3DTextLabel(FurnitureInfo[PlayerUseingFurniture[playerid]][fText]);
	new Float:oldX, Float:oldY, Float:oldZ,Float:oldRotX, Float:oldRotY, Float:oldRotZ;
	GetDynamicObjectPos(objectid, oldX, oldY, oldZ);
	GetDynamicObjectRot(objectid, oldRotX, oldRotY, oldRotZ);

    new string[256];
	format(string,sizeof(string),"Furniture ID: %d\nObject ID: %d\nPress 'Y' To Operate", FurnitureInfo[PlayerUseingFurniture[playerid]][fID], FurnitureInfo[PlayerUseingFurniture[playerid]][fObject]);
	if(response == EDIT_RESPONSE_FINAL)
	{
		FurnitureInfo[PlayerUseingFurniture[playerid]][fX] = x;
		FurnitureInfo[PlayerUseingFurniture[playerid]][fY] = y;
		FurnitureInfo[PlayerUseingFurniture[playerid]][fZ] = z;
		FurnitureInfo[PlayerUseingFurniture[playerid]][fRX] = rx;
		FurnitureInfo[PlayerUseingFurniture[playerid]][fRY] = ry;
		FurnitureInfo[PlayerUseingFurniture[playerid]][fRZ] = rz;
		FurnitureInfo[PlayerUseingFurniture[playerid]][fvID] = GetPlayerVirtualWorld(playerid);
		FurnitureInfo[PlayerUseingFurniture[playerid]][fInt] = GetPlayerInterior(playerid);
		SetDynamicObjectPos(objectid, x, y, z);
		SetDynamicObjectRot(objectid, rx, ry, rz);
		FurnitureInfo[PlayerUseingFurniture[playerid]][fText] = CreateDynamic3DTextLabel(string, 0xFFFFFFFF, FurnitureInfo[PlayerUseingFurniture[playerid]][fX], FurnitureInfo[PlayerUseingFurniture[playerid]][fY], FurnitureInfo[PlayerUseingFurniture[playerid]][fZ], 20.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, -1, FurnitureInfo[PlayerUseingFurniture[playerid]][fvID], FurnitureInfo[PlayerUseingFurniture[playerid]][fInt]);
		SaveFurniture(FurnitureInfo[PlayerUseingFurniture[playerid]][fID]);
	}
	if(response == EDIT_RESPONSE_CANCEL)
	{
		SetDynamicObjectPos(objectid, oldX, oldY, oldZ);
		SetDynamicObjectRot(objectid, oldRotX, oldRotY, oldRotZ);
		FurnitureInfo[PlayerUseingFurniture[playerid]][fX] = oldX;
		FurnitureInfo[PlayerUseingFurniture[playerid]][fY] = oldY;
		FurnitureInfo[PlayerUseingFurniture[playerid]][fZ] = oldZ;
		FurnitureInfo[PlayerUseingFurniture[playerid]][fRX] = oldRotX;
		FurnitureInfo[PlayerUseingFurniture[playerid]][fRY] = oldRotY;
		FurnitureInfo[PlayerUseingFurniture[playerid]][fRZ] = oldRotZ;
		FurnitureInfo[PlayerUseingFurniture[playerid]][fvID] = GetPlayerVirtualWorld(playerid);
		FurnitureInfo[PlayerUseingFurniture[playerid]][fInt] = GetPlayerInterior(playerid);
		FurnitureInfo[PlayerUseingFurniture[playerid]][fText] = CreateDynamic3DTextLabel(string, 0xFFFFFFFF, FurnitureInfo[PlayerUseingFurniture[playerid]][fX], FurnitureInfo[PlayerUseingFurniture[playerid]][fY], FurnitureInfo[PlayerUseingFurniture[playerid]][fZ], 20.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, -1, FurnitureInfo[PlayerUseingFurniture[playerid]][fvID], FurnitureInfo[PlayerUseingFurniture[playerid]][fInt]);
	}
	SaveFurniture(FurnitureInfo[PlayerUseingFurniture[playerid]][fID]);
	FurnitureInfo[PlayerUseingFurniture[playerid]][fLiftup] = false;
}


