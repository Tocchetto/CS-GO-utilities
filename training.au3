HotKeySet("+a", "trainingConfig")
HotKeySet("+n", "noClip")
HotKeySet("+h", "health")
HotKeySet("+j", "jumpThrow")
HotKeySet("+f", "funLobby")


HotKeySet("{ESC}", "terminate")

Func terminate()
   Exit 1
EndFunc

Func funLobby()
   Sleep(1000)
   Send("game_mode 1" & @CRLF)
   Send("host_timescale 5" & @CRLF)
   Send("sv_cheats 1" & @CRLF)
   Send("mp_buytime 9999" & @CRLF)
   Send("mp_roundtime_defuse 5" & @CRLF)
   Send("mp_limitteams 0" & @CRLF)
   Send("mp_autoteambalance 0" & @CRLF)
   Send("mat_showlowresimage 1" & @CRLF)
   Send("mp_restartgame 1" & @CRLF)
   Send("ammo_grenade_limit_total 5" & @CRLF)
   Send("mp_freezetime 20" & @CRLF)
   Send("exec gamemode_competitive" & @CRLF)
   Send("bot_kick" & @CRLF)
   Send("r_drawothermodels 2" & @CRLF)
   Exit 1
EndFunc

Func noClip()
   Sleep(1000)
   Send("bind "& '"f"' & " noclip" & @CRLF)
   Sleep(1000)
   Exit 1
EndFunc

Func health()
   Sleep(1000)
   Send("ent_fire {!}self addoutput " & '"health 1337"' & @CRLF)
   Sleep(1000)
   Exit 1
EndFunc

Func jumpThrow()
   Sleep(1000)
   Send("alias " & '"{+}jumpthrow" ' & '"{+}jump;{-}attack"' & @CRLF)
   Send("alias " & '"{-}jumpthrow" ' & '"{-}jump"' & @CRLF)
   Send("bind " & '"h" ' & '"{+}jumpthrow"' & @CRLF)
   Send("cl_radar_scale " & '"0.400000"' & @CRLF)
   Send("cl_hud_playercount_showcount " & '"1"' & @CRLF)
   ;Send("cl_hud_playercount_pos " & '"1"' & @CRLF)
   Exit 1
EndFunc

Func trainingConfig()
   Sleep(1000)
   Send("sv_cheats 1" & @CRLF)
   Send("sv_infinite_ammo 1" & @CRLF)
   Send("ammo_grenade_limit_total 5" & @CRLF)
   Send("mp_warmup_end" & @CRLF)
   Send("mp_freezetime 0" & @CRLF)
   Send("mp_roundtime 60" & @CRLF)
   Send("mp_roundtime_defuse 60" & @CRLF)
   Send("sv_grenade_trajectory 1" & @CRLF)
   Send("sv_grenade_trajectory_time 20" & @CRLF)
   Send("sv_showimpacts 1" & @CRLF)
   Send("mp_limitteams 0" & @CRLF)
   Send("mp_autoteambalance 0" & @CRLF)
   Send("mp_maxmoney 60000" & @CRLF)
   Send("mp_startmoney 60000" & @CRLF)
   Send("mp_buytime 9999" & @CRLF)
   Send("mp_buy_anywhere 1" & @CRLF)
   Send("mp_restartgame 1" & @CRLF)

   Send("bind "& '"f"' & " noclip" & @CRLF)
   Send("alias " & '"{+}jumpthrow" ' & '"{+}jump;-attack"' & @CRLF)
   Send("alias " & '"{-}jumpthrow" ' & '"{-}jump"' & @CRLF)
   Send("bind " & '"h" ' & '"{+}jumpthrow"' & @CRLF)
   Sleep(1500)
   Send("ent_fire {!}self addoutput " & '"health 1337"' & @CRLF)
   Sleep(1000)
   Exit 1
EndFunc

While 1
   Sleep(20)
WEnd