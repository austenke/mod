#include "\life_server\script_macros.hpp"
/*
	File: fn_reskinVehicles.sqf
	Author: Rickebo
	Description: 	Updates color of all vehicles on the server, adds a 
					texture to vehicles that were spawned before a player joined.
*/

private["_vehicle","_vColor"];

{
	if (alive _x) then
	{
		_vehicle = _x;
		_vColor = _vehicle getVariable["vehicle_color",[]];
	
		//Check if color is null
		if (isNil "_vColor") exitWith{ };

		[_vehicle,_vColor] remoteExecCall ["life_fnc_colorVehicle",-2];
		
	};
} forEach vehicles;