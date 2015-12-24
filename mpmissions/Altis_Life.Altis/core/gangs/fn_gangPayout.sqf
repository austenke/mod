/*
	File: fn_gangPayout.sqf
	Author: Index
	
	Description:
	Things
*/

private["_group","_hideout","_gangName"];

//while {true} do {
//	sleep 10;
	_hideout = (nearestObjects[getPosATL player,["Land_u_Barracks_V2_F","Land_i_Barracks_V2_F"],25]) select 0;
	//if (_group == (group player)) exitWith {titleText["You own the nearest hideout","PLAIN"]};
	_group = _hideout GVAR ["gangOwner",grpNull];
	_gangName = _group GVAR ["gang_name",""];
	titleText[format["Nearest hideout is %1, gang owner is %2, your gang is %3",_hideout,_gangName,(group player)],"PLAIN"]
//};