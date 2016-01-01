#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	Modified by: Valiant

	-------------For Drunken Life use ONLY--------------
					WORK IN PROGRESS
*/
private["_dp","_target"];
_target = param [0,ObjNull,[ObjNull]];
if(str(_target) in LIFE_SETTINGS(getArray,"delivery_points")) then {
	private "_point";
	_point = LIFE_SETTINGS(getArray,"delivery_points");
	_point deleteAt (_point find (str(_target)));
	_dp = _point call BIS_fnc_selectRandom;
} else {
	_dp = LIFE_SETTINGS(getArray,"delivery_points") call BIS_fnc_selectRandom;
};

life_dp_start = _target;

life_delivery_in_progress = true;
life_dp_point = call compile format["%1",_dp];

_dp = [_dp,"_"," "] call KRON_Replace;
_organ = "Land_MetalCase_01_large_F" createVehicle getMarkerPos "organpickup";

//["DeliveryAssigned",[format[localize "STR_NOTF_DPTask",toUpper _dp]]] call bis_fnc_showNotification;

/*
[] spawn {
	waitUntil {!life_delivery_in_progress OR !alive player};
	if(!alive player) then {
		life_cur_task setTaskState "Failed";
		player removeSimpleTask life_cur_task;
		["DeliveryFailed",[localize "STR_NOTF_DPFailed"]] call BIS_fnc_showNotification;
		life_delivery_in_progress = false;
		life_dp_point = nil;
	};
};
*/