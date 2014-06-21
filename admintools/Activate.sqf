waituntil {!alive player ; !isnull (finddisplay 46)}; 
if ((getPlayerUID player) in ["37965510"]) then {
sleep 15;
player addaction [("<t color=""#0074E8"">" + ("Tools Menu") +"</t>"),"admintools\AdminToolsMain.sqf","",5,false,true,"",""];
};


