
#include <a_samp>

new shotTime[MAX_PLAYERS];
new shot[MAX_PLAYERS];

public OnFilterScriptInit()
{
        print("\n--------------------------------------");
        print(" Anti Rapid Fire");
        print("--------------------------------------\n");
        return 1;
}

public OnPlayerConnect(playerid)
{
shotTime[playerid] = 0;
shot[playerid] = 0;
return 1;
}

public OnPlayerWeaponShot(playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ)
{
if(weaponid != 38)
{
if((gettime() - shotTime[playerid]) < 1)
{
shot[playerid]+=1;
}
else
{
shot[playerid]=0;
}
if(shot[playerid] > 15)
{
Kick(playerid);
}
shotTime[playerid] = gettime();
}
return 1;
}
