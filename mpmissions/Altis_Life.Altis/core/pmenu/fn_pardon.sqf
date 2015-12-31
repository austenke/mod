#include "..\..\script_macros.hpp"
/*
	File: fn_pardon.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Pardons the selected player.
*/
private["_display","_list","_uid"];
disableSerialization;

_display = findDisplay 2400;
_list = _display displayCtrl 2402;
_data = lbData[2401,(lbCurSel 2401)];
_data = call compile format["%1", _data];
if(isNil "_data") exitWith {};
if(typeName _data != "ARRAY") exitWith {};
if(count _data == 0) exitWith {};

_sName = _data select 0;
_uid = _data select 1;
[_uid] remoteExecCall ["life_fnc_wantedPardon",RSERV];
[0,"STR_NOTF_Pardon",true,_sName,player] remoteExecCall ["life_fnc_broadcast",RCLIENT];
