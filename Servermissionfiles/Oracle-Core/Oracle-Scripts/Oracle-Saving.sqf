_Switch = _this select 0;

Oracle_Load = 
{
	private ["_VariableName"];
	_VariableName = _this select 0;
	_PlayerName = name player;
	_Loaded = false;
	
	for [{_i = 0}, {_i < (count Saved_Array)}, {_i = _i + 1}] do
	{
		_Name = ((Saved_Array select _i) select 0);
		_Varname = ((Saved_Array select _i) select 1);
		_Var = ((Saved_Array select _i) select 2);
		
		if (_Name == _PlayerName) then 
		{
			if (_Varname == _VariableName) exitwith
			{
				player groupchat "Found Variable name";
				if (ORACLE_CORE_DEBUG) then 
				{
					player groupchat format ["Variable %1 has been succesfully loaded (VALUE: %2)", _VariableName, _Var];
				};
				call compile format ["%1 = %2", _VariableName, _Var];
				_Loaded = true;
			};
		};		
	};
	
	if (!_Loaded) then { if (ORACLE_CORE_DEBUG) then { player groupchat format ["Variable %1 has failed to load or not been found", _VariableName]; }; };
};		

Oracle_Save =
{
	private ["_VariableName", "_Variable"];
	
	_VariableName = _this select 0;
	_Variable = _this select 1;
	_PlayerName = name player;
	_Found = false;
	
	
	for [{_i = 0}, {_i < (count Saved_Array)}, {_i = _i + 1}] do
	{
		_Name = ((Saved_Array select _i) select 0);
		_Varname = ((Saved_Array select _i) select 1);
		_Var = ((Saved_Array select _i) select 2);
		
		if (_Name == _PlayerName) then
		{
			if (_Varname == _VariableName) then
			{
				((Saved_Array select _i) set [2, _Variable]);				
				_Found = true;
				if (ORACLE_CORE_DEBUG) then 
				{ 
				player groupchat format ["Variable already found (OVERWRITTING OLD) - OLD: %1   NEW: %2", _Var, _Variable]; 
				hint format ["%1", Saved_Array]; 
				};
				
			};
		};
	};
	
if (!_Found) then 
{
	if (ORACLE_CORE_DEBUG) then 
	{ 
	player groupchat format ["Variable not found  (CREATING NEW)- Variable name: %1  Value: %2", _VariableName, _Variable]; 
	hint format ["%1", Saved_Array];
	};
	
	 Saved_Array = Saved_Array + [ [_PlayerName, _VariableName, _Variable] ]; 
};

publicVariable "Saved_Array";			
};

Oracle_DeleteEntirePlayerSaved =
{
	Saved_Array = [];
	PublicVariable "Saved_Array";
};

Oracle_DeletePlayerSaved =
{
	_NamePlayer = _this select 0;
	
	for [{_i = 0}, {_i < (count Saved_Array)}, {_i = _i + 1}] do
	{
		_Selectedname = ((Saved_Array select _i) select 0);
		
		if (_Selectedname == _NamePlayer) then
		{
			((Saved_Array select _i) set [2, 0]);
		};
	};
	publicVariable Saved_Array;
};
	
	

if (_Switch == "Init") then
{
	if (IsNil "Saved_Array") then { Saved_Array = [ ]; };
};