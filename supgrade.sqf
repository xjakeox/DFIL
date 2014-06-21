_art 	= _this select 0;
_item 	= _this select 1;





if(_art == "use")then

{
_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 6] select 0);
_vclfuel = fuel _vcl;
_type	= typeof _vcl;
if (isnil ("_vcl")) exitwith {player groupchat "Not near any vehicles"};
if (!(player == vehicle player)) exitWith {player groupchat "You must be outside the vehicle"};
if(_vcl iskindof _type call INV_getitemTypeKg > 2)exitwith{player groupchat "you cannot tune this vehicle"};
if(_vcl iskindof "Motorcycle")exitwith{player groupchat "you cannot upgrade this!"};
if(_vcl iskindof "ship")exitwith{player groupchat "you cannot upgrade boats"};
_check1 = _vcl getVariable "speed1";
_check2 = _vcl getVariable "speed2";
_check3 = _vcl getVariable "speed3";
_check4 = _vcl getVariable "speed4";

if(_item == "supgrade1") then 
	{
	[_item, -1] call INV_AddInvItem;
	player groupchat "Tuning vehicle...";
	_vcl setfuel 0;
	_vcl lockdriver true;
	_vcl lockcargo true;
	_vcl lock true;
	player playMove "AinvPknlMstpSlayWrflDnon_medic"; 
	sleep 10;
	_vcl lockdriver false;
	_vcl lockcargo false;
	_vcl setfuel _vclfuel;
	_vcl setvariable ["tuning", 1, true];
	_vcl setvariable ["speed1", 1, true];
	player groupchat "Vehicle tuned!";
	}; 

if(_item == "supgrade2") then 
	{ 
	player groupchat "tuning vehicle...";
	[_item, -1] call INV_AddInvItem; 
	_vcl setfuel 0;
	_vcl lockdriver true;
	_vcl lockcargo true;
	_vcl lock true;
	player playMove "AinvPknlMstpSlayWrflDnon_medic"; 
	sleep 10;
	_vcl lockdriver false;
	_vcl lockcargo false;
	_vcl setfuel _vclfuel;
	_vcl setvariable ["tuning", 2, true];
	_vcl setvariable ["speed2", 1, true];
	player groupchat "vehicle tuned!";
	};
	
if(_item == "supgrade3") then 
	{ 
	player groupchat "tuning vehicle...";
	[_item, -1] call INV_AddInvItem; 
	_vcl setfuel 0;
	_vcl lockdriver true;
	_vcl lockcargo true;
	_vcl lock true;
	player playMove "AinvPknlMstpSlayWrflDnon_medic"; 
	sleep 10;
	_vcl lockdriver false;
	_vcl lockcargo false;
	_vcl setfuel _vclfuel;
	_vcl setvariable ["tuning", 3, true];
	_vcl setvariable ["speed3", 1, true];
	player groupchat "vehicle tuned!";
	}; 

	
if(_item == "supgrade4") then 
	{ 
	player groupchat "tuning vehicle...";
	[_item, -1] call INV_AddInvItem; 
	_vcl setfuel 0;
	_vcl lockdriver true;
	_vcl lockcargo true;
	_vcl lock true;
	player playMove "AinvPknlMstpSlayWrflDnon_medic"; 
	sleep 10;
	_vcl lockdriver false;
	_vcl lockcargo false;
	_vcl setfuel _vclfuel;
	_vcl setvariable ["tuning", 4, true];
	_vcl setvariable ["speed4", 1, true];
	player groupchat "vehicle tuned!";
	}; 

	
if(_item == "supgrade5") then 
	{ 
	player groupchat "tuning vehicle...";
	[_item, -1] call INV_AddInvItem; 
	_vcl setfuel 0;
	_vcl lockdriver true;
	_vcl lockcargo true;
	_vcl lock true;
	player playMove "AinvPknlMstpSlayWrflDnon_medic"; 
	sleep 10;
	_vcl lockdriver false;
	_vcl lockcargo false;
	_vcl setfuel _vclfuel;
	_vcl setvariable ["tuning", 5, true];
	_vcl setvariable ["speed5", 1, true];
	player groupchat "vehicle tuned!";
	}; 
	
if(_item == "isupgrade1") then 
	{
	[_item, -1] call INV_AddInvItem;
	player groupchat "Tuning vehicle...";
	_vcl setfuel 0;
	_vcl lockdriver true;
	_vcl lockcargo true;
	_vcl lock true;
	player playMove "AinvPknlMstpSlayWrflDnon_medic"; 
	sleep 10;
	_vcl lockdriver false;
	_vcl lockcargo false;
	_vcl setfuel _vclfuel;
	_vcl setvariable ["tuning", 1, true];
	_vcl setvariable ["speed1", 1, true];
	player groupchat "Vehicle tuned!";
	}; 

if(_item == "isupgrade2") then 
	{ 
	player groupchat "tuning vehicle...";
	[_item, -1] call INV_AddInvItem; 
	_vcl setfuel 0;
	_vcl lockdriver true;
	_vcl lockcargo true;
	_vcl lock true;
	player playMove "AinvPknlMstpSlayWrflDnon_medic"; 
	sleep 10;
	_vcl lockdriver false;
	_vcl lockcargo false;
	_vcl setfuel _vclfuel;
	_vcl setvariable ["tuning", 2, true];
	_vcl setvariable ["speed2", 1, true];
	player groupchat "vehicle tuned!";
	};
	
if(_item == "isupgrade3") then 
	{ 
	player groupchat "tuning vehicle...";
	[_item, -1] call INV_AddInvItem; 
	_vcl setfuel 0;
	_vcl lockdriver true;
	_vcl lockcargo true;
	_vcl lock true;
	player playMove "AinvPknlMstpSlayWrflDnon_medic"; 
	sleep 10;
	_vcl lockdriver false;
	_vcl lockcargo false;
	_vcl setfuel _vclfuel;
	_vcl setvariable ["tuning", 3, true];
	_vcl setvariable ["speed3", 1, true];
	player groupchat "vehicle tuned!";
	}; 
	
if(_item == "isupgrade4") then 
	{ 
	player groupchat "tuning vehicle...";
	[_item, -1] call INV_AddInvItem; 
	_vcl setfuel 0;
	_vcl lockdriver true;
	_vcl lockcargo true;
	_vcl lock true;
	player playMove "AinvPknlMstpSlayWrflDnon_medic"; 
	sleep 10;
	_vcl lockdriver false;
	_vcl lockcargo false;
	_vcl setfuel _vclfuel;
	_vcl setvariable ["tuning", 4, true];
	_vcl setvariable ["speed4", 1, true];
	player groupchat "vehicle tuned!";
	}; 

	
if(_item == "isupgrade5") then 
	{ 
	player groupchat "tuning vehicle...";
	[_item, -1] call INV_AddInvItem; 
	_vcl setfuel 0;
	_vcl lockdriver true;
	_vcl lockcargo true;
	_vcl lock true;
	player playMove "AinvPknlMstpSlayWrflDnon_medic"; 
	sleep 10;
	_vcl lockdriver false;
	_vcl lockcargo false;
	_vcl setfuel _vclfuel;
	_vcl setvariable ["tuning", 5, true];
	_vcl setvariable ["speed5", 1, true];
	player groupchat "vehicle tuned!";
	}; 


			 
};
