#include "\life_server\script_macros.hpp"
/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Inserts the gang into the database.
*/
private["_ownerID","_uid","_gangName","_query","_queryResult","_gangMembers","_group"];
_ownerID = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_uid = [_this,1,"",[""]] call BIS_fnc_param;
_gangName = [_this,2,"",[""]] call BIS_fnc_param;
_group = group _ownerID;

//if(isNull _ownerID OR EQUAL(_uid,"") OR EQUAL(_gangName,"")) exitWith {}; //Fail

_ownerID = owner _ownerID;
//_query = format["gangNameSelectID:%1:%2",_gangName,1];
_query = "SELECT list FROM zones WHERE id = '1'";
waitUntil{!DB_Async_Active};
_queryResult = [_query,2] call DB_fnc_asyncCall;

["diag_log",[
	"------------- Gang Query Request -------------",
	format["QUERY: %1",_query],
	//format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)],
	format["Result: %1",_queryResult],
	"-------------------------------------------------"
]] call TON_fnc_logIt;

//Check to see if the gang name already exists.
//if(!(EQUAL(count _queryResult,0))) exitWith {
	[[1,"Hey bud"],"life_fnc_broadcast",_ownerID,false] call life_fnc_MP;
//	life_action_gangInUse = nil;
//	PVAR_ID("life_action_gangInUse",_ownerID);
//};
