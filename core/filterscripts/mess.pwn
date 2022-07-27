#include <a_samp>
#define CURRENT_MESSAGES 4 /*
This the the amount of messages you have. This number must be the exact number at ALL times!
*/
#define MESSAGE_COLOR 0xFCC500 /*
This is the color you want your random messages to be
*/
#define MESSAGE_INTERVAL 60 /*
This is the amount of seconds between each randomly sent message.
*/
new RM[CURRENT_MESSAGES][128];
forward SendRandomMessage();
public OnFilterScriptInit()
{
        print("\n------------------------------------------");
        print(" Load BotSystem ... [Thanh cong] ");
        print("--------------------------------------------\n");
        AddRandomMessage("[SAMP-RP.TK] Neu ban muon gia nhap doi ngu STAFF/Faction thi nop don tai Forum nhe ");
        AddRandomMessage("[SAMP-RP.TK] Chuc cac ban choi vui ve va nhap vai tai SAMP-RP.TK ");
        AddRandomMessage("[SAMP-RP.TK] Luu Y : Giu gin suc khoe khi choi game (Khong choi nhieu gio lien tuc)");
        AddRandomMessage("[SAMP-RP.TK] Forum : Forum.SAMP-RP.TK - fb.com/NgXuan.Khoi ");
        SetTimer("SendRandomMessage", MESSAGE_INTERVAL * 3000, 1);
        return 1;
}

public SendRandomMessage()
{
        static lastmessage = 0;
        new rand = random(CURRENT_MESSAGES);
        while(rand == lastmessage && CURRENT_MESSAGES != 1)     { rand = random(CURRENT_MESSAGES);  }
        lastmessage = rand;
        SendClientMessageToAll(MESSAGE_COLOR, RM[lastmessage]);
}

stock AddRandomMessage(text[])
{
        for(new m; m < CURRENT_MESSAGES; m++)
        {
            if(!strlen(RM[m]))
                {
                        strmid(RM[m], text, 0, 127);
                        return 1;
                }
        }
        return 0;
}
