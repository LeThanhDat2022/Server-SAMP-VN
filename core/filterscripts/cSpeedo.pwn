/**
* © Coffeely, 2014.
* Please leave author's credits.

* This work is licensed under the Creative
* Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
* To view a copy of this license,
* visit http://creativecommons.org/licenses/by-nc-nd/3.0/.

* I'd advice you not to change anything unless you are sure of what you are doing.
                                                                                                                                                                                                                                                                                                                                                                                                    **/
#include <a_samp>

#define FILTERSCRIPT

#if defined FILTERSCRIPT

#define VehicleHealthYellow 700
#define VehicleHealthRed 400

#define SpeedCheck(%0,%1,%2,%3,%4) floatround(floatsqroot(%4?(%0*%0+%1*%1+%2*%2):(%0*%0+%1*%1)) *%3*1.6)

forward Speedometer(playerid);

new Text:VehicleName[MAX_PLAYERS], Text:VehicleHealth[MAX_PLAYERS], Text:VehicleSpeed[MAX_PLAYERS], Text:Title, Text:Underline, Text:KMH;

new VehicleNames[][] =
{
    "Landstalker", "Bravura", "Buffalo", "Linerunner", "Perrenial", "Sentinel", "Dumper", "Firetruck",
	"Trashmaster", "Stretch", "Manana", "Infernus", "Voodoo", "Pony", "Mule", "Cheetah",
    "Ambulance", "Leviathan", "Moonbeam", "Esperanto", "Taxi", "Washington", "Bobcat", "Mr Whoopee",
    "BF Injection", "Hunter", "Premier", "Enforcer", "Securicar", "Banshee", "Predator", "Bus",
    "Rhino", "Barracks", "Hotknife", "Article Trailer", "Previon", "Coach", "Cabbie", "Stallion",
    "Rumpo", "RC Bandit", "Romero", "Packer", "Monster", "Admiral", "Squallo", "Seasparrow",
    "Pizzaboy", "Tram", "Article Trailer 2", "Turismo", "Speeder", "Reefer", "Tropic", "Flatbed",
    "Yankee", "Caddy", "Solair", "Berkley's RC Van", "Skimmer", "PCJ-600", "Faggio", "Freeway",
    "RC Baron", "RC Raider", "Glendale", "Oceanic", "Sanchez", "Sparrow", "Patriot", "Quad",
    "Coastguard", "Dinghy", "Hermes", "Sabre", "Rustler", "ZR-350", "Walton", "Regina",
    "Comet", "BMX", "Burrito", "Camper", "Marquis", "Baggage", "Dozer", "Maverick",
    "SAN News Maverick", "Rancher", "FBI Rancher", "Virgo", "Greenwood", "Jetmax", "Hotring Racer", "Sandking",
    "Blista Compact", "Police Maverick", "Boxville", "Banson", "Mesa", "RC Goblin", "Hotring Racer", "Hotring Racer",
    "Bloodring Banger", "Rancher", "Super GT", "Elegant", "Journey", "Bike", "Mountain Bike", "Beagle",
    "Cropduster", "Stuntplane", "Tanker", "Roadtrain", "Nebula", "Majestic", "Buccaneer", "Shamal",
    "Hydra", "FCR-900", "NRG-500", "HPV1000", "Cement Truck", "Towtruck", "Fortune", "Cadrona",
    "FBI Truck", "Willard", "Forklift", "Tractor", "Combine Harvester", "Feltzer", "Remington", "Slamvan",
    "Blade", "Freight (Train)", "Brownstreak (Train)", "Vortex", "Vincent", "Bullet", "Clover", "Sadler",
    "Firetruck LA", "Hustler", "Intruder", "Primo", "Cargobob", "Tampa", "Sunrise", "Merit",
    "Utility Van", "Nevada", "Yosemite", "Windsor", "Monster A", "Monster B", "Uranus", "Jester",
    "Sultan", "Stratum", "Elegy", "Raindance", "RC Tiger", "Flash", "Tahoma", "Savanna",
    "Bandito", "Freight Flat Trailer", "Brownstreak Trailer", "Kart", "Mower", "Dune", "Sweeper", "Broadway",
    "Tornado", "AT400", "DFT-30", "Huntley", "Stafford", "BF-400", "Newsvan", "Tug",
    "Petrol Trailer", "Emperor", "Wayfarer", "Euros", "Hotdog", "Club", "Freight Box Trailer", "Article Trailer 3",
    "Andromada", "Dodo", "RC Cam", "Launch", "Police Cruiser (LSPD)", "Police Cruiser (SFPD)", "Police Cruiser (LVPD)", "Police Ranger",
    "Picador", "S.W.A.T", "Alpha", "Phoenix", "Glendale Shit", "Sadler Shit", "Baggage Trailer A", "Baggage Trailer B",
    "Tug Stairs Trailer", "Boxville", "Farm Trailer", "Utility Trailer"
};

public OnFilterScriptInit()
{
    print("\n Coffeely's Speedometer loading...");
	print("\n \t cSpeedometer Loaded.");
	print("\n \t");

	SetTimer("Speedometer", 100, true);
	
	Underline = TextDrawCreate(607.571594, 397.446624, "-");
	TextDrawLetterSize(Underline, 0.000000, -0.212750);
	TextDrawTextSize(Underline, 537.428588, 0.000000);
	TextDrawAlignment(Underline, 1);
	TextDrawColor(Underline, 0);
	TextDrawUseBox(Underline, true);
	TextDrawBoxColor(Underline, 255);
	TextDrawSetShadow(Underline, 0);
	TextDrawSetOutline(Underline, 0);
	TextDrawFont(Underline, 0);

	Title = TextDrawCreate(539.428588, 383.573211, "SAMP-RP.NET");
	TextDrawLetterSize(Title, 0.217999, 1.288532);
	TextDrawAlignment(Title, 1);
	TextDrawColor(Title, -1);
	TextDrawSetShadow(Title, 0);
	TextDrawSetOutline(Title, 1);
	TextDrawBackgroundColor(Title, 51);
	TextDrawFont(Title, 2);
	TextDrawSetProportional(Title, 1);

	KMH = TextDrawCreate(571.428955, 416.426666, "KM/H");
	TextDrawLetterSize(KMH, 0.318951, 1.070932);
	TextDrawAlignment(KMH, 1);
	TextDrawColor(KMH, -1);
	TextDrawSetShadow(KMH, 0);
	TextDrawSetOutline(KMH, 1);
	TextDrawBackgroundColor(KMH, 51);
	TextDrawFont(KMH, 2);
	TextDrawSetProportional(KMH, 1);
	
	for(new i = 0; i < GetMaxPlayers(); i++)
	{
	    VehicleName[i] = TextDrawCreate(538.285278, 396.800018, " ");
		TextDrawLetterSize(VehicleName[i], 0.206952, 1.130664);
		TextDrawAlignment(VehicleName[i], 1);
		TextDrawColor(VehicleName[i], -1);
		TextDrawSetShadow(VehicleName[i], 0);
		TextDrawSetOutline(VehicleName[i], 1);
		TextDrawBackgroundColor(VehicleName[i], 51);
		TextDrawFont(VehicleName[i], 2);
		TextDrawSetProportional(VehicleName[i], 1);

		VehicleHealth[i] = TextDrawCreate(570.284912, 407.466613, " ");
		TextDrawLetterSize(VehicleHealth[i], 0.261808, 1.151998);
		TextDrawAlignment(VehicleHealth[i], 1);
		TextDrawColor(VehicleHealth[i], -1);
		TextDrawSetShadow(VehicleHealth[i], 0);
		TextDrawSetOutline(VehicleHealth[i], 1);
		TextDrawBackgroundColor(VehicleHealth[i], 51);
		TextDrawFont(VehicleHealth[i], 2);
		TextDrawSetProportional(VehicleHealth[i], 1);

		VehicleSpeed[i] = TextDrawCreate(537.903259, 402.346588, " ");
		TextDrawLetterSize(VehicleSpeed[i], 0.435141, 2.909866);
		TextDrawAlignment(VehicleSpeed[i], 1);
		TextDrawColor(VehicleSpeed[i], -1);
		TextDrawSetShadow(VehicleSpeed[i], 0);
		TextDrawSetOutline(VehicleSpeed[i], 1);
		TextDrawBackgroundColor(VehicleSpeed[i], 51);
		TextDrawFont(VehicleSpeed[i], 2);
		TextDrawSetProportional(VehicleSpeed[i], 1);
	}
    return 1;
}
public OnFilterScriptExit()
{
    print("\n Coffeely's Speedometer unloading...");
	print("\n \t cSpeedometer Unloaded.");
	print("\n \t");
	
	TextDrawHideForAll(Underline);
	TextDrawDestroy(Underline);
	TextDrawHideForAll(Title);
	TextDrawDestroy(Title);
	TextDrawHideForAll(KMH);
	TextDrawDestroy(KMH);
	
	for(new i = 0; i < GetMaxPlayers(); i++)
	{
		TextDrawDestroy(VehicleName[i]);
		TextDrawDestroy(VehicleHealth[i]);
		TextDrawDestroy(VehicleSpeed[i]);
	}
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	if(newstate == PLAYER_STATE_DRIVER || newstate == PLAYER_STATE_PASSENGER)
	{
	    TextDrawShowForPlayer(playerid, Underline);
		TextDrawShowForPlayer(playerid, Title);
		TextDrawShowForPlayer(playerid, KMH);
	    
	    for(new i = 0; i < GetMaxPlayers(); i++)
	    {
	        TextDrawShowForPlayer(playerid, VehicleName[playerid]);
	        TextDrawShowForPlayer(playerid, VehicleHealth[playerid]);
	        TextDrawShowForPlayer(playerid, VehicleSpeed[playerid]);
	    }
	}
	else if(oldstate == PLAYER_STATE_DRIVER || oldstate == PLAYER_STATE_PASSENGER)
	{
	    TextDrawHideForPlayer(playerid, Underline);
		TextDrawHideForPlayer(playerid, Title);
		TextDrawHideForPlayer(playerid, KMH);
	    
	    for(new i = 0; i < GetMaxPlayers(); i++)
	    {
	        TextDrawHideForPlayer(playerid, VehicleName[i]);
	        TextDrawHideForPlayer(playerid, VehicleHealth[i]);
	        TextDrawHideForPlayer(playerid, VehicleSpeed[i]);
	    }
	}
}

public Speedometer(playerid)
{
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
	    if(IsPlayerConnected(i) && IsPlayerInAnyVehicle(i))
	    {
			new string[32], string2[32], string3[10], Float:vhealth;
			format(string, sizeof(string), "~g~%s", VehicleNames[GetVehicleModel(GetPlayerVehicleID(i))-400]);
			TextDrawSetString(VehicleName[i], string);
			
			format(string2, sizeof(string2), "%d", GetPlayerSpeed(i, 0));
			TextDrawSetString(VehicleSpeed[i], string2);
			
			GetVehicleHealth(GetPlayerVehicleID(playerid), vhealth);
			format(string3, sizeof(string3), "~%s~%.0f.0", DamageColor(vhealth), vhealth);
			TextDrawSetString(VehicleHealth[i], string3);
	    }
	}
	return 1;
}

stock DamageColor(Float: health)
{
	new string[5];
	if (health <= VehicleHealthRed)
		format(string, sizeof(string), "r");
	else if (health < VehicleHealthYellow)
	    format(string, sizeof(string), "y");
	else
	    format(string, sizeof(string), "g");
	return string;
}

stock GetPlayerSpeed(playerid, get3d)
{
	new Float:x, Float:y, Float:z;
	if(IsPlayerInAnyVehicle(playerid))
	    GetVehicleVelocity(GetPlayerVehicleID(playerid), x, y, z);
	else
	    GetPlayerVelocity(playerid, x, y, z);

	return SpeedCheck(x, y, z, 100.0, get3d);
}

#endif
