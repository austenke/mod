#include "..\..\script_macros.hpp"
/*
	File: fn_interactOil.sqf
	Author: Index
	
	Description:
	Interact with an existing oil barrel
*/

if (life_holdBarrel) exitWith {
	{
	  if (typeOf _x == "Land_BarrelWater_F") exitWith { life_holdBarrel = false;detach _x; };
	} forEach attachedObjects player;
};

if (typeOf cursorTarget == "Land_BarrelWater_F") exitWith { life_holdBarrel = true;cursorTarget attachTo [player,[0,1,1]]; };