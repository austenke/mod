/*
	Author: Index

	Description:
	Blah
*/
private["_house","_uid","_housePos","_query"];
_newid = [_this,0,"",[""]] call BIS_fnc_param;
_houseID = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;

diag_log format["----------- House ID: %1 -------- Gang ID: %2",_houseID,_newid];

_query = format["housingChangeOwner:%1:%2",_newid,_houseID];
waitUntil{!DB_Async_Active};
[_query,1] call DB_fnc_asyncCall;