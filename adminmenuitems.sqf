adminCMD = lbCurSel 1000;
TarGetPLayer = ctrlText 2000;
liafu = player;
_inputText = ctrlText 2000;

switch (adminCMD) do
{
	case 0: //Title (Blank)
	{
	};
	case 1: //Title (Blank)
	{
	};
	case 2: //First Aid
	{
		_objs = (position (vehicle player) nearObjects 3); {_x setDamage 0} forEach _objs; closeDialog 0;
	};
	case 3: //Spectate
	{
		handle = [] execVM "addons\proving_ground\fnc_spectate.sqf"; closeDialog 0;
	};
	case 4: //Teleport
	{
		hint "Click on the map to Teleport!";
		liafu = true;
		closeDialog 0;
		openMap true;
		onMapSingleClick "onMapSingleClick """";liafu = true; (vehicle player) setpos [_pos select 0, _pos select 1, 0]; openMap false;";
	};
	case 5: //Delete
	{
		deleteVehicle cursorTarget;closeDialog 0;
	};
	case 6: // Carmageddon
	{
	
		_distance = 50;
		
		if ((typeName _distance) == (typeName (1234))) then {
		
				player groupchat format["Starting Carmageddon at a range of %1 meters", _distance];
		
				{
					{		
						if ({alive _x} count crew _x == 0) then {
								deleteVehicle _x;
							};
					} foreach((getpos player) nearObjects [_x, _distance]);
				} forEach ["LandVehicle", "Air", "Car", "Motorcycle", "Bicycle", "UAV", "Wreck", "Wreck_Base", "HelicopterWreck", "UH1Wreck", "UH1_Base", "UH1H_base", "AH6_Base_EP1","CraterLong", "Ka60_Base_PMC", "Ka137_Base_PMC", "A10"];
			} else {
				hint "ERROR: expected number";
			};
		
	};
	case 7: //GPS,NV,Binoc
	{
		player addweapon "ItemGPS";
		player addweapon "NVGoggles";
		player addweapon "Binocular";
	};
	case 8: // World Heal 
	{
		_objs = (position (vehicle player) nearObjects 100000); {_x setDamage 0} forEach _objs;
		(format ["titleText [""%1 has just performed a worldwide repair/heal!"", ""plain""];",name player]) call broadcast
	};
	case 9: // Masterkey
	{
		_vcls = nearestobjects [getpos player, ["LandVehicle", "Air", "ship"], 25];
		_vcl = _vcls select 0;
		["schluessel", _vcl, 0] execVM "keys.sqf";

	};
	case 10: //Cheat Info
	{
		CheatInfo = nil;
		publicVariable "CheatInfo";
	};
	case 11: //Inventory Money
	{
		['Mishy',100000] call INV_AddInventoryItem;
	};
	case 12: //Tags
	{
		handle = [] execVM "addons\proving_ground\fnc_2dRadar.sqf"; closeDialog 0;
	};
	case 13: //Satellite
	{
		handle = [] execVM "gcam\gcam.sqf"; closeDialog 0;
	};
	case 14: //Large Repair Kit
	{
		['reparaturkit',1] call INV_AddInventoryItem;
	};
	case 15: //Refuel Can
	{
		['kanister',1] call INV_AddInventoryItem;
	};
	case 16: //Medkit
	{
		['medikit',1] call INV_AddInventoryItem;
	};
	case 17: //fix my ride
	{
		vehicle player setFuel 1;
		vehicle player setDamage 0;
	};
	case 18: // Inf Ammo
	{
		if (infammook==0) then
		{
			hint "Infinite Ammo on";
			infammook=1;
		}
		else
		{
			infammook=0;
		};

		while {infammook==1} do
		{;
			(vehicle player) setVehicleAmmo 1;
			sleep 0.1;
		};
		hint "Infinite Ammo off";
		infammook=0;
	};
	case 19: // FUEL
	{
		if (isNil "inffuelok") then {inffuelok = 0;};
		if (inffuelok==0) then
			{
			hint "Infinite Fuel ON!";
			iloopokk=1;
			inffuelok=1;
			}
		else
			{
			iloopokk=0;
			};
		while {iloopokk==1} do
			{;
			(vehicle player) setFuel 1;
			sleep 0.1;
			};
		hint "Infinite Fuel OFF!";
		inffuelok=0;
	};
	case 20: //PGSPAWN
	{
	createDialog "balca_debug_main";
	};
	
};
/*
-----------------------------------------------------------------------------------------
*/

// 
if (TarGetPLayer == "") then
{
	CoDeString = cmdLine;
}
else
{
	CoDeString = "if (name vehicle player == TarGetPLayer) then {_comp = compile cmdLine; call _comp;}";
};

publicVariable "TarGetPLayer";
sleep 0.3;
publicVariable "cmdLine";
sleep 0.3;
publicVariable "CoDeString";
sleep 0.3;

// nil = [CoDeString] execVM "public.sqf";
_O0O0 = player;
hint "Code Activated";