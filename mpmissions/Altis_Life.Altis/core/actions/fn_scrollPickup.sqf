#include "..\..\script_macros.hpp"
/*
	File: fn_scrollPickup.sqf
	Author: Index
	
	Description:
	Pick up items
*/

if ((typeOf cursorTarget) in ["Land_BottlePlastic_V1_F","Land_TacticalBacon_F","Land_Can_V3_F","Land_CanisterFuel_F","Land_Suitcase_F"] && {!(cursorTarget GVAR ["inUse",false])}) exitWith {
	[cursorTarget,player,false] remoteExecCall ["TON_fnc_pickupAction",RSERV];
};

if ((typeOf cursorTarget) == "Land_Money_F" && {!(cursorTarget GVAR ["inUse",false])}) exitWith {
	[cursorTarget,player,true] remoteExecCall ["TON_fnc_pickupAction",RSERV];
};
