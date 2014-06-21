//Server Clean-up
Sleep 60;
server globalchat "Server Cleaner Starting in 1 min!";
Sleep 30;
server globalchat "Server Cleaner Starting in 30 Sec!";
Sleep 30;
server globalchat "Cleaner Started";



hint format ["Cleaned Server"];
cutText [format ["Clear Server"], "PLAIN DOWN"];

{
	_units = [_x,20] call fn_NearPlayers;
	
	if ((count _units == 0) && ((count(crew _x) == 0) and ((damage _x > 0.55) or !(canMove _x)))) then 
	{
		if !((_x isKindOf "Air") or (_x isKindOf "Tank")) then 
		{
			deleteVehicle vehicle _x;
			deleteVehicle _x;
		};
	};
} forEach vehicles;


{
	deleteVehicle vehicle _x;
	deleteVehicle _x;
} forEach (allMissionObjects "EvMoney")+allDEAD;

if (vehicle player in allDEAD) then {deleteVehicle vehicle player;};

sleep 1;
server globalchat "Server Cleaner Done!";