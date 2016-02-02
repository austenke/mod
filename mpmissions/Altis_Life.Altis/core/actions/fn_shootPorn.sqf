#include <macro.h>
#include "..\..\script_macros.hpp"
/*
	Author: Index
	Purpose:
	Shoots porn
*/

private["_player","_upp","_ui","_progress","_pgText","_cP","_barrel"];
_player = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

//Error check
if(!(_player GVAR ["sex",FALSE])) exitWith {};
if (life_is_processing) exitWith {};


_upp = "Shooting Porn";

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = GVAR_UINS "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

life_is_processing = true;

while{true} do {
	sleep  1.0;
	_cP = _cP + 0.5;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
	if(_cP >= 1) exitWith {};
	if(player distance _player > 10) exitWith {};
};
	
if(player distance _player > 10) exitWith {hint "You can't just walk away while filming!"; 5 cutText ["","PLAIN"]; life_is_processing = false;};

if(([true,"porn_unprocessed",1] call life_fnc_handleInv)) then {
	titleText["You have successfully filmed some porn, now you need to get it edited!","PLAIN"];
} else {
	titleText ["Your inventory is full","PLAIN"];
};

5 cutText ["","PLAIN"];
life_action_inUse = false;
life_is_processing = false;