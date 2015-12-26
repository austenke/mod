#include <macro.h>
/*
	File: fn_BaggedHostage.sqf
	Author: Valiant
	
	Description:
	Client Script for having a Burlap Sack on your head
*/
private["_hostageTaker","_player"];
_hostageTaker = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_player = player;
if(isNull _hostageTaker) exitWith {};

cutText["Your captor put a sack on your head. You cannot see.","BLACK FADED"];
0 cutFadeOut 9999999;

waitUntil {!(player GVAR ["sackonhead",false])};

0 cutFadeOut 1;