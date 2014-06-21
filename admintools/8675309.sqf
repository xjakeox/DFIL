waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID vehicle player) in [""]) then {
;
vehicle player addaction [("<t color=""#0074E8"">" + ("Moderatior Tools") +"</t>"),"admintools\ModeratorToolsMain.sqf","",5,false,true,"",""];
};
