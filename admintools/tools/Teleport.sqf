// Made By JayF8514
(format["server globalchat ""Admin:%1 Activated Teleport"";", name player]) call broadcast;
hint "Press M and left click on the map to teleport.";
onMapSingleClick "vehicle player setPos _pos; onMapSingleClick '';true;";