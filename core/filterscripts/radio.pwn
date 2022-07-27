enum RInfo
{
radioChannel,
radioOwner[MAX_PLAYER_NAME],
radioPass,
radioOn
};
new RadiosInfo[MAX_RADIOS][RInfo];

SaveRadios() {

new
szFileStr[1024],
File: fHandle = fopen("radio.cfg", io_write);

for(new iIndex; iIndex < MAX_RADIOS; iIndex++) {
format(szFileStr, sizeof(szFileStr), "%d|%s|%s|%d\r\n",
RadiosInfo[iIndex][radioChannel],
RadiosInfo[iIndex][radioOwner],
RadiosInfo[iIndex][radioPass],
RadiosInfo[iIndex][radioOn]
);
fwrite(fHandle, szFileStr);
}
return fclose(fHandle);
}
LoadRadios()
{
new arrCoords[31][64];
new strFromFile2[256];
new File: file = fopen("radio.cfg", io_read);
if(file)
{
new idx;
while (idx < sizeof(RadiosInfo))
{
fread(file, strFromFile2);
splits(strFromFile2, arrCoords, '|');
RadiosInfo[idx][radioChannel] = strval(arrCoords[0]);
strmid(RadiosInfo[idx][radioOwner], arrCoords[1], 0, strlen(arrCoords[1]), 255);
strmid(RadiosInfo[idx][radioPass], arrCoords[2], 0, strlen(arrCoords[2]), 255);
RadiosInfo[idx][radioOn] = strval(arrCoords[3]);
idx++;
}
fclose(file);
}
return 1;
}

LoadRadios();//OnGameModeInit

forward SendRadioMessageNew(playerid, channel, color, string[]);
public SendRadioMessageNew(playerid, channel, color, string[])
{
for(new i = 0; i < MAX_PLAYERS; i++)
{
if(gPlayerLogged{i} != 0)
{
if(PlayerInfo[i][pChannel] == channel && PlayerInfo[i][pSlot] == PlayerInfo[playerid][pSlot])
{
if(PlayerInfo[i][pAuthed] == 1)
{
SendClientMessageEx(i, color, string);
}
}
}
}
}

stock CompareStrings(string[], string2[])
{
if(!strcmp(string, string2, true))
return true;
else
return false;
}

stock ShowRadioTextDraw(playerid)
{
PlayerTextDrawShow(playerid, RadioDraw[playerid]);
PlayerTextDrawShow(playerid, ChannelDraw[playerid]);
PlayerTextDrawShow(playerid, SlotDraw[playerid]);
SetRadioChannel(playerid, GetPlayerChannel(playerid));
SetRadioSlot(playerid, GetPlayerSlot(playerid));
return 1;
}

stock HideRadioTextDraw(playerid)
{
PlayerTextDrawHide(playerid, RadioDraw[playerid]);
PlayerTextDrawHide(playerid, ChannelDraw[playerid]);
PlayerTextDrawHide(playerid, SlotDraw[playerid]);
return 1;
}

stock RadioMSG(playerid, message[])
{
new msg[128];
format(msg, sizeof(msg), "{00FFFF}[Radio]{DADADA}: %s", message);
return SendClientMessageEx(playerid, -1, msg);
}

stock SetRadioChannel(playerid, channel)
{
new msg[128];
if(channel == 0)
{
format(msg, sizeof(msg), "~b~Chan: ~h~~g~0");
PlayerInfo[playerid][pAuthed] = 0;
}
else
{
format(msg, sizeof(msg), "~b~Chan: ~h~~g~%d", channel);
}
PlayerTextDrawSetString(playerid, ChannelDraw[playerid], msg);
PlayerInfo[playerid][pChannel] = channel;
return 1;
}

stock SetRadioSlot(playerid, slot)
{
new msg[128];
format(msg, sizeof(msg), "~b~Slot: ~h~~g~%d", slot);
PlayerTextDrawSetString(playerid, SlotDraw[playerid], msg);
PlayerInfo[playerid][pSlot] = slot;
return 1;
}

stock GetPlayerChannel(playerid) return PlayerInfo[playerid][pChannel];
stock GetPlayerSlot(playerid) return PlayerInfo[playerid][pSlot];
stock GetOwnedChannel(playerid) return PlayerInfo[playerid][pOwnedChannel];

stock PlayerOwnChannel(playerid)
{
if(PlayerInfo[playerid][pOwnedChannel] > 0)
return true;
else
return false;
}

stock ChannelExist(channelid)
{
for(new i = 0; i < MAX_RADIOS; i++)
{
if(RadiosInfo[i][radioChannel] == channelid && RadiosInfo[i][radioOn] == 1)
{
return true;
}
}
return false;
}

stock GetChannelSlot(channelid)
{
for(new i = 0; i < MAX_RADIOS; i++)
{
if(RadiosInfo[i][radioChannel] == channelid)
{
return i;
}
}
return 0;
}
stock CompareStrings(string[], string2[])
{
if(!strcmp(string, string2, true))
return true;
else
return false;
}

stock AuthPassCorrect(slotid, authpass[])
{
if(CompareStrings(authpass, RadiosInfo[slotid][radioPass]))
return true;
else
return false;
}

stock GetNextChannelSlot()
{
new i=0;
while(i != MAX_RADIOS)
{
if(RadiosInfo[i][radioOn] == 0)
{
return i;
}
i++;
}
return -1;
}

stock StringHasSymbols(string[])
{
for(new i = 0; i < strlen(string); i++)
{
switch(string[i])
{
case '!', '@', '#', '$','%','^','&','*','(',')','_','+','=','|','[',']','{','}','-','.','`','~','<','>','?',',','/': return true;
default: continue;
}
}
return false;
}

forward SendProxRadioMessage(playerid, string[]);
public SendProxRadioMessage(playerid, string[])
{
for(new i = 0; i < MAX_PLAYERS; i++)
{
if(gPlayerLogged{i} != 0)
{
if(i != playerid)
{
if(GetDistanceBetweenPlayers(playerid,i) < 8)
{ SendClientMessageEx(i, COLOR_FADE1, string); }
else if(GetDistanceBetweenPlayers(playerid,i) < 8)
{ SendClientMessageEx(i, COLOR_FADE2, string); }
else if(GetDistanceBetweenPlayers(playerid,i) < 12)
{ SendClientMessageEx(i, COLOR_FADE3, string); }
else if(GetDistanceBetweenPlayers(playerid,i) < 16)
{ SendClientMessageEx(i, COLOR_FADE4, string); }
else if(GetDistanceBetweenPlayers(playerid,i) < 20)
{ SendClientMessageEx(i, COLOR_FADE5, string); }
}
}
}
}

forward SendLowProxRadioMessage(playerid, string[]);
public SendLowProxRadioMessage(playerid, string[])
{
for(new i = 0; i < MAX_PLAYERS; i++)
{
if(gPlayerLogged{i} != 0)
{
if(i != playerid)
{
if(GetDistanceBetweenPlayers(playerid,i) < 3)
{ SendClientMessageEx(i, COLOR_FADE1, string); }
else if(GetDistanceBetweenPlayers(playerid,i) < 3)
{ SendClientMessageEx(i, COLOR_FADE2, string); }
else if(GetDistanceBetweenPlayers(playerid,i) < 5)
{ SendClientMessageEx(i, COLOR_FADE3, string); }
else if(GetDistanceBetweenPlayers(playerid,i) < 7)
{ SendClientMessageEx(i, COLOR_FADE4, string); }
else if(GetDistanceBetweenPlayers(playerid,i) < 9)
{ SendClientMessageEx(i, COLOR_FADE5, string); }
}
}
}
}
CMD:radiohelp(playerid, params[])
{
SendClientMessageEx(playerid, COLOR_LIGHTGREEN,"|___________________Radio Help___________________|");
SendClientMessageEx(playerid, COLOR_YELLOWG,"HINT: Ban khong co radio ");
SendClientMessageEx(playerid, COLOR_WHITE,"/r - Dung de noi chuyen voi team Radio.");
SendClientMessageEx(playerid, COLOR_WHITE,"/rlow - Noi chuyen LOW trong kenh Radio cua ban.");
SendClientMessageEx(playerid, COLOR_WHITE,"/auth - Ban phai co quyen tren kenh radio nay");
SendClientMessageEx(playerid, COLOR_WHITE,"/setchannel - Radio ban muon vao.");
SendClientMessageEx(playerid, COLOR_WHITE,"/setslot - Set Slot cho Thanh vien trong Radio");
SendClientMessageEx(playerid, COLOR_WHITE,"/leavechannel - Thoat Team Radio.");
SendClientMessageEx(playerid, COLOR_WHITE,"/sellchannel - Ban Team Radio (50% back)");
SendClientMessageEx(playerid, COLOR_WHITE,"/newauth - Ban can phai co su chap nhan tu nguoi chu Radio.");
SendClientMessageEx(playerid, COLOR_WHITE,"/kickoffteam - If you own a channel, you may kick someone.");
SendClientMessageEx(playerid, COLOR_WHITE,"/radioteam - If you own a channel, displays the members inside.");
return 1;
}

CMD:rentchannel(playerid, params[])
{
new channelid, pass[128], cost = 30000;
new msg[128];
if(sscanf(params, "ds[128]", channelid, pass))
{
SendClientMessageEx(playerid, COLOR_GREY, "USAGE: /rentchannel [channel-id(1-9999)] [auth pass]");
SendClientMessageEx(playerid, COLOR_RED, "[WARNING]: Do not use symbols at your auth pass.");
return 1;
}
if(channelid > 9999 || channelid <= 0) return RadioMSG(playerid, "Invalid channel id, 1-9999.");
if(!IsPlayerInRangeOfPoint(playerid, 2.0, 1154.4916,-1457.8672,15.7969)) return SendClientMessageEx(playerid, COLOR_GRAD2, "You're not at the mall office.");
if(PlayerOwnChannel(playerid)) return RadioMSG(playerid, "You already own a radio channel, '/sellchannel' to sell it.");
if(ChannelExist(channelid)) return RadioMSG(playerid, "This channel is already taken.");
if(StringHasSymbols(pass)) return SendClientMessageEx(playerid, COLOR_LIGHTRED, "Do not use symbols at your authorization password!");
if(GetPlayerCash(playerid) < cost) return SendClientMessageEx(playerid, COLOR_GRAD2, "You can't afford radio!");
GivePlayerCash(playerid, -cost);
new channelslot = GetNextChannelSlot();
format(msg, sizeof(msg), "You have rented a radio channel: %d, you may type '/radiohelp' for more info.", channelid);
RadioMSG(playerid, msg);
PlayerInfo[playerid][pOwnedChannel] = channelid;
RadiosInfo[channelslot][radioChannel] = channelid;
format(RadiosInfo[channelslot][radioOwner], 128, "%s", GetPlayerNameEx(playerid));
format(RadiosInfo[channelslot][radioPass], 128, "%s", pass);
RadiosInfo[channelslot][radioOn] = 1;
SaveRadios();
return 1;
}

CMD:sellchannel(playerid, params[])
{
new msg[128];
new award = 15000;
new owned = GetOwnedChannel(playerid);
new channelslot = GetChannelSlot(owned);
new channel = GetPlayerChannel(playerid);
if(!PlayerOwnChannel(playerid)) return RadioMSG(playerid, "You don't own any channel.");
if(channel != owned) return RadioMSG(playerid, "You must be connected to your channel.");
GivePlayerCash(playerid, award);
format(msg, sizeof(msg), "You have just sold your radio channel: %d, for the government and earned $%d.", owned,award);
RadioMSG(playerid, msg);
foreach(Player, i)
{
if(GetPlayerChannel(i) == owned && i != playerid)
{
RadioMSG(i, "The radio channel you are in has just been sold, and you were kicked out.");
SetRadioChannel(i, 0);
}
}
RadiosInfo[channelslot][radioChannel] = 0;
format(RadiosInfo[channelslot][radioOwner], 128, "The State");
RadiosInfo[channelslot][radioOn] = 0;
PlayerInfo[playerid][pChannel] = 0;
PlayerInfo[playerid][pOwnedChannel] = 0;
SetRadioChannel(playerid, 0);
SaveRadios();
return 1;
}

CMD:setchannel(playerid, params[])
{
new msg[128];
new channelid,slot;
if(sscanf(params, "dd", channelid, slot)) return Syntax(playerid, "/setchannel [channel-id] [slot(1-3)]");
if(PlayerInfo[playerid][pRadio] == 0) return SendClientMessageEx(playerid, -1, "You don't have a radio.");
if(!ChannelExist(channelid)) return RadioMSG(playerid, "No such channel.");
if(channelid == 911 && PlayerInfo[playerid][pMember] != 1) return SendClientMessageEx(playerid, COLOR_GREY, "Your radio doesn't support in this channel (LSPD).");
if(channelid == GetPlayerChannel(playerid)) return RadioMSG(playerid, "You are in this channel already.");
format(msg, sizeof(msg), "Radio Channel sET [CH: %d, Slot: %d]", channelid, slot);
SendClientMessageEx(playerid, COLOR_GREEN, msg);
RadioMSG(playerid, "Before you can /r please authorize, /auth.");
PlayerInfo[playerid][pAuthed] = 0;
SetRadioChannel(playerid, channelid);
SetRadioSlot(playerid, slot);
return 1;
}

CMD:setslot(playerid, params[])
{
new slot;
if(sscanf(params, "d", slot)) return Syntax(playerid, "/setslot [slot-id]");
if(PlayerInfo[playerid][pRadio] == 0) return SendClientMessageEx(playerid, -1, "You don't have a radio.");
if(slot == GetPlayerSlot(playerid)) return RadioMSG(playerid, "You are in this slot already.");
if(slot > 3 || slot < 1) return SendClientMessageEx(playerid, COLOR_GREY, "Slot must be 1-3.");
SetRadioSlot(playerid, slot);
SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have set your radio slot to %d.", slot);
return 1;
}

CMD:leavechannel(playerid, params[])
{
new msg[128];
new channel = GetPlayerChannel(playerid);
if(PlayerInfo[playerid][pRadio] == 0) return SendClientMessageEx(playerid, -1, "You don't have a radio.");
if(channel == 0) return RadioMSG(playerid, "You're not in any channel.");
format(msg, sizeof(msg), "You have just left your current radio channel %d.", channel);
RadioMSG(playerid, msg);
SetRadioChannel(playerid, 0);
return 1;
}

CMD:auth(playerid, params[])
{
new pass[128];
new msg[128];
if(sscanf(params, "s[128]", pass)) return Syntax(playerid, "/auth [channel password]");
if(PlayerInfo[playerid][pRadio] == 0) return SendClientMessageEx(playerid, -1, "You don't have a radio.");
new channel = GetPlayerChannel(playerid);
new slotid = GetChannelSlot(channel);
if(channel == 0) return RadioMSG(playerid, "You're not in any channel.");
if(PlayerInfo[playerid][pAuthed] == 1) return RadioMSG(playerid, "You are already authorized in your current channel.");
if(!AuthPassCorrect(slotid, pass)) return RadioMSG(playerid, "Invalid authorization password.");
format(msg, sizeof(msg), "You have been authorized to use this channel, password: %s.", pass);
RadioMSG(playerid, msg);
PlayerInfo[playerid][pAuthed] = 1;
return 1;
}

CMD:newauth(playerid, params[])
{
new msg[128];
new oldpass[128], newpass[128];
if(sscanf(params, "s[128]s[128]", oldpass, newpass)) return Syntax(playerid, "/newauth [old password] [new password]");
new channel = GetOwnedChannel(playerid);
new slot = GetChannelSlot(channel);
if(!PlayerOwnChannel(playerid)) return RadioMSG(playerid, "You don't own any channel.");
if(!AuthPassCorrect(slot, oldpass)) return RadioMSG(playerid, "Invalid authorization password.");
format(msg, sizeof(msg), "Your authorization password has been changed to, %s.", newpass);
RadioMSG(playerid, msg);
format(RadiosInfo[slot][radioPass], 128, "%s", newpass);
SaveRadios();
return 1;
}

CMD:radioteam(playerid, params[])
{
new msg[128];
new channel = GetPlayerChannel(playerid);
new owned = GetOwnedChannel(playerid);
if(!PlayerOwnChannel(playerid)) return SendClientMessageEx(playerid, COLOR_YELLOWG, "You don't own any channel.");
if(channel != owned) return RadioMSG(playerid, "You must be connected to your channel.");
SendClientMessageEx(playerid, COLOR_YELLOWG, "|_____________Radio Members_____________|");
foreach(Player, i)
{
if(GetPlayerChannel(i) == owned && i != playerid)
{
format(msg, sizeof(msg), "[ID:%d]%s.", i, GetPlayerNameEx(i));
SendClientMessageEx(playerid, COLOR_FADE2, msg);
}
}
SendClientMessageEx(playerid, COLOR_YELLOWG, "|______________________________________|");
return 1;
}

CMD:kickoffradio(playerid, params[])
{
new id;
new msg[128];
if(sscanf(params, "u", id)) return Syntax(playerid, "/kickoffradio [playerid]");
//if(!PlayerIsOn(id)) return NotConnectedMSG(playerid);
if(id == playerid) return SendClientMessageEx(playerid, COLOR_WHITE, "You may not kick yourself.");
new channel = GetPlayerChannel(playerid);
new owned = GetOwnedChannel(playerid);
if(!PlayerOwnChannel(playerid)) return RadioMSG(playerid, "You don't own any channel.");
if(channel != owned) return RadioMSG(playerid, "You must be connected to your channel.");
if(GetPlayerChannel(id) == owned)
{
format(msg, sizeof(msg), "You have just kicked %s from your radio.", GetPlayerNameEx(id));
RadioMSG(playerid, msg);
RadioMSG(id, "You have been kicked from the radio channel you're currently in.");
SetRadioChannel(id, 0);
}
else return RadioMSG(playerid, "This player isn't in your radio channel.");
return 1;
}

CMD:radio(playerid, params[]) return cmd_r(playerid, params);
CMD:r(playerid, params[])
{
new msg[128];
new text[128];
new channel = GetPlayerChannel(playerid);
new slot = GetPlayerSlot(playerid);
if(sscanf(params, "s[128]", text)) return Syntax(playerid, "(/r)adio [text]");
if(PlayerInfo[playerid][pRadio] == 0) return SendClientMessageEx(playerid, -1, "You don't have a radio.");
if(channel == 0) return RadioMSG(playerid, "You're not in any channel.");
if(PlayerInfo[playerid][pAuthed] == 0) return RadioMSG(playerid, "You are not authorized in your current channel.");
if(strlen(text) > MAXLEN)
{
new pos = MAXLEN;
if(pos < MAXLEN-1) pos = MAXLEN;
format(msg, sizeof(msg), "**[CH: %d S: %d] %s: %.*s ...", channel, slot, GetPlayerNameEx(playerid), pos, text);
SendRadioMessageNew(playerid, channel, RADIO, msg);
format(msg, sizeof(msg), "**[CH: %d S: %d] %s: ... %s", channel, slot, GetPlayerNameEx(playerid), text[pos]);
SendRadioMessageNew(playerid, channel, RADIO, msg);
}
else
{
format(msg, sizeof(msg), "**[CH: %d S: %d] %s: %s", channel, slot, GetPlayerNameEx(playerid), text);
SendRadioMessageNew(playerid, channel, RADIO, msg);
}
if(strlen(text) > MAXLEN)
{
new pos = MAXLEN;
if(pos < MAXLEN-1) pos = MAXLEN;
format(msg, sizeof(msg), "(Radio) %s says: %.*s ...", GetPlayerNameEx(playerid), pos, text);
SendProxRadioMessage(playerid, msg);
format(msg, sizeof(msg), "(Radio) %s says: ... %s", GetPlayerNameEx(playerid), text[pos]);
SendProxRadioMessage(playerid, msg);
}
else
{
format(msg, sizeof(msg), "(Radio) %s says: %s", GetPlayerNameEx(playerid), text);
SendProxRadioMessage(playerid, msg);
}
return 1;
}

CMD:rlow(playerid, params[])
{
new msg[128];
new text[128];
new channel = GetPlayerChannel(playerid);
if(sscanf(params, "s[128]", text)) return Syntax(playerid, "/rlow [text]");
if(PlayerInfo[playerid][pRadio] == 0) return SendClientMessageEx(playerid, -1, "You don't have a radio.");
if(channel == 0) return RadioMSG(playerid, "You're not in any channel.");
if(PlayerInfo[playerid][pAuthed] == 0) return RadioMSG(playerid, "You are not authorized in your current channel.");
new
rank[64],
division[64],
employer[64];

GetPlayerFactionInfo(playerid, rank, division, employer);
if(PlayerInfo[playerid][pMember] == 1 && channel == 911)
{
if(strlen(text) > MAXLEN)
{
new pos = MAXLEN;
if(pos < MAXLEN-1) pos = MAXLEN;
format(msg, sizeof(msg), "**[CH: %d] %s %s: %.*s ...", channel, rank, GetPlayerNameEx(playerid), pos, text);
SendRadioMessageNew(playerid, channel, RADIO, msg);
format(msg, sizeof(msg), "**[CH: %d] %s %s: ... %s", channel, rank, GetPlayerNameEx(playerid), text[pos]);
SendRadioMessageNew(playerid, channel, RADIO, msg);
}
else
{
format(msg, sizeof(msg), "**[CH: %d] %s %s: %s", channel, rank, GetPlayerNameEx(playerid), text);
SendRadioMessageNew(playerid, channel, RADIO, msg);
}
if(strlen(text) > MAXLEN)
{
new pos = MAXLEN;
if(pos < MAXLEN-1) pos = MAXLEN;
format(msg, sizeof(msg), "(Radio) %s says (low): %.*s ...", GetPlayerNameEx(playerid), pos, text);
SendLowProxRadioMessage(playerid, msg);
format(msg, sizeof(msg), "(Radio) %s says (low): ... %s", GetPlayerNameEx(playerid), text[pos]);
SendLowProxRadioMessage(playerid, msg);
}
else
{
format(msg, sizeof(msg), "(Radio) %s says (low): %s", GetPlayerNameEx(playerid), text);
SendLowProxRadioMessage(playerid, msg);
}
}
else
{
if(strlen(text) > MAXLEN)
{
new pos = MAXLEN;
if(pos < MAXLEN-1) pos = MAXLEN;
format(msg, sizeof(msg), "**[CH: %d] %s: %.*s ...", channel, GetPlayerNameEx(playerid), pos, text);
SendRadioMessageNew(playerid, channel, RADIO, msg);
format(msg, sizeof(msg), "**[CH: %d] %s: ... %s", channel, GetPlayerNameEx(playerid), text[pos]);
SendRadioMessageNew(playerid, channel, RADIO, msg);
}
else
{
format(msg, sizeof(msg), "**[CH: %d] %s: %s", channel, GetPlayerNameEx(playerid), text);
SendRadioMessageNew(playerid, channel, RADIO, msg);
}
if(strlen(text) > MAXLEN)
{
new pos = MAXLEN;
if(pos < MAXLEN-1) pos = MAXLEN;
format(msg, sizeof(msg), "(Radio) %s says (low): %.*s ...", GetPlayerNameEx(playerid), pos, text);
SendLowProxRadioMessage(playerid, msg);
format(msg, sizeof(msg), "(Radio) %s says (low): ... %s", GetPlayerNameEx(playerid), text[pos]);
SendLowProxRadioMessage(playerid, msg);
}
else
{
format(msg, sizeof(msg), "(Radio) %s says (low): %s", GetPlayerNameEx(playerid), text);
SendLowProxRadioMessage(playerid, msg);
}
}
return 1;
}
