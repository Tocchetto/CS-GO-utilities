HotKeySet("+a", "start")

HotKeySet("{ESC}", "terminate")

Func terminate()
   Exit 1
EndFunc

Func start()
   Sleep(1000)
   Send("sv_cheats 1" & @CRLF)
   Send("sv_infinite_ammo 1" & @CRLF)
   Send("ammo_grenade_limit_total 5" & @CRLF)
   Send("mp_warmup_end" & @CRLF)
   Send("mp_freezetime 0" & @CRLF)
   Send("mp_roundtime 60" & @CRLF)
   Send("mp_roundtime_defuse 60" & @CRLF)
   Send("sv_grenade_trajectory 1" & @CRLF)
   Send("sv_grenade_trajectory_time 10" & @CRLF)
   Send("sv_showimpacts 1" & @CRLF)
   Send("mp_limitteams 0" & @CRLF)
   Send("mp_autoteambalance 0" & @CRLF)
   Send("mp_maxmoney 60000" & @CRLF)
   Send("mp_startmoney 60000" & @CRLF)
   Send("mp_buytime 9999" & @CRLF)
   Send("mp_buy_anywhere 1" & @CRLF)
   Send("mp_restartgame 1" & @CRLF)


   Send("bind "& '"f"' & " noclip" & @CRLF)
   Send("alias " & '"+jumpthrow"' & '"+jump;-attack"' & @CRLF)
   Send("alias " & '"-jumpthrow"' & '"-jump"' & @CRLF)
   Send("bind " & '"h"' & '"+jumpthrow"' & @CRLF)
   Sleep(1000)
   Exit 1
EndFunc

While 1
   Sleep(20)
WEnd