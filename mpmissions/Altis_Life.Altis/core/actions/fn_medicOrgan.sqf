#include <macro.h>
/*
	File: fn_medicOrgan.sqf
	Author: Index and Valiant
	
	Description:
	Medic dp missions
*/
private["_dp","_target"];
_target = param [0,ObjNull,[ObjNull]];
if(playerSide != independent) exitWith {hint "You need medical training to handle organs!";};
if(str(_target) in LIFE_SETTINGS(getArray,"delivery_points")) then {
	private "_point";
	_point = LIFE_SETTINGS(getArray,"delivery_points");
	_point deleteAt (_point find (str(_target)));
	_dp = _point call BIS_fnc_selectRandom;
} else {
	_dp = LIFE_SETTINGS(getArray,"delivery_points") call BIS_fnc_selectRandom;
};

life_dp_start = _target;

life_organ_in_progress = true;
life_dp_point = call compile format["%1",_dp];

_dp = [_dp,"_"," "] call KRON_Replace;
life_cur_task = player createSimpleTask [format["Delivery_%1",life_dp_point]];
life_cur_task setSimpleTaskDescription [format[localize "STR_NOTF_DPStart",toUpper _dp],"Delivery Job",""];
life_cur_task setTaskState "Assigned";
player setCurrentTask life_cur_task;

["DeliveryAssigned",[format[localize "STR_NOTF_DPTask",toUpper _dp]]] call bis_fnc_showNotification;

_barrel = "Land_MetalCase_01_large_F" createVehicle position player;
_barrel attachTo[player,[0,1,1.9]];
_barrel allowDamage false;
_barrel setVariable ["holding", true, true];
_barrel enableRopeAttach false;
player reveal _barrel;
life_holdBarrel = true;

[] spawn {
	waitUntil {!life_organ_in_progress OR !alive player};
	if(!alive player) then {
		life_cur_task setTaskState "Failed";
		player removeSimpleTask life_cur_task;
		["DeliveryFailed",[localize "STR_NOTF_DPFailed"]] call BIS_fnc_showNotification;
		life_delivery_in_progress = false;
		life_dp_point = nil;
	};
};