/*
	File: fn_bountyCheck.sqf
	Author: Index
	
	Description:
	Returns player bounty
*/
private["_uid","_ret","_index","_data"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_ret = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
diag_log format["_uid: %1 -- _ret: %2",_uid,_ret];
if(_uid == "" OR isNull _ret) exitWith {["diag_log",["----- Tried to launch wanted, bad data passed -----"]] call TON_fnc_logIt;}; //Bad data passed.

_ret = owner _ret;

diag_log "bountyCheck executed";

//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call TON_fnc_index;

if(_index != -1) then {
	_data = life_wanted_list select _index;
	diag_log format["bountyClient data: %1",_data];
	[_data] remoteExecCall ["life_fnc_bountyClient",_ret];
};