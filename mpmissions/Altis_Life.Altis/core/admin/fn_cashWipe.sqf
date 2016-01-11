#include "..\..\script_macros.hpp"
/*
	File: fn_cashWipe.sqf
	Author: Index
	
	Description:
	Wipes target's cash in hand
*/
private["_target"];
_target = lbData[2902,lbCurSel (2902)];
_target = call compile format["%1", _target];
if(FETCH_CONST(life_adminlevel) == 0) exitWith {closeDialog 0;};
if(isNull _target) exitWith {};
if(_target == player) exitWith {hint localize "STR_ANOTF_Error";};


[] remoteExecCall ["life_fnc_wipeCash",_target];
hint format["You have wiped %1's money",name _target]