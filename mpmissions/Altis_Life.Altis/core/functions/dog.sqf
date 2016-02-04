#include <macro.h>
/*
	Author: Valiant
	File: dog.sqf

	For Drunken Life only
*/

private["_dog"];

_dog = "Alsatian_Random_F" createVehicle position player;

_leash = ropeCreate [player, [0,0,-2], _dog, [0,0,0], 10];