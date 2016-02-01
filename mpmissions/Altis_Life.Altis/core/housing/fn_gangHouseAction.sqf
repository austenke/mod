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
	systemChat "Sending request to server";
	[grpPlayer GVAR "gang_id",_house] remoteExec ["TON_fnc_gangHouse",RSERV];

	_house SVAR ["house_owner",[grpPlayer GVAR "gang_id",grpPlayer GVAR "gang_name"],true];

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