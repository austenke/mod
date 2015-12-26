#include <macro.h>
/*
	File: fn_BagHostage.sqf
	Author: Valiant
	
	Description:
	Places a Bag on the hostages head
*/
private ["_hostage"];
_hostage = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

_hostage setVariable["sackonhead",false,true];