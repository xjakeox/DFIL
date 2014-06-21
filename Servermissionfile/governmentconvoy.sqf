// script written by Eddie Vedder for the Chernarus life Revivved mission


sleep 10;
govconvoygroup = createGroup west;
_counter = 0;
_counter2 = 0;
_added = false;
_sidewon = "Neither";


while {true} do 

{	
	



//waits for respawn
sleep (convoyrespawntime*54);



"hint ""The Government convoy will leave in a few minutes."";" call broadcast;

sleep (convoyrespawntime*6);

//Gets position to spawn
_array  = [[VIPspawn1, 10], [VIPspawn2, 10], [VIPspawn4, 10], [VIPspawn5, 10]];
_spawn   = (floor(random(count _array)));						
_pos    = (_array select _spawn) select 0;
_radius = (_array select _spawn) select 1;

// spawn markers truck and soldiers
_markerobj = createMarker ["convoy",[0,0]];																				
_markername = "convoy";																														
_markerobj setMarkerShape "ICON";								
"convoy" setMarkerType "Marker";										
"convoy" setMarkerColor "ColorRed";																														
"convoy" setMarkerText "Government convoy";



convoy_marker_active = 1;
convoyhascash=true; publicvariable "convoyhascash";

convoytruck = "tcg_policev" createVehicle getPos _pos;;

convoytruck setVehicleInit "
convoytruck = this; 
this setVehicleVarName ""convoytruck"";  
this setAmmoCargo 0;  
this setDir getdir convoystartpos;
clearweaponcargo this;
clearmagazinecargo this;
";	
processinitcommands;
publicvariable "convoytruck";
 

deleteVehicle convoysoldier;
convoysoldier = govconvoygroup createUnit ["US_Soldier_Officer_EP1", _pos, [], _radius, "FORM"];
convoysoldier setvehicleinit 'convoysoldier = this;this setVehicleVarName "convoysoldier";';
removeAllWeapons convoysoldier;




processInitCommands;

govconvoygroup selectLeader convoysoldier;



convoysoldier moveInDriver convoytruck; 
convoysoldier assignAsDriver convoytruck;

//make guards follow convoysoldier

govconvoygroup setbehaviour "AWARE";
govconvoygroup setCombatMode "GREEN";


//put guards in car with convoysoldier

sleep 2;
convoysoldier commandMove getmarkerpos "policebase";



//start mission loop
"server globalchat ""The supply truck has spawned, civs kill the driver to stop it and steal the government funds.  Cops your bonuses are inside make sure it gets to the base!"";" call broadcast;
while {true} do
	{
	
	"if(alive player and isciv and player distance convoytruck <= 150)then{titleText [""The Government is operating in this area! Turn back or you will be shot!"", ""plain down""]};" call broadcast;
	"convoy" setmarkerpos getpos convoytruck;
	
		
	if (!convoyhascash) exitwith
		{
		_sidewon = "Civs";
		};
		
	if (!alive convoysoldier and !_added) then 
		{
		_added = true;
		"if (isciv) then {server sidechat ""The government convoy driver is dead. Steal the police paycheck."";};" call broadcast;
		"if (iscop) then {server sidechat ""The governemnt convoy driver is dead. Get in his truck and drive it to the Cop Base"";};" call broadcast;
		convoytruck setVehicleLock "unlocked";
				
		};
		
	if (_counter >= 15) then
		{
		convoysoldier commandmove getmarkerpos "policebase";
		
		_counter = 0;
		};
	
	if (convoytruck distance getmarkerpos "policebase" < 150) exitwith 
		{   
		"if (iscop) then {bnkgeld = (bnkgeld + govconvoybonus); player sidechat format[""you received $%1 for the successfully escorting the convoy"", govconvoybonus];};" call broadcast;
		_sidewon = "Cops";
		};
				
	if (_counter2 >= 9000) exitwith
		{
		_sidewon = "Neither";
		};
		
	if (!alive convoytruck) exitwith
		{
		"server globalchat ""The government truck has been destroyed the money has burned"";" call broadcast;
		_sidewon = "Neither";
		};
			
	_counter2 = _counter2 + 1;
	
	_counter = _counter + 1;
	
	sleep 1;
		

	
	};
	
//mission has ended resetting vars and deleting units



(format ['server globalChat "%2 side won the government convoy mission, next truck leaves in %1 minutes!";', convoyrespawntime, _sidewon]) call broadcast;

deletevehicle convoysoldier;
deletevehicle convoytruck;
deletemarker "convoy";

_endmissionounter = 0;
_counter = 0;
_sidewon = "Neither";
moneyintruck = true;
_added = false;

};






//written by Gman