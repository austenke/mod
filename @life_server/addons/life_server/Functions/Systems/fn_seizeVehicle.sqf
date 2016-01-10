#include "\life_server\script_macros.hpp"
/*
	File: fn_seizeVehicle.sqf
	Author: Ya boy Index

	Description:
	Server side for vehicle seize
*/
private["_unit","_vehicle","_price","_cash"];
_unit = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_vehicle = [_this,1,objNull,[objNull]] call BIS_fnc_param;

_pName = name _unit;

//Error checks
if(isNull _vehicle OR isNull _unit) exitWith  {
	life_action_inUse = false;
	PVAR_ID("life_action_inUse",owner _unit);
};

_displayName = FETCH_CONFIG2(getText,CONFIG_VEHICLES,typeOf _vehicle, "displayName");
_unit = owner _unit;

_dbInfo = _vehicle GVAR ["dbInfo",[]];
if(count _dbInfo > 0) then {
	_uid = SEL(_dbInfo,0);
	_plate = SEL(_dbInfo,1);

	_query = format["vehicleDead:0:%1:%2",_uid,_plate];
	waitUntil {!DB_Async_Active};
	_sql = [_query,1] call DB_fnc_asyncCall;
};

deleteVehicle _vehicle;
life_action_inUse = false;
PVAR_ID("life_action_inUse",_unit);
[[2,format[(localize "STR_NOTF_SeizeFinishCar"),_displayName,_pName],"life_fnc_broadcast",_unit,false] call life_fnc_MP;