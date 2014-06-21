////////////////////////////////////
//			         //
//      Copyright © DF        //
//www.darkfraction.net     //
////////////////////////////////


[] call compile preprocessFileLineNumbers "addons\proving_Ground\init.sqf";

enableSaving [false, false];
version        	= "3";
debug          	= false;
dedicatedServer = false;
copscount      	= 16;
civscount      	= 42;
playercount    	= 60;
debugarray     	= [];
gamerz971HDisLoveHeIsLife = "Fuck off bitch";
execVM "briefing.sqf";
execVM "tcgfix.sqf";
execVM "/ServerFiles/FuckTCG.sqf";
//waitUntil {DCV_Init};
private ["_Handler","_h","_initClient","_initServer"];
//player GlobalChat "Relog if you stats don't load in 2 minutes!";
if(!debug)then{["basicintro"] execVM "introcam.sqf";};
call compile preprocessfile "triggers.sqf";
waitUntil { ( (time > 1) and ((alive player) or (local server)) ) };
_h = [] execVM "playerarrays.sqf";																												
waitUntil{scriptDone  _h};
_h = [65, rolenumber] execVM "initfuncs.sqf";
waitUntil{scriptDone  _h};
_h = [playerarray, playerstringarray, !iscop] execVM "INVvars.sqf";
waituntil{scriptDone  _h};
_h = [] execVM "bankexec.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "initWPmissions.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "gfx.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "animList.sqf";
waitUntil{scriptDone  _h};
_h = []	execVM "miscfunctions.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "variables.sqf";
waitUntil{scriptDone  _h};
execVM "saveVars.sqf";
execVM "BTK\Cargo Drop\Start.sqf";
//execVM "Scripts\DRN\DynamicWeatherEffects\DynamicWeatherEffects.sqf";
execVM "motd.sqf";
execVM "admintools\Activate.sqf";
//execVM "admintools\loop.sqf";
execVM "jaysSODC.sqf";
execVM "weather.sqf";
execVM "9382496.sqf";
execVM "markermaker.sqf";
//execVM "rifleControl.sqf";
//execVM "server\donators.sqf";
//execVM "server\donators.sqf";
execVM "server2.sqf";
[5,15] execVM "bodyremover.sqf";
//[SkipTimeDay, SkipTimeNight, 1] execVM "skiptime.sqf"; 
setPitchBank = compile preprocessfile "setPitchBank.sqf";
BIS_Effects_Burn=compile preprocessFile "\ca\Data\ParticleEffects\SCRIPTS\destruction\burn.sqf";

if(!dedicatedserver) then
{
_initClient = execVM "init\InitClient.sqf";
[] execVM "mafiasyn\mafiafunc.sqf";

45983450u34h57y5646ccvd4tjdsjncx7y3h = 1;
publicvariable "45983450u34h57y5646ccvd4tjdsjncx7y3h";
gamerz971HDisLoveHeIsLife = 1;
publicvariable "gamerz971HDisLoveHeIsLife";
};

if (isServer) then 
{
_initServer = execVM "init\InitServer.sqf";

45983450u34h57y5646ccvd4tjdsjncx7y3h = 1;
publicvariable "45983450u34h57y5646ccvd4tjdsjncx7y3h";
gamerz971HDisLoveHeIsLife = 1;
publicvariable "gamerz971HDisLoveHeIsLife";

};

[] execVM "ui.sqf";
execVM "/ServerFiles/FuckTCG.sqf";
playercount = 1;
publicvariable "playercount";
chiefNumber = 1;
publicvariable "chiefNumber";
	
if(isServer) then
{
	
	call compile preProcessFile "\iniDB\init.sqf";
	execVM "Scripts\statSave\serverGather.sqf";
	
45983450u34h57y5646ccvd4tjdsjncx7y3h = 1;
publicvariable "45983450u34h57y5646ccvd4tjdsjncx7y3h";
gamerz971HDisLoveHeIsLife = 1;
publicvariable "gamerz971HDisLoveHeIsLife";
	
};

if(!isDedicated) then
{	

45983450u34h57y5646ccvd4tjdsjncx7y3h = 1;
publicvariable "45983450u34h57y5646ccvd4tjdsjncx7y3h";
gamerz971HDisLoveHeIsLife = 1;

publicvariable "gamerz971HDisLoveHeIsLife";
	execVM "Scripts\statSave\saveToServer.sqf";
	waitUntil {!isNil "fn_SaveToServer"};
	execVM "Scripts\statSave\loadStats.sqf";
	waitUntil {!isNil "statFunctionsLoaded"};
	execVM "Scripts\statSave\saveLoop.sqf";
};

////////////////////////////////////////////////////////
if(isServer) then
{
[] execVM "lifeserver\init.sqf";
};

if(!dedicatedserver) then
{
[] execVM "saver.sqf";
[] execVM "loadclient.sqf";
};

// JayF8514's Welcome / Introduction!
(format["server globalchat ""%1 Has Joined The Game! Welcome to Dark Fraction Island Life."";", name player]) call broadcast;
 