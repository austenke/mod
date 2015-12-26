#include "\life_server\script_macros.hpp"
/*
	Author: Index

	Description:
	Hideout tests
*/
private["_ownerID","_uid","_gangName","_query","_queryResult","_gangMembers","_group"];
_ownerID = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
//_uid = [_this,1,"",[""]] call BIS_fnc_param;
//_gangName = [_this,2,"",[""]] call BIS_fnc_param;
//_group = group _ownerID;

//if(isNull _ownerID OR EQUAL(_uid,"") OR EQUAL(_gangName,"")) exitWith {}; //Fail

_ownerID = owner _ownerID;
_query = "hideoutCheck";
waitUntil{!DB_Async_Active};
_queryResult = [_query,2] call DB_fnc_asyncCall;

[[1,"Test"],"life_fnc_broadcast",_ownerID,false] call life_fnc_MP;
