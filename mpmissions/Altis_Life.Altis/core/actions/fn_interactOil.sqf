#include "..\..\script_macros.hpp"
/*
	File: fn_interactOil.sqf
	Author: Index
	
	Description:
	Interact with an existing oil barrel
*/

if (cursorTarget getVariable "owner" != player) exitWith {hint "You can't interact with this barrel!";};

if (life_holdBarrel == true) exitWith {
	{
	  if (typeOf _x == "Land_BarrelWater_F") exitWith { life_holdBarrel = false;detach _x; };
	} forEach attachedObjects player;
};

if (typeOf cursorTarget == "Land_BarrelWater_F") exitWith { cursorTarget attachTo [player,[0,1,1]]; };