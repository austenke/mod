#include "\life_server\script_macros.hpp"
/*
	File: fn_whitelistPlayer.sqf
	Author: Index
	
	Description:
	Server side for player whitelist
*/
private["_ret","_list","_jailedUnits"];
_level = [_this,0,0,[0]] call BIS_fnc_param;
_pid = [_this,1,"",[""]] call BIS_fnc_param;
_level = [_this,2,0,[0]] call BIS_fnc_param;
_side = [_this,3,0,[0]] call BIS_fnc_param;


if(_level < 7) exitWith {};

switch(_side) do {
	case 0:{
		_query = format["copWhitelist:%1:%2",_level,_pid];
		waitUntil{!DB_Async_Active};
		[_query,1] call DB_fnc_asyncCall;
	};
	case 1: {
		_query = format["medicWhitelist:%1:%2",_level,_pid];
		waitUntil{!DB_Async_Active};
		[_query,1] call DB_fnc_asyncCall;
	};
	default {"Error"};
};
