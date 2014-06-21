_ArryLength = count INV_SavedVeh;


if(_ArryLength >= 3) then {

player groupChat "[!] Vehicle Save Full [!]";

} else {

_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);

_vclClass = typeOf _vcl;

player globalchat format ["VEHICLE ARRAY : %1",_vcl]; // debug


INV_SavedVeh set [count INV_SavedVeh, _vclClass];

player globalchat format ["SAVED ARRAY : %1",INV_SavedVeh]; // debug

deleteVehicle _vcl;

player groupChat "-| Vehicle Saved |-";
execVM "Scripts\statSave\jaysantiglitch.sqf";

["INV_SavedVehicle",INV_SavedVehicle] spawn clientsavevar;

execVM "Scripts\statSave\jaysantiglitch.sqf";

};