// rob gas station script, called on client, the amount u steal is determined by a server loop, in stationrobloop.sqf
// written by eddie vedder
_selection = ((_this select 3) select 0);

if (_selection == "station 1") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Bryces Gas n Go";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at Bryces Gas n Go has just gone off!";', _sel]) call broadcast;
	}; 
if (playersNumber west <= 2) exitwith {player groupchat "There must be more than 2 cops online to rob this!"};
_sel = "Bryces Gas n Go";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfMishy_%1 = kopfMishy_%1 + wantedamountforrobbing;', player]) call broadcast;
['Mishy', station1money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station1money];
station1money = 0;
publicvariable "station1money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 2") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "J.STONES Gas n Porn";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at J.STONES Gas n Porn has just gone off!";', _sel]) call broadcast;
	};
if (playersNumber west <= 2) exitwith {player groupchat "There must be more than 2 cops online to rob this!"};
_sel = "J.STONES Gas n Porn";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfMishy_%1 = kopfMishy_%1 + wantedamountforrobbing;', player]) call broadcast;
['Mishy', station2money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station2money];
station2money = 0;
publicvariable "station2money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 3") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "JeffSutherlands Gas Station";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at JeffSutherlands Gas Station has just gone off!";', _sel]) call broadcast;
	};
if (playersNumber west <= 2) exitwith {player groupchat "There must be more than 2 cops online to rob this!"};
_sel = "JeffSutherlands Gas Station";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfMishy_%1 = kopfMishy_%1 + wantedamountforrobbing;', player]) call broadcast;
['Mishy', station3money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station3money];
station3money = 0;
publicvariable "station3money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 4") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Gas n Pit";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at Gas n Pit has just gone off!";', _sel]) call broadcast;
	};
if (playersNumber west <= 2) exitwith {player groupchat "There must be more than 2 cops online to rob this!"};
_sel = "Gas n Pit";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfMishy_%1 = kopfMishy_%1 + wantedamountforrobbing;', player]) call broadcast;
['Mishy', station4money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station4money];
station4money = 0;
publicvariable "station4money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 5") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Gas n Chips";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at Gas n Chips has just gone off!";', _sel]) call broadcast;
	};
if (playersNumber west <= 2) exitwith {player groupchat "There must be more than 2 cops online to rob this!"};
_sel = "Gas n Chips";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfMishy_%1 = kopfMishy_%1 + wantedamountforrobbing;', player]) call broadcast;
['Mishy', station5money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station5money];
station5money = 0;
publicvariable "station5money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 6") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "JPrestons Gas Station";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at JPrestons Gas Station has just gone off!";', _sel]) call broadcast;
	};
if (playersNumber west <= 2) exitwith {player groupchat "There must be more than 2 cops online to rob this!"};
_sel = "JPrestons Gas Station";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfMishy_%1 = kopfMishy_%1 + wantedamountforrobbing;', player]) call broadcast;
['Mishy', station6money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station6money];
station6money = 0;
publicvariable "station6money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 7") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Krakens Rocket Fuel";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at Krakens Rocket Fuel has just gone off!";', _sel]) call broadcast;
	};
if (playersNumber west <= 2) exitwith {player groupchat "There must be more than 2 cops online to rob this!"};
_sel = "Krakens Rocket Fuel";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfMishy_%1 = kopfMishy_%1 + wantedamountforrobbing;', player]) call broadcast;
['Mishy', station7money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station7money];
station7money = 0;
publicvariable "station7money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 8") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Gas Haus";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at Gas Haus has just gone off!";', _sel]) call broadcast;
	};
if (playersNumber west <= 2) exitwith {player groupchat "There must be more than 2 cops online to rob this!"};
_sel = "Gas Haus";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfMishy_%1 = kopfMishy_%1 + wantedamountforrobbing;', player]) call broadcast;
['Mishy', station8money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station8money];
station8money = 0;
publicvariable "station8money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};

if (_selection == "station 9") then
{
if (!(call INV_isArmed)) exitwith
	{
	_sel = "Gas Haus";
	player groupchat "You need a gun to rob the station!";
	(format ['server globalChat "A sensor alarm at Gas Haus has just gone off!";', _sel]) call broadcast;
	};
if (playersNumber west <= 2) exitwith {player groupchat "There must be more than 2 cops online to rob this!"};
_sel = "Gas Haus";
(format['if(!("Robbed a gas station" in %1_reason))then{%1_reason = %1_reason + ["Robbed a gas station"]}; %1_wanted = 1; kopfMishy_%1 = kopfMishy_%1 + wantedamountforrobbing;', player]) call broadcast;
['Mishy', station9money] call INV_AddInvItem;
(format ['server globalChat "Someone robbed %1!";', _sel]) call broadcast;
player sidechat format ["You stole $%1 from the gas station!", station9money];
station9money = 0;
publicvariable "station9money";
local_useBankPossible = false;
sleep 300;
local_useBankPossible = true;
};