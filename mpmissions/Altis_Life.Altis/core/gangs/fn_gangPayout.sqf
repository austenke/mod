/*
	File: fn_gangPayout.sqf
	Author: Index
	
	Description:
	Things
*/

while {true} do {
	sleep 10;
	_hideout = (nearestObjects[getPosATL player,["Land_u_Barracks_V2_F","Land_i_Barracks_V2_F"],25]) select 0;
	_group = _hideout GVAR ["gangOwner",grpNull];
	if (_group == (group player)) exitWith {titleText["You own the nearest hideout","PLAIN"]};
	titleText[format["Nearest gang owner is %1, your gang is %2",_group,(group player)],"PLAIN"]
};