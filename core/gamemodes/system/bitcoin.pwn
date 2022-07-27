#include "YSI\y_hooks"

new BTCvalue;

#define DIALOG_MUACOIN 9898
#define DIALOG_BANCOIN 9990
#define DIALOG_MUACOIN 9991
#define DANHSACHCOIN 9992

enum pInfo
{
	pRTX3060,
	pMaydao,
}

task capnhatbitcoin[30000]()
{
	new rand = Random(1000000, 1000000000);
	BTCvalue = rand;
	new string[1280], string1[1280];
	format(string, sizeof(string), "[{00b300}Binance{ffffff}]Gia Coin Da Duoc Update La %d $.",BTCvalue);
	format(string1, sizeof(string1), "[{00b300}Binance{ffffff}]Ban muon mua Bitcoin voi gia %d $ thi hay vao san Binance bang cach [/binance].",BTCvalue);
 	printf("[{00b300}Binance{ffffff}] Gia BitCoin %d$",BTCvalue);
	SendClientMessageToAllEx(COLOR_WHITE, string);
	SendClientMessageToAllEx(COLOR_WHITE, string1);
    return 1;
}


/* task GetBTC[3600000]()
{
	foreach(new x: Player)
	If(PlayerInfo[x][pMaydao] = 1)
	{
		if(PlayerInfo[x][pRTX3060] == 1)
		{
			PlayerInfo[x][pBTC] ++;
			SendClientMessage(x, -1, "ban da nhan duoc 1 bitcoin tu may dao");
			return 1;
		}
		if(PlayerInfo[x][pRTX3060] == 2)
		{
			PlayerInfo[x][pBTC] += 2;
			SendClientMessage(x, -1, "ban da nhan duoc 2 bitcoin tu may dao");
			return 1;
		}
		if(PlayerInfo[x][pRTX3060] == 3)
		{
			PlayerInfo[x][pBTC] += 3;
			SendClientMessage(x, -1, "ban da nhan duoc 3 bitcoin tu may dao");
			return 1;
		}
		if(PlayerInfo[x][pRTX3060] == 4)
		{
			PlayerInfo[x][pBTC] += 4;
			SendClientMessage(x, -1, "ban da nhan duoc 4 bitcoin tu may dao");
			return 1;
		}
	}

} */

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == DIALOG_MUACOIN)
    {
		if(response) {
			if(strval(inputtext) > 0) {
				if(PlayerInfo[playerid][pCash] < strval(inputtext)*BTCvalue)
                {
                     SendClientMessageEx(playerid, -1, "Ban Khong Du Tien");
                     return 1;
                }
					PlayerInfo[playerid][pCash] -= strval(inputtext)*BTCvalue;
					PlayerInfo[playerid][pBTC] += strval(inputtext);
					new string[1280];
					format(string, 128, "[{00b300}Binance{ffffff}]: Ban da mua %d Dong Coin voi gia $%d", strval(inputtext), strval(inputtext)*BTCvalue);
					SendClientMessage(playerid, -1, string);
			}
			else
				SendClientMessage(playerid, -1,"[{00b300}Binance{ffffff}]: So luong can ban phai lon hon 0!");
		}
	}
    if(dialogid == DIALOG_BANCOIN)
    {
		if(response) {
			if(strval(inputtext) > 0) {
				if(PlayerInfo[playerid][pBTC] < strval(inputtext))
                {
                     SendClientMessageEx(playerid, -1, "Ban Khong Du Coin");
                     return 1;
                }
					PlayerInfo[playerid][pBTC] -= strval(inputtext);
					GivePlayerCash(playerid, strval(inputtext)*BTCvalue);
					new string[1280];
					format(string, 128, "[{00b300}Binance{ffffff}]: Ban da ban %d Coin  va nhan duoc $%d", strval(inputtext), strval(inputtext)*BTCvalue);
					SendClientMessage(playerid, -1, string);
			}
			else
				SendClientMessage(playerid, -1,"[{00b300}Binance{ffffff}]: So luong can ban phai lon hon 0!");
		}
	}
	if(dialogid == DANHSACHCOIN)
	{
	    if(response)
	    {
	        if(listitem == 0)
	        {
	           new string[1280];
			   format(string, 128, "\nCoin cua ban: %d\nGia tien $%d/coin\nNhap so luong ban muon mua:", PlayerInfo[playerid][pBTC], BTCvalue);
			  ShowPlayerDialog(playerid, DIALOG_MUACOIN, DIALOG_STYLE_INPUT, "[{00b300}Binance{ffffff}] Mua Coin", string,"Ban","Huy");
			}
			if(listitem == 1)
	        {
	           new string[1280];
			    format(string, 128, "\nCoin cua ban: %d\nGia tien $%d/coin\nNhap so luong ban muon ban:", PlayerInfo[playerid][pBTC], BTCvalue);
			   ShowPlayerDialog(playerid, DIALOG_BANCOIN, DIALOG_STYLE_INPUT, "[{00b300}Binance{ffffff}] Ban Coin", string,"Ban","Huy");
			}
			if(listitem == 2)
	        {
			     new string[1280];
	             format(string, sizeof(string), "Ban Dang Co %d Coin , Gia Coin Hien Tai La %d", PlayerInfo[playerid][pBTC], BTCvalue);
                 SendClientMessageEx(playerid, -1, string);
			}
		}
	}
    return 1;
}


CMD:binance(playerid, params[])
{
	ShowPlayerDialog(playerid, DANHSACHCOIN, DIALOG_STYLE_LIST, "Chao Mung Ban Den Voi Binance","Mua\nBan\nXem Coin", "Chon", "Huy Bo");
	return 1;
}


CMD:setgiabitcoin(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 99999)
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban Khong Duoc Phep Su Dung Lenh Nay.");
		return 1;
	}
	new giatien;
	new string[1280], string1[1280];
	if(sscanf(params, "d", giatien)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /setBTCvalue [money]");
	BTCvalue = giatien;
	format(string, sizeof(string), "[{00b300}Binance{ffffff}]Gia Coin Da Duoc Update La %d $.",BTCvalue);
	format(string1, sizeof(string1), "[{00b300}Binance{ffffff}]Ban muon mua Bitcoin voi gia %d $ thi hay vao san Binance bang cach [/binance].",BTCvalue);
	printf("Gia BitCoin %d.",BTCvalue);
	SendClientMessageToAllEx(COLOR_WHITE, string);
	SendClientMessageToAllEx(COLOR_WHITE, string1);
	return 1;
}

