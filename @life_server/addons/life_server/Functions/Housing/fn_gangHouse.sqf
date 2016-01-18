/*
	Author: Index

	Description:
	Blah
*/
private["_house","_uid","_housePos","_query"];
_newid = [_this,0,"",[""]] call BIS_fnc_param;
_house = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_houseID = _house getVariable["house_id",-1];

if(isNull _house OR _newid == "") exitWith {};

waitUntil{!DB_Async_Active};
_query = format["housingSwapOwner:%1:%2",_newid,_houseID];
_queryResult = [_query,2] call DB_fnc_asyncCall;
//systemChat format["House ID assigned: %1",_queryResult select 0];
//_house setVariable["house_id",(_queryResult select 0),true];