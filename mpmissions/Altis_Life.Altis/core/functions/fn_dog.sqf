#include <macro.h>
/*
	Author: Valiant
	File: dog.sqf

	For Drunken Life only
	[0.30,-0.16,0.9]];
*/

private["_dog"];

_dog = "Alsatian_Random_F" createVehicle position player;
_debug = "FxWindRock1" createVehicle position player;

_debug attachTo[player,[0.30,-0.16,0.9]];
_leash = ropeCreate [_dog, "slingload0", _debug, [0,0,0], 5];

_dog = "Alsatian_Random_F" createVehicle position player; _debug = "FxWindRock1" createVehicle position player; _debug2 = "Land_DuctTape_F" createvehicle position player; _debug2 attachTo[player,[-2.5,0.3,0.55]]; _debug attachTo[player,[0.30,-0.16,0.9]]; _leash = ropeCreate [vehicle player, "slingload0", _debug2, [0,0,0], 5];