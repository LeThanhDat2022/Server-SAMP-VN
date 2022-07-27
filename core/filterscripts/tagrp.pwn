/*
		-------------------------------------------
		* Tag Filterscript made by Dayrion

		* Inclued required :
			- a_samp 	by SA:MP teams
			- sscanf 	by Y_Less
			- streamer 	by Incognito
			- a_mysql	by BlueG
				- zcmd 		by Zeex
				or
				- izcmd		by Yashas

		- /edittag [Tagid]
			» Allows you edit any tag even if you are not in range
		- /deltag [Tagid]
			» Delete a tag
		-------------------------------------------
*/

#include <a_samp>
#include <sscanf2>
#include <streamer>
#include <a_mysql>

#tryinclude <zcmd>
#if !defined CMD
	#tryinclude <izcmd>
	#if !defined CMD
		#error "izcmd or zcmd can not be included."
	#endif
#endif

#define         RED_U           	"{FF0000}"
#define         WHITE_U         	"{FFFFFF}"
#define         BLUE_U         		"{66A3FF}"
#define         LBLUE_U         	"{99D6FF}"
#define         GREEN_U         	"{39AC39}"
#define         BROWN_U         	"{9E3E3E}"
#define 		ORANGE_U			"{ffc34d}"
#define 		SAUMON_U			"{FF4D4D}"
#define         RED             	0xFF0000FF
#define         WHITE          		0xFFFFFFFF
#define         BLUE	        	0x99CCFFFF
#define         LBLUE          		0x99D6FFFF
#define         GREEN   	    	0x008000FF
#define         BROWN           	0x9E3E3EFF
#define 		SAUMON				0xFF4D4DFF
#define 		ORANGE 				0xff6600FF
#define 		GOLD 				0xFFBB33FF

#define 		SCM 				SendClientMessage
#define 		PUBLIC:%0(%1)		forward %0(%1); public %0(%1)
#define 		MYSQL_HOST        	"localhost"
#define 		MYSQL_USER        	"root"
#define 		MYSQL_DATABASE    	"myserver"
#define 		MYSQL_PASSWORD    	""

#define 		OBJECT_WALL 		19362
#define 		MAX_TAG 			50	// total
#define 		INVALID_TAG_ID		MAX_TAG+1*4
#define 		MAX_TAG_PER_PLAYER 	1
#define 		TIME_SPRAY 			2 // seconds

#define 		MAX_POLICE_LENGTH 	30 // characters - If you change this, change the lengh of 'Police' line 108
#define 		MAX_TEXT_LENGTH		20 // characters - If you change this, change the lengh of 'Text' line 107
#define 		FONT_SIZE			14
#define 		BOLD_TEXT			false
#define 		TEXT_ALIGNEMENT		1 // 0 : left | 1 : center | 2 : right

// ================================================================================================================================================================================================================================================

enum _:Dialog
{
	DIALOG_MODIFIER = 52,
	DIALOG_TEXT,
	DIALOG_MENU_CREER,
	DIALOG_MENU_MODIFIER,
	DIALOG_POLICE,
	DIALOG_COLOR,
	DIALOG_FIN
};

static MySQL:MySQL;

enum e_Tag
{
	tID,
	tSQLIB,
	tOwner[MAX_PLAYER_NAME],
	tText[MAX_TEXT_LENGTH + EOS],
	tPolice[MAX_POLICE_LENGTH + EOS],
	tColor,
	Float:tPosX,
	Float:tPosY,
	Float:tPosZ,
	Float:tRX,
	Float:tRY,
	Float:tRZ,
	tVW,
	tInterior,
	bool:tExist
};

new p_Tag[MAX_TAG][e_Tag],
	bool:Editing[MAX_PLAYERS],
	TimeHold[MAX_PLAYERS],
	bool:IsHolding[MAX_PLAYERS],
	TagNumber,
	CurrentTag[MAX_PLAYERS],
	PlayerTag[MAX_PLAYERS];

// ================================================================================================================================================================================================================================================

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" [Initialization] Tag script by Dayrion");
	print("--------------------------------------\n");

	new MySQLOpt: option_id = mysql_init_options();

	mysql_set_option(option_id, AUTO_RECONNECT, true);

	MySQL = mysql_connect(MYSQL_HOST, MYSQL_USER, MYSQL_PASSWORD, MYSQL_DATABASE, option_id);

	if(MySQL == MYSQL_INVALID_HANDLE || mysql_errno(MySQL) != 0)
	{
		print("[FS] Cannont connect to MySQL");
		SendRconCommand("unloadfs tag");
		return 1;
	}

	new query[590];
	format(query, sizeof(query), "CREATE TABLE IF NOT EXISTS `Tag` (`SQLIB` INTEGER PRIMARY KEY AUTO_INCREMENT, `ID` INT NOT NULL DEFAULT '0', `Owner` VARCHAR(25) NOT NULL DEFAULT '', `Text` VARCHAR(21) NOT NULL DEFAULT '', `x` FLOAT NOT NULL DEFAULT '0.0', `y` FLOAT NOT NULL DEFAULT '0.0', `z` FLOAT NOT NULL DEFAULT '0.0', `rX` FLOAT NOT NULL DEFAULT '0.0'");
	strcat(query, ", `rY` FLOAT NOT NULL DEFAULT '0.0', `rZ` FLOAT NOT NULL DEFAULT '0.0', `Police` VARCHAR(31) NOT NULL DEFAULT '', `VirtualWorld` INT NOT NULL DEFAULT '0', `Interior` INT NOT NULL DEFAULT '0', `Exist` INT NOT NULL DEFAULT '0', `Color` INT NOT NULL DEFAULT '0')");
	mysql_query(MySQL, query);
	mysql_pquery(MySQL, "SELECT * FROM Tag", "OnTagLoading", "");

	return 1;
}

public OnFilterScriptExit()
{
	for(new i, j = MAX_TAG; i < j; i++)
	{
		DestroyDynamicObject(p_Tag[i][tID]);
		if(p_Tag[i][tExist])
			SaveTag(i);
	}
	mysql_close();
	print("\n--------------------------------------");
	print(" [Closing] Tag script unloaded");
	print("--------------------------------------\n");
	return 1;
}

PUBLIC:OnTagLoading()
{
	for(new i, tagid = 1, j = cache_num_rows(); i != j; i++, tagid++)
	{
		cache_get_value_int(i, "SQLIB", p_Tag[tagid][tSQLIB]);
		cache_get_value(i, "Owner", p_Tag[tagid][tOwner], MAX_PLAYER_NAME);
		cache_get_value(i, "Text", p_Tag[tagid][tText], MAX_TEXT_LENGTH);
		cache_get_value_float(i, "x", p_Tag[tagid][tPosX]);
		cache_get_value_float(i, "y", p_Tag[tagid][tPosY]);
		cache_get_value_float(i, "z", p_Tag[tagid][tPosZ]);
		cache_get_value_float(i, "rX", p_Tag[tagid][tRX]);
		cache_get_value_float(i, "rY", p_Tag[tagid][tRY]);
		cache_get_value_float(i, "rZ", p_Tag[tagid][tRZ]);
		cache_get_value(i, "Police", p_Tag[tagid][tPolice], MAX_POLICE_LENGTH);
		cache_get_value_int(i, "VirtualWorld", p_Tag[tagid][tVW]);
		cache_get_value_int(i, "Color", p_Tag[tagid][tColor]);
		cache_get_value_int(i, "Interior", p_Tag[tagid][tInterior]);
		cache_get_value_int(i, "Exist", bool:p_Tag[tagid][tExist]);

		p_Tag[tagid][tID] = CreateDynamicObject(OBJECT_WALL, p_Tag[tagid][tPosX], p_Tag[tagid][tPosY], p_Tag[tagid][tPosZ], p_Tag[tagid][tRX], p_Tag[tagid][tRY], p_Tag[tagid][tRZ], p_Tag[tagid][tVW], p_Tag[tagid][tInterior]);
		SetDynamicObjectMaterialText(p_Tag[tagid][tID], 0, p_Tag[tagid][tText], OBJECT_MATERIAL_SIZE_128x64, p_Tag[tagid][tPolice], FONT_SIZE, BOLD_TEXT, GetxColorByID(p_Tag[tagid][tColor]), _, TEXT_ALIGNEMENT);
		printf("» Tag ID %i loaded.", tagid);
		TagNumber++;
	}

	for(new i, j = MAX_PLAYERS; i < j; i++)
	{
		if(!IsPlayerConnected(i))
			continue;

		IsHolding[i] = false;
		TimeHold[i] = 0;
		SetTagNumberForPlayer(i);
	}
	printf("\n[Initialization] Loading ended. %i tag loaded.", TagNumber);
}

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

public OnPlayerConnect(playerid)
{
	IsHolding[playerid] = false;
	TimeHold[playerid] = 0;
	SetTagNumberForPlayer(playerid);
	return 1;
}

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == DIALOG_MODIFIER)
	{
		if(response)
		{
			switch(listitem)
			{
				case 0: ShowPlayerDialog(playerid, DIALOG_TEXT, DIALOG_STYLE_INPUT, "Message", "Enter the text's tag (19 characters max.)", "Ok", "Cancel");
				case 1: ShowPlayerDialog(playerid, DIALOG_POLICE, DIALOG_STYLE_LIST, "Choose the font", "» Arial\n» Comic Sans MS\n» Microsoft Sans Serif\n» Adobe Devanagari\n» Brush Script Std\n» GrilledCheese BTN Toasted", "Choose", "Cancel");
				case 2: ShowPlayerDialog(playerid, DIALOG_COLOR, DIALOG_STYLE_LIST, "Choose the color", RED_U"» Red\n"BLUE_U"» Blue\n"GREEN_U"» Green\n"BROWN_U"» Brown\n"ORANGE_U"» Orange", "Choose", "Cancel");
				case 3: ReloadTag(CurrentTag[playerid]), EditDynamicObject(playerid, p_Tag[CurrentTag[playerid]][tID]);
				case 4:	ReloadTag(CurrentTag[playerid]), Editing[playerid] = false;
				default: printf("Debug ~ Error DIALOG_MODIFIER (Playerid:%i)", playerid);
			}
		}
		else if(!Editing[playerid])
			CancelTag(playerid);
		else
			return 1;
	}

	if(dialogid == DIALOG_TEXT)
	{
		if(response)
		{
			if(strlen(inputtext) > 19)
				return SCM(playerid, RED, "[Error] {ffffff}The text can not be highter than 19 characters.");

			format(p_Tag[CurrentTag[playerid]][tText], 20, inputtext);
			if(!Editing[playerid])
				ShowPlayerDialog(playerid, DIALOG_POLICE, DIALOG_STYLE_LIST, "Choose the font", "» Arial\n» Comic Sans MS\n» Microsoft Sans Serif\n» Adobe Devanagari\n» Brush Script Std\n» GrilledCheese BTN Toasted", "Choose", "Cancel");
			else
				ShowPlayerDialog(playerid, DIALOG_MODIFIER, DIALOG_STYLE_LIST, "Edit your tag", "- Enter the tag's text\n- Choose the font\n- Choose the color\n- Position\n- Confirm", "Ok", "");

		}
		else if(!Editing[playerid])
			CancelTag(playerid);
		else
			return 1;
	}

	if(dialogid == DIALOG_POLICE)
	{
		if(response)
		{
			switch(listitem)
			{
				case 0: format(p_Tag[CurrentTag[playerid]][tPolice], 30, "Arial");
				case 1: format(p_Tag[CurrentTag[playerid]][tPolice], 30, "Comic Sans MS");
				case 2: format(p_Tag[CurrentTag[playerid]][tPolice], 30, "Microsoft Sans Serif");
				case 3: format(p_Tag[CurrentTag[playerid]][tPolice], 30, "Adobe Devanagari");
				case 4: format(p_Tag[CurrentTag[playerid]][tPolice], 30, "Brush Script Std");
				case 5: format(p_Tag[CurrentTag[playerid]][tPolice], 30, "GrilledCheese BTN Toasted");
				default : format(p_Tag[CurrentTag[playerid]][tPolice], 30, "Arial");
			}
			if(!Editing[playerid])
				ShowPlayerDialog(playerid, DIALOG_COLOR, DIALOG_STYLE_LIST, "Choose the color", RED_U"» Red\n"BLUE_U"» Blue\n"GREEN_U"» Green\n"BROWN_U"» Brown\n"ORANGE_U"» Orange", "Choose", "Cancel");
			else
				ShowPlayerDialog(playerid, DIALOG_MODIFIER, DIALOG_STYLE_LIST, "Edit your tag", "- Enter the tag's text\n- Choose the font\n- Choose the color\n- Position\n- Confirm", "Ok", "");
		}
		else if(!Editing[playerid])
			CancelTag(playerid);
		else
			return 1;
	}

	if(dialogid == DIALOG_COLOR)
	{
		if(response)
		{
			p_Tag[CurrentTag[playerid]][tColor] = listitem;

			if(!Editing[playerid])
			{
				new string[110];
				format(string, sizeof(string), "- [ID] %i | [Text] \"%s\" | [Police] \"%s\" | Color: %s", p_Tag[CurrentTag[playerid]][tID], p_Tag[CurrentTag[playerid]][tText], p_Tag[CurrentTag[playerid]][tPolice], GetColorByID(p_Tag[CurrentTag[playerid]][tColor]));
				ShowPlayerDialog(playerid, DIALOG_FIN, DIALOG_STYLE_MSGBOX, "Recap", string, "Ok", "Cancel");
			}
			else
				ShowPlayerDialog(playerid, DIALOG_MODIFIER, DIALOG_STYLE_LIST, "Edit your tag", "- Enter the tag's text\n- Choose the font\n- Choose the color\n- Position\n- Confirm", "Ok", "");
		}

		else if(!Editing[playerid])
			CancelTag(playerid);
		else
			return 1;
	}

	if(dialogid == DIALOG_FIN)
	{
		if(response)
		{
			new Float:x,
				Float:y,
				Float:z;

			GetPlayerPos(playerid, x, y, z);
			p_Tag[CurrentTag[playerid]][tID] = CreateDynamicObject(OBJECT_WALL, x+1.0, y+1.0, z, 0.0, 0.0, 0.0, (p_Tag[CurrentTag[playerid]][tVW] = GetPlayerVirtualWorld(playerid)), (p_Tag[CurrentTag[playerid]][tInterior] = GetPlayerInterior(playerid)));
			Editing[playerid] = true;
			SetDynamicObjectMaterialText(p_Tag[CurrentTag[playerid]][tID], 0, p_Tag[CurrentTag[playerid]][tText], OBJECT_MATERIAL_SIZE_128x64, p_Tag[CurrentTag[playerid]][tPolice], FONT_SIZE, BOLD_TEXT, GetxColorByID(p_Tag[CurrentTag[playerid]][tColor]), _, TEXT_ALIGNEMENT);
			EditDynamicObject(playerid, p_Tag[CurrentTag[playerid]][tID]);
			return 1;
		}

		else if(!Editing[playerid])
			CancelTag(playerid);
		else
			return 1;
	}
	return 1;
}

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

public OnPlayerEditDynamicObject(playerid, objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz)
{
	if(Editing[playerid] && response == EDIT_RESPONSE_FINAL)
	{
		p_Tag[CurrentTag[playerid]][tPosX] = x;
		p_Tag[CurrentTag[playerid]][tPosY] = y;
		p_Tag[CurrentTag[playerid]][tPosZ] = z;
		p_Tag[CurrentTag[playerid]][tRX] = rx;
		p_Tag[CurrentTag[playerid]][tRY] = ry;
		p_Tag[CurrentTag[playerid]][tRZ] = rz;
		Editing[playerid] = false;
		DestroyDynamicObject(p_Tag[CurrentTag[playerid]][tID]);
		p_Tag[CurrentTag[playerid]][tID] = CreateDynamicObject(OBJECT_WALL, x, y, z, rx, ry, rz, (p_Tag[CurrentTag[playerid]][tVW] = GetPlayerVirtualWorld(playerid)), (p_Tag[CurrentTag[playerid]][tInterior] = GetPlayerInterior(playerid)));
		SetDynamicObjectMaterialText(p_Tag[CurrentTag[playerid]][tID], 0, p_Tag[CurrentTag[playerid]][tText], OBJECT_MATERIAL_SIZE_128x64, p_Tag[CurrentTag[playerid]][tPolice], FONT_SIZE, BOLD_TEXT, GetxColorByID(p_Tag[CurrentTag[playerid]][tColor]), _, TEXT_ALIGNEMENT);

		if(!p_Tag[CurrentTag[playerid]][tExist])
		{
			new query[400],
				name[MAX_PLAYER_NAME];
			GetPlayerName(playerid, name, sizeof(name));
		 	mysql_format(MySQL, query, sizeof(query), "INSERT INTO `Tag` (`Owner`, `Text`) VALUES ('%s', '%s')", name, p_Tag[CurrentTag[playerid]][tText]);
		 	p_Tag[CurrentTag[playerid]][tExist] = true;
			format(p_Tag[CurrentTag[playerid]][tOwner], MAX_PLAYER_NAME, "%s", name);
			mysql_tquery(MySQL, query, "OnTagCreated", "i", CurrentTag[playerid]);
			PlayerTag[playerid]++;
		}
		else
			SaveTag(CurrentTag[playerid]);
	}
}

PUBLIC:OnTagCreated(tagid)
{
	p_Tag[tagid][tSQLIB] = cache_insert_id();
	SaveTag(tagid);
}

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#define IsHolding(%0) \
	((newkeys & (%0)) == (%0))

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(IsHolding(KEY_FIRE))
	{
		TimeHold[playerid] = gettime();
		IsHolding[playerid] = true;
	}
	else if(IsHolding[playerid] && (gettime() - TimeHold[playerid]) >= TIME_SPRAY && GetPlayerWeapon(playerid) == 41)
	{
		IsHolding[playerid] = false;
		if((CurrentTag[playerid] = GetNearestTag(playerid)) != INVALID_TAG_ID)
		{
			Editing[playerid] = true;
			ShowPlayerDialog(playerid, DIALOG_MODIFIER, DIALOG_STYLE_LIST, "Edit your tag", "- Enter the tag's text\n- Choose the font\n- Choose the color\n- Position\n- Confirm", "Ok", "");
			return 1;
		}
		else
		{
			CurrentTag[playerid] = GetFreeTagSlot();
			if(PlayerTag[playerid] >= MAX_TAG_PER_PLAYER)
				return SCM(playerid, RED, "[Error] {ffffff}You have reached the tag limit.");
			if(TagNumber+1 < MAX_TAG)
				ShowPlayerDialog(playerid, DIALOG_TEXT, DIALOG_STYLE_INPUT, "Message", "Enter the text's tag", "Ok", "Cancel");
			else
				return CurrentTag[playerid] = 0, SCM(playerid, RED, "The number of tag has reached the limit. You can not create a new one.");
			return 1;
		}
	}
	else
	{
		TimeHold[playerid] = 0;
		IsHolding[playerid] = false;
	}
	return 1;
}

// ================================================================================================================================================================================================================================================

CMD:sontuong(playerid, params[])
{
	if(!IsPlayerAdmin(playerid))
		return 0;

	if(sscanf(params, "i", CurrentTag[playerid]))
		return SCM(playerid, LBLUE, "/edittag [TagID]");
	if(!p_Tag[CurrentTag[playerid]][tExist])
		return SCM(playerid, RED, "[Error] {ffffff}Wrong tag id.");
	Editing[playerid] = true;

	ShowPlayerDialog(playerid, DIALOG_MODIFIER, DIALOG_STYLE_LIST, "Edit your tag", "- Enter the tag's text\n- Choose the font\n- Choose the color\n- Position\n- Confirm", "Ok", "");
	return 1;
}

CMD:xoason(playerid, params[])
{
	if(!IsPlayerAdmin(playerid))
		return 0;

	new tagid;

	if(sscanf(params, "i", tagid))
		return SCM(playerid, LBLUE, "/deltag [TagID]");

	if(!p_Tag[tagid][tExist])
		return SCM(playerid, RED, "[Error] {ffffff}Wrong tag id.");
	new
		name[MAX_PLAYER_NAME];

	DestroyDynamicObject(p_Tag[tagid][tID]);

	for(new i; i < MAX_PLAYERS; i++)
	{
		if(!IsPlayerConnected(i))
			continue;
		GetPlayerName(i, name, sizeof(name));
		if(!strcmp(p_Tag[tagid][tOwner], name))
		{
			PlayerTag[i]--;
			break;
		}
	}
	new query[45];
	mysql_format(MySQL, query, sizeof(query), "DELETE FROM `Tag` WHERE `SQLIB` = '%d'", p_Tag[tagid][tSQLIB]);
	mysql_query(MySQL, query, false);
	CurrentTag[playerid] = tagid;
	CancelTag(playerid);
	SCM(playerid, -1, "Tag deleted");
	return 1;
}

// ================================================================================================================================================================================================================================================

ReloadTag(tagid)
{
	if(!p_Tag[tagid][tExist])
		return printf("[Error] Tag ID %i doesn't exist.", tagid);

	DestroyDynamicObject(p_Tag[tagid][tID]);
	p_Tag[tagid][tID] = CreateDynamicObject(OBJECT_WALL, p_Tag[tagid][tPosX], p_Tag[tagid][tPosY], p_Tag[tagid][tPosZ], p_Tag[tagid][tRX], p_Tag[tagid][tRY], p_Tag[tagid][tRZ], p_Tag[tagid][tVW], p_Tag[tagid][tInterior]);
	SetDynamicObjectMaterialText(p_Tag[tagid][tID], 0, p_Tag[tagid][tText], OBJECT_MATERIAL_SIZE_128x64, p_Tag[tagid][tPolice], FONT_SIZE, BOLD_TEXT, GetxColorByID(p_Tag[tagid][tColor]), _, TEXT_ALIGNEMENT);
	return 1;
}

SetTagNumberForPlayer(playerid)
{
	new Name[MAX_PLAYER_NAME];
	GetPlayerName(playerid, Name, MAX_PLAYER_NAME);
	for(new i; i < TagNumber; i++)
	{
		if(!p_Tag[i][tExist])
			continue;

		if(!strcmp(p_Tag[i][tOwner], Name))
			PlayerTag[playerid]++;
	}
	return 1;
}

GetNearestTag(playerid, Float:range = 5.0)
{
	new Float:distance = 999.0,
		tag = INVALID_TAG_ID,
		Float:a;

	for(new i; i <= TagNumber; i++)
	{
		if(!p_Tag[i][tExist])
			continue;
		a = GetPlayerDistanceFromPoint(playerid, p_Tag[i][tPosX], p_Tag[i][tPosY], p_Tag[i][tPosZ]);
		if(a > distance && a < range || a > range)
			continue;
		else
			distance = a, tag = i;
	}
	return tag;
}

GetFreeTagSlot()
{
	for(new i=1; i < MAX_TAG; i++)
	{
		if(!p_Tag[i][tExist])
			return i;
	}
	return INVALID_TAG_ID;
}

SaveTag(tagid)
{
	new query[400 + EOS];
	strcat(query, "UPDATE `Tag` SET `Owner` = '%s', `Text` = '%s', `Color` = '%d', `x` = '%f', `y` = '%f', `z` = '%f', `rX` = '%f', `rY` = '%f',`rZ` = '%f', `VirtualWorld` = '%d', `Interior` = '%d', `Exist` = '%d', `ID` = '%d', `Police` = '%s' WHERE `SQLIB` = '%d'");
	mysql_format(MySQL, query, sizeof(query), query, p_Tag[tagid][tOwner], p_Tag[tagid][tText], p_Tag[tagid][tColor], p_Tag[tagid][tPosX], p_Tag[tagid][tPosY], p_Tag[tagid][tPosZ], p_Tag[tagid][tRX], p_Tag[tagid][tRY], p_Tag[tagid][tRZ], p_Tag[tagid][tVW], p_Tag[tagid][tInterior], _:p_Tag[tagid][tExist], p_Tag[tagid][tID], p_Tag[tagid][tPolice], p_Tag[tagid][tSQLIB]);
	mysql_query(MySQL, query);
	return 1;
}

CancelTag(playerid)
{
	p_Tag[CurrentTag[playerid]][tID] = 0;
	p_Tag[CurrentTag[playerid]][tSQLIB] = 0;
	p_Tag[CurrentTag[playerid]][tColor] = -1;
	p_Tag[CurrentTag[playerid]][tPosX] = 0.0;
	p_Tag[CurrentTag[playerid]][tPosY] = 0.0;
	p_Tag[CurrentTag[playerid]][tPosZ] = 0.0;
	p_Tag[CurrentTag[playerid]][tRX] = 0.0;
	p_Tag[CurrentTag[playerid]][tRY] = 0.0;
	p_Tag[CurrentTag[playerid]][tRZ] = 0.0;
	p_Tag[CurrentTag[playerid]][tVW] = 0;
	p_Tag[CurrentTag[playerid]][tInterior] = 0;
	p_Tag[CurrentTag[playerid]][tExist] = false;
	Editing[playerid] = false;
	format(p_Tag[CurrentTag[playerid]][tText], 20, "%s", EOS);
	format(p_Tag[CurrentTag[playerid]][tOwner], 24, "%s", EOS);
	format(p_Tag[CurrentTag[playerid]][tPolice], 30, "%s", EOS);
}

GetxColorByID(colorid)
{
	switch(colorid)
	{
		case 0: return 0xFFFF0000;
		case 1: return 0xFF99CCFF;
		case 2: return 0xFF008000;
		case 3: return 0xFF9E3E3E;
		case 4: return 0xFFFF6600;
	}
	return 1;
}

GetColorByID(colorid)
{
	static colorstr[50] = WHITE_U"Unknown";
	switch(colorid)
	{
		case 0:
		{
			format(colorstr, sizeof(colorstr), RED_U"Red");
			return colorstr;
		}
		case 1:
		{
			format(colorstr, sizeof(colorstr), BLUE_U"Blue");
			return colorstr;
		}
		case 2:
		{
			format(colorstr, sizeof(colorstr), GREEN_U"Green");
			return colorstr;
		}
		case 3:
		{
			format(colorstr, sizeof(colorstr), BROWN_U"Brown");
			return colorstr;
		}
		case 4:
		{
			format(colorstr, sizeof(colorstr), ORANGE_U"Orange");
			return colorstr;
		}
	}
	return colorstr;
}
