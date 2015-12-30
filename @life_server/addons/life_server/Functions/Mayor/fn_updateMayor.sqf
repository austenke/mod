/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Updates the gang information?
*/
private["_mode","_group","_groupID","_bank","_maxMembers","_members","_query","_owner"];
_mode = [_this,0,0,[0]] call BIS_fnc_param;
_player = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_uid = [_this,2,"",[""]] call BIS_fnc_param;
_text = [_this,3,"",[""]] call BIS_fnc_param;

switch (_mode) do {
	case 0: {
		_query = format["addCandidate:%1:%2",_uid,_player,_text];
	};

	case 1: {
		_query = format["gangBankInfoUpdate:%1:%2",([(_group getVariable ["gang_bank",0])] call DB_fnc_numberSafe),_groupID];
	};

	case 2: {
		_query = format["gangMaxMembersUpdate:%1:%2",(_group getVariable ["gang_maxMembers",8]),_groupID];
	};
};

if(!isNil "_query") then {
	waitUntil{!DB_Async_Active};
	[_query,1] call DB_fnc_asyncCall;
};