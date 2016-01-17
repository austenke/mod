#include <macro.h>
/*
	File: fn_breakout.sqf
	Author: Index
	
	Description:
	Client execution for breakout script
*/
private["_unit"];
_unit = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _cop) exitWith {};

if (life_is_arrested) then {
	life_is_arrested = false;
	player setPos (getPos _unit);
	hint format["You have been broken out of jail by %1",name _unit];
};