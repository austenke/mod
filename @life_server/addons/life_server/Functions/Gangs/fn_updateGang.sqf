/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Updates the gang information?
*/
private["_mode","_group","_groupID","_bank","_maxMembers","_members","_query","_owner"];
_mode = [_this,0,0,[0]] call BIS_fnc_param;
_group = [_this,1,grpNull,[grpNull]] call BIS_fnc_param;

if(isNull _group && !(_mode == 5)) exitWith {};

_groupID = _group getVariable["gang_id",-1];
if(_groupID == -1 && !(_mode == 5)) exitWith {};

switch (_mode) do {
	case 0: {
		_bank = [(_group getVariable ["gang_bank",0])] call DB_fnc_numberSafe;
		_maxMembers = _group getVariable ["gang_maxMembers",8];
		_members = _group getVariable "gang_members";
		_owner = _group getVariable ["gang_owner",""];
		if(_owner == "") exitWith {};

		_query = format["gangInfoUpdate:%1:%2:%3:%4",_bank,_maxMembers,_owner,_groupID];
	};

	case 1: {
		_query = format["gangBankInfoUpdate:%1:%2",([(_group getVariable ["gang_bank",0])] call DB_fnc_numberSafe),_groupID];
	};

	case 2: {
		_query = format["gangMaxMembersUpdate:%1:%2",(_group getVariable ["gang_maxMembers",8]),_groupID];
	};

	case 3: {
		_owner = _group getVariable["gang_owner",""];
		if(_owner == "") exitWith {};
		_query = format["gangOwnerUpdate:%1:%2",_owner,_groupID];
	};

	case 4: {
		_members = _group getVariable "gang_members";
		if(count _members > (_group getVariable ["gang_maxMembers",8])) then {
			_membersFinal = [];
			for "_i" from 0 to _maxMembers -1 do {
				_membersFinal pushBack (_members select _i);
			};
		};
		_membersFinal = _group getVariable "gang_members";
		_query = format["gangMembersUpdate:%1:%2",_membersFinal,_groupID];
	};
	case 5: {
		_gangName = [_this,2,"",[""]] call BIS_fnc_param;
		_amt = [_this,3,0,[0]] call BIS_fnc_param;
		{    
			if(_x getVariable "gang_name" == _gangName) exitWith { 
				_funds = _x getVariable "gang_bank";
				_newFunds = _funds + _amt;
				_groupID2 = _x getVariable["gang_id",-1];
				_x setVariable ["gang_bank",_newFunds,true]; //NOTE: "true" must be set to broadcast the change to the clients    
				_query = format["gangBankInfoUpdate:%1:%2",([(_x getVariable ["gang_bank",0])] call DB_fnc_numberSafe),_groupID2];
			};
		} foreach allGroups;
	};
};

if(!isNil "_query") then {
	waitUntil{!DB_Async_Active};
	[_query,1] call DB_fnc_asyncCall;
};