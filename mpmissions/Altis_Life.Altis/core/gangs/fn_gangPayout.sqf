/*
	File: fn_gangPayout.sqf
	Author: Index
	
	Description:
	Things
*/

private["_query","_queryResult"];

_query = format["gangNameSelectID:%1:%2",_gangName,1];
waitUntil{!DB_Async_Active};
_queryResult = [_query,2] call DB_fnc_asyncCall;
diag_log format ["Return statement is: %1", _queryResult];