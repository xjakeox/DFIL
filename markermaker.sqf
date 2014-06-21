/*
	Filename: markermaker.sqf
	By; 
	Desc: If player is in the UID var's then will create a marker.
	Made for Dark Fraction Island Life
*/
//================DONATOR MARKERS===============
if ((GetplayerUID player) in vipdonators) then
{
	_marker = createMarkerLocal ["donatorlevelmarker", (getmarkerpos "donatorstatusmarker")];
	_marker setMarkerColorlocal "ColorBlue";
	_marker setMarkerTypelocal "Mil_dot";
	_marker setMarkerTextlocal "Donator Level : Tier 1";
};

if ((GetplayerUID player) in vipdonators2) then
{
	_marker = createMarkerLocal ["donatorlevelmarker", (getmarkerpos "donatorstatusmarker")];
	_marker setMarkerColorlocal "ColorBlue";
	_marker setMarkerTypelocal "Mil_dot";
	_marker setMarkerTextlocal "Donator Level : Tier 2";
};

if ((GetplayerUID player) in vipdonators3) then
{
	_marker = createMarkerLocal ["donatorlevelmarker", (getmarkerpos "donatorstatusmarker")];
	_marker setMarkerColorlocal "ColorBlue";
	_marker setMarkerTypelocal "Mil_dot";
	_marker setMarkerTextlocal "Donator Level : Tier 3";
};

if ((GetplayerUID player) in donatorlevel4) then
{
	_marker = createMarkerLocal ["donatorlevelmarker", (getmarkerpos "donatorstatusmarker")];
	_marker setMarkerColorlocal "ColorRed";
	_marker setMarkerTypelocal "Mil_dot";
	_marker setMarkerTextlocal "Donator Level : Tier X";
};

if !((GetplayerUID player) in vipdonators) then
{
	_marker = createMarkerLocal ["donatorlevelmarker", (getmarkerpos "donatorstatusmarker")];
	_marker setMarkerColorlocal "ColorYellow";
	_marker setMarkerTypelocal "Mil_dot";
	_marker setMarkerTextlocal "Donator Level : Not Yet Donated";
};


//================ADMIN MARKERS===============

if ((getplayerUID player) in mod) then
{
	_marker = createMarkerLocal ["adminlevelmarker", (getmarkerpos "adminstatusmarker")];
	_marker setMarkerColorlocal "Colorwhite";
	_marker setMarkerTypelocal "Mil_dot";
	_marker setMarkerTextlocal "Staff Level: Moderator";
};

if ((getplayerUID player) in admin) then
{
	_marker = createMarkerLocal ["adminlevelmarker", (getmarkerpos "adminstatusmarker")];
	_marker setMarkerColorlocal "Colorwhite";
	_marker setMarkerTypelocal "Mil_dot";
	_marker setMarkerTextlocal "Staff Level: Administrator";
};

if ((getplayerUID player) in superadmin) then
{
	_marker = createMarkerLocal ["adminlevelmarker", (getmarkerpos "adminstatusmarker")];
	_marker setMarkerColorlocal "Colorwhite";
	_marker setMarkerTypelocal "Mil_dot";
	_marker setMarkerTextlocal "Staff Level: Super Administrator";
};