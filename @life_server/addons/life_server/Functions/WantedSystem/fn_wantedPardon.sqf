/*
	File: fn_wantedPardon.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Unwants / pardons a person from the wanted list.
*/
private["_uid"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
if(_uid == "") exitWith {};

_index = [_uid,life_wanted_list] call TON_fnc_index;

if(_index != -1) then {
	life_wanted_list set[_index,-1];
	life_wanted_list = life_wanted_list - [-1];
	//publicVariable "life_wanted_list";
};

_tickTime = diag_tickTime;
waitUntil{!DB_Async_Active};
_query = format["wantedUpdate:%1",life_wanted_list];
[_query,2] call DB_fnc_asyncCall;
["diag_log",[
	"------------- Wanted List Update -------------",
	format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)],
	format["Update: %1",_query],
	"-------------------------------------------------"
]] call TON_fnc_logIt;