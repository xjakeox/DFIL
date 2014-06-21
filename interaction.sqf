#include "macro.h"

if (not(isNil "interaction_functions_defined")) exitWith {};

interact_mobile_receive = {
	private["_player", "_sender", "_text"];

	_player = _this select 0;
	_sender = _this select 1;
	_text = _this select 2;
	
	if (not([_player] call player_human)) exitWith {};
	if (not([_sender] call player_human)) exitWith {};
	if (_player != player) exitWith {};
	
	private["_header"];
	_header = format["%1-%2 sent you a text message.", _sender, (name _sender)];
	
	titleText [_header + "\n" + _text, "PLAIN"];
	player groupChat (_header + " " + _text);
};

interact_mobile_send = {
	private["_player", "_target"];

	_player = _this select 0;
	_target = _this select 1;
	_text = _this select 2;
	
	if (not([_player] call player_human)) exitWith {};
	if (not([_target] call player_human)) exitWith {};
	if (_player != player) exitWith {};
	
	if (isNil "_text") exitWith {};
	if (typeName _text != "STRING") exitWith {};
	
	if (_text == "") exitWith {
		player groupChat format["You cannot send an empty message"];
	};
		
	private["_max_size"];
	_max_size = 100;
	if (strlen(_text) > _max_size) exitWith {
		player groupChat format["Cannot send the text message. It is longer than %1 characters.", _max_size];
	};

	
	private["_money", "_cost"];
	_money  = 'money' call INV_GetItemAmount;
	_cost = INV_smscost;
	
	
	if (_money < _cost) exitWith {
		player groupChat format["Text messages cost %1, you do not have enough money on you.", strM(INV_smscost)];
	};
	
	['money', -(_cost)] call INV_AddInventoryItem;
	
	if (not([_target, "mobile"] call player_get_bool)) exitWith {
		player groupChat format["%1-%2 does not have a IL phone, your text message bounced", _target, (name _target)];
	};

	player groupChat format["You sent a text message to %1-%2 for $%3", _target, (name _target), strM(_cost)];
	
	
	private["_message"];
	_message = format["%1", _text];
	//format['[%1, %2, toString(%3)] spawn interact_mobile_receive;', _target, _player, toArray(_message)] call _broadcast;
	[[_target, _player, _message], "interact_mobile_receive", _target] call TLU_MPFramework_MP;
};

interact_mobile_use = {
	[] execVM "handy2.sqf";
};


// FOR ILG Phone 911
ILG_Open911CivMenu = {
	private ["_player", "_civ"];
	
	_player = _this select 0;
	_civ = player;		
	
	waitUntil
	if (!(createDialog "ja_nein")) exitWith {hint "Dialog Error!"};
	ctrlSetText [1, format["Are you sure you want to dial 911 and report your location and an emergency?", _civ]];	
	
	if (Antwort == 1) then {
	player sidechat format["%1 Has dialed 911! Dispatch units to his location immediately.", _civ];	call ILGgridcordsfunction;
	};
	
	if (Antwort == 2) then {
	player groupchat format["You decided not to call 911"];
	};
};

ILGgridcordsfunction = {
	private ["_civ", "_mapGrid", "_mapgridX", "_mapgridY"];

_civ = player;	
_mapGrid = (getPos _civ) call BIS_fnc_PosToGrid; 
_mapgridX = _mapgrid select 0; 
_mapgridY = _mapgrid select 1; 

player sidechat format["%1 is located at X:%2/Y:%3", _civ, _mapgridX,_mapgridY];  
};

interact_deposit_receive = {
	private["_player", "_sender", "_amount"];
	
	_player = _this select 0;
	_sender = _this select 1;
	_amount = _this select 2;
	
	if (not([_player] call player_human)) exitWith {};
	if (not([_sender] call player_human)) exitWith {};
	if (_player != player) exitWith {};
	
	if (isNil "_amount") exitWith {};
	if (typeName _amount != "SCALAR") exitWith {};
	if (_amount <= 0) exitWith {};
	
	[_amount] call bank_transaction;
	
	player groupChat format["You received $%1 from %2-%3 on your bank account", strM(_amount), _sender, (name _sender)];
};