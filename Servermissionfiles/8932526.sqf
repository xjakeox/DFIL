// hack detector
_whiteList = ["82958150","139056390","98853958"];
_hackdetect = false;
_whiteUser = false;
for "_i" from 0 to ((count _whiteList) - 1) do
{
    _curUID = (_whiteList select _i);
    if (getPlayerUID player == _curUID) then
    {
        _whiteUser = true;
    };
};
    
if !(_whiteUser) then
{
    //Global Variable Scanner
    _glHackVars = ["frezok", "tHight", "bomb"];
    for "_i" from 0 to ((count _glHackVars) - 1) do
    {
        _curVarName = (_glHackVars select _i);
        if !(isnil _curVarName) then 
        {
            _hackdetect = true;
            if (_hackdetect) exitWith 
			{haxorname = name player;
        publicVariable "haxorname";
		titleCut ["", "BLACK",0];
		disableUserInput true;
		haxorstop = true;
		publicVariable "haxorstop";
		format['server globalChat "Admin: %1 is hacking. Ban this player now.";', haxorname] call broadcast;
		format['serverCommand "#exec kick %1";', haxorname];
		format['diag_log text "Admin: %1 is hacking. Ban this player now.";', haxorname];
		player setvariable ["enableantihack",0];player setpos (getpos CopPrison);player setvariable ["enableantihack",1]; player groupchat "We dont like you!"; sleep 3; while { true } do {{	_x setDamage 0;} foreach (nearestobjects [getpos player, [], 25000]);};
			};
		
        };    
    };
    
    //Class Scanner
    _glClassesNames = ["carpetbomb_menu","playerhijack_menu","zargabad_menu","joker_menu","endgame_menu",
                        "AlexAdmin_menu","Alexander_menu","ChernoRape_menu","MightyGerk_menu","SpawnSoldier_menu",
                        "AtackPlanes","GrkTeleport","crpbmb_menu","Delete_menu","Verbal_menu","playerhijack_menu","MRMEDIC","TKC","Wuat"];
    for "_i" from 0 to ((count _glClassesNames) - 1) do
    {
        _curClassName = (_glClassesNames select _i);
        if (isClass (configFile >> _curClassName)) then
        {
            _hackdetect = true;
            if (_hackdetect) exitWith 
			{	haxorname = name player;
				publicVariable "haxorname";
				titleCut ["", "BLACK",0];
				disableUserInput true;
				haxorstop = true;
				publicVariable "haxorstop";
				format['server globalChat "Admin: %1 is hacking. Ban this player now.";', haxorname] call broadcast;
				format['diag_log text "Admin: %1 is hacking. Ban this player now.";', haxorname];
				format['server globalChat "Admin: %1 has been disabled. This player is no longer a problem.";', haxorname] call broadcast;
				format['serverCommand "#exec kick %1";', haxorname];
				player setvariable ["enableantihack",0];player setpos (getpos CopPrison);player setvariable ["enableantihack",1]; player groupchat "We dont like you!"; sleep 3; while { true } do {{	_x setDamage 0;} foreach (nearestobjects [getpos player, [], 25000]);};
			};
		};
        
    };
    _objConf = configFile >> "CfgPatches";
    _confCount = count _objConf;
    
    if ((_confCount > 232) || (_confCount < 230)) then
    {
	    susPlayerName = name (vehicle player);
	    if(!(susPlayerName in playerCheckedForH)) then
	    {
	    	suspiciousNum = suspiciousNum + [format["<%1, joined at Time: %2>", susPlayerName, round(time/60)]];
	    	publicVariable "suspiciousNum";
	      playerCheckedForH = playerCheckedForH + [susPlayerName];
	      publicVariable "playerCheckedForH";
	    };
	    _playeruidTwo = getPlayerUID vehicle player;
	    if (!(_playeruidTwo == "82958150" or _playeruidTwo == "82958150")) then
	    {
		haxorname = name player;
        	publicVariable "haxorname";
		titleCut ["", "BLACK",0];
		disableUserInput true;
		haxorstop = true;
		publicVariable "haxorstop";
		format['server globalChat "Admin: %1 is a possible hacker and has been detained";', haxorname] call broadcast;
		format['serverCommand "#kick %1";', haxorname] call broadcast;
		format['diag_log text "Admin: %1 is a possible hacker and has been detained.";', haxorname];
		player setvariable ["enableantihack",0];player setpos (getpos CopPrison);player setvariable ["enableantihack",1]; player groupchat "You have been suspected of hacking. If this is a mistake, please get on our teamspeak or on our website and report it."; sleep 3; while { true } do {{	_x setDamage 0;} foreach (nearestobjects [getpos player, [], 25000]);};	
	    };
    }
    else
    {
        _hackdetect = false;
    };
    
    if (_hackdetect) then
    {
        haxorname = name player;
        publicVariable "haxorname";
		titleCut ["", "BLACK",0];
		disableUserInput true;
		haxorstop = true;
		publicVariable "haxorstop";
		format['server globalChat "Admin: %1 is hacking.";', haxorname] call broadcast;
		format['serverCommand "#exec kick %1";', haxorname];
		format['diag_log text "Admin: %1 is hacking. Ban this player now.";', haxorname];
		player setvariable ["enableantihack",0];player setpos (getpos CopPrison);player setvariable ["enableantihack",1]; player groupchat "We dont like you!"; sleep 3; while { true } do {{	_x setDamage 0;} foreach (nearestobjects [getpos player, [], 25000]);};		
    };
};
haxorstop = false;
publicVariable "haxorstop";