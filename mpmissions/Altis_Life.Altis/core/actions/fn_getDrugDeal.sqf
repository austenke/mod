#include <macro.h>
/*
	File: fn_getDrugDeal.sqf
	Author: Index
	
	Description:
	Gives the user a drug deal mission
*/
private["_dp","_target","_point"];

if (life_deal_in_progress) exitWith{};
if (life_delivery_in_progress) exitWith{};

_dp = LIFE_SETTINGS(getArray,"delivery_points") call BIS_fnc_selectRandom;
_drug = "marijuana";
_amount = 4;

life_deal_in_progress = true;
life_dp_point = call compile format["%1",_dp];

_dp = [_dp,"_"," "] call KRON_Replace;
life_cur_task = player createSimpleTask [format["Deal_%1",life_dp_point]];
life_cur_task setSimpleTaskDescription [format["Deliver %1 %2 to %3",_amount,_drug,toUpper _dp],"Drug Deal",""];
life_cur_task setTaskState "Assigned";
player setCurrentTask life_cur_task;

["DeliveryAssigned",[format["Deliver some %1 to %2",_drug,toUpper _dp]]] call bis_fnc_showNotification;

[] spawn {
	waitUntil {!life_deal_in_progress OR !alive player};
	if(!alive player) then {
		life_cur_task setTaskState "Failed";
		player removeSimpleTask life_cur_task;
		["DeliveryFailed",[localize "STR_NOTF_DPFailed"]] call BIS_fnc_showNotification;
		life_delivery_in_progress = false;
		life_dp_point = nil;
	};
};