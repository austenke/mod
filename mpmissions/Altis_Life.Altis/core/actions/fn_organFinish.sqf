#include <macro.h>
/*
	File: fn_organFinish.sqf
	Author: Index
	
	Description:
	Finished organ DP
*/
private["_dp","_dis","_price"];
if(!life_holdBarrel) exitWith {hint "You need to be holding an organ container first!";};
_dp = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
life_organ_in_progress = false;
life_dp_point = nil;
_dis = round((getPos life_dp_start) distance (getPos _dp));
_price = (round(1.7 * _dis) * 3);

{
	deletevehicle _x;
} forEach attachedObjects player;

life_holdBarrel = false;

["DeliverySucceeded",[format[(localize "STR_NOTF_Earned_1"),[_price] call life_fnc_numberText]]] call bis_fnc_showNotification;
life_cur_task setTaskState "Succeeded";
player removeSimpleTask life_cur_task;
ADD(CASH,_price);