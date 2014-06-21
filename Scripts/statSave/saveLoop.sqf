waitUntil {statsLoaded == 1;};
while {true} do
{
	sleep 120;
	
	[getPlayerUID player, getPlayerUID player, "Account Name", name player] call fn_SaveToServer;
    [getPlayerUID player, getPlayerUID player, "moneyAccount", bnkgeld] call fn_SaveToServer;
	
	_pistol = (saveWeaponPistol select 0);
	if(isNil "_pistol") then {_pistol = "";};
	_rifle = (saveWeaponRifle select 0);
	if(isNil "_rifle") then {_rifle = "";};
	if(playerSide == west) then
	{
		[getPlayerUID player, getPlayerUID player, "WeaponsPlayerWest", (weapons player) + [_pistol] + [_rifle]] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "MagazinesPlayerWest", magazines player] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "LicenseswWest", INV_LizenzOwner] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "InventoryWest", INV_InventarArray] call fn_SaveToServer;
	};
	if(playerSide == resistance) then
	{
		[getPlayerUID player, getPlayerUID player, "WeaponsPlayerRes", (weapons player) + [_pistol] + [_rifle]] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "MagazinesPlayerRes", magazines player] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "LicensesRes", INV_LizenzOwner] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "InventoryRes", INV_InventarArray] call fn_SaveToServer;
	};
	if(playerSide == civilian) then
	{
		[getPlayerUID player, getPlayerUID player, "WeaponsPlayerCiv", (weapons player) + [_pistol] + [_rifle]] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "MagazinesPlayerCiv", magazines player] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "LicensesCiv", INV_LizenzOwner] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "InventoryCiv", INV_InventarArray] call fn_SaveToServer;
		[getPlayerUID player, getPlayerUID player, "savedVehiclesCiv", INV_SavedVeh] call fn_SaveToServer;
	    [getPlayerUID player, getPlayerUID player, "privateStorageCiv", private_storage] call fn_SaveToServer;
	};
	
	player groupChat " Stats saved... ";
	
};