#include <macro.h>
/*
	File: fn_breakout.sqf
	Author: Index
	
	Description:
	Client execution for breakout script
*/
private["_unit"];
_unit = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _unit) exitWith {};

if (life_is_arrested) then {
	life_breakout = true;
	hint format["You have been broken out of jail by %1",name _unit];
	[[0,format["%1 has been broken out of prison by %2!",name player,name _unit]],"life_fnc_broadcast",true,false] call life_fnc_MP;
};