//Made by TCG
//Copyright to Derp
sleep 500;
server globalchat "Fixing buildings in 30 Sec!";
sleep 29;
server globalchat "Fixing Buildings...";
sleep 1;
_repair = (getPosATL player) nearObjects ["Building", 150000];
_fix=0;
_break=1;
{_x setDammage _fix} forEach _repair;
sleep 0.1;
server globalchat "Fixed Broken Buildings";};
//BG

