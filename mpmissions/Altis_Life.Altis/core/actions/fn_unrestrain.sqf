#include "..\..\script_macros.hpp"
/*
	File: fn_unrestrain.sqf
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Error check
if(!(_unit GVAR ["restrained",FALSE]) && !(_unit GVAR ["civ_restrained",FALSE])) exitWith {}; //Error check

_unit SVAR ["restrained",FALSE,TRUE];
_unit SVAR ["civ_restrained",FALSE,TRUE];
_unit SVAR ["Escorting",FALSE,TRUE];
_unit SVAR ["transporting",FALSE,TRUE];
detach _unit;
[[player],"life_fnc_handcuff",nil,true] spawn life_fnc_MP;

[0,"STR_NOTF_Unrestrain",true,[_unit GVAR ["realname",name _unit], profileName]] remoteExecCall ["life_fnc_broadcast",west];