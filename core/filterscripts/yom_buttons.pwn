#define MAX_BUTTONS  1000


//this is the distance max for detecting buttons. If the player is at this
//distance, or less, of a button, he will press this button.
#define MAX_DISTANCE	1.3


//this is the object modelid used for buttons.
//i'm asking for nice objects, if you know some that can be used as buttons, tell me!
#define OBJECT			2886


//comment this line to disable the sound, or change the number for another sound
//don't forget that you can do whatever you want in OnPlayerPressButton
#define SOUND           1083


//comment this line to disable debug (recommended once you finished using the
//buttons editor, this will make the script more efficient)
//#define DEBUG

/*############################################################################*/










/*----------------------------------------------------------------------------*/
#include <a_samp>
#include <streamer>

#undef MAX_PLAYERS
#define MAX_PLAYERS 1000

#define INVALID_BUTTON_ID   -1


enum BUTTON_INFOS
{
	bool:Created,
	bool:Moving,
	bool:Usable[MAX_PLAYERS],
	Float:Pos[4],
	ObjectID
}

new ButtonInfo[MAX_BUTTONS+1][BUTTON_INFOS];

#if defined DEBUG

	enum PLAYER_INFOS
	{
		Float:MSpeed,
		SelectedButton,
		TimerID
	}
	
	new PlayerInfo[MAX_PLAYERS][PLAYER_INFOS];
	new String[128];

#endif
/*----------------------------------------------------------------------------*/










/*----------------------------------------------------------------------------*/
Float:Distance3D(Float:PointA[], Float:PointB[], bool:sqrt = true)
{
	new Float:Dist[4];
	
	for (new i = 0; i < 3; i++)
	{
	    Dist[i] = PointA[i] - PointB[i];
	    Dist[i] *= Dist[i];
	}
	
	Dist[3] = Dist[0] + Dist[1] + Dist[2];
	
	return sqrt ? floatsqroot(Dist[3]) : Dist[3];
}
/*----------------------------------------------------------------------------*/


/*----------------------------------------------------------------------------*/
Float:Angle2D(Float:PointA[], Float:PointB[])
{
	new bool:A_LS_B[2], Float:Dist[2], Float:Angle;

	for (new i = 0; i < 2; i++)
	{
	    A_LS_B[i] = PointA[i] < PointB[i];
	    Dist[i] = A_LS_B[i] ? PointB[i] - PointA[i] : PointA[i] - PointB[i];
	}

	Angle = atan2(Dist[1],Dist[0]);
	Angle = A_LS_B[0] ? 270.0 + Angle : 90.0 - Angle;
	Angle = A_LS_B[1] ? Angle : 180.0 - Angle;

	return Angle;
}
/*----------------------------------------------------------------------------*/


/*----------------------------------------------------------------------------*/
GetClosestButton(Float:Point[], &Float:Distance = 0.0)
{
	new Closest = INVALID_BUTTON_ID, Float:Distance2 = 100000.0;

	for (new buttonid = 1, highest = FS_GetHighestButtonID(); buttonid <= highest; buttonid ++)
	{
		if (ButtonInfo[buttonid][Created])
		{
			Distance = Distance3D(Point, ButtonInfo[buttonid][Pos]);

			if (Distance < Distance2)
			{
				Distance2 = Distance;
				Closest = buttonid;
			}
		}
	}

	Distance = Distance2;

	return Closest;
}
/*----------------------------------------------------------------------------*/










/*----------------------------------------------------------------------------*/
forward FS_CreateButton(Float:X, Float:Y, Float:Z, Float:Angle, VW);
public FS_CreateButton(Float:X, Float:Y, Float:Z, Float:Angle, VW)
{
	new buttonid;
	
	for(buttonid = 1; buttonid <= MAX_BUTTONS; buttonid ++)
	    if (!ButtonInfo[buttonid][Created])
			break;

	ButtonInfo[buttonid][ObjectID]	= CreateDynamicObject(OBJECT,X,Y,Z,0.0,0.0,Angle, VW);
	ButtonInfo[buttonid][Pos][0]	= X;
	ButtonInfo[buttonid][Pos][1]	= Y;
	ButtonInfo[buttonid][Pos][2]	= Z;
	ButtonInfo[buttonid][Pos][3]	= Angle;
	ButtonInfo[buttonid][Moving]	= false;
	ButtonInfo[buttonid][Created]	= true;
	
	for (new playerid = 0; playerid < MAX_PLAYERS; playerid ++)
	    ButtonInfo[buttonid][Usable][playerid] = true;

	return buttonid;
}
/*----------------------------------------------------------------------------*/


/*----------------------------------------------------------------------------*/
forward FS_DestroyButton(buttonid);
public FS_DestroyButton(buttonid)
{
	if (FS_IsValidButton(buttonid))
	{
		CallRemoteFunction("OnButtonDestroyed", "i", buttonid);
		ButtonInfo[buttonid][Created] = false;
		DestroyDynamicObject(ButtonInfo[buttonid][ObjectID]);
	}
}
/*----------------------------------------------------------------------------*/










/*----------------------------------------------------------------------------*/
forward FS_SetButtonPos(buttonid, Float:X, Float:Y, Float:Z, Float:Angle);
public FS_SetButtonPos(buttonid, Float:X, Float:Y, Float:Z, Float:Angle)
{
    if (FS_IsValidButton(buttonid))
	{
	    new objectid = ButtonInfo[buttonid][ObjectID];
		SetDynamicObjectPos(objectid, X, Y, Z);
		SetDynamicObjectRot(objectid, 0.0, 0.0, Angle);
		ButtonInfo[buttonid][Pos][0] = X;
		ButtonInfo[buttonid][Pos][1] = Y;
		ButtonInfo[buttonid][Pos][2] = Z;
		ButtonInfo[buttonid][Pos][3] = Angle;
	}
}
/*----------------------------------------------------------------------------*/










/*----------------------------------------------------------------------------*/
forward FS_MoveButton(buttonid, Float:X, Float:Y, Float:Z, Float:Speed);
public FS_MoveButton(buttonid, Float:X, Float:Y, Float:Z, Float:Speed)
{
    if (FS_IsValidButton(buttonid))
    {
        MoveDynamicObject(ButtonInfo[buttonid][ObjectID], X, Y, Z, Speed);
        ButtonInfo[buttonid][Moving] = true;
		ButtonInfo[buttonid][Pos][0] = 99999.9;
		ButtonInfo[buttonid][Pos][1] = 99999.9;
		ButtonInfo[buttonid][Pos][2] = 99999.9;
	}
}
/*----------------------------------------------------------------------------*/


/*----------------------------------------------------------------------------*/
forward FS_StopButton(buttonid);
public FS_StopButton(buttonid)
{
	if (FS_IsValidButton(buttonid))
		StopDynamicObject(ButtonInfo[buttonid][ObjectID]);
}
/*----------------------------------------------------------------------------*/










/*----------------------------------------------------------------------------*/
forward bool:FS_IsValidButton(buttonid);
public bool:FS_IsValidButton(buttonid)
{
	return (buttonid <= MAX_BUTTONS && ButtonInfo[buttonid][Created]);
}
/*----------------------------------------------------------------------------*/


/*----------------------------------------------------------------------------*/
forward FS_GetHighestButtonID();
public FS_GetHighestButtonID()
{
    for (new buttonid = MAX_BUTTONS; buttonid > 0; buttonid --)
		if (ButtonInfo[buttonid][Created])
		    return buttonid;

	return INVALID_BUTTON_ID;
}
/*----------------------------------------------------------------------------*/


/*----------------------------------------------------------------------------*/
forward FS_GetButtonObjectID(buttonid);
public FS_GetButtonObjectID(buttonid)
{
	return FS_IsValidButton(buttonid) ? ButtonInfo[buttonid][ObjectID] : INVALID_OBJECT_ID;
}
/*----------------------------------------------------------------------------*/


/*----------------------------------------------------------------------------*/
forward FS_GetObjectButtonID(objectid);
public FS_GetObjectButtonID(objectid)
{
	for (new buttonid = 1, highest = FS_GetHighestButtonID(); buttonid <= highest; buttonid ++)
	    if (ButtonInfo[buttonid][Created] && ButtonInfo[buttonid][ObjectID] == objectid)
			return buttonid;

	return INVALID_BUTTON_ID;
}









/*----------------------------------------------------------------------------*/
forward Float:FS_GetDistanceToButton(buttonid, Float:X, Float:Y, Float:Z);
public Float:FS_GetDistanceToButton(buttonid, Float:X, Float:Y, Float:Z)
{
	if (FS_IsValidButton(buttonid))
	{
		new Float:Point[3];

		Point[0] = X;
		Point[1] = Y;
		Point[2] = Z;

		return Distance3D(Point, ButtonInfo[buttonid][Pos]);
	}

	return -1.0;
}
/*----------------------------------------------------------------------------*/










/*----------------------------------------------------------------------------*/
forward FS_TeleportPlayerToButton(playerid, buttonid);
public FS_TeleportPlayerToButton(playerid, buttonid)
{
	if (FS_IsValidButton(buttonid) && !ButtonInfo[buttonid][Moving])
	{
		new Float:Angle = ButtonInfo[buttonid][Pos][3];

		SetPlayerPos
		(
			playerid,
			ButtonInfo[buttonid][Pos][0] - (0.65 * floatsin(-Angle,degrees)),
			ButtonInfo[buttonid][Pos][1] - (0.65 * floatcos(-Angle,degrees)),
			ButtonInfo[buttonid][Pos][2] - 0.63
		);

		SetPlayerFacingAngle(playerid, -Angle);
		SetCameraBehindPlayer(playerid);
	}
}
/*----------------------------------------------------------------------------*/


/*----------------------------------------------------------------------------*/
forward FS_ToggleButtonEnabledForPlayer(playerid, buttonid, bool:enabled);
public FS_ToggleButtonEnabledForPlayer(playerid, buttonid, bool:enabled)
{
	if (FS_IsValidButton(buttonid))
		ButtonInfo[buttonid][Usable][playerid] = enabled;
}
/*----------------------------------------------------------------------------*/


/*----------------------------------------------------------------------------*/
forward FS_ToggleButtonEnabled(buttonid, bool:enabled);
public FS_ToggleButtonEnabled(buttonid, bool:enabled)
{
	if (FS_IsValidButton(buttonid))
	    for (new playerid = 0; playerid < MAX_PLAYERS; playerid ++)
			ButtonInfo[buttonid][Usable][playerid] = enabled;
}
/*----------------------------------------------------------------------------*/










/*----------------------------------------------------------------------------*/
forward OnPlayerPressButton_Delay(playerid, buttonid);
public OnPlayerPressButton_Delay(playerid, buttonid)
{
	#if defined SOUND
	    PlayerPlaySound(playerid, SOUND, 0.0, 0.0, 0.0);
	#endif
	CallRemoteFunction("OnPlayerPressButton", "ii", playerid, buttonid);
}
/*----------------------------------------------------------------------------*/


/*----------------------------------------------------------------------------*/
public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if (GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
	{
		if (newkeys & 16)
		{
			new Float:Distance, Float:Angle, Float:PlayerPos[3], buttonid;

			GetPlayerPos(playerid, PlayerPos[0], PlayerPos[1], PlayerPos[2]);
		
			buttonid = GetClosestButton(PlayerPos, Distance);

			if (buttonid != INVALID_BUTTON_ID && ButtonInfo[buttonid][Usable][playerid] && Distance <= MAX_DISTANCE)
			{
				Angle = Angle2D(PlayerPos, ButtonInfo[buttonid][Pos]);

				SetPlayerFacingAngle(playerid, Angle);

				SetPlayerPos
				(
					playerid,
					ButtonInfo[buttonid][Pos][0] - (0.65 * floatsin(-Angle,degrees)),
					ButtonInfo[buttonid][Pos][1] - (0.65 * floatcos(-Angle,degrees)),
					ButtonInfo[buttonid][Pos][2] - 0.63
				);

				ApplyAnimation(playerid, "HEIST9", "Use_SwipeCard", 10.0, 0, 0, 0, 0, 0);
				SetTimerEx("OnPlayerPressButton_Delay", 500, false, "ii", playerid, buttonid);
			}
		}
	}
}
/*----------------------------------------------------------------------------*/


/*----------------------------------------------------------------------------*/
public OnObjectMoved(objectid)
{
	new buttonid = FS_GetObjectButtonID(objectid);
	
	if (buttonid != INVALID_BUTTON_ID)
	{
	    new Float:ObjectPos[3];
	    GetObjectPos(objectid, ObjectPos[0], ObjectPos[1], ObjectPos[2]);
	    ButtonInfo[buttonid][Pos][0] = ObjectPos[0];
	    ButtonInfo[buttonid][Pos][1] = ObjectPos[1];
	    ButtonInfo[buttonid][Pos][2] = ObjectPos[2];
	    ButtonInfo[buttonid][Moving] = false;
	    CallRemoteFunction("OnButtonMoved", "i", buttonid);
	}
}
/*----------------------------------------------------------------------------*/










/*----------------------------------------------------------------------------*/
public OnPlayerConnect(playerid)
{
    #if defined DEBUG
        if (PlayerInfo[playerid][SelectedButton] != INVALID_BUTTON_ID)
        {
    		PlayerInfo[playerid][SelectedButton] = INVALID_BUTTON_ID;
    		PlayerInfo[playerid][MSpeed] = 5.0;
    		KillTimer(PlayerInfo[playerid][TimerID]);
		}
	#endif
	
    ApplyAnimation(playerid, "HEIST9", "Use_SwipeCard", 10.0, 0, 0, 0, 0, 0);
    return 1;
}
/*----------------------------------------------------------------------------*/


/*----------------------------------------------------------------------------*/
public OnGameModeInit()
{
    #if defined DEBUG
        FS_PrintButtonsInfos();
	#endif

	return true;
}
/*----------------------------------------------------------------------------*/


/*----------------------------------------------------------------------------*/
public OnGameModeExit()
{
    #if defined DEBUG
        FS_PrintButtonsInfos();
	#endif
	
	for (new buttonid = 1; buttonid <= MAX_BUTTONS; buttonid ++)
		if (ButtonInfo[buttonid][Created])
		    FS_DestroyButton(buttonid);

	return true;
}
/*----------------------------------------------------------------------------*/










/*----------------------------------------------------------------------------*/
#if defined DEBUG



	argpos(const string[], idx = 0, sep = ' ')
	{
		for(new i = idx, j = strlen(string); i < j; i++)
			if (string[i] == sep && string[i+1] != sep)
				return i+1;

		return -1;
	}






	forward ButtonEditor_Timer(playerid, buttonid);
	public ButtonEditor_Timer(playerid, buttonid)
	{
	    new PlayerKeys[3],
	    	Float:Move_Sin = PlayerInfo[playerid][MSpeed]/100.0 * floatsin(-ButtonInfo[buttonid][Pos][3], degrees),
			Float:Move_Cos = PlayerInfo[playerid][MSpeed]/100.0 * floatcos(-ButtonInfo[buttonid][Pos][3], degrees);
			
	    GetPlayerKeys(playerid,PlayerKeys[0],PlayerKeys[1],PlayerKeys[2]);
	    
	    if (PlayerKeys[0] + PlayerKeys[1] + PlayerKeys[2] != 0 && PlayerKeys[0] != KEY_HANDBRAKE)
	    {
	    	if (PlayerKeys[0] & 512)
	    	{
				if (PlayerKeys[2] == KEY_LEFT)
					ButtonInfo[buttonid][Pos][3] += PlayerInfo[playerid][MSpeed]/5.0;

				else if (PlayerKeys[2] == KEY_RIGHT)
					ButtonInfo[buttonid][Pos][3] -= PlayerInfo[playerid][MSpeed]/5.0;
				
				format
				(
					String,
					sizeof(String),
					"~n~~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~Rotating buttonid ~r~%d ~n~~w~Angle=~r~%d",
					buttonid,
					floatround(ButtonInfo[buttonid][Pos][3]) % 360
				);
				
				GameTextForPlayer(playerid, String, 1500, 3);
			}
			
			else
			{
	    		if (PlayerKeys[1] == KEY_UP)
	    		{
					ButtonInfo[buttonid][Pos][0] += Move_Sin;
					ButtonInfo[buttonid][Pos][1] += Move_Cos;
				}
				else if (PlayerKeys[1] == KEY_DOWN)
				{
					ButtonInfo[buttonid][Pos][0] -= Move_Sin;
					ButtonInfo[buttonid][Pos][1] -= Move_Cos;
				}
		
				if (PlayerKeys[2] == KEY_LEFT)
				{
					ButtonInfo[buttonid][Pos][0] -= Move_Cos;
					ButtonInfo[buttonid][Pos][1] += Move_Sin;
				}
				else if (PlayerKeys[2] == KEY_RIGHT)
				{
					ButtonInfo[buttonid][Pos][0] += Move_Cos;
					ButtonInfo[buttonid][Pos][1] -= Move_Sin;
				}
		
				format
				(
					String,
					sizeof(String),
					"~n~~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~Moving buttonid ~r~%d ~n~~w~X=~r~%.2f ~w~Y=~r~%.2f",
					buttonid,
					ButtonInfo[buttonid][Pos][0],
					ButtonInfo[buttonid][Pos][1]
				);
				
				GameTextForPlayer(playerid, String, 1500, 3);
			}
			
			FS_SetButtonPos
			(
				buttonid,
				ButtonInfo[buttonid][Pos][0],
				ButtonInfo[buttonid][Pos][1],
				ButtonInfo[buttonid][Pos][2],
				ButtonInfo[buttonid][Pos][3]
			);
		}
	}




#endif
/*----------------------------------------------------------------------------*/
