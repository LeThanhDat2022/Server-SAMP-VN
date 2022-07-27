//
// JakHouse (Jake's House System) v1.0
// Simple, Efficient, and Easy to use!
// Housing System, You can also add your own custom interior.
// Refer to SA-MP forums for more information regarding to JakHouse.
// Credits: DracoBlue, Jake, Zeex, Incognito, Y_Less
//

//Changelog for JakHouse: None

//
//============================================================================//
// Includes

#include 			<     a_samp       > //SAMP Team
#include            <      zcmd        > //Zeex
#include            <    streamer      > //Incognito
#include            <     sscanf2      > //Y_Less
#include            <      dini        > //DracoBlue
#include            <     foreach      > //Y_Less

//
//============================================================================//
// File Path

#define             HOUSE_PATH                  "JakHouse/Houses/house_%d.ini"
#define             USER_PATH                   "JakHouse/User/%s.ini"

//
//============================================================================//
// Configuartions

#define             MAX_HOUSE_NAME              256
#define             MAX_HOUSES                  350

#define             FREEZE_LOAD                 true
//If enable, Freezes you once entered the house, freezes you aswell once exited the house
//The freeze lifts off in 5 seconds, depends on FREEZE_TIME

#define             FREEZE_TIME                 5   //In seconds

#define             FORCE_SPAWNHOME             true
//Once the FORCE_SPAWNHOME is set to true, a timer will be run for 2.5 seconds when you spawn.
//Once that timer is called, Player will be forced spawn in his home if he has the spawn settings on.
//This define is created as the spawnhome feature we had doesn't work, as instead of spawning at home, it spawns at the gamemode's spawnpoint.

//You can change this [Just make sure you know what you are doing].

#define             SALE_PICKUP                 1273
#define             NOTSALE_PICKUP              1272
#define 			NOTSALE_ICON         		32
#define 			SALE_ICON            		31

#define             STREAM_DISTANCES            35.0
//Do not make it higher, or else it will conflict with the other stream objects etc.

//
//============================================================================//
// Colors

#define  			white              			"{FFFFFF}"
#define  			red        					"{FF0000}"
#define  			green              			"{33CC33}"
#define             yellow                      "{FFFF00}"

#define 			COLOR_RED  					0xFF0000C8
#define 			COLOR_YELLOW 				0xFFFF00AA
#define 			COLOR_GREEN         		0x33CC33C8
#define 			COLOR_WHITE         		0xFFFFFFFF

//
//============================================================================//
// Dialogs

#define             DIALOG_HMENU                6000
#define             DIALOG_NULL                 DIALOG_HMENU-1
#define             DIALOG_HNAME                DIALOG_HMENU+1
#define             DIALOG_HPRICE               DIALOG_HMENU+2
#define             DIALOG_HSTOREC              DIALOG_HMENU+3
#define             DIALOG_WCASH                DIALOG_HMENU+4
#define             DIALOG_HSTORE               DIALOG_HMENU+5
#define             DIALOG_HWORLD               DIALOG_HMENU+6
#define             DIALOG_HINTERIOR            DIALOG_HMENU+7
#define             DIALOG_HSPAWN               DIALOG_HMENU+8
//Making the dialog id changing easier by just adding it.

//
//============================================================================//
// Enums

enum HouseInfo
{
    hName[MAX_HOUSE_NAME],
    hOwner[256],
    hIName[256],
    hPrice,
    hSale,
    hInterior,
    hWorld,
    hLocked,
    Float:hEnterPos[4],
    Float:hPickupP[3],
    Float:ExitCPPos[3],
    hMapIcon,
    hPickup,
    hCP,
    hLevel,
    Text3D:hLabel,
    MoneyStore,
    hNotes[256]
};

enum InteriorInfo
{
	Name[128],
	Float:SpawnPointX,
	Float:SpawnPointY,
	Float:SpawnPointZ,
	Float:SpawnPointA,
	Float:ExitPointX,
	Float:ExitPointY,
	Float:ExitPointZ,
	i_Int,
	i_Price,
	Notes[128]
};

enum HousePInfo
{
	OwnedHouses,
	Float:p_SpawnPoint[4],
	p_Interior,
	p_Spawn
};

//
//============================================================================//
// Arrays, Variables.

//Interior Lists
new intInfo[][InteriorInfo] =
{
	{"Unused House", 2324.3469, -1145.8812, 1050.7101, 359.6399, 2324.4570, -1148.8044, 1050.7101, 12, 1500000, "No bugs/glitches found"},
	{"House #1", 235.3069, 1190.0491, 1080.2578, 359.9533, 235.3969, 1187.6935, 1080.2578, 3, 1000000, "No bugs/glitches found"},
	{"House #2", 222.9837, 1239.8391, 1082.1406, 92.7009, 225.8877, 1240.0209, 1082.1406, 2, 1000000, "No bugs/glitches found"},
	{"House #3", 223.3313, 1290.3979, 1082.1328, 0.2667, 223.3452, 1287.8087, 1082.1406, 1, 950000, "No bugs/glitches found"},
	{"House #4", 225.7910, 1025.7743, 1084.0078, 0.2900, 225.6310, 1022.4800, 1084.0146, 7, 2950000, "No bugs/glitches found"},
	{"House #5", 295.1922, 1475.5353, 1080.2578, 3.4232, 295.2854, 1473.0117, 1080.2578, 15, 980000, "No bugs/glitches found"},
	{"House #6", 2265.8953, -1210.4926, 1049.0234, 88.7521, 2269.4565, -1210.4597, 1047.5625, 10, 1000000, "No bugs/glitches found"},
	{"Ryder's House", 2463.5032, -1698.1881, 1013.5078, 89.8337, 2466.9146, -1698.2842, 1013.5078, 2, 3000000, "Some floors of the interior are bugged."},
	{"Sweet's House", 2530.1094, -1679.2772, 1015.4986, 359.6395, 2525.2393, -1679.3699, 1015.4986, 1, 3500000, "Some floors/walls of the interior are bugged."},
	{"Crack Den", 317.9371, 1118.0695, 1083.8828, 1.3314, 318.5647, 1115.5923, 1083.8828, 5, 3200000, "No bugs/glitches found"},
	{"Carl Johnson's House", 2496.0076, -1695.8928, 1014.7422, 181.1864, 2495.9934, -1692.9742, 1014.7422, 3, 4500000, "No bugs/glitches found"},
	{"Maddog's Crib (HUGE)", 1298.9324, -793.3831, 1084.0078, 0.4147, 1298.9706, -795.9689, 1084.0078, 5, 5500000, "No bugs/glitches found"},
	{"Santa Maria Beach House", 2365.0667, -1131.3645, 1050.8750, 0.1014, 2365.3577, -1134.2891, 1050.8750, 8, 1200000, "No bugs/glitches found"}
	//{House Name[], Float:sX, Float:sY, Float:sZ, Float:sA, Float:eX, Float:eY, Float:eZ, interior, price, notes[]}
};

new hInfo[MAX_HOUSES][HouseInfo];
new jpInfo[MAX_PLAYERS][HousePInfo];

new h_Loaded = 0;
new h_ID[MAX_PLAYERS];
new h_Inside[MAX_PLAYERS];
new h_Selection[MAX_PLAYERS];
new h_Selected[MAX_PLAYERS];

//
//============================================================================//
// Public functions and others.

public OnFilterScriptInit()
{
	for(new i=0; i<MAX_HOUSES; i++)
	{
	    if(fexist(HousePath(i)))
	    {
	        LoadHouse(i);
	        h_Loaded ++;
	    }
	}

	printf("... Houses loaded by JakHouse [%d houses out of %d]", h_Loaded, MAX_HOUSES);
	return 1;
}

public OnFilterScriptExit()
{
    for(new a=0; a<MAX_HOUSES; a++)
    {
        DestroyDynamicCP(hInfo[a][hCP]);
        DestroyDynamicPickup(hInfo[a][hPickup]);
        DestroyDynamicMapIcon(hInfo[a][hMapIcon]);
        DestroyDynamic3DTextLabel(hInfo[a][hLabel]);
    }
	return 1;
}


public OnPlayerConnect(playerid)
{
	h_ID[playerid] = -1;
	h_Inside[playerid] = -1;
	h_Selection[playerid] = 0;
	h_Selected[playerid] = -1;

	if(!fexist(PlayerPath(playerid)))
	{
		jpInfo[playerid][OwnedHouses] = 0;
		jpInfo[playerid][p_SpawnPoint][0] = 0.0;
		jpInfo[playerid][p_SpawnPoint][1] = 0.0;
		jpInfo[playerid][p_SpawnPoint][2] = 0.0;
		jpInfo[playerid][p_SpawnPoint][3] = 0.0;
		jpInfo[playerid][p_Interior] = 0;
		jpInfo[playerid][p_Spawn] = 0;

		dini_Create(PlayerPath(playerid));

		Player_Save(playerid);
		Player_Load(playerid);
	}
	else
	{
	    Player_Load(playerid);
	}
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	h_ID[playerid] = -1;
	h_Inside[playerid] = -1;
	h_Selection[playerid] = 0;
	h_Selected[playerid] = -1;

	if(fexist(PlayerPath(playerid))) Player_Save(playerid);
	return 1;
}

public OnPlayerSpawn(playerid)
{
	if(jpInfo[playerid][p_Spawn] == 1)
	{
	    #if FREEZE_LOAD == true
	        House_Load(playerid);
		#endif

	    SendClientMessage(playerid, COLOR_GREEN, "<!> Spawned at your house.");

		#if FORCE_SPAWNHOME == true
		SetTimerEx("JakSpawnHome", 2500, false, "d", playerid);
		SendClientMessage(playerid, -1, "Force respawning to your house...");
		#else
	    SetPlayerInterior(playerid, jpInfo[playerid][p_Interior]);
	    SetPlayerPos(playerid, jpInfo[playerid][p_SpawnPoint][0], jpInfo[playerid][p_SpawnPoint][1], jpInfo[playerid][p_SpawnPoint][2]);
	    SetPlayerFacingAngle(playerid, jpInfo[playerid][p_SpawnPoint][3]);
		#endif
	}
	return 1;
}

forward JakSpawnHome(playerid);
public JakSpawnHome(playerid)
{
    SetPlayerInterior(playerid, jpInfo[playerid][p_Interior]);
    SetPlayerPos(playerid, jpInfo[playerid][p_SpawnPoint][0], jpInfo[playerid][p_SpawnPoint][1], jpInfo[playerid][p_SpawnPoint][2]);
    SetPlayerFacingAngle(playerid, jpInfo[playerid][p_SpawnPoint][3]);
    return SendClientMessage(playerid, COLOR_YELLOW, "<!> Finally spawned at your house.");
}

public OnPlayerEnterDynamicCP(playerid, checkpointid)
{
	for(new x=0; x<MAX_HOUSES; x++)
	{
		if(checkpointid == hInfo[x][hCP])
		{
		    #if FREEZE_LOAD == true
		        House_Load(playerid);

		        SetPlayerPos(playerid, hInfo[x][hPickupP][0], hInfo[x][hPickupP][1], hInfo[x][hPickupP][2]);
		        SetPlayerInterior(playerid, 0);
		        SetPlayerVirtualWorld(playerid, 0);

		    #else
		        SetPlayerPos(playerid, hInfo[x][hPickupP][0], hInfo[x][hPickupP][1], hInfo[x][hPickupP][2]);
		        SetPlayerInterior(playerid, 0);
		        SetPlayerVirtualWorld(playerid, 0);

		    #endif

	        h_Inside[playerid] = -1;
		}
	}
	return 1;
}

public OnPlayerPickUpDynamicPickup(playerid, pickupid)
{
	for(new x=0; x<MAX_HOUSES; x++)
	{
	    if(pickupid == hInfo[x][hPickup])
	    {
	        h_ID[playerid] = x;
     	}
	}
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	new hid = h_ID[playerid];

	if(dialogid == DIALOG_HMENU)
	{
	    if(response)
	    {
	        switch(listitem)
	        {
	            case 0:
	            {
	                ShowPlayerDialog(playerid, DIALOG_HNAME, DIALOG_STYLE_INPUT, ""green"House Name",\
	                ""white"You are now editing the name of your house.\nPut the name of your house below (E.G. Jake's House)\n\nMaximum Length for the house name: 100", "Configure", "Back");
	            }
	            case 1:
	            {
	                ShowPlayerDialog(playerid, DIALOG_HPRICE, DIALOG_STYLE_INPUT, ""green"House Price ($)",\
	                ""white"You are now editing the price of your house.\nPut the price of your house below (E.G. 500)", "Configure", "Back");
	            }
	            case 2:
	            {
	                ShowPlayerDialog(playerid, DIALOG_HSTOREC, DIALOG_STYLE_INPUT, ""green"Store Cash ($)",\
	                ""white"You are now storing your money into your house safe.\nPut the amount of cash you want to store into your house. (E.G. 500)", "Configure", "Back");
				}
				case 3:
				{
	                ShowPlayerDialog(playerid, DIALOG_WCASH, DIALOG_STYLE_INPUT, ""green"Withdraw Cash ($)",\
	                ""white"You are now withdrawing a money from your house safe.\nPut the amount of cash you want to withdraw from your house safe. (E.G. 500)", "Configure", "Back");
				}
				case 4:
				{
				    new string[1000];
				    format(string, sizeof(string), ""white"Your house safe status:\n\nCash Stored: "green"$%d\n"white"Notes:\n"red"%s", hInfo[hid][MoneyStore], hInfo[hid][hNotes]);
				    ShowPlayerDialog(playerid, DIALOG_HSTORE, DIALOG_STYLE_MSGBOX, ""green"Storage Info",\
				    string, "Back", "");
				}
				case 5:
				{
	                ShowPlayerDialog(playerid, DIALOG_HWORLD, DIALOG_STYLE_INPUT, ""green"Virtual World",\
	                ""white"You are now editing the virtual world of your house (inside).\nPut the virtual world you want to set to your house. (E.G. 1)", "Configure", "Back");
				}
				case 6:
				{
				    new string[1200];

				    for(new a=0; a<sizeof(intInfo); a++)
				    {
				        format(string, sizeof(string), "%s%s - $%d\n", string, intInfo[a][Name], intInfo[a][i_Price]);
				    }
					ShowPlayerDialog(playerid, DIALOG_HINTERIOR, DIALOG_STYLE_LIST, ""green"Interior", string, "Preview", "Back");
				}
				case 7:
				{
				    if(jpInfo[playerid][p_Spawn] == 0)
				    {
				        ShowPlayerDialog(playerid, DIALOG_HSPAWN, DIALOG_STYLE_MSGBOX, ""yellow"Spawn at Home, Are you sure?",\
				        ""white"Are you sure you want to spawn at your house everytime you die?", "Yes", "No");
				    }
				    else
				    {
				        ShowPlayerDialog(playerid, DIALOG_HSPAWN, DIALOG_STYLE_MSGBOX, ""yellow"Are you sure?",\
				        ""white"Are you sure you will no longer spawn at your house everytime you die?", "Yes", "No");
				    }
				}
	        }
	    }
	}
	if(dialogid == DIALOG_HSPAWN)
	{
	    if(response)
	    {
	        if(jpInfo[playerid][p_Spawn] == 0)
	        {
				jpInfo[playerid][p_Spawn] = 1;
				SendClientMessage(playerid, -1, "<!> You will now spawn at your house, everytime you die.");
	        }
	        else if(jpInfo[playerid][p_Spawn] == 1)
	        {
				jpInfo[playerid][p_Spawn] = 0;
				SendClientMessage(playerid, -1, "<!> You will no longer spawn at your house, everytime you die.");
	        }
	    }
	    else
	    {
	        cmd_hmenu(playerid, "");
	    }
	}
	if(dialogid == DIALOG_HINTERIOR)
	{
	    if(response)
	    {
	        new hi = listitem;
	        h_Selected[playerid] = hi;

			TogglePlayerControllable(playerid, 0);
			SetCameraBehindPlayer(playerid);

			h_Selection[playerid] = 1;

			new Float:x_Pos[3];
			GetPlayerPos(playerid, x_Pos[0], x_Pos[1], x_Pos[2]);
			SetPVarInt(playerid, "h_Interior", GetPlayerInterior(playerid));
			SetPVarInt(playerid, "h_World", GetPlayerVirtualWorld(playerid));
			SetPVarFloat(playerid, "h_X", x_Pos[0]);
			SetPVarFloat(playerid, "h_Y", x_Pos[1]);
			SetPVarFloat(playerid, "h_Z", x_Pos[2]);

	        SetPlayerPos(playerid, intInfo[hi][SpawnPointX], intInfo[hi][SpawnPointY], intInfo[hi][SpawnPointZ]);
			SetPlayerInterior(playerid, intInfo[hi][i_Int]);
			SetPlayerFacingAngle(playerid, intInfo[hi][SpawnPointA]);
			SetPlayerVirtualWorld(playerid, 271569); //So in that way, no one can see you during the preview.

			new string[250];
			format(string, sizeof(string), "~w~You are now viewing: ~g~%s~n~/buyint to buy the interior~n~~r~/cancelint to cancel buying it.", intInfo[hi][Name]);
			GameTextForPlayer(playerid, string, 15000, 3);

			format(string, sizeof(string), "You are now viewing the house '%s' - /buyint to buy the interior, /cancelint to cancel buying it.", intInfo[hi][Name]);
			SendClientMessage(playerid, COLOR_YELLOW, string);
			format(string, sizeof(string), "The house interior costs "green"$%d, "white"Notes left in the interior: "red"'%s'", intInfo[hi][i_Price], intInfo[hi][Notes]);
			SendClientMessage(playerid, -1, string);
		}
	    else
	    {
	        cmd_hmenu(playerid, "");
	    }
	}
	if(dialogid == DIALOG_HSTORE)
	{
	    if(response || !response)
	    {
	        cmd_hmenu(playerid, "");
	    }
	}
	if(dialogid == DIALOG_HNAME)
	{
	    if(response)
	    {
	        if(!strlen(inputtext))
	        {
                ShowPlayerDialog(playerid, DIALOG_HNAME, DIALOG_STYLE_INPUT, ""green"House Name",\
                ""white"You are now editing the name of your house.\nPut the name of your house below (E.G. Jake's House)\n\nMaximum Length for the house name: 100\n"red"Invalid House Name Length.", "Configure", "Back");
	            return 1;
	        }

			new string[128];
			format(string, 128, "You have changed the name of your house to '%s'", inputtext);
			SendClientMessage(playerid, -1, string);

			format(hInfo[hid][hName], 256, "%s", inputtext);

			SaveHouse(hid);

		    DestroyDynamicCP(hInfo[hid][hCP]);
		    DestroyDynamicPickup(hInfo[hid][hPickup]);
		    DestroyDynamicMapIcon(hInfo[hid][hMapIcon]);
		    DestroyDynamic3DTextLabel(hInfo[hid][hLabel]);

		    LoadHouse(hid);

			cmd_hmenu(playerid, "");
	    }
	    else
	    {
	        cmd_hmenu(playerid, "");
	    }
	}
	if(dialogid == DIALOG_HPRICE)
	{
	    if(response)
	    {
	        if(!strlen(inputtext))
	        {
                ShowPlayerDialog(playerid, DIALOG_HPRICE, DIALOG_STYLE_INPUT, ""green"House Price ($)",\
                ""white"You are now editing the price of your house.\nPut the price of your house below (E.G. 500)", "Configure", "Back");
	            return 1;
	        }
	        if(!isnumeric(inputtext))
	        {
                ShowPlayerDialog(playerid, DIALOG_HPRICE, DIALOG_STYLE_INPUT, ""green"House Price ($)",\
                ""white"You are now editing the price of your house.\nPut the price of your house below (E.G. 500)\n\n"red"Invalid Integer.", "Configure", "Back");
	            return 1;
	        }

			new string[128];
			format(string, 128, "You have changed the price of your house to $%d.", strval(inputtext));
			SendClientMessage(playerid, -1, string);

			hInfo[hid][hPrice] = strval(inputtext);

			SaveHouse(hid);

		    DestroyDynamicCP(hInfo[hid][hCP]);
		    DestroyDynamicPickup(hInfo[hid][hPickup]);
		    DestroyDynamicMapIcon(hInfo[hid][hMapIcon]);
		    DestroyDynamic3DTextLabel(hInfo[hid][hLabel]);

		    LoadHouse(hid);

			cmd_hmenu(playerid, "");
	    }
	    else
	    {
	        cmd_hmenu(playerid, "");
	    }
	}
	if(dialogid == DIALOG_HSTOREC)
	{
	    if(response)
	    {
	        if(!strlen(inputtext))
	        {
                ShowPlayerDialog(playerid, DIALOG_HSTOREC, DIALOG_STYLE_INPUT, ""green"Store Cash ($)",\
                ""white"You are now storing your money into your house safe.\nPut the amount of cash you want to store into your house. (E.G. 500)", "Configure", "Back");
	            return 1;
	        }
	        if(!isnumeric(inputtext))
	        {
                ShowPlayerDialog(playerid, DIALOG_HSTOREC, DIALOG_STYLE_INPUT, ""green"Store Cash ($)",\
                ""white"You are now storing your money into your house safe.\nPut the amount of cash you want to store into your house. (E.G. 500)\n\n"red"Invalid Integer", "Configure", "Back");
	            return 1;
	        }

			GivePlayerMoney(playerid, -strval(inputtext));
			hInfo[hid][MoneyStore] = hInfo[hid][MoneyStore] + strval(inputtext);

			new string[128];
			format(string, 128, "You have store your $%d into your house safe. ($%d over all in your safe)", strval(inputtext), hInfo[hid][MoneyStore]);
			SendClientMessage(playerid, -1, string);

			SaveHouse(hid);

		    DestroyDynamicCP(hInfo[hid][hCP]);
		    DestroyDynamicPickup(hInfo[hid][hPickup]);
		    DestroyDynamicMapIcon(hInfo[hid][hMapIcon]);
		    DestroyDynamic3DTextLabel(hInfo[hid][hLabel]);

		    LoadHouse(hid);

			cmd_hmenu(playerid, "");
	    }
	    else
	    {
	        cmd_hmenu(playerid, "");
	    }
	}
	if(dialogid == DIALOG_HWORLD)
	{
	    if(response)
	    {
	        if(!strlen(inputtext))
	        {
	            ShowPlayerDialog(playerid, DIALOG_HWORLD, DIALOG_STYLE_INPUT, ""green"Virtual World",\
	            ""white"You are now editing the virtual world of your house (inside).\nPut the virtual world you want to set to your house. (E.G. 1)", "Configure", "Back");
	            return 1;
	        }
	        if(!isnumeric(inputtext))
	        {
	            ShowPlayerDialog(playerid, DIALOG_HWORLD, DIALOG_STYLE_INPUT, ""green"Virtual World",\
	            ""white"You are now editing the virtual world of your house (inside).\nPut the virtual world you want to set to your house. (E.G. 1)\n\n"red"Invalid Integer.", "Configure", "Back");
	            return 1;
	        }

			hInfo[hid][hWorld] = strval(inputtext);

			new string[128];
			format(string, 128, "You have change your inside house virtual world to %d.", strval(inputtext));
			SendClientMessage(playerid, -1, string);

			SaveHouse(hid);

		    DestroyDynamicCP(hInfo[hid][hCP]);
		    DestroyDynamicPickup(hInfo[hid][hPickup]);
		    DestroyDynamicMapIcon(hInfo[hid][hMapIcon]);
		    DestroyDynamic3DTextLabel(hInfo[hid][hLabel]);

		    LoadHouse(hid);

			cmd_hmenu(playerid, "");
	    }
	    else
	    {
	        cmd_hmenu(playerid, "");
	    }
	}
	if(dialogid == DIALOG_WCASH)
	{
	    if(response)
	    {
	        if(!strlen(inputtext))
	        {
                ShowPlayerDialog(playerid, DIALOG_WCASH, DIALOG_STYLE_INPUT, ""green"Withdraw Cash ($)",\
                ""white"You are now withdrawing a money from your house safe.\nPut the amount of cash you want to withdraw from your house safe. (E.G. 500)", "Configure", "Back");
	            return 1;
	        }
	        if(!isnumeric(inputtext))
	        {
	            ShowPlayerDialog(playerid, DIALOG_WCASH, DIALOG_STYLE_INPUT, ""green"Withdraw Cash ($)",\
	            ""white"You are now withdrawing a money from your house safe.\nPut the amount of cash you want to withdraw from your house safe. (E.G. 500)\n\n"red"Invalid Integer.", "Configure", "Back");
	            return 1;
	        }
            if(strval(inputtext) > hInfo[hid][MoneyStore])
            {
	            ShowPlayerDialog(playerid, DIALOG_WCASH, DIALOG_STYLE_INPUT, ""green"Withdraw Cash ($)",\
	            ""white"You are now withdrawing a money from your house safe.\nPut the amount of cash you want to withdraw from your house safe. (E.G. 500)\n\n"red"You do not have that amount of cash on your safe.", "Configure", "Back");
                return 1;
            }

			GivePlayerMoney(playerid, strval(inputtext));
			hInfo[hid][MoneyStore] = hInfo[hid][MoneyStore] - strval(inputtext);

			new string[128];
			format(string, 128, "You have withdrawn a $%d from your house safe. ($%d over all in your safe)", strval(inputtext), hInfo[hid][MoneyStore]);
			SendClientMessage(playerid, -1, string);

			SaveHouse(hid);

		    DestroyDynamicCP(hInfo[hid][hCP]);
		    DestroyDynamicPickup(hInfo[hid][hPickup]);
		    DestroyDynamicMapIcon(hInfo[hid][hMapIcon]);
		    DestroyDynamic3DTextLabel(hInfo[hid][hLabel]);

		    LoadHouse(hid);

			cmd_hmenu(playerid, "");
	    }
	    else
	    {
	        cmd_hmenu(playerid, "");
	    }
	}
	return 1;
}

// Commands [ZCMD] //

// Version 1.0 Commands

CMD:hcmds(playerid, params[])
{
	SendClientMessage(playerid, -1, "Jake's House System (v1.0)");
	SendClientMessage(playerid, COLOR_YELLOW, "/buyint - To buy interior (Works only when you choose interior on /hmenu)");
	SendClientMessage(playerid, COLOR_YELLOW, "/cancelint - To cancel the preview interior (Same like /buyint)");
	SendClientMessage(playerid, COLOR_YELLOW, "/buyhouse - /sellhouse (Buys/Sells house, Works only when in-range of the pickup)");
	SendClientMessage(playerid, COLOR_YELLOW, "/hlock - To lock the house (Works only when in-range of pickup/Inside)");
	SendClientMessage(playerid, COLOR_YELLOW, "/hmenu - Player's House Configuration Menu");
	SendClientMessage(playerid, COLOR_YELLOW, "/henter - Enters inside the house (If not locked).");
	SendClientMessage(playerid, COLOR_YELLOW, "/hnote - Adds a note to your house.");
	SendClientMessage(playerid, COLOR_YELLOW, "/hcnote - Checks a note on someones house");
	SendClientMessage(playerid, -1, "For RCONs, /ahcmds for RCON House commands.");
	return 1;
}

CMD:buyint(playerid, params[])
{
	if(h_Selection[playerid] == 0)
	{
	    SendClientMessage(playerid, COLOR_RED, "<!> You are not on Interior Selection.");
	    return 1;
	}

	new id = h_Selected[playerid], string[128], hid = h_ID[playerid];

	if(GetPlayerMoney(playerid) < intInfo[id][i_Price])
	{
	    SendClientMessage(playerid, COLOR_RED, "<!> You do not have enough money to purchase this interior!");
	    SendClientMessage(playerid, -1, "JakHouse_Bot: I suggest you to /cancelint now.");
	    return 1;
	}

	GivePlayerMoney(playerid, -intInfo[id][i_Price]);
	GameTextForPlayer(playerid, "~g~Interior Purchased!", 4500, 3);

	hInfo[hid][hEnterPos][0] = intInfo[id][SpawnPointX];
	hInfo[hid][hEnterPos][1] = intInfo[id][SpawnPointY];
	hInfo[hid][hEnterPos][2] = intInfo[id][SpawnPointZ];
	hInfo[hid][hEnterPos][3] = intInfo[id][SpawnPointA];
	hInfo[hid][ExitCPPos][0] = intInfo[id][ExitPointX];
	hInfo[hid][ExitCPPos][1] = intInfo[id][ExitPointY];
	hInfo[hid][ExitCPPos][2] = intInfo[id][ExitPointZ];
	hInfo[hid][hInterior] = intInfo[id][i_Int];
	format(hInfo[hid][hIName], 256, "%s", intInfo[id][Name]);

	jpInfo[playerid][p_SpawnPoint][0] = intInfo[id][SpawnPointX];
	jpInfo[playerid][p_SpawnPoint][1] = intInfo[id][SpawnPointY];
	jpInfo[playerid][p_SpawnPoint][2] = intInfo[id][SpawnPointZ];
	jpInfo[playerid][p_SpawnPoint][3] = intInfo[id][SpawnPointA];
	jpInfo[playerid][p_Interior] = hInfo[hid][hInterior];

	format(string, sizeof(string), "House Interior '%s' has been purchased for $%d, Your house has now had this interior.", intInfo[id][Name], intInfo[id][i_Price]);
	SendClientMessage(playerid, COLOR_GREEN, string);
	format(string, sizeof(string), "Notes left at the house for you: '%s'", intInfo[id][Notes]);
	SendClientMessage(playerid, COLOR_RED, string);
	SendClientMessage(playerid, -1, "House updated.");

	SendClientMessage(playerid, COLOR_YELLOW, "<!> Your spawnpoint has been changed.");

	format(hInfo[hid][hNotes], 256, "%s", intInfo[id][Notes]);

	h_Selected[playerid] = -1;
	h_Selection[playerid] = 0;
	TogglePlayerControllable(playerid, 1);
	SetPlayerInterior(playerid, GetPVarInt(playerid, "h_Interior"));
	SetPlayerVirtualWorld(playerid, GetPVarInt(playerid, "h_World"));
	SetPlayerPos(playerid, GetPVarFloat(playerid, "h_X"), GetPVarFloat(playerid, "h_Y"), GetPVarFloat(playerid, "h_Z"));

	SaveHouse(hid);

    DestroyDynamicCP(hInfo[hid][hCP]);
    DestroyDynamicPickup(hInfo[hid][hPickup]);
    DestroyDynamicMapIcon(hInfo[hid][hMapIcon]);
    DestroyDynamic3DTextLabel(hInfo[hid][hLabel]);

    LoadHouse(hid);
	return 1;
}
CMD:cancelint(playerid, params[])
{
	if(h_Selection[playerid] == 0)
	{
	    SendClientMessage(playerid, COLOR_RED, "<!> You are not on Interior Selection.");
	    return 1;
	}

	h_Selection[playerid] = 0;
	h_Selected[playerid] = -1;

	SetPlayerInterior(playerid, GetPVarInt(playerid, "h_Interior"));
	SetPlayerVirtualWorld(playerid, GetPVarInt(playerid, "h_World"));
	SetPlayerPos(playerid, GetPVarFloat(playerid, "h_X"), GetPVarFloat(playerid, "h_Y"), GetPVarFloat(playerid, "h_Z"));

	SendClientMessage(playerid, -1, "You have decided not to buy the interior.");
	SendClientMessage(playerid, -1, "You've been teleported back to your position.");

	#if FREEZE_LOAD == true
	    House_Load(playerid);
	#endif
	return 1;
}

CMD:ahcmds(playerid, params[])
{
	if(!IsPlayerAdmin(playerid)) return SendClientMessage(playerid, COLOR_RED, "<!> You are not a RCON Admin to use this command!");

	SendClientMessage(playerid, -1, "Jake's House System (v1.0) - RCON Commands");
	SendClientMessage(playerid, COLOR_YELLOW, "/addhouse - Adds a house");
	SendClientMessage(playerid, COLOR_YELLOW, "/removehouse - Removes a house");
	SendClientMessage(playerid, COLOR_YELLOW, "/gotohouse - Teleports to the house");
	SendClientMessage(playerid, COLOR_YELLOW, "/hinteriors - Lists all the available interior");
	SendClientMessage(playerid, COLOR_YELLOW, "/hmove - Moves the specific houseid to your current location.");
	SendClientMessage(playerid, COLOR_YELLOW, "/asellhouse - Sells the house without doing the actual command.");
	SendClientMessage(playerid, COLOR_YELLOW, "/hnear - Lists all nearby houses within 35 meters.");
	return 1;
}

CMD:gotohouse(playerid, params[])
{
	if(!IsPlayerAdmin(playerid)) return SendClientMessage(playerid, COLOR_RED, "<!> You are not a RCON Admin to use this command!");

	new string[128], id;
	if(sscanf(params, "i", id)) return SendClientMessage(playerid, COLOR_YELLOW, "USAGE: /gotohouse <houseid>");
	if(!fexist(HousePath(id))) return SendClientMessage(playerid, COLOR_RED, "<!> House Slot do not exists.");

	#if FREEZE_LOAD == true
	    House_Load(playerid);
	#endif

	SetPlayerInterior(playerid, 0);
	SetPlayerVirtualWorld(playerid, 0);
	SetPlayerPos(playerid, hInfo[id][hPickupP][0], hInfo[id][hPickupP][1], hInfo[id][hPickupP][2]);

	format(string, sizeof(string), "You have been successfully teleported to houseID %d (Owned by %s)", id, hInfo[id][hOwner]);
	SendClientMessage(playerid, -1, string);
	return 1;
}

CMD:hinteriors(playerid, params[])
{
	if(!IsPlayerAdmin(playerid)) return SendClientMessage(playerid, COLOR_RED, "<!> You are not a RCON Admin to use this command!");

    new string[1200];

    for(new a=0; a<sizeof(intInfo); a++)
    {
        format(string, sizeof(string), "%s%s - ID: %d\n", string, intInfo[a][Name], a);
    }
	ShowPlayerDialog(playerid, DIALOG_NULL, DIALOG_STYLE_LIST, ""green"Interior List", string, "Close", "");
	return 1;
}

CMD:hmove(playerid, params[])
{
	if(!IsPlayerAdmin(playerid)) return SendClientMessage(playerid, COLOR_RED, "<!> You are not a RCON Admin to use this command!");

	new
	    string[128],
	    hid,
		Float:p_Pos[3]
	;

	if(sscanf(params, "i", hid)) return SendClientMessage(playerid, COLOR_YELLOW, "USAGE: /hmove <houseid>");
	if(!fexist(HousePath(hid))) return SendClientMessage(playerid, COLOR_RED, "<!> House does not exists.");

	GetPlayerPos(playerid, p_Pos[0], p_Pos[1], p_Pos[2]);

	hInfo[hid][hPickupP][0] = p_Pos[0];
	hInfo[hid][hPickupP][1] = p_Pos[1];
	hInfo[hid][hPickupP][2] = p_Pos[2];

	SaveHouse(hid);

    DestroyDynamicCP(hInfo[hid][hCP]);
    DestroyDynamicPickup(hInfo[hid][hPickup]);
    DestroyDynamicMapIcon(hInfo[hid][hMapIcon]);
    DestroyDynamic3DTextLabel(hInfo[hid][hLabel]);

    LoadHouse(hid);

    format(string, sizeof(string), "<!> HouseID %d moved at your location.", hid);
    SendClientMessage(playerid, COLOR_GREEN, string);
    format(string, sizeof(string), "Location: %f, %f, %f", p_Pos[0], p_Pos[1], p_Pos[2]);
    SendClientMessage(playerid, -1, string);

	printf("...HouseID %d moved to %f, %f, %f - JakHouse log", hid, p_Pos[0], p_Pos[1], p_Pos[2]);
	return 1;
}

CMD:addhouse(playerid, params[])
{
	if(!IsPlayerAdmin(playerid)) return SendClientMessage(playerid, COLOR_RED, "<!> You are not a RCON Admin to use this command!");

	new
	    string[128],
	    hid,
		price,
		world,
		level,
		interior,
		Float:p_Pos[3]
	;

	if(sscanf(params, "iiiii", hid, level, price, world, interior)) return SendClientMessage(playerid, COLOR_YELLOW, "USAGE: /addhouse <houseid> <level> <price> <world> <interiorid(0-12)>");
	if(hid < 0 || hid > MAX_HOUSES) return SendClientMessage(playerid, COLOR_RED, "<!> Do not exceed the house limitations of JakHouse.");
	if(interior < 0 || interior > 12) return SendClientMessage(playerid, COLOR_RED, "<!> Do not exceed the interior limitations of JakHouse.");
	if(level < 0) return SendClientMessage(playerid, COLOR_RED, "<!> Level Requirements shouldn't go below under 0.");
	if(fexist(HousePath(hid))) return SendClientMessage(playerid, COLOR_RED, "<!> House Slot used.");

	GetPlayerPos(playerid, p_Pos[0], p_Pos[1], p_Pos[2]);

	format(hInfo[hid][hName], 256, "None");
	format(hInfo[hid][hOwner], 256, "None");
	hInfo[hid][hLevel] = level;
	hInfo[hid][hPrice] = price;
	hInfo[hid][hSale] = 0;
	hInfo[hid][hInterior] = intInfo[interior][i_Int];
	hInfo[hid][hWorld] = world;
	hInfo[hid][hLocked] = 1;
	hInfo[hid][hEnterPos][0] = intInfo[interior][SpawnPointX];
	hInfo[hid][hEnterPos][1] = intInfo[interior][SpawnPointY];
	hInfo[hid][hEnterPos][2] = intInfo[interior][SpawnPointZ];
	hInfo[hid][hEnterPos][3] = intInfo[interior][SpawnPointA];
	hInfo[hid][hPickupP][0] = p_Pos[0];
	hInfo[hid][hPickupP][1] = p_Pos[1];
	hInfo[hid][hPickupP][2] = p_Pos[2];
	hInfo[hid][ExitCPPos][0] = intInfo[interior][ExitPointX];
	hInfo[hid][ExitCPPos][1] = intInfo[interior][ExitPointY];
	hInfo[hid][ExitCPPos][2] = intInfo[interior][ExitPointZ];
	format(hInfo[hid][hIName], 256, "%s", intInfo[interior][Name]);
	format(hInfo[hid][hNotes], 256, "None");
	hInfo[hid][MoneyStore] = 0;

	dini_Create(HousePath(hid));
	SaveHouse(hid);

    DestroyDynamicCP(hInfo[hid][hCP]);
    DestroyDynamicPickup(hInfo[hid][hPickup]);
    DestroyDynamicMapIcon(hInfo[hid][hMapIcon]);
    DestroyDynamic3DTextLabel(hInfo[hid][hLabel]);

    LoadHouse(hid);

    format(string, sizeof(string), "<!> HouseID %d created, Price $%d, Level %d, Virtaul World %d", hid, price, level, world);
    SendClientMessage(playerid, COLOR_GREEN, string);
    format(string, sizeof(string), "House created under the interior %s (Int %d)", intInfo[interior][Name], interior);
    SendClientMessage(playerid, -1, string);

	printf("...HouseID %d created - JakHouse log", hid);
	return 1;
}
CMD:removehouse(playerid, params[])
{
	if(!IsPlayerAdmin(playerid)) return SendClientMessage(playerid, COLOR_RED, "<!> You are not a RCON Admin to use this command!");

	new
	    string[128],
	    hid
	;

	if(sscanf(params, "i", hid)) return SendClientMessage(playerid, COLOR_YELLOW, "USAGE: /removehouse <houseid>");
	if(!fexist(HousePath(hid))) return SendClientMessage(playerid, COLOR_RED, "<!> House Slot not used.");

    foreach(new i : Player)
    {
        if(strcmp(p_Name(playerid), hInfo[hid][hOwner], true) == 0)
        {
            jpInfo[i][OwnedHouses] = 0;
			jpInfo[i][OwnedHouses] = 0;
			jpInfo[i][p_SpawnPoint][0] = 0.0;
			jpInfo[i][p_SpawnPoint][1] = 0.0;
			jpInfo[i][p_SpawnPoint][2] = 0.0;
			jpInfo[i][p_SpawnPoint][3] = 0.0;
			jpInfo[i][p_Interior] = 0;
			jpInfo[i][p_Spawn] = 0;

    		SendClientMessage(i, COLOR_YELLOW, "Your house has been removed by RCON Admin.");
        }
    }

	new file[128];
	format(file, sizeof(file), USER_PATH, hInfo[hid][hOwner]);
	dini_IntSet(file, "Houses", jpInfo[playerid][OwnedHouses]=0);
	dini_FloatSet(file, "X", jpInfo[playerid][p_SpawnPoint][0]=0.0);
	dini_FloatSet(file, "Y", jpInfo[playerid][p_SpawnPoint][1]=0.0);
	dini_FloatSet(file, "Z", jpInfo[playerid][p_SpawnPoint][2]=0.0);
	dini_FloatSet(file, "A", jpInfo[playerid][p_SpawnPoint][3]=0.0);
	dini_IntSet(file, "Interior", jpInfo[playerid][p_Interior]=0);
	dini_IntSet(file, "Spawn", jpInfo[playerid][p_Spawn]=0);

	format(hInfo[hid][hName], 256, "None");
	format(hInfo[hid][hOwner], 256, "None");
	hInfo[hid][hLevel] = 0;
	hInfo[hid][hPrice] = 0;
	hInfo[hid][hSale] = 0;
	hInfo[hid][hInterior] = 2;
	hInfo[hid][hWorld] = 0;
	hInfo[hid][hLocked] = 1;
	hInfo[hid][hEnterPos][0] = 2461.4714;
	hInfo[hid][hEnterPos][1] = -1698.2998;
	hInfo[hid][hEnterPos][2] = 1013.5078;
	hInfo[hid][hEnterPos][3] = 89.5674;
	hInfo[hid][hPickupP][0] = 0.0;
	hInfo[hid][hPickupP][1] = 0.0;
	hInfo[hid][hPickupP][2] = 0.0;
	hInfo[hid][ExitCPPos][0] = 2465.7527;
	hInfo[hid][ExitCPPos][1] = -1697.9935;
	hInfo[hid][ExitCPPos][2] = 1013.5078;
	hInfo[hid][MoneyStore] = 0;
	format(hInfo[hid][hNotes], 256, "None");

	fremove(HousePath(hid));

    DestroyDynamicCP(hInfo[hid][hCP]);
    DestroyDynamicPickup(hInfo[hid][hPickup]);
    DestroyDynamicMapIcon(hInfo[hid][hMapIcon]);
    DestroyDynamic3DTextLabel(hInfo[hid][hLabel]);

    format(string, sizeof(string), "<!> HouseID %d has been successfully removed.", hid);
    SendClientMessage(playerid, COLOR_RED, string);

    printf("...HouseID %d removed - JakHouse log", hid);
	return 1;
}

CMD:buyhouse(playerid, params[])
{
	new
	    string[128]
	;

	new i = h_ID[playerid];

	if(i == -1) return SendClientMessage(playerid, COLOR_RED, "<!> You are not near any house.");
    if(IsPlayerInRangeOfPoint(playerid, 1.5, hInfo[i][hPickupP][0], hInfo[i][hPickupP][1], hInfo[i][hPickupP][2]))
    {
        if(hInfo[i][hSale] == 1) return SendClientMessage(playerid, COLOR_RED, "<!> This house isn't for sale.");
        if(GetPlayerMoney(playerid) < hInfo[i][hPrice]) return SendClientMessage(playerid, COLOR_RED, "<!> You don't have enough money to buy this house!");
		if(GetPlayerScore(playerid) < hInfo[i][hLevel]) return SendClientMessage(playerid, COLOR_RED, "<!> You don't have enough score to buy this house!");
		if(jpInfo[playerid][OwnedHouses] == 1) return SendClientMessage(playerid, COLOR_RED, "<!> You already owned a house, You can't buy another one.");

		jpInfo[playerid][OwnedHouses] = 1;

		jpInfo[playerid][p_SpawnPoint][0] = hInfo[i][hEnterPos][0];
		jpInfo[playerid][p_SpawnPoint][1] = hInfo[i][hEnterPos][1];
		jpInfo[playerid][p_SpawnPoint][2] = hInfo[i][hEnterPos][2];
		jpInfo[playerid][p_SpawnPoint][3] = hInfo[i][hEnterPos][3];
		jpInfo[playerid][p_Interior] = hInfo[i][hInterior];

		hInfo[i][hSale] = 1;
		hInfo[i][hLocked] = 0;
		format(hInfo[i][hOwner], 256, "%s", p_Name(playerid));
        GivePlayerMoney(playerid, -hInfo[i][hPrice]);
        format(string, 128, "Ban da mua can nha nay voi gia $%d.", hInfo[i][hPrice]);
        SendClientMessage(playerid, COLOR_YELLOW, string);

		SaveHouse(i);

	    DestroyDynamicCP(hInfo[i][hCP]);
	    DestroyDynamicPickup(hInfo[i][hPickup]);
	    DestroyDynamicMapIcon(hInfo[i][hMapIcon]);
	    DestroyDynamic3DTextLabel(hInfo[i][hLabel]);

	    LoadHouse(i);
    }
    else
    {
        SendClientMessage(playerid, COLOR_RED, "<!> You are not near any house.");
    }
	return 1;
}

CMD:sellhouse(playerid, params[])
{
	new
	    string[128]
	;

	new i = h_ID[playerid];

	if(i == -1) return SendClientMessage(playerid, COLOR_RED, "<!> You are not near any house.");
	if(h_Inside[playerid] == -1)
	{
		if(IsPlayerInRangeOfPoint(playerid, 1.5, hInfo[i][hPickupP][0], hInfo[i][hPickupP][1], hInfo[i][hPickupP][2]))
	    {
	        if(hInfo[i][hSale] == 0) return SendClientMessage(playerid, COLOR_RED, "<!> This house is already for sale.");
			if(strcmp(hInfo[i][hOwner], p_Name(playerid), true) == 0)
			{
				jpInfo[playerid][OwnedHouses] = 0;
				jpInfo[playerid][p_SpawnPoint][0] = 0.0;
				jpInfo[playerid][p_SpawnPoint][1] = 0.0;
				jpInfo[playerid][p_SpawnPoint][2] = 0.0;
				jpInfo[playerid][p_SpawnPoint][3] = 0.0;
				jpInfo[playerid][p_Interior] = 0;
				jpInfo[playerid][p_Spawn] = 0;

				hInfo[i][hSale] = 0;
				hInfo[i][hLocked] = 1;
				format(hInfo[i][hOwner], 256, "None");
				format(hInfo[i][hName], 256, "None");
	            GivePlayerMoney(playerid, hInfo[i][hPrice]);
	            GivePlayerMoney(playerid, hInfo[i][MoneyStore]);
	            format(string, 128, "You have sold this house for $%d.", hInfo[i][hPrice]);
	            SendClientMessage(playerid, COLOR_YELLOW, string);
	            format(string, 128, "You have also got $%d from your house safe.", hInfo[i][MoneyStore]);
	            SendClientMessage(playerid, -1, string);
	            hInfo[i][MoneyStore] = 0;

				SaveHouse(i);

			    DestroyDynamicCP(hInfo[i][hCP]);
			    DestroyDynamicPickup(hInfo[i][hPickup]);
			    DestroyDynamicMapIcon(hInfo[i][hMapIcon]);
			    DestroyDynamic3DTextLabel(hInfo[i][hLabel]);

			    LoadHouse(i);
			}
			else
			{
			    SendClientMessage(playerid, COLOR_RED, "<!> You do not own the house.");
			}
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_RED, "<!> You are not near any house.");
	    }
	}
	else
	{
        if(hInfo[i][hSale] == 0) return SendClientMessage(playerid, COLOR_RED, "<!> This house is already for sale.");
		if(strcmp(hInfo[i][hOwner], p_Name(playerid), true) == 0)
		{
			jpInfo[playerid][OwnedHouses] = 0;
			jpInfo[playerid][p_SpawnPoint][0] = 0.0;
			jpInfo[playerid][p_SpawnPoint][1] = 0.0;
			jpInfo[playerid][p_SpawnPoint][2] = 0.0;
			jpInfo[playerid][p_SpawnPoint][3] = 0.0;
			jpInfo[playerid][p_Interior] = 0;
			jpInfo[playerid][p_Spawn] = 0;

			hInfo[i][hSale] = 0;
			hInfo[i][hLocked] = 1;
			format(hInfo[i][hOwner], 256, "None");
			format(hInfo[i][hName], 256, "None");
            GivePlayerMoney(playerid, hInfo[i][hPrice]);
            format(string, 128, "You have sold this house for $%d.", hInfo[i][hPrice]);
            SendClientMessage(playerid, COLOR_YELLOW, string);
            GivePlayerMoney(playerid, hInfo[i][MoneyStore]);
            format(string, 128, "You have also got $%d from your house safe.", hInfo[i][MoneyStore]);
            SendClientMessage(playerid, -1, string);
            hInfo[i][MoneyStore] = 0;

			SaveHouse(i);

		    DestroyDynamicCP(hInfo[i][hCP]);
		    DestroyDynamicPickup(hInfo[i][hPickup]);
		    DestroyDynamicMapIcon(hInfo[i][hMapIcon]);
		    DestroyDynamic3DTextLabel(hInfo[i][hLabel]);

		    LoadHouse(i);
		}
		else
		{
		    SendClientMessage(playerid, COLOR_RED, "<!> You do not own the house.");
		}
	}
	return 1;
}

CMD:henter(playerid, params[])
{
	new i = h_ID[playerid];

	if(i == -1) return SendClientMessage(playerid, COLOR_RED, "<!> You are not near any house.");
    if(IsPlayerInRangeOfPoint(playerid, 1.5, hInfo[i][hPickupP][0], hInfo[i][hPickupP][1], hInfo[i][hPickupP][2]))
    {
        if(hInfo[i][hLocked] == 1) return SendClientMessage(playerid, COLOR_RED, "<!> House is locked!");
		#if FREEZE_LOAD == true
		    House_Load(playerid);

			SetPlayerPos(playerid, hInfo[i][hEnterPos][0], hInfo[i][hEnterPos][1], hInfo[i][hEnterPos][2]);
			SetPlayerFacingAngle(playerid, hInfo[i][hEnterPos][3]);
			SetPlayerInterior(playerid, hInfo[i][hInterior]);
			SetPlayerVirtualWorld(playerid, hInfo[i][hWorld]);
		#else
			SetPlayerPos(playerid, hInfo[i][hEnterPos][0], hInfo[i][hEnterPos][1], hInfo[i][hEnterPos][2]);
			SetPlayerFacingAngle(playerid, hInfo[i][hEnterPos][3]);
			SetPlayerInterior(playerid, hInfo[i][hInterior]);
			SetPlayerVirtualWorld(playerid, hInfo[i][hWorld]);
		#endif

		h_Inside[playerid] = i;
    }
    else
    {
        SendClientMessage(playerid, COLOR_RED, "<!> You are not near any house.");
    }
	return 1;
}

CMD:hlock(playerid, params[])
{
	new i = h_ID[playerid];

	if(i == -1) return SendClientMessage(playerid, COLOR_RED, "<!> Ban khong co nha nen khong the khoa cua .");
	if(h_Inside[playerid] == -1)
	{
		if(IsPlayerInRangeOfPoint(playerid, 1.5, hInfo[i][hPickupP][0], hInfo[i][hPickupP][1], hInfo[i][hPickupP][2]))
	    {
			if(strcmp(hInfo[i][hOwner], p_Name(playerid), true) == 0)
			{
			    if(hInfo[i][hLocked] == 0)
			    {
					hInfo[i][hLocked] = 1;
		            SendClientMessage(playerid, COLOR_RED, "Ban da khoa cua nha cua minh");
				}
			    else if(hInfo[i][hLocked] == 1)
			    {
					hInfo[i][hLocked] = 0;
		            SendClientMessage(playerid, COLOR_GREEN, "Ban da mo khoa cua nha cua minh");
				}

				SaveHouse(i);

			    DestroyDynamicCP(hInfo[i][hCP]);
			    DestroyDynamicPickup(hInfo[i][hPickup]);
			    DestroyDynamicMapIcon(hInfo[i][hMapIcon]);
			    DestroyDynamic3DTextLabel(hInfo[i][hLabel]);

			    LoadHouse(i);
			}
			else
			{
			    SendClientMessage(playerid, COLOR_RED, "<!> Ban khong phai chu cua can nha nay");
			}
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_RED, "<!> Ban khong co nha.");
	    }
	}
	else
	{
		if(strcmp(hInfo[i][hOwner], p_Name(playerid), true) == 0)
		{
		    if(hInfo[i][hLocked] == 0)
		    {
				hInfo[i][hLocked] = 1;
	            SendClientMessage(playerid, COLOR_RED, "Ban da khoa cua nha cua minh");
			}
		    else if(hInfo[i][hLocked] == 1)
		    {
				hInfo[i][hLocked] = 0;
	            SendClientMessage(playerid, COLOR_GREEN, "Ban da mo khoa cua nha cua minh");
			}

			SaveHouse(i);

		    DestroyDynamicCP(hInfo[i][hCP]);
		    DestroyDynamicPickup(hInfo[i][hPickup]);
		    DestroyDynamicMapIcon(hInfo[i][hMapIcon]);
		    DestroyDynamic3DTextLabel(hInfo[i][hLabel]);

		    LoadHouse(i);
		}
		else
		{
		    SendClientMessage(playerid, COLOR_RED, "<!> Ban khong phai chu can nha nay.");
		}
	}
	return 1;
}

CMD:hnote(playerid, params[])
{
	new i = h_ID[playerid];
	new string[128], note[128];

	if(i == -1) return SendClientMessage(playerid, COLOR_RED, "<!> You are not near any house.");
	if(h_Inside[playerid] == -1)
	{
		if(IsPlayerInRangeOfPoint(playerid, 1.5, hInfo[i][hPickupP][0], hInfo[i][hPickupP][1], hInfo[i][hPickupP][2]))
	    {
			if(strcmp(hInfo[i][hOwner], p_Name(playerid), true) == 0)
			{
				if(sscanf(params, "s[128]", note)) return SendClientMessage(playerid, COLOR_YELLOW, "USAGE: /hnote <note>");

				format(hInfo[i][hNotes], 256, "%s", note);

				SaveHouse(i);

			    DestroyDynamicCP(hInfo[i][hCP]);
			    DestroyDynamicPickup(hInfo[i][hPickup]);
			    DestroyDynamicMapIcon(hInfo[i][hMapIcon]);
			    DestroyDynamic3DTextLabel(hInfo[i][hLabel]);

			    LoadHouse(i);

			    format(string, sizeof(string), "You have replaced the old notes with a new one: %s", note);
			    SendClientMessage(playerid, -1, string);
			}
			else
			{
			    SendClientMessage(playerid, COLOR_RED, "<!> You do not own the house.");
			}
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_RED, "<!> You are not near any house.");
	    }
	}
	else
	{
		if(strcmp(hInfo[i][hOwner], p_Name(playerid), true) == 0)
		{
			if(sscanf(params, "s[128]", note)) return SendClientMessage(playerid, COLOR_YELLOW, "USAGE: /hnote <note>");

			format(hInfo[i][hNotes], 256, "%s", note);

			SaveHouse(i);

		    DestroyDynamicCP(hInfo[i][hCP]);
		    DestroyDynamicPickup(hInfo[i][hPickup]);
		    DestroyDynamicMapIcon(hInfo[i][hMapIcon]);
		    DestroyDynamic3DTextLabel(hInfo[i][hLabel]);

		    LoadHouse(i);

		    format(string, sizeof(string), "You have replaced the old notes with a new one: %s", note);
		    SendClientMessage(playerid, -1, string);
		}
		else
		{
		    SendClientMessage(playerid, COLOR_RED, "<!> You do not own the house.");
		}
	}
	return 1;
}

CMD:hcnote(playerid, params[])
{
	new i = h_ID[playerid];
	new string[150];

	if(i == -1) return SendClientMessage(playerid, COLOR_RED, "<!> You are not near any house.");
	if(h_Inside[playerid] == -1)
	{
		if(IsPlayerInRangeOfPoint(playerid, 1.5, hInfo[i][hPickupP][0], hInfo[i][hPickupP][1], hInfo[i][hPickupP][2]))
	    {
			if(strcmp(hInfo[i][hOwner], p_Name(playerid), true) == 0)
			{
				format(string, sizeof(string), "Note: %s", hInfo[i][hNotes]);
				SendClientMessage(playerid, COLOR_RED, string);
			}
			else
			{
			    SendClientMessage(playerid, COLOR_RED, "<!> You do not own the house.");
			}
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_RED, "<!> You are not near any house.");
	    }
	}
	else
	{
		if(strcmp(hInfo[i][hOwner], p_Name(playerid), true) == 0)
		{
			format(string, sizeof(string), "Note: %s", hInfo[i][hNotes]);
			SendClientMessage(playerid, COLOR_RED, string);
		}
		else
		{
		    SendClientMessage(playerid, COLOR_RED, "<!> You do not own the house.");
		}
	}
	return 1;
}

CMD:hmenu(playerid, params[])
{
	new i = h_ID[playerid];

	if(i == -1) return SendClientMessage(playerid, COLOR_RED, "<!> You are not near any house.");
	if(h_Inside[playerid] == -1)
	{
		if(IsPlayerInRangeOfPoint(playerid, 1.5, hInfo[i][hPickupP][0], hInfo[i][hPickupP][1], hInfo[i][hPickupP][2]))
	    {
			if(strcmp(hInfo[i][hOwner], p_Name(playerid), true) == 0)
			{
				ShowPlayerDialog(playerid, DIALOG_HMENU, DIALOG_STYLE_LIST, ""red"House Configuration",\
				""yellow"House Name\n"green"House Price ($)\n"yellow"Store Cash ($)\n"green"Withdraw Cash ($)\n"yellow"Storage Information\n"green"Virtual World\n"yellow"Interior\n"green"Spawn at Home", "Configure", "Cancel");
			}
			else
			{
			    SendClientMessage(playerid, COLOR_RED, "<!> You do not own the house.");
			}
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_RED, "<!> You are not near any house.");
	    }
	}
	else
	{
		if(strcmp(hInfo[i][hOwner], p_Name(playerid), true) == 0)
		{
			ShowPlayerDialog(playerid, DIALOG_HMENU, DIALOG_STYLE_LIST, ""red"House Configuration",\
			""yellow"House Name\n"green"House Price ($)\n"yellow"Store Cash ($)\n"green"Withdraw Cash ($)\n"yellow"Storage Information\n"green"Virtual World\n"yellow"Interior\n"green"Spawn at Home", "Configure", "Cancel");
		}
		else
		{
		    SendClientMessage(playerid, COLOR_RED, "<!> You do not own the house.");
		}
	}
	return 1;
}

Float:GetDistance(Float: x1, Float: y1, Float: z1, Float: x2, Float: y2, Float: z2)
{
	new Float:d;
	d += floatpower(x1-x2, 2.0 );
	d += floatpower(y1-y2, 2.0 );
	d += floatpower(z1-z2, 2.0 );
	d = floatsqroot(d);
	return d;
}

CMD:hnear(playerid, params[])
{
	if(!IsPlayerAdmin(playerid)) return SendClientMessage(playerid, COLOR_RED, "<!> You are not a RCON Admin to use this command!");

	new hcount=0;

	SendClientMessage(playerid, COLOR_RED, "* Listing all JakHouses within 35 meters of you");

	new Float:X, Float:Y, Float:Z;
	new Float:X2, Float:Y2, Float:Z2;

	GetPlayerPos(playerid, X2, Y2, Z2);

	for(new i=0; i < MAX_HOUSES; i++)
	{
 		X = hInfo[i][hPickupP][0];
		Y = hInfo[i][hPickupP][1];
		Z = hInfo[i][hPickupP][2];
		if(IsPlayerInRangeOfPoint(playerid, 35, X, Y, Z))
		{
		    hcount++;
		    new string[128];
	    	format(string, sizeof(string), "(%d) Owned by %s - Price: $%d | %f from you", i, hInfo[i][hOwner], hInfo[i][hPrice], GetDistance(X, Y, Z, X2, Y2, Z2));
	    	SendClientMessage(playerid, COLOR_WHITE, string);
		}
	}

	if(hcount==0) return SendClientMessage(playerid, -1, "No houses found nearby you.");
	else
	{
		new str[128];
		format(str, sizeof(str), "There are "green"%d "white"houses founded on your position.", hcount);
		SendClientMessage(playerid, -1, str);
	}
	return 1;
}

//
//============================================================================//
// Stocks

forward HouseUnload(playerid);
public HouseUnload(playerid)
{
	SetCameraBehindPlayer(playerid);
	GameTextForPlayer(playerid, "~g~Loaded!", 2500, 3);
	return TogglePlayerControllable(playerid, 1);
}

stock House_Load(playerid)
{
	TogglePlayerControllable(playerid, 0);
	SetCameraBehindPlayer(playerid);
	GameTextForPlayer(playerid, "~w~Loading...", 1000*FREEZE_TIME, 3);
	return SetTimerEx("HouseUnload", 1000*FREEZE_TIME, false, "d", playerid);
}

stock Player_Save(playerid)
{
	dini_IntSet(PlayerPath(playerid), "Houses", jpInfo[playerid][OwnedHouses]);
	dini_FloatSet(PlayerPath(playerid), "X", jpInfo[playerid][p_SpawnPoint][0]);
	dini_FloatSet(PlayerPath(playerid), "Y", jpInfo[playerid][p_SpawnPoint][1]);
	dini_FloatSet(PlayerPath(playerid), "Z", jpInfo[playerid][p_SpawnPoint][2]);
	dini_FloatSet(PlayerPath(playerid), "A", jpInfo[playerid][p_SpawnPoint][3]);
	dini_IntSet(PlayerPath(playerid), "Interior", jpInfo[playerid][p_Interior]);
	dini_IntSet(PlayerPath(playerid), "Spawn", jpInfo[playerid][p_Spawn]);
	return 1;
}
stock Player_Load(playerid)
{
	jpInfo[playerid][OwnedHouses] = dini_Int(PlayerPath(playerid), "Houses");
	jpInfo[playerid][p_SpawnPoint][0] = dini_Float(PlayerPath(playerid), "X");
	jpInfo[playerid][p_SpawnPoint][1] = dini_Float(PlayerPath(playerid), "Y");
	jpInfo[playerid][p_SpawnPoint][2] = dini_Float(PlayerPath(playerid), "Z");
	jpInfo[playerid][p_SpawnPoint][3] = dini_Float(PlayerPath(playerid), "A");
	jpInfo[playerid][p_Interior] = dini_Int(PlayerPath(playerid), "Interior");
	jpInfo[playerid][p_Spawn] = dini_Int(PlayerPath(playerid), "Spawn");
	return 1;
}

stock isnumeric(str[])
{
	new
		ch,
		i;
	while ((ch = str[i++])) if (!('0' <= ch <= '9')) return 0;
	return 1;
}

stock p_Name(playerid)
{
	new pName[24];
	GetPlayerName(playerid, pName, 24);
	return pName;
}

stock SaveHouse(houseid)
{
	dini_Set(HousePath(houseid), "Name", hInfo[houseid][hName]);
	dini_Set(HousePath(houseid), "Owner", hInfo[houseid][hOwner]);
	dini_Set(HousePath(houseid), "InteriorName", hInfo[houseid][hIName]);
	dini_Set(HousePath(houseid), "Notes", hInfo[houseid][hNotes]);
	dini_IntSet(HousePath(houseid), "Level", hInfo[houseid][hLevel]);
	dini_IntSet(HousePath(houseid), "Price", hInfo[houseid][hPrice]);
	dini_IntSet(HousePath(houseid), "Sale", hInfo[houseid][hSale]);
	dini_IntSet(HousePath(houseid), "Interior", hInfo[houseid][hInterior]);
	dini_IntSet(HousePath(houseid), "World", hInfo[houseid][hWorld]);
	dini_IntSet(HousePath(houseid), "Locked", hInfo[houseid][hLocked]);
	dini_FloatSet(HousePath(houseid), "xPoint", hInfo[houseid][hEnterPos][0]);
	dini_FloatSet(HousePath(houseid), "yPoint", hInfo[houseid][hEnterPos][1]);
	dini_FloatSet(HousePath(houseid), "zPoint", hInfo[houseid][hEnterPos][2]);
	dini_FloatSet(HousePath(houseid), "aPoint", hInfo[houseid][hEnterPos][3]);
	dini_FloatSet(HousePath(houseid), "enterX", hInfo[houseid][hPickupP][0]);
	dini_FloatSet(HousePath(houseid), "enterY", hInfo[houseid][hPickupP][1]);
	dini_FloatSet(HousePath(houseid), "enterZ", hInfo[houseid][hPickupP][2]);
	dini_FloatSet(HousePath(houseid), "exitX", hInfo[houseid][ExitCPPos][0]);
	dini_FloatSet(HousePath(houseid), "exitY", hInfo[houseid][ExitCPPos][1]);
	dini_FloatSet(HousePath(houseid), "exitZ", hInfo[houseid][ExitCPPos][2]);
	dini_IntSet(HousePath(houseid), "MoneySafe", hInfo[houseid][MoneyStore]);
	printf("... House ID %d from JakHouse has been saved.", houseid);
	return 1;
}

stock LoadHouse(houseid)
{
	format(hInfo[houseid][hName], 256, "%s", dini_Get(HousePath(houseid), "Name"));
	format(hInfo[houseid][hOwner], 256, "%s", dini_Get(HousePath(houseid), "Owner"));
	format(hInfo[houseid][hIName], 256, "%s", dini_Get(HousePath(houseid), "InteriorName"));
	format(hInfo[houseid][hNotes], 256, "%s", dini_Get(HousePath(houseid), "Notes"));
	hInfo[houseid][hLevel] = dini_Int(HousePath(houseid), "Level");
	hInfo[houseid][hPrice] = dini_Int(HousePath(houseid), "Price");
	hInfo[houseid][hSale] = dini_Int(HousePath(houseid), "Sale");
	hInfo[houseid][hInterior] = dini_Int(HousePath(houseid), "Interior");
	hInfo[houseid][hWorld] = dini_Int(HousePath(houseid), "World");
	hInfo[houseid][hLocked] = dini_Int(HousePath(houseid), "Locked");
	hInfo[houseid][hEnterPos][0] = dini_Float(HousePath(houseid), "xPoint");
	hInfo[houseid][hEnterPos][1] = dini_Float(HousePath(houseid), "yPoint");
	hInfo[houseid][hEnterPos][2] = dini_Float(HousePath(houseid), "zPoint");
	hInfo[houseid][hEnterPos][3] = dini_Float(HousePath(houseid), "aPoint");
	hInfo[houseid][hPickupP][0] = dini_Float(HousePath(houseid), "enterX");
	hInfo[houseid][hPickupP][1] = dini_Float(HousePath(houseid), "enterY");
	hInfo[houseid][hPickupP][2] = dini_Float(HousePath(houseid), "enterZ");
	hInfo[houseid][ExitCPPos][0] = dini_Float(HousePath(houseid), "exitX");
	hInfo[houseid][ExitCPPos][1] = dini_Float(HousePath(houseid), "exitY");
	hInfo[houseid][ExitCPPos][2] = dini_Float(HousePath(houseid), "exitZ");
	hInfo[houseid][MoneyStore] = dini_Int(HousePath(houseid), "MoneySafe");

	new string[256];

	if(hInfo[houseid][hSale] == 0)
	{
		format(string, 256, ""white"So Nha: "red"%d\n"green"Ngoi nha nay dang giam gia\n"white"Gia: "red"$%d\n"white"Noi that: "green"%s\n"white"Level: "red"%d\n\n"white"/muangoinha de co the mua can nha nay", houseid, hInfo[houseid][hPrice], hInfo[houseid][hIName], hInfo[houseid][hLevel]);
		hInfo[houseid][hMapIcon] = CreateDynamicMapIcon(hInfo[houseid][hPickupP][0], hInfo[houseid][hPickupP][1], hInfo[houseid][hPickupP][2], SALE_ICON, -1, 0, 0, -1, STREAM_DISTANCES, MAPICON_LOCAL);
		hInfo[houseid][hPickup] = CreateDynamicPickup(SALE_PICKUP, 1, hInfo[houseid][hPickupP][0], hInfo[houseid][hPickupP][1], hInfo[houseid][hPickupP][2], 0, 0, -1, STREAM_DISTANCES);
	}
	else
	{
	    if(hInfo[houseid][hLocked] == 0)
	    {
		    if(strcmp(hInfo[houseid][hName], "None", true) == 0)
		    {
		    	format(string, 256, ""white"So Nha: "red"%d\n"green"Mo khoa\n"white"Ngoi nha nay cua - "red"%s\n"white"Noi that: "green"%s\n"white"Level: "red"%d\n"white"Gia: "green"$%d\n\n"red"Su dung /henter de vao /hlock de khoa", houseid, hInfo[houseid][hOwner], hInfo[houseid][hIName], hInfo[houseid][hLevel], hInfo[houseid][hPrice]);
		    }
		    else
		    {
		    	format(string, 256, ""white"So Nha: "red"%d\n"green"Mo khoa\n"white"Ngoi nha nay cua - "red"%s\n"white"Name: "green"%s\n"white"Interior: "red"%s\n"white"Level: "red"%d\n"white"Price: "green"$%d\n\n"red"Su dung /henter de vao /hlock de khoa", houseid, hInfo[houseid][hOwner], hInfo[houseid][hName], hInfo[houseid][hIName], hInfo[houseid][hLevel], hInfo[houseid][hPrice]);
			}
		}
		else
		{
		    if(strcmp(hInfo[houseid][hName], "None", true) == 0)
		    {
		    	format(string, 256, ""white"So Nha: "red"%d\n"red"Khoa\n"white"Ngoi nha nay cua - "red"%s\n"white"Noi that: "green"%s\n"white"Level: "red"%d\n"white"Gia: "green"$%d\n\n"red"Su dung /henter de vao /hlock de khoa", houseid, hInfo[houseid][hOwner], hInfo[houseid][hIName], hInfo[houseid][hLevel], hInfo[houseid][hPrice]);
		    }
		    else
		    {
		    	format(string, 256, ""white"So Nha: "red"%d\n"red"Khoa\n"white"Ngoi nha nay cua - "red"%s\n"white"Name: "green"%s\n"white"Interior: "red"%s\n"white"Level: "red"%d\n"white"Gia: "green"$%d\n\n"red"Su dung /henter de vao /hlock de khoa", houseid, hInfo[houseid][hOwner], hInfo[houseid][hName], hInfo[houseid][hIName], hInfo[houseid][hLevel], hInfo[houseid][hPrice]);
			}
		}
		hInfo[houseid][hMapIcon] = CreateDynamicMapIcon(hInfo[houseid][hPickupP][0], hInfo[houseid][hPickupP][1], hInfo[houseid][hPickupP][2], NOTSALE_ICON, -1, 0, 0, -1, STREAM_DISTANCES, MAPICON_LOCAL);
		hInfo[houseid][hPickup] = CreateDynamicPickup(NOTSALE_PICKUP, 1, hInfo[houseid][hPickupP][0], hInfo[houseid][hPickupP][1], hInfo[houseid][hPickupP][2], 0, 0, -1, STREAM_DISTANCES);
	}
    hInfo[houseid][hLabel] = CreateDynamic3DTextLabel(string, -1, hInfo[houseid][hPickupP][0], hInfo[houseid][hPickupP][1], hInfo[houseid][hPickupP][2], STREAM_DISTANCES, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, 0, 0, -1, STREAM_DISTANCES);
	hInfo[houseid][hCP] = CreateDynamicCP(hInfo[houseid][ExitCPPos][0], hInfo[houseid][ExitCPPos][1], hInfo[houseid][ExitCPPos][2], 1.0, hInfo[houseid][hWorld], hInfo[houseid][hInterior], -1, 15.0);
	return 1;
}

stock HousePath(houseid)
{
	new hfile[128];
	format(hfile, 128, HOUSE_PATH, houseid);
	return hfile;
}

stock PlayerPath(playerid)
{
	new pfile[128];
	format(pfile, 128, USER_PATH, p_Name(playerid));
	return pfile;
}

//
//============================================================================//
//

//EOF
