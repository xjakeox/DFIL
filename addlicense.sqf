_this    = _this select 3;
_number  = _this select 0;
_art     = _this select 1;         
//                                


if ((_art == "remove") or (_art == "add")) then 

{

if (_art == "add") then 

	{
	_uid = getPlayerUID vehicle  player;
	_license = ((INV_Lizenzen select _number) select 0);
	_name    = ((INV_Lizenzen select _number) select 2);
	_cost    = ((INV_Lizenzen select _number) select 3);
	if (_license call INV_HasLicense) exitWith {player groupChat localize "STRS_inv_buylicense_alreadytrue";};
	if (('Mishy' call INV_GetItemAmount) < _cost) exitWith {player groupChat localize "STRS_inv_buylicense_nomoney";};
	if(_license == "car" or _license == "truck")then{demerits = 10};
	if(_license == "oil" and !(_uid in donatorlevel1)) exitWith { player groupChat "This license is restricted to donors only, visit www.darkfraction.net for more info."};
	if(_license == "mayorlic" and !(ismayor)) exitWith { player groupChat "Restricted to Mayor"};
	if(_license == "probator" and !(iscop)) exitWith { player groupChat "Restricted to Police"};
	if(_license == "patrol_training" and !(iscop)) exitWith { player groupChat "Restricted to Police"};
	if(_license == "sobr_training" and !(iscop)) exitWith { player groupChat "Restricted to Police"};
	if(_license == "air_support_training" and !(iscop)) exitWith { player groupChat "Restricted to Police"};
	if(_license == "cg_air" and !(iscop)) exitWith { player groupChat "Restricted to Police"};
	if(_license == "cg_boat" and !(iscop)) exitWith { player groupChat "Restricted to Police"};


	['Mishy', -(_cost)] call INV_AddInvItem;
	player groupChat format[localize "STRS_inv_buylicense_gottraining", (_cost call ISSE_str_IntToStr), _name];

	
	INV_LizenzOwner = INV_LizenzOwner + [_license];
	["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
	
	} 
	else 
	{

	_license = ((INV_Lizenzen select _number) select 0);
	name    = ((INV_Lizenzen select _number) select 2);
	if (not(_license call INV_HasLicense)) exitWith {player groupChat localize "STRS_inv_buylicense_alreadyfalse";};
	INV_LizenzOwner = INV_LizenzOwner - [_license];
	player groupChat format[localize "STRS_inv_buylicense_losttraining", _name];
	["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;

	};

};