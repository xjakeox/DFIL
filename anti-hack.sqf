//if (isServer) exitWith {};

hintc "Our TS IP: 5.39.93.223\nAll cops must be on Team Speak to play\nAll Cops must have a Taser on them\nRandom and Vehicle Death Match is a bannable offence\nDon't use Global voice ONLY type\nADMINS HAVE THE FINAL SAY\nAlso remember to role-play at all times.";
hackerjustloggedin = false;

sleep 5;//make em think they're in.


naughty = false;

da_mando = isClass(configFile >> "CfgPatches" >> "Mando_Missile_Addon");

da_slx = isClass(configFile >> "CfgPatches" >> "slx_a2_backcompatibility");

da_lostkey = isClass(configFile >> "CfgPatches" >> "Loki_Lost_Key");

da_inkodisp = isClass(configFile >> "CfgPatches" >> "inko_disposable_oa");

da_jtd = isClass(configFile >> "CfgPatches" >> "JTD_FireAndSmoke");

da_ACE = isClass(configFile >> "cfgPatches" >> "ace_sys_interaction");

da_LEA = isClass(configFile >> "cfgPatches" >> "LEA");


//Mando

if (da_mando) then {
	hackerjustloggedin = true;
	publicvariable "hackerjustloggedin";
	(format["server globalchat ""%1 IS USING MANDO! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING MANDO! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING MANDO! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	CheatInfo = [name vehicle player,"Mando",getPlayerUID player];
	publicVariable "CheatInfo";
	hintc "***ADDON DISALLOWED***\n\nMando Missile\n\nPlease disable this if you wish to play here.\n\nREASON: Undesired behavior";
	player sidechat "***ADDON DISALLOWED***  Mando Missile   Please disable this if you wish to play here.   REASON: Undesired behavior";
	naughty = true;
	endmission "end3";
};

//ACE
if (da_ACE) then {
	hackerjustloggedin = true;
	publicvariable "hackerjustloggedin";
	(format["server globalchat ""%1 IS USING ACE! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING ACE! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING ACE! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	CheatInfo = [name vehicle player,"ACE Mod",getPlayerUID player];
	publicVariable "CheatInfo";
	hintc "***ADDON DISALLOWED***\n\nACE\n\nPlease disable this if you wish to play here.\n\nREASON: Undesired behavior";
	player sidechat "***ADDON DISALLOWED***  ACE   Please disable this if you wish to play here.   REASON: Undesired behavior";
	naughty = true;
	endmission "end3";
};

if (!(isnil "Smaker") or !(isnil "tracker") or !(isnil "hacks") or !(isnil "igodok") or !(isnil "infammook") or !(isnil "clExec_command")) then {
	hackerjustloggedin = true;
	publicvariable "hackerjustloggedin";
	(format["server globalchat ""%1 IS USING MORKER HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING MORKER HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING MORKER HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	CheatInfo = [name vehicle player,"Morker",getPlayerUID player];
	publicVariable "CheatInfo";
	disableUserInput true;
	hintc "You are using a cheat/hack. Your Battleye and UID has been added to our log file for cheaters. Goodbye.";
	player sidechat "You are using a cheat/hack. Your Battleye and UID has been added to our log file for cheaters. Goodbye.";
	naughty = true;
	endmission "end3";
};

if (!(isnil "Alex_DELETE_TOOL")) then {
	hackerjustloggedin = true;
	publicvariable "hackerjustloggedin";
	(format["server globalchat ""%1 IS USING GALEX HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING GALEX HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING GALEX HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	CheatInfo = [name vehicle player,"GAlex",getPlayerUID player];
	publicVariable "CheatInfo";
	disableUserInput true;
	hintc "You are using a cheat/hack. Your Battleye and UID has been added to our log file for cheaters. Goodbye.";
	player sidechat "You are using a cheat/hack. Your Battleye and UID has been added to our log file for cheaters. Goodbye.";
	naughty = true;
	endmission "end3";
};

if ((da_lostkey) or !(isnil "LOKI_GUI_Key_Color")) then {
	hackerjustloggedin = true;
	publicvariable "hackerjustloggedin";
	(format["server globalchat ""%1 IS USING LOKIS LOST HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING LOKIS LOST HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING LOKIS LOST HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	CheatInfo = [name vehicle player,"Las Nycklar",getPlayerUID player];
	publicVariable "CheatInfo";
	disableUserInput true;
	hintc "You are using a cheat and hack. Your Battleye and UID has been added to our log file for cheaters. Goodbye.";
	player sidechat "You are using a cheat and hack. Your Battleye and UID has been added to our log file for cheaters. Goodbye.";
	naughty = true;
	endmission "end3";
};

if (da_inkodisp) then {
	hackerjustloggedin = true;
	publicvariable "hackerjustloggedin";
	(format["server globalchat ""%1 IS USING INKO! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING INKO! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING INKO! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	CheatInfo = [name vehicle player,"INKO Disposable",getPlayerUID player];
	publicVariable "CheatInfo";
	hintc "***ADDON DISALLOWED***\n\nINKO Disposable\n\nPlease disable this if you wish to play here.\n\nREASON: ACE already does this, why are you running this addon?";
	player sidechat "***ADDON DISALLOWED***   INKO Disposable   Please disable this if you wish to play here.   REASON: ACE already does this, why are you running this addon?";
	endmission "end3";
};

if (da_jtd) then {
	hackerjustloggedin = true;
	publicvariable "hackerjustloggedin";
	(format["server globalchat ""%1 IS USING JTD! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING JTD! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING JTD! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;	
	CheatInfo = [name vehicle player,"JTD",getPlayerUID player];
	publicVariable "CheatInfo";
	hintc "***ADDON DISALLOWED***\n\nJTD Fire and Smoke\n\nPlease disable this if you wish to play here.\n\nREASON: Multiplayer unfriendly";
	player sidechat "***ADDON DISALLOWED***   JTD Fire and Smoke   Please disable this if you wish to play here.   REASON: Multiplayer unfriendly";
	naughty = true;
	endmission "end3";
};

if (da_slx) then {
	hackerjustloggedin = true;
	publicvariable "hackerjustloggedin";
	(format["server globalchat ""%1 IS USING SLX! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING SLX! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING SLX! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;	
	CheatInfo = [name vehicle player,"SLX",getPlayerUID player];
	publicVariable "CheatInfo";
	hintc "***ADDON DISALLOWED***\n\nSLX\n\nPlease disable this if you wish to play here.\n\nREASON: Multiplayer unfriendly";
	player sidechat "***ADDON DISALLOWED***   SLX   Please disable this if you wish to play here.   REASON: Multiplayer unfriendly";
	naughty = true;
	endmission "end3";
};

//LEA
if ((da_LEA) or !(isnil "LEA_Lock") or !(isnil "LEA_Lock") or !(isnil "enable_lea_addon") or !(isnil "LEA_Action")) then
{
	hackerjustloggedin = true;
	publicvariable "hackerjustloggedin";
	disableuserinput true;
	naughty = true;
	CheatInfo = [name vehicle player,"LEA Hacker",getPlayerUID player];
	publicVariable "CheatInfo";
	hintC "NICE TRY MOTHERFUCKER!";
	(format["server globalchat ""%1 IS USING LEA HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING LEA HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING LEA HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	endmission "end3";
};


//LoganNLZ Hacks
if (!(isnil "Logan__RE") or !(isnil "Scott_Joplin") or !(isnil "Lpiano") or !(isnil "LcMinorScale") or !(isnil "LoganNZLlovesCMDmenus") or !(isnil "mainworldmenu") or !(isnil "ambientsoundmenu") or !(isnil "loganssaymenu")) then
{
	hackerjustloggedin = true;
	publicvariable "hackerjustloggedin";
	disableuserinput true;
	naughty = true;
	CheatInfo = [name vehicle player,"NLZ Hacker",getPlayerUID player];
	publicVariable "CheatInfo";
	hintC "NICE TRY MOTHERFUCKER!";
	(format["server globalchat ""%1 IS USING NLZ HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING NLZ HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING NLZ HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	endmission "end3";
};

//Zeus
if (!(isnil "hacks") or !(isnil "pic") or !(isnil "firstrun") or !(isnil "frezok") or !(isnil "freze")) then
{
	hackerjustloggedin = true;
	publicvariable "hackerjustloggedin";
	disableuserinput true;
	naughty = true;
	CheatInfo = [name vehicle player,"Zeus Hacker",getPlayerUID player];
	publicVariable "CheatInfo";
	hintC "NICE TRY MOTHERFUCKER!";
	(format["server globalchat ""%1 IS USING ZEUS HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING ZEUS HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING ZEUS HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	endmission "end3";
};

//Dayz hack V3
if (!(isnil "HMDIR") or !(isnil "MENUTITLE") or !(isnil "img") or !(isnil "firstRun") or !(isnil "Advanced Menu") or !(isnil "Reset Advanced Menu") or !(isnil "Remove Scroll Options")) then
{
	hackerjustloggedin = true;
	publicvariable "hackerjustloggedin";
	disableuserinput true;
	naughty = true;
	CheatInfo = [name vehicle player,"DayZ V3 Hacker",getPlayerUID player];
	publicVariable "CheatInfo";
	hintC "NICE TRY MOTHERFUCKER!";
	(format["server globalchat ""%1 IS USING DAYZ HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING DAYZ HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING DAYZ HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	endmission "end3";
};

//Infistar
if (!(isnil "scroll_m_init_star") or !(isnil "startmenu_star") or !(isnil "anotherpage") or !(isnil "Dayz_GUI_R") or !(isnil "r_player_unconscious") or !(isnil "r_player_timeout") or !(isnil "keybindings") or !(isnil "keypress") or !(isnil "thfile") or !(isnil "pic") or !(isnil "hanger_is_a_bitching_dickhead") or !(isnil "norrnRACarUp") or !(isnil "Metallica_infiSTAR_hax_toggled") or !(isnil "Metallica_infiSTAR_funcs_inited")) then
{
	hackerjustloggedin = true;
	publicvariable "hackerjustloggedin";
	disableuserinput true;
	naughty = true;
	CheatInfo = [name vehicle player,"Infistar Hacker",getPlayerUID player];
	publicVariable "CheatInfo";
	hintC "NICE TRY MOTHERFUCKER!";
	(format["server globalchat ""%1 IS USING INFISTAR HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING INFISTAR HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	sleep 0.2;
	(format["server globalchat ""%1 IS USING INFISTAR HACKS! REPORT TO A MEMBER OF STAFF IMMIDIETLY!: 5.39.93.223"";", name player]) call broadcast;
	endmission "end3";
};

if (naughty) then {
    server globalchat "SOME ONE WILL BE DISCONNECTED NOW FOR HACKING REPORT THIS TO AN ADMIN!";
	player action ["eject", vehicle player];
	sleep 5;
	endmission "end3";
};

if (!naughty) exitWith {
	player sidechat "Welcome To Dark Fraction Island Life!";
};