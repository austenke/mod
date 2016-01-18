#include "..\..\script_macros.hpp"
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Lights up the house.
*/
private "_house";
_house = param [0,ObjNull,[ObjNull]];
_uid = steamid;
if(isNull _house) exitWith {};
if(!(_house isKindOf "House_F")) exitWith {};

if(player == (_house GVAR ["owner",ObjNull])) then {
	[_uid,_house] remoteExec ["TON_fnc_addHouse",RSERV];
	[_uid,_house] remoteExec ["TON_fnc_addHouse",RSERV];

	_house SVAR ["house_owner",[grpPlayer GVAR "gang_id",grpPlayer GVAR "gang_name"],true];

	life_vehicles pushBack _house;
	life_houses pushBack [str(getPosATL _house),[]];
	_marker = createMarkerLocal [format["house_%1",(_house GVAR "uid")],getPosATL _house];
	_houseName = FETCH_CONFIG2(getText,CONFIG_VEHICLES,(typeOf _house), "displayName");
	_marker setMarkerTextLocal _houseName;
	_marker setMarkerColorLocal "ColorBlue";
	_marker setMarkerTypeLocal "loc_Lighthouse";
	_numOfDoors = FETCH_CONFIG2(getNumber,CONFIG_VEHICLES,(typeOf _house),"numberOfDoors");
	for "_i" from 1 to _numOfDoors do {
		_house SVAR [format["bis_disabled_Door_%1",_i],1,true];
	};
};