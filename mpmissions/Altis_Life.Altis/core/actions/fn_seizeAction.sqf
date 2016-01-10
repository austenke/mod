#include "..\..\script_macros.hpp"
/*
	File: fn_seizeAction.sqf
	Author: Index
	
	Description:
	Seize the vehicle
*/
private["_vehicle","_player"];
_player = param [0,ObjNull,[ObjNull]];
_vehicle = param [1,ObjNull,[ObjNull]];
_filters = ["Car","Air","Ship"];
if(playerSide != west) exitWith {};
if(player distance cursorTarget > 10) exitWith {};
if(!((KINDOF_ARRAY(_vehicle,_filters)))) exitWith {};

[_player,life_vInact_curTarget] remoteExecCall ["TON_fnc_seizeVehicle",RSERV];