#include "uid.hpp";
waitUntil {!isNull player};

_uid = getPlayerUID player;

if(_uid in _uidList) then {['Mishy',100000] call INV_AddInvItem};
_addAction3 = player addAction ["Admin Cam", "gcam\gcam.sqf",["This"]]
	_noMsg = true;
	{if(_x select 0 == _uid) then {hint format["Welcome back, %1\n%2",name player,_x select 1]; _noMsg=false;};} forEach _msgList;
	if(_noMsg) then {hint format["Welcome back, %1\n",name player];};
} else {
	hint format["Welcome to our server, %1",name player];
};











