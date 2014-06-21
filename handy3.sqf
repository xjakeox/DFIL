_smstext         = _this select 1;
_smsplayernumber = _this select 2;
_smsplayer       = INV_PLAYERLIST select _smsplayernumber;

if (_smstext == "") exitWith {player groupChat localize "STRS_inv_item_handy_leermsg";};
if (not((format["%1", (_smsplayer)]) call ISSE_UnitExists)) exitWith {player groupChat localize "STRS_inv_item_handy_noplayer";};
if (_moneh < INV_smscost)  exitWith {player groupChat localize "STRS_inv_item_handy_keinmoneh";};
if ((_smstext call ISSE_str_Length) > 60)     exitWith {player groupChat localize "STRS_inv_item_handy_text_zu_lang";};
['moneh', -(INV_smscost)] call INV_AddInventoryItem;
player groupChat format [localize "STRS_inv_item_handy_gesendet", _smsplayer];

format ['_mobile = ("handy" call INV_GetItemAmount);
if ((%2 == player) and (_mobile > 0)) then {titletext [format [localize "STRS_inv_item_handy_nachricht", "%1", %3], "plain"];};
if ((%2 == player) and (_mobile == 0)) then {"if(player == %3)then{player groupChat format [localize ""STRS_inv_item_handy_nichterreicht"", %2]}" call broadcast;};
', _smstext, _smsplayer, player] call broadcast;
