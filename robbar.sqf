
_selection = ((_this select 3) select 0);


if (_selection == "bar") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the bar!";
	};
if (playersNumber west <= 2) exitwith {player groupchat "There must be more than 2 cops online to rob this!"};
(format['if(!("Robbed a bar" in %1_reason))then{%1_reason = %1_reason + ["Robbed bar"]}; %1_wanted = 1; kopfMishy_%1 = kopfMishy_%1 + wantedamountforrobbing;', player]) call broadcast;
['Mishy', barmoney] call INV_AddInvItem;
(format ['server globalChat "Someone robbed Muziqh's Manly Manor!";']) call broadcast;
player sidechat format ["You stole $%1!", barmoney];
barmoney = 0;
publicvariable "barmoney";


};

if (_selection == "bar1") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the bar!";
	};
if (playersNumber west <= 2) exitwith {player groupchat "There must be more than 2 cops online to rob this!"};
(format['if(!("Robbed a bar" in %1_reason))then{%1_reason = %1_reason + ["Robbed bar"]}; %1_wanted = 1; kopfMishy_%1 = kopfMishy_%1 + wantedamountforrobbing;', player]) call broadcast;
['Mishy', barmoney1] call INV_AddInvItem;
(format ['server globalChat "Someone robbed the Arkfall's Bar!";']) call broadcast;
player sidechat format ["You stole $%1!", barmoney1];
barmoney1 = 0;
publicvariable "barmoney1";


};

if (_selection == "bar2") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the bar!";
	};
if (playersNumber west <= 2) exitwith {player groupchat "There must be more than 2 cops online to rob this!"};
(format['if(!("Robbed a bar" in %1_reason))then{%1_reason = %1_reason + ["Robbed bar"]}; %1_wanted = 1; kopfMishy_%1 = kopfMishy_%1 + wantedamountforrobbing;', player]) call broadcast;
['Mishy', barmoney2] call INV_AddInvItem;
(format ['server globalChat "Someone robbed Macks Bar!";']) call broadcast;
player sidechat format ["You stole $%1!", barmoney2];
barmoney2 = 0;
publicvariable "barmoney2";


};

if (_selection == "bar3") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the bar!";
	};
if (playersNumber west <= 2) exitwith {player groupchat "There must be more than 2 cops online to rob this!"};
(format['if(!("Robbed a bar" in %1_reason))then{%1_reason = %1_reason + ["Robbed bar"]}; %1_wanted = 1; kopfMishy_%1 = kopfMishy_%1 + wantedamountforrobbing;', player]) call broadcast;
['Mishy', barmoney3] call INV_AddInvItem;
(format ['server globalChat "Someone robbed Steve's Batcave!";']) call broadcast;
player sidechat format ["You stole $%1!", barmoney3];
barmoney3 = 0;
publicvariable "barmoney3";


};
