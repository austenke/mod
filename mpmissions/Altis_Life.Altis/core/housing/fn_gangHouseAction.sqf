#include "..\..\script_macros.hpp"
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Lights up the house.
*/
private "_house";
hint "gang house activated";
_house = param [0,ObjNull,[ObjNull]];
_uid = steamid;
if(isNull _house) exitWith {};
if(!(_house isKindOf "House_F")) exitWith {};

systemChat str ((_house GVAR ["house_owner",ObjNull]) select 1);
systemChat str (getPlayerUID player);

if(getPlayerUID player == ((_house GVAR ["house_owner",ObjNull]) select 0)) then {

	_houseID = _house getVariable["house_id",-1];
	_gangID = grpPlayer getVariable ["gang_id",-1];
	_gangName = grpPlayer getVariable "gang_name";

	if(_houseID == -1) exitWith {hint "The ID for this house does not exist";};
	if(_gangID == -1) exitWith {hint "You are not in a gang!";};

	systemChat "Sending request to server";
	[_gangID,_houseID] remoteExec ["TON_fnc_gangHouse",RSERV];

	_house SVAR ["house_owner",[_gangID,_gangName],true];
	_house SVAR ["locked",true,true];

	//_marker = createMarkerLocal [format["house_%1",(_house GVAR "uid")],getPosATL _house];
	//_houseName = FETCH_CONFIG2(getText,CONFIG_VEHICLES,(typeOf _house), "displayName");
	//_marker setMarkerTextLocal _houseName;
	//_marker setMarkerColorLocal "ColorBlue";
	//_marker setMarkerTypeLocal "loc_Lighthouse";
	//_numOfDoors = FETCH_CONFIG2(getNumber,CONFIG_VEHICLES,(typeOf _house),"numberOfDoors");
	//for "_i" from 1 to _numOfDoors do {
	//	_house SVAR [format["bis_disabled_Door_%1",_i],1,true];
	//};
};