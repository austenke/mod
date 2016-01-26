#include <macro.h>
/*
	File: fn_medicOrgan.sqf
	Author: Index and Valiant
	
	Description:
	Medic dp missions
*/
private["_dp","_target","_pointList","_dpText"];
_target = param [0,ObjNull,[ObjNull]];
if(playerSide != independent) exitWith {hint "You need medical training to handle organs!";};
_pointList = ["organ_1","organ_2","organ_3"];
if(str(_target) in _pointList) then {
	private "_point";
	_pointList deleteAt (_pointList find (str(_target)));
	_dp = _pointList call BIS_fnc_selectRandom;
} else {
	_dp = _pointList call BIS_fnc_selectRandom;
};

life_dp_start = _target;

life_organ_in_progress = true;
life_dp_point = call compile format["%1",_dp];

_dpText = switch (_dp) do {
	case "organ_1": {"Pyrgos Hospital";};
	case "organ_2": {"Kavala Hospital";};
	case "organ_3": {"Athira Hospital";};
	default {"Can't find organ";};
};

_dp = [_dp,"_"," "] call KRON_Replace;
life_cur_task = player createSimpleTask [format["Delivery_%1",life_dp_point]];
life_cur_task setSimpleTaskDescription [format[localize "STR_NOTF_DPStart",_dpText],"Delivery Job",""];
life_cur_task setTaskState "Assigned";
player setCurrentTask life_cur_task;

["DeliveryAssigned",[format[localize "STR_NOTF_DPTask",_dpText]]] call bis_fnc_showNotification;

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