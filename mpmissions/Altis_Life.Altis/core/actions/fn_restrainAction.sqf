#include "..\..\script_macros.hpp"
/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((player distance _unit > 3)) exitWith {};
if((_unit getVariable "restrained")) exitWith {};
if((_unit getVariable "civ_restrained")) exitWith {};
//if(side _unit == west) exitWith {};
if(player == _unit) exitWith {};
if(side player == civilian) exitWith {
	if(life_inv_ziptie < 1) exitWith {hint "You need zipties first!";};
	hint "You have restrained your target!";
	_unit setVariable["civ_restrained",true,true];
	[[player], "life_fnc_restrain", _unit, false] call life_fnc_MP;
};
if(!isPlayer _unit) exitWith {};


_unit setVariable["restrained",true,true];
[[player], "life_fnc_restrain", _unit, false] call life_fnc_MP;
[[0,"STR_NOTF_Restrained",true,[_unit getVariable["realname", name _unit], profileName]],"life_fnc_broadcast",west,false] call life_fnc_MP;