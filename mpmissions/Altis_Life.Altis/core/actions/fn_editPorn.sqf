#include <macro.h>
/*
	Author: Index
	Purpose:
	Edits porn
*/

private["_Proc","_upp","_ui","_progress","_pgText","_cP","_barrelp","_barrel"];
_Proc = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

//Error check
if((isNull _Proc) OR (player distance _Proc > 10)) exitWith {};
if (life_is_processing) exitWith {hint "You are already editing porn"};
if (side player == west) exitWith {hint "You cannot preform this action as an officer."};
//if(!license_civ_oil) exitwith {hint "You need oil processing!"};


_upp = "Editing Porn";

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = GVAR_UINS "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;
life_holdBarrel = false;

life_is_processing = true;

while{true} do {
	sleep  1.0;
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
	if(_cP >= 1) exitWith {};
	if(player distance _Proc > 10) exitWith {};
};
	
if(player distance _Proc > 10) exitWith {hint "Stay close to the editor!"; 5 cutText ["","PLAIN"]; life_is_processing = false;};

if(([true,"porn_processed",1] call life_fnc_handleInv)) then {
	titleText["You have successfully filmed some porn, now you need to get it edited!","PLAIN"];
} else {
	titleText ["Your inventory is full","PLAIN"];
};

5 cutText ["","PLAIN"];
life_action_inUse = false;
life_is_processing = false;