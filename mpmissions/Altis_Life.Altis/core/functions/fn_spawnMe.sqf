/*
	File: fn_spawnMe.sqf
	Author: Index

	Description: Spawns player
*/
_loc = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;	
player setPos _loc;