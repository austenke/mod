#include <macro.h>
/*
	Author: Valiant
	File: dog.sqf

	For Drunken Life only
*/

private["_dog"];

_dog = "Alsatian_Random_F" createVehicle position player;

_leash = createVehicle ["land_rope_f", [0,0,0], [], 0, "CAN_COLLIDE"];
_leash attachTo[player,[0,1,1.9]];
_leash attachTO[_dog,[0,0,0]];