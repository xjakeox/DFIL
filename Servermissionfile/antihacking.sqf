//"Gman": // supersimple..
//allow the cheater to play as long as he dosent use the cheat menu..

waituntil {alive player};
if (gettext _cfg == """"open darky menu"""") then displayAddEventHandler ["MouseButtonDown","IamAlooser=[true,name player]; publicVariable ""IamaLooser"""];
if (gettext _cfg == """"open darky menu"""") then displayAddEventHandler ["KeyDown","IamAlooser=[true,name player]; publicVariable ""IamaLooser"""];
nil = [] execvm "path\player-anti-darky.sqf";
//end