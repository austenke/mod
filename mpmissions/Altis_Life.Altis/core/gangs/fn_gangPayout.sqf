/*
	File: fn_gangCash.sqf
	Author: Vampire
	
	Description:
	Things
*/
private["_index"];

_hideout = (nearestObjects[getPosATL player,["Land_u_Barracks_V2_F","Land_i_Barracks_V2_F"],25]) select 0;
_index = [life_my_gang,life_gang_list] call fnc_index;
//_group = _hideout GVAR ["gangOwner",grpNull];

//if(_group == grpPlayer) exitWith {titleText[localize "STR_GNOTF_Controlled","PLAIN"]};

hint formatText[_index];