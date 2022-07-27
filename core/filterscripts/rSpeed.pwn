#include <a_samp>

#define MAXIMAL_PLAYERS 100

new Text:TextDraw0;
new Text:TextDraw1;
new Text:TextDraw2[MAXIMAL_PLAYERS];
new Text:TextDraw3[MAXIMAL_PLAYERS];
new Text:TextDraw4[MAXIMAL_PLAYERS];
new VehicleNames[][] =
{
	"Landstalker",
	"Bravura",
	"Buffalo",
	"Linerunner",
	"Perenniel",
	"Sentinel",
	"Dumper",
	"Firetruck",
	"Trashmaster",
	"Stretch",
	"Manana",
	"Sieu Xe NSX",
	"Voodoo",
	"Pony",
	"Mule",
	"Cheetah",
	"Ambulance",
	"Leviathan",
	"Moonbeam",
	"Esperanto",
	"Mai Linh",
	"Washington",
	"Bobcat",
	"Mr Whoopee",
	"BF Injection",
	"Hunter",
	"Premier",
	"Enforcer",
	"Securicar",
	"Banshee",
	"Predator",
	"Bus",
	"Rhino",
	"Barracks",
	"Hotknife",
	"Article Trailer",
	"Previon",
	"Coach",
	"Cabbie",
	"Stallion",
	"Rumpo",
	"RC Bandit",
	"Romero",
	"Packer",
	"Monster",
	"Admiral",
	"Squallo",
	"Seasparrow",
	"Xe Pizza",
	"Tram",
	"Article Trailer 2",
	"Lenovo",
	"Mirabella V",
	"Reefer",
	"Tropic",
	"Flatbed",
	"Yankee",
	"Caddy",
	"Solair",
	"Topfun Van (Berkley's RC)",
	"Skimmer",
	"Moto Z-600",
	"Attila Elizabeth 2014",
	"Freeway",
	"RC Baron",
	"RC Raider",
	"Glendale",
	"Oceanic",
	"Sanchez",
	"Sparrow",
	"Patriot",
	"Quad",
	"Coastguard",
	"Dinghy",
	"Hermes",
	"Sabre",
	"Rustler",
	"BMW-18",
	"Walton",
	"Regina",
	"Comet",
	"ITHINK CONWAY",
	"Burrito",
	"Camper",
	"Marquis",
	"Baggage",
	"Dozer",
	"Truc Thang",
	"Truc Thang",
	"Rancher",
	"FBI Racher",
	"Virgo",
	"Greenwood",
	"Maltese Falcon",
	"Hotring Racer",
	"Sandking",
	"Blista Compact",
	"Truc Thang",
	"Boxville",
	"Benson",
	"Mesa",
	"RC Goblin",
	"Xe Dua A",
	"Xe Dua B",
	"Bloodring Banger",
	"Rancher",
	"Nissan GT-R R36",
	"Elegant",
	"Journey",
	"SALLY",
	"FASTROAD SLR 2",
	"Beagle",
	"Cropduster",
	"Stuntplane",
	"Tanker",
	"Roadtrain",
	"Nebula",
	"Majestic",
	"Buccaneer",
	"Shamal",
	"Hydra",
	"FCR-900",
	"Moto Z-1000",
	"Moto Giao Thong",
	"Cement Truck",
	"Towtruck",
	"Fortune",
	"Cadrona",
	"FBI Truck",
	"Willard",
	"Forklift",
	"Tractor",
	"Combine Hervester",
	"Feltzer",
	"Remington",
	"Slamvan",
	"Blade",
	"Freight (Train)",
	"Brownstreak (Train)",
	"Vortex",
	"Vincent",
	"Lotus Evora 400",
	"Clover",
	"Sadler",
	"Firetruck LA",
	"Hustler",
	"Intruder",
	"Primo",
	"Cargobob",
	"Tampa",
	"Sunrise",
	"Merit",
	"Utility Van",
	"Nevada",
	"Yosemite",
	"Windsor",
	"Monster \"A\"",
	"Monster \"B\"",
	"Uranus",
	"Jester",
	"Syndai Accent Blue",
	"Stratum",
	"Toyota Corolla Altis",
	"Raindance",
	"RC Tiger",
	"Flash",
	"Tahoma",
	"Savanna",
	"Bandito",
	"Freight Flat Tailer (Train)",
	"Streak Trailer (Train)",
	"Kart",
	"Mower",
	"Dune",
	"Xe Hut Rac",
	"Broadway",
	"Tornado",
	"AT-400",
	"DFT-30",
	"Huntley",
	"Stafford",
	"BF-400",
	"Newsvan",
	"Tug",
	"Petrol Trailer",
	"Emperor",
	"Wayfarer",
	"Euros",
	"Hotdog",
	"Club",
	"Freight Box Trailer (Train)",
	"Article Trailer 3",
	"Andromada",
	"Dodo",
	"RC Cam",
	"Launch",
	"Police Car (LSPD)",
	"Police Car (SFPD)",
	"Police Car (LVPD)",
	"Police Ranger",
	"Picador",
	"S.W.A.T.",
	"Alpha",
	"Phoenix",
	"Glendale Shit",
	"Sadler Shit",
	"Baggage Trailer \"A\"",
	"Baggage Trailer \"B\"",
	"Tug Stairs Trailer",
	"Boxville",
	"Farm Trailer",
	"Utility Trailer"
};
new PlayerUseSpeedometer[MAXIMAL_PLAYERS];
new PlayerVehicleInformationsTimer[MAXIMAL_PLAYERS];

public OnFilterScriptInit()
{
	TextDraw0 = TextDrawCreate(450.000000,100.000000,"-");
	TextDrawBackgroundColor(TextDraw0,30);
	TextDrawFont(TextDraw0,1);
	TextDrawLetterSize(TextDraw0,10.000000,50.000000);
	TextDrawColor(TextDraw0,0);
	TextDrawSetOutline(TextDraw0,1);
	TextDrawSetProportional(TextDraw0,1);
	TextDraw1 = TextDrawCreate(520.000000,335.000000,"Thong Tin Xe");
	TextDrawAlignment(TextDraw1,2);
	TextDrawBackgroundColor(TextDraw1,255);
	TextDrawFont(TextDraw1,0);
	TextDrawLetterSize(TextDraw1,0.400000,2.000000);
	TextDrawColor(TextDraw1,16711935);
	TextDrawSetOutline(TextDraw1,1);
	TextDrawSetProportional(TextDraw1,1);
	for(new P = 0; P < MAXIMAL_PLAYERS; P++)
	{
		TextDraw2[P] = TextDrawCreate(520.000000,360.000000," ");
		TextDrawAlignment(TextDraw2[P],2);
		TextDrawBackgroundColor(TextDraw2[P],255);
		TextDrawFont(TextDraw2[P],1);
		TextDrawLetterSize(TextDraw2[P],0.200000,1.000000);
		TextDrawColor(TextDraw2[P],-1);
		TextDrawSetOutline(TextDraw2[P],1);
		TextDrawSetProportional(TextDraw2[P],1);
		TextDraw3[P] = TextDrawCreate(520.000000,380.000000," ");
		TextDrawAlignment(TextDraw3[P],2);
		TextDrawBackgroundColor(TextDraw3[P],255);
		TextDrawFont(TextDraw3[P],1);
		TextDrawLetterSize(TextDraw3[P],0.200000,1.000000);
		TextDrawColor(TextDraw3[P],-1);
		TextDrawSetOutline(TextDraw3[P],1);
		TextDrawSetProportional(TextDraw3[P],1);
		TextDraw4[P] = TextDrawCreate(520.000000,400.000000," ");
		TextDrawAlignment(TextDraw4[P],2);
		TextDrawBackgroundColor(TextDraw4[P],255);
		TextDrawFont(TextDraw4[P],1);
		TextDrawLetterSize(TextDraw4[P],0.200000,1.000000);
		TextDrawColor(TextDraw4[P],-1);
		TextDrawSetOutline(TextDraw4[P],1);
		TextDrawSetProportional(TextDraw4[P],1);
	}
	return 1;
}

public OnFilterScriptExit()
{
	TextDrawDestroy(TextDraw0);
	TextDrawDestroy(TextDraw1);
	for(new P = 0; P < MAXIMAL_PLAYERS; P++)
	{
	    TextDrawDestroy(TextDraw2[P]);
	    TextDrawDestroy(TextDraw3[P]);
	    TextDrawDestroy(TextDraw4[P]);
	}
	return 1;
}

public OnPlayerConnect(playerid)
{
	PlayerUseSpeedometer[playerid] = 1;
	return 1;
}

public OnPlayerDisconnect(playerid)
{
	TextDrawHideForPlayer(playerid,TextDraw0);
	TextDrawHideForPlayer(playerid,TextDraw1);
	TextDrawHideForPlayer(playerid,TextDraw2[playerid]);
	TextDrawHideForPlayer(playerid,TextDraw3[playerid]);
	TextDrawHideForPlayer(playerid,TextDraw4[playerid]);
	KillTimer(PlayerVehicleInformationsTimer[playerid]);
	return 1;
}

public OnPlayerStateChange(playerid,newstate,oldstate)
{
	if(PlayerUseSpeedometer[playerid] == 1)
	{
		if(newstate == PLAYER_STATE_DRIVER)
		{
			TextDrawShowForPlayer(playerid,TextDraw0);
			TextDrawShowForPlayer(playerid,TextDraw1);
			TextDrawShowForPlayer(playerid,TextDraw2[playerid]);
			TextDrawShowForPlayer(playerid,TextDraw3[playerid]);
			TextDrawShowForPlayer(playerid,TextDraw4[playerid]);
	        PlayerVehicleInformationsTimer[playerid] = SetTimerEx("VehicleInformations",1000,1,"d",playerid);
		}
		if(oldstate == PLAYER_STATE_DRIVER)
		{
			TextDrawHideForPlayer(playerid,TextDraw0);
			TextDrawHideForPlayer(playerid,TextDraw1);
			TextDrawHideForPlayer(playerid,TextDraw2[playerid]);
			TextDrawHideForPlayer(playerid,TextDraw3[playerid]);
			TextDrawHideForPlayer(playerid,TextDraw4[playerid]);
			KillTimer(PlayerVehicleInformationsTimer[playerid]);
		}
	}
	return 1;
}

public OnPlayerCommandText(playerid,cmdtext[])
{
	if(!strcmp(cmdtext,"/speedo",true))
	{
	    if(PlayerUseSpeedometer[playerid] == 1)
	    {
	        PlayerUseSpeedometer[playerid] = 0;
	        if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
	        {
				TextDrawHideForPlayer(playerid,TextDraw0);
				TextDrawHideForPlayer(playerid,TextDraw1);
				TextDrawHideForPlayer(playerid,TextDraw2[playerid]);
				TextDrawHideForPlayer(playerid,TextDraw3[playerid]);
				TextDrawHideForPlayer(playerid,TextDraw4[playerid]);
				KillTimer(PlayerVehicleInformationsTimer[playerid]);
			}
	        SendClientMessage(playerid,0x00FF00FF,"Ban Da Tat Speedo.");
	        return 1;
	    }
	    if(PlayerUseSpeedometer[playerid] == 0)
	    {
	        PlayerUseSpeedometer[playerid] = 1;
			if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
			{
				TextDrawShowForPlayer(playerid,TextDraw0);
				TextDrawShowForPlayer(playerid,TextDraw1);
				TextDrawShowForPlayer(playerid,TextDraw2[playerid]);
				TextDrawShowForPlayer(playerid,TextDraw3[playerid]);
				TextDrawShowForPlayer(playerid,TextDraw4[playerid]);
				PlayerVehicleInformationsTimer[playerid] = SetTimerEx("VehicleInformations",1000,1,"d",playerid);
			}
	        return 1;
	    }
	    return 1;
	}
	return 0;
}

forward VehicleInformations(PlayerId);
public VehicleInformations(PlayerId)
{
	new String[150];
	format(String,150,"Vehicle: ~R~~H~%s",VehicleNames[GetVehicleModel(GetPlayerVehicleID(PlayerId))-400]);
	TextDrawSetString(TextDraw2[PlayerId],String);
	new Float:X;
	new Float:Y;
	new Float:Z;
	GetVehicleVelocity(GetPlayerVehicleID(PlayerId),X,Y,Z);
	format(String,150,"Speed: ~R~~H~%d KM/H",floatround(floatsqroot(X * X + Y * Y + Z * Z) * 100.0000));
	TextDrawSetString(TextDraw3[PlayerId],String);
	new Float:Health;
	GetVehicleHealth(GetPlayerVehicleID(PlayerId),Health);
	TextDrawSetString(TextDraw3[PlayerId],String);
	format(String,150,"Health: ~R~~H~%d",floatround(Health / 10));
	TextDrawSetString(TextDraw4[PlayerId],String);
	return 1;
}
