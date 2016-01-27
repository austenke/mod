#include <macro.h>
/*
	File: fn_promoteMenu.sqf
	Author: Index
	
	Description:
	Opens the promote menu
*/
if(FETCH_CONST(life_coplevel) < 7) exitWith {closeDialog 0;};
private["_display","_list"];
disableSerialization;
waitUntil {!isNull (findDisplay 5560)};
_display = findDisplay 5560;
_list = _display displayCtrl 5562;
if(FETCH_CONST(life_coplevel) < 7) exitWith {closeDialog 0;};

//Purge List
lbClear _list;

{
	_list lbAdd format["%1 - %2", _x getVariable["realname",name _x]];
	_list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach playableUnits;
if(FETCH_CONST(life_coplevel) < 7) exitWith {closeDialog 0;};