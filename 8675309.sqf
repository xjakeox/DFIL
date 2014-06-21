

superadmin = ["37965510"];
donatorlevel4 = ["37965510"];


if ((getPlayerUID player) in superadmin) then {
	player execVM "adminconsolfill.sqf";
	_ok = createDialog "Main";
	exit;
};

if ((getPlayerUID player) in admin) then {
	player execVM "regadminmenu.sqf";
	_ok = createDialog "Main";
	exit;
};

if ((getPlayerUID player) in mod) then {
	player execVM "modmenu.sqf";
	_ok = createDialog "Main";
	exit;
};
