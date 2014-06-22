
//            Viper
developer = ["24638022"];
//         Nate       Cradboard
admin = ["31362694","71247814"];
moderator = [""];
donatorlevel4 = [""];

publicVariable "developer";
publicVariable "admin";
if ((getPlayerUID player) in developer) then {
	player execVM "adminconsolfill.sqf";
	_ok = createDialog "Main";
	exit;
};

if ((getPlayerUID player) in admin) then {
	player execVM "regadminmenu.sqf";
	_ok = createDialog "Main";
	exit;
};

if ((getPlayerUID player) in moderator) then {
	player execVM "modmenu.sqf";
	_ok = createDialog "Main";
	exit;
};
