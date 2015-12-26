#include <macro.h>
/*
	File: fn_BagHostage.sqf
	Author: Valiant
	
	Description:
	Places a Bag on the hostages head
*/
private ["_hostage"];
_hostage = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(!([false,"burlapsack",1] call life_fnc_handleInv)) exitWith {}; //Error?

_hostage setVariable["sackonhead",true,true];

// Send command to hostage to process their side of the story
[[player], "life_fnc_baggedHostage", _hostage, false] call life_fnc_MP;