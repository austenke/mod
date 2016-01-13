#include "\life_server\script_macros.hpp"
/*
	File: fn_getPos.sqf
	Author: Index
	
	Description:
	Gets player position
*/
private["_pid","_ret"];
_ret = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_pid = [_this,1,"",[""]] call BIS_fnc_param;
_tickTime = diag_tickTime;
waitUntil{!DB_Async_Active};
_query = format["playerLocationCheck:%1",_pid];
_queryResult = [_query,2] call DB_fnc_asyncCall;
["diag_log",[
	"------------- Player Location Check -------------",
	format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)],
	format["Result: %1",_queryResult],
	"-------------------------------------------------"
]] call TON_fnc_logIt;

[_queryResult] remoteExecCall ["life_fnc_spawnMe",_ret];
