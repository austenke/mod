#include <macro.h>
/*
	File: fn_disarmAction.sqf
	Author: Index
*/
private "_unit";
_unit = cursorTarget;

if(isNil "_unit" OR isNull _unit OR !isPlayer _unit) exitWith {};
if(!(side _unit in [civilian,independent])) exitWith {};
if((player distance _unit > 6)) exitWith {};

_pWeap = primaryWeapon _unit;

_weapon_holder = createVehicle ["groundWeaponHolder", position _unit, [], 0, "can_collide"];

_weapon_holder addItemCargoGlobal [_pWeap, 1]; // adds 1 vest of classname "V_TacVest_oli"