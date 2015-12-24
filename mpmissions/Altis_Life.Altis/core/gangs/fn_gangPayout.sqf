/*
	File: fn_gangPayout.sqf
	Author: Index
	
	Description:
	Things
*/
private ["_index","_gang","_gangPaycheck","_owner","_myGang"];

while {true} do {
	sleep 10;
	titleText[format["%1",grpPlayer getVariable "gang_id"],"PLAIN"];
};