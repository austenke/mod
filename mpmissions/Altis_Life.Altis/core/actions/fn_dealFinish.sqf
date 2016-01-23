#include <macro.h>
/*
	File: fn_dealFinish.sqf
	Author: Index
	
	Description:
	Finishes the drug deal
*/
private["_dp","_dis","_price"];
//_dp = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
life_deal_in_progress = false;
//life_dp_point = nil;
//_dis = round((getPos life_dp_start) distance (getPos _dp));
_price = 10000;

if(([false,"marijuana",4] call life_fnc_handleInv)) then {
	["DeliverySucceeded",[format["Thanks for the hookup, here's your %1 man",[_price] call life_fnc_numberText]]] call bis_fnc_showNotification;
	titleText ["Your reputation has increased","PLAIN"]; titleFadeOut 2;
	life_rep = life_rep + 1;
	life_cur_task setTaskState "Succeeded";
	player removeSimpleTask life_cur_task;
	ADD(CASH,_price);
} else {
	hint "You don't got the weed fam";
}