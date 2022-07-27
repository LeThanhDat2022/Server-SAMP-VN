// Filterscript Name: jSign (justice Sign)
// Filterscript Version: 1.0
// justice96 - https://justice96.adma.id.au

#include <a_samp>
#include <a_mysql>
#include <sscanf2>
#include <streamer>
#include <easyDialog>
#include <YSI\y_iterate>
#include <zcmd>

#define jsHOST 		"localhost"
#define jsUSER		"root"
#define jsDATABASE 	"lol"
#define jsPASSWORD 	""

#define COLOR_GREY	0xAFAFAFFF

#define MAX_SIGNS 50
#define MAX_SIGN_TEXT 128
#define MAX_FONT_TEXT 28

#define SendErrorMessage(%0,%1) \
	SendClientMessage(%0, COLOR_GREY, "ERROR: {ffffff}"%1)

#define SendSyntaxMessage(%0,%1) \
	SendClientMessage(%0, COLOR_GREY, "USAGE: {ffffff}"%1)

#define IsNull(%1) ((!(%1[0])) || (((%1[0]) == '\1') && (!(%1[1]))))
#define forex(%0,%1) for(new %0 = 0; %0 < %1; %0++)
#define function%0(%1) \
        forward%0(%1); public%0(%1)

enum j_sign
{
	ORM:ORM_ID,
	ID,
	Model,
	Text[MAX_SIGN_TEXT],
	FontText[MAX_FONT_TEXT],
	FontColor,
	BackColor,
	FontSize,
	MaterialSize,
	Float:Pos[6]
};
new jSign[MAX_SIGNS][j_sign];
new SignID[MAX_SIGNS];
new Iterator:Signs<MAX_SIGNS>;

new
	Sign_Connection = -1,
	EditSign[MAX_PLAYERS] = {-1, ...};

new const MatSizes_List[][] =
{
	{OBJECT_MATERIAL_SIZE_32x32, "32x32" },
	{OBJECT_MATERIAL_SIZE_64x32, "64x32" },
	{OBJECT_MATERIAL_SIZE_64x64, "64x64" },
	{OBJECT_MATERIAL_SIZE_128x32, "128x32" },
	{OBJECT_MATERIAL_SIZE_128x64, "128x64" },
	{OBJECT_MATERIAL_SIZE_128x128, "128x128" },
	{OBJECT_MATERIAL_SIZE_256x32, "256x32" },
	{OBJECT_MATERIAL_SIZE_256x64, "256x64" },
	{OBJECT_MATERIAL_SIZE_256x128 ,"256x128" },
	{OBJECT_MATERIAL_SIZE_256x256 ,"256x256" },
	{OBJECT_MATERIAL_SIZE_512x64, "512x64" },
	{OBJECT_MATERIAL_SIZE_512x128, "512x128" },
	{OBJECT_MATERIAL_SIZE_512x256, "512x256" },
	{OBJECT_MATERIAL_SIZE_512x512, "512x512" }
};

new const ColorList[][] =
{
    {0xFFFF0000, "{ff0000}Red"}, // red
    {0xFF04B404, "{04b404}Green"}, // green
    {0xFF0000FF, "{0000ff}Blue"}, // blue
    {0xFFFFFF00, "{ffff00}Yellow"}, // yellow
    {0xFFFF8000, "{ff8000}Orange"},// orange
    {0xFF000000, "{000000}Black"},// black
    {0xFFFFFFFF, "{ffffff}White"}, // white
    {0xFFA4A4A4, "{a4a4a4}Grey"} // grey
};

public OnFilterScriptInit()
{
	Sign_Connection = mysql_connect(jsHOST, jsUSER, jsDATABASE, jsPASSWORD);
	if(mysql_errno())
		printf("[DEBUG] Could not connect to the server. (ERROR: #%d)", mysql_errno());
	else
	    print("[DEBUG] Successfully connected to the server!");

	mysql_pquery(Sign_Connection, "SELECT * FROM `jsigns` ORDER BY `signid` ASC","Sign_Load","");

	mysql_tquery(Sign_Connection, "CREATE TABLE IF NOT EXISTS `jsigns` ( \
	  `signid` int(10) NOT NULL, \
	  `model` int(10) NOT NULL, \
	  `text` varchar(128) NOT NULL, \
	  `fonttext` varchar(28) NOT NULL, \
	  `fontsize` int(10) NOT NULL, \
	  `fontcolor` int(10) NOT NULL, \
	  `backcolor` int(10) NOT NULL, \
	  `matsize` int(10) NOT NULL, \
	  `x` float NOT NULL, \
	  `y` float NOT NULL, \
	  `z` float NOT NULL, \
	  `rx` float NOT NULL, \
	  `ry` float NOT NULL, \
	  `rz` float NOT NULL \
	) ENGINE=InnoDB DEFAULT CHARSET=latin1;");

	mysql_tquery(Sign_Connection, "ALTER TABLE `jsigns` \
 	ADD PRIMARY KEY (`signid`);");

	return 1;
}

public OnFilterScriptExit()
{
	foreach(new i : Signs)
	{
		orm_update(jSign[i][ORM_ID]);
		orm_destroy(jSign[i][ORM_ID]);
	}
	return 1;
}

public OnPlayerEditDynamicObject(playerid, objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz)
{
    new signid = EditSign[playerid];
	if(response == EDIT_RESPONSE_FINAL)
	{
	    if(signid != -1)
	    {
		    jSign[signid][Pos][0] = x;
		    jSign[signid][Pos][1] = y;
		    jSign[signid][Pos][2] = z;
		    jSign[signid][Pos][3] = rx;
		    jSign[signid][Pos][4] = ry;
		    jSign[signid][Pos][5] = rz;
		    orm_update(jSign[signid][ORM_ID]);

		    Sync_Sign(EditSign[playerid],true);
		}
	}
	if(response == EDIT_RESPONSE_FINAL || response == EDIT_RESPONSE_CANCEL)
	{
		if(signid != -1)
		{
		    Sync_Sign(EditSign[playerid],true);
			EditSign[playerid] = -1;
		}
	}
	return 1;
}

Dialog:ListMaterial_Size(playerid, response, listitem, inputtext[])
{
 	if(response)
    {
        new id = GetPVarInt(playerid, "jst96"), notice[128];

        jSign[id][MaterialSize] = MatSizes_List[listitem][0];
        orm_update(jSign[id][ORM_ID]);

        format(notice,sizeof(notice),"SIGN: Sign id %d has changed the material size to %s", id, MatSizes_List[listitem][1]);
		SendClientMessage(playerid, -1, notice);

		Sync_Sign(id,true);
    }
    return 1;
}

Dialog:ListColor_Font(playerid, response, listitem, inputtext[])
{
 	if(response)
    {
        new id = GetPVarInt(playerid, "jst96"), notice[128];

        jSign[id][FontColor] = ColorList[listitem][0];
        orm_update(jSign[id][ORM_ID]);

        format(notice,sizeof(notice),"SIGN: Sign id %d has changed the font color to %s", id, ColorList[listitem][1]);
		SendClientMessage(playerid, -1, notice);

		Sync_Sign(id,true);
    }
    return 1;
}

Dialog:ListColor_Back(playerid, response, listitem, inputtext[])
{
 	if(response)
    {
        new id = GetPVarInt(playerid, "jst96"), notice[128];

        jSign[id][BackColor] = ColorList[listitem][0];
        orm_update(jSign[id][ORM_ID]);

        format(notice,sizeof(notice),"SIGN: Sign id %d has changed the background color to %s", id, ColorList[listitem][1]);
		SendClientMessage(playerid, -1, notice);

		Sync_Sign(id,true);
    }
    return 1;
}

function Sign_Load()
{
    new rows = cache_get_row_count(Sign_Connection);
 	if(rows != 0)
  	{
   		forex(row,rows)
     	{
	    	new id = cache_get_row_int(row,0,Sign_Connection);
      		new ORM:ormid = jSign[id][ORM_ID] = orm_create("jsigns",Sign_Connection);
            orm_addvar_int(ormid,jSign[id][ID],"signid");
            orm_addvar_int(ormid,jSign[id][Model],"model");
            orm_addvar_string(ormid,jSign[id][Text],MAX_SIGN_TEXT,"text");
            orm_addvar_string(ormid,jSign[id][FontText],MAX_FONT_TEXT,"fonttext");
            orm_addvar_int(ormid,jSign[id][FontSize],"fontsize");
            orm_addvar_int(ormid,jSign[id][FontColor],"fontcolor");
            orm_addvar_int(ormid,jSign[id][BackColor],"backcolor");
            orm_addvar_int(ormid,jSign[id][MaterialSize],"matsize");
            orm_addvar_float(ormid,jSign[id][Pos][0],"x");
            orm_addvar_float(ormid,jSign[id][Pos][1],"y");
            orm_addvar_float(ormid,jSign[id][Pos][2],"z");
            orm_addvar_float(ormid,jSign[id][Pos][3],"rx");
            orm_addvar_float(ormid,jSign[id][Pos][4],"ry");
            orm_addvar_float(ormid,jSign[id][Pos][5],"rz");
            orm_apply_cache(ormid,row);
            orm_setkey(ormid,"signid");

            Sync_Sign(id);
            Iter_Add(Signs,id);
	    }
	}
	printf("[DEBUG] %d signs loaded!",rows);
	return 1;
}

function Sign_Create(playerid,i)
{
	SignID[i] = CreateDynamicObject(jSign[i][Model], jSign[i][Pos][0], jSign[i][Pos][1], jSign[i][Pos][2], jSign[i][Pos][3], jSign[i][Pos][4], jSign[i][Pos][5]);

	SetDynamicObjectMaterial(SignID[i], 1, 18646, "matcolours", "grey-80-percent", 0);
	SetDynamicObjectMaterialText(SignID[i], 0, jSign[i][Text], jSign[i][MaterialSize], jSign[i][FontText], jSign[i][FontSize], 1, jSign[i][FontColor], jSign[i][BackColor], 1);

	Iter_Add(Signs,i);
	if(playerid != INVALID_PLAYER_ID)
	{
		new string[128];
		format(string,sizeof(string),"SIGN: Created with id %d",i);
		SendClientMessage(playerid, -1, string);

		EditDynamicObject(playerid, SignID[i]);
		EditSign[playerid] = i;
	}
	return 1;
}

stock FixText(text[]) // Pottus
{
	new len = strlen(text);
	if(len > 1)
	{
		for(new i = 0; i < len; i++)
		{
			if(text[i] == 92)
			{
			    if(text[i+1] == 'n')
			    {
					text[i] = '\n';
					for(new j = i+1; j < len; j++) text[j] = text[j+1], text[j+1] = 0;
					continue;
			    }
			}
		}
	}
	return 1;
}

stock ColouredText(text[]) // RyDeR
{
	new
	    pos = -1,
	    string[(128 + 16)]
	;
	strmid(string, text, 0, 128, (sizeof(string) - 16));

	while((pos = strfind(string, "#", true, (pos + 1))) != -1)
	{
	    new
	        i = (pos + 1),
	        hexCount
		;
		for( ; ((string[i] != 0) && (hexCount < 6)); ++i, ++hexCount)
		{
		    if(!(('a' <= string[i] <= 'f') || ('A' <= string[i] <= 'F') || ('0' <= string[i] <= '9')))
		    {
		        break;
		    }
		}
		if((hexCount == 6) && !(hexCount < 6))
		{
			string[pos] = '{';
			strins(string, "}", i);
		}
	}
	return string;
}

stock Sync_Sign(id, bool:IsDestroy = false)
{
    if(IsDestroy)
    {
		if(IsValidDynamicObject(SignID[id]))
			DestroyDynamicObject(SignID[id]);
	}
    SignID[id] = CreateDynamicObject(jSign[id][Model], jSign[id][Pos][0], jSign[id][Pos][1], jSign[id][Pos][2], jSign[id][Pos][3], jSign[id][Pos][4], jSign[id][Pos][5]);
	SetDynamicObjectMaterial(SignID[id], 1, 18646, "matcolours", "grey-80-percent", 0);
	SetDynamicObjectMaterialText(SignID[id], 0, jSign[id][Text], jSign[id][MaterialSize], jSign[id][FontText], jSign[id][FontSize], 1, jSign[id][FontColor], jSign[id][BackColor], 1);
	return 1;
}

stock GetPlayerNearestSign(playerid)
{
	foreach(new id : Signs)
	{
		if(IsPlayerInRangeOfPoint(playerid, 3.0, jSign[id][Pos][0], jSign[id][Pos][1], jSign[id][Pos][2])) return id;
	}
	return -1;
}

SSCANF:signmenu(string[])
{
	if(!strcmp(string,"create",true)) return 1;
	else if(!strcmp(string,"make",true)) return 1;
	else if(!strcmp(string,"spawn",true)) return 1;

	else if(!strcmp(string,"delete",true)) return 2;
	else if(!strcmp(string,"destroy",true)) return 2;
	else if(!strcmp(string,"remove",true)) return 2;

	else if(!strcmp(string,"model",true)) return 3;
	else if(!strcmp(string,"setmodel",true)) return 3;

	else if(!strcmp(string,"move",true)) return 4;
	else if(!strcmp(string,"setmove",true)) return 4;

	else if(!strcmp(string,"text",true)) return 5;
	else if(!strcmp(string,"settext",true)) return 5;

	else if(!strcmp(string,"fontcolor",true)) return 6;
	else if(!strcmp(string,"fontcolour",true)) return 6;
	else if(!strcmp(string,"changefontcolor",true)) return 6;

	else if(!strcmp(string,"backgroundcolor",true)) return 7;
	else if(!strcmp(string,"backgroundcolour",true)) return 7;
	else if(!strcmp(string,"changebackgroundcolour",true)) return 7;

	else if(!strcmp(string,"refresh",true)) return 8;

	else if(!strcmp(string,"fontsize",true)) return 9;
	else if(!strcmp(string,"setsize",true)) return 9;

	else if(!strcmp(string,"materialsize",true)) return 10;
	else if(!strcmp(string,"setmaterial",true)) return 10;

	else if(!strcmp(string,"font",true)) return 11;
	else if(!strcmp(string,"changefont",true)) return 11;
	else if(!strcmp(string,"setfont",true)) return 11;

	else if(!strcmp(string,"near",true)) return 12;
	return 0;
}

CMD:son(playerid, params[])
{
	new action,string[512];
	if(!IsPlayerAdmin(playerid)) return SendErrorMessage(playerid, "You are not an Admin (RCON)");
	if(sscanf(params,"k<signmenu>S()[128]",action,string)) return SendSyntaxMessage(playerid,"/sign [create/delete/model/move/text/fontcolor/backgroundcolor/refresh/fontsize/materialsize/font/near]");
	else
	{
	    switch(action)
	    {
	    	case 1:
	    	{
	    		new name[MAX_SIGN_TEXT], Float:x, Float:y, Float:z, Float:angle;
			    GetPlayerPos(playerid, x, y, z);
				GetPlayerFacingAngle(playerid, angle);
			    x += 5.0 * floatsin(-angle, degrees);
			    y += 5.0 * floatcos(-angle, degrees);

			    if(sscanf(string, "s["#MAX_SIGN_TEXT"]", name)) return SendSyntaxMessage(playerid, "/sign create [text]");
			    if(strlen(name) > MAX_SIGN_TEXT) return SendErrorMessage(playerid, "Text too long!");

			    new id = Iter_Free(Signs);
			    if(id == -1) return SendErrorMessage(playerid, "No free sign slot available!");

			    jSign[id][ID] = id;
			    jSign[id][Model] = 3926;

			    FixText(name);
			    format(jSign[id][Text], MAX_SIGN_TEXT, "%s", ColouredText(name));

			    format(jSign[id][FontText], MAX_FONT_TEXT, "Arial");

				jSign[id][Pos][0] = x;
			 	jSign[id][Pos][1] = y;
			 	jSign[id][Pos][2] = z;

				jSign[id][FontColor] = 0xFFFFFFFF;
				jSign[id][BackColor] = 0xFF000000;
				jSign[id][FontSize] = 30;
				jSign[id][MaterialSize] = 130;

				new ORM:ormid = jSign[id][ORM_ID] = orm_create("jsigns",Sign_Connection);
			    orm_addvar_int(ormid,jSign[id][ID],"signid");
			    orm_addvar_int(ormid,jSign[id][Model],"model");
			    orm_addvar_string(ormid,jSign[id][Text],MAX_SIGN_TEXT,"text");
			    orm_addvar_string(ormid,jSign[id][FontText],MAX_FONT_TEXT,"fonttext");
			    orm_addvar_int(ormid,jSign[id][FontSize],"fontsize");
			    orm_addvar_int(ormid,jSign[id][FontColor],"fontcolor");
			    orm_addvar_int(ormid,jSign[id][BackColor],"backcolor");
			    orm_addvar_int(ormid,jSign[id][MaterialSize],"matsize");
			    orm_addvar_float(ormid,jSign[id][Pos][0],"x");
			    orm_addvar_float(ormid,jSign[id][Pos][1],"y");
			    orm_addvar_float(ormid,jSign[id][Pos][2],"z");
			    orm_addvar_float(ormid,jSign[id][Pos][3],"rx");
			    orm_addvar_float(ormid,jSign[id][Pos][4],"ry");
			    orm_addvar_float(ormid,jSign[id][Pos][5],"rz");
			    orm_insert(ormid,"Sign_Create","dd",playerid,id);
			    orm_setkey(ormid,"signid");
	    	}
	    	case 2:
	    	{
	    		if(IsNull(string)) return SendSyntaxMessage(playerid,"/sign delete [signid]");
             	new signid = strval(string);
              	if(Iter_Contains(Signs,signid))
               	{
                	format(string,sizeof(string),"SIGN: Sign id %d has been deleted!",signid);
                 	SendClientMessage(playerid,-1,string);

                  	DestroyDynamicObject(SignID[signid]);
                   	orm_delete(jSign[signid][ORM_ID],true);
                    Iter_Remove(Signs,signid);
      			}
         		else SendErrorMessage(playerid,"Invalid signid!");
	    	}
	    	case 3:
	    	{
	    	    new signid, modelid;
	    		if(sscanf(string, "dd", signid, modelid)) return SendSyntaxMessage(playerid, "/sign model [signid] [modelid]");
              	if(Iter_Contains(Signs,signid))
               	{
               	    jSign[signid][Model] = modelid;
               	    orm_update(jSign[signid][ORM_ID]);

	    			format(string,sizeof(string),"SIGN: Sign id %d has changed the model id to %d", signid, modelid);
					SendClientMessage(playerid, -1, string);
					Sync_Sign(signid,true);
			    }
			    else SendErrorMessage(playerid,"Invalid signid!");
	    	}
	    	case 4:
	    	{
	    		if(IsNull(string)) return SendSyntaxMessage(playerid,"/sign move [signid]");
             	new signid = strval(string);
              	if(Iter_Contains(Signs,signid))
               	{
		    		EditSign[playerid] = signid;
			        EditDynamicObject(playerid, SignID[signid]);
			        SendClientMessage(playerid, -1, "INFO: Move the cursor to moving the object!");
			    }
			    else SendErrorMessage(playerid,"Invalid signid!");
	    	}
	    	case 5:
	    	{
	    		new signid,name[MAX_SIGN_TEXT];
             	if(sscanf(string,"ds["#MAX_SIGN_TEXT"]",signid,name)) return SendSyntaxMessage(playerid,"/sign text [signid] [text]");
             	if(strlen(name) > MAX_SIGN_TEXT) return SendErrorMessage(playerid, "Text too long!");
             	if(Iter_Contains(Signs,signid))
               	{
			        FixText(name);
					format(jSign[signid][Text], MAX_SIGN_TEXT, "%s", ColouredText(name));
					orm_update(jSign[signid][ORM_ID]);
					Sync_Sign(signid,true);

					format(string,sizeof(string),"SIGN: Sign id %d has renamed to the text %s", signid, jSign[signid][Text]);
					SendClientMessage(playerid, -1, string);
				}
			    else SendErrorMessage(playerid,"Invalid signid!");
	    	}
	    	case 6:
	    	{
	    		if(IsNull(string)) return SendSyntaxMessage(playerid,"/sign fontcolor [signid]");
             	new signid = strval(string);
              	if(Iter_Contains(Signs,signid))
               	{
	    			SetPVarInt(playerid, "jst96", signid);
					for(new i = 0, j = sizeof(ColorList); i < j; i++)
			    	{
			        	format(string,sizeof(string),"%s%s\n", string, ColorList[i][1]);
			    	}
			    	Dialog_Show(playerid, ListColor_Font, DIALOG_STYLE_LIST, "Color List", string, "Change", "Cancel");
			    }
			    else SendErrorMessage(playerid,"Invalid signid!");
	    	}
	    	case 7:
	    	{
	    		if(IsNull(string)) return SendSyntaxMessage(playerid,"/sign backgroundcolor [signid]");
             	new signid = strval(string);
              	if(Iter_Contains(Signs,signid))
               	{
	    			SetPVarInt(playerid, "jst96", signid);
					for(new i = 0, j = sizeof(ColorList); i < j; i++)
			    	{
			        	format(string,sizeof(string),"%s%s\n", string, ColorList[i][1]);
			    	}
			    	Dialog_Show(playerid, ListColor_Back, DIALOG_STYLE_LIST, "Color List", string, "Change", "Cancel");
			    }
			    else SendErrorMessage(playerid,"Invalid signid!");
	    	}
	    	case 8:
	    	{
	    		if(IsNull(string)) return SendSyntaxMessage(playerid,"/sign refresh [signid]");
             	new signid = strval(string);
              	if(Iter_Contains(Signs,signid))
               	{
		    		Sync_Sign(signid,true);
		    		format(string,sizeof(string),"SIGN: Sign id %d has been synced!",signid);
			        SendClientMessage(playerid, -1, string);
			    }
			    else SendErrorMessage(playerid,"Invalid signid!");
	    	}
	    	case 9:
	    	{
	    		new signid, size;
			    if(sscanf(string, "dd", signid, size)) return SendSyntaxMessage(playerid, "/sign fontsize [signid] [size]");
	    		if(size < 0 && size > 200) return SendErrorMessage(playerid, "Size limit 0 - 200!");
	    		if(Iter_Contains(Signs,signid))
               	{
               		jSign[signid][FontSize] = size;
               		orm_update(jSign[signid][ORM_ID]);
					Sync_Sign(signid,true);

					format(string,sizeof(string),"SIGN: Sign id %d has changed the fontsize to %d",signid,size);
					SendClientMessage(playerid, -1, string);
				}
			    else SendErrorMessage(playerid,"Invalid signid!");
	    	}
	    	case 10:
	    	{
	    		if(IsNull(string)) return SendSyntaxMessage(playerid,"/sign materialsize [signid]");
             	new signid = strval(string);
              	if(Iter_Contains(Signs,signid))
               	{
	    			SetPVarInt(playerid, "jst96", signid);
					for(new i = 0, j = sizeof(MatSizes_List); i < j; i++)
			    	{
			        	format(string,sizeof(string),"%s%s\n", string, MatSizes_List[i][1]);
			    	}
			    	Dialog_Show(playerid, ListMaterial_Size, DIALOG_STYLE_LIST, "Material Size List", string, "Change", "Cancel");
			    }
			    else SendErrorMessage(playerid,"Invalid signid!");
	    	}
	    	case 11:
	    	{
	    		new signid, type[MAX_FONT_TEXT];
	    		if(sscanf(string, "ds["#MAX_FONT_TEXT"]", signid, type)) return SendSyntaxMessage(playerid, "/sign font [signid] [fonttype]");
              	if(Iter_Contains(Signs,signid))
               	{
	    			format(jSign[signid][FontText], MAX_FONT_TEXT, "%s", type);
			        orm_update(jSign[signid][ORM_ID]);

			        format(string,sizeof(string),"SIGN: Sign id %d has changed the font text to %s", signid, type);
					SendClientMessage(playerid, -1, string);

					Sync_Sign(signid,true);
			    }
			    else SendErrorMessage(playerid,"Invalid signid!");
	    	}
	    	case 12:
	    	{
	    		new signid = GetPlayerNearestSign(playerid);
		        if(signid == -1) return SendErrorMessage(playerid,"You are not near any signs!");
				{
				    format(string, sizeof(string), "You are near sign with id %d", signid);
				    SendClientMessage(playerid, -1, string);
				}
	   		}
	   		default: SendSyntaxMessage(playerid,"/sign [create/delete/model/move/text/fontcolor/backgroundcolor/refresh/fontsize/materialsize/font/near]");
	   	}
	}
	return;
}
