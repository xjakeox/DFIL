if (alive player) then {

while {true} do {

sleep 1;

waitUntil {!isnull (findDisplay 316000)};

closedialog 0;

player groupchat "This menu is disabled.";

(format ['server globalChat "%1 attempted to open a debug menu.";',name player]) call broadcast;

};
};