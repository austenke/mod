#include "\life_server\script_macros.hpp"
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Validates that the cash is not a lie
*/
private["_obj","_client"];
_obj = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_client = [_this,1,objNull,[objNull]] call BIS_fnc_param;
_cash = [_this,2,false,[true]] call BIS_fnc_param;

_secondCheck = [_this,3,0,[0]] call BIS_fnc_param;

if (secondCheck == 1) then {
	_dialog = findDisplay 1520;
	_list = _dialog displayCtrl 1521;
	_obj = lbData [ 1521, ( lbCurSel 1521 ) ]; // retrieve the data (previously set) from the listbox's currently selected index
}

if(isNull _obj OR {isNull _client}) exitWith {systemChat "Obj or client is null?";
}; //No.
if(!(_obj GVAR ["inUse",false])) exitWith {
	_client = owner _client;
	_obj SVAR ["inUse",true,true];
	if(_cash) then {
		[_obj,"life_fnc_pickupMoney",_client,false,true] call life_fnc_MP;
	} else {
		[_obj,"life_fnc_pickupItem",_client,false,true] call life_fnc_MP;
	};
};