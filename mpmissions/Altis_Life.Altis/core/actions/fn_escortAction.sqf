#include <macro.h>
/*
	File: fn_escortAction.sqf
*/
private "_unit";
_unit = cursorTarget;

if(isNil "_unit" OR isNull _unit OR !isPlayer _unit) exitWith {};
if(!(side _unit in [civilian,independent])) exitWith {};
if((player distance _unit > 3)) exitWith {};

_unit attachTo [player,[0.1,1.1,0]];
_unit SVAR ["transporting",false,true];
_unit SVAR ["Escorting",true,true];
player reveal _unit;