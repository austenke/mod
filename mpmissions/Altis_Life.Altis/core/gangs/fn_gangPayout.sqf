/*
	File: fn_gangCash.sqf
	Author: Vampire
	
	Description:
	Things
*/
private["_hideout"];

_hideout = (nearestObjects[getPosATL player,["Land_u_Barracks_V2_F","Land_i_Barracks_V2_F"],25]) select 0;
//_group = _hideout GVAR ["gangOwner",grpNull];

//if(_group == grpPlayer) exitWith {titleText[localize "STR_GNOTF_Controlled","PLAIN"]};

hint formatText[_hideout getVariable ["gangOwner",grpNull];];