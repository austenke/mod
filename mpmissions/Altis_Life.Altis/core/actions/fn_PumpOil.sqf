#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	Modified by: Valiant

	-------------For Drunken Life use ONLY--------------
*/

private["_Pump","_upp","_ui","_progress","_pgText","_cP","_barrel"];
_Pump = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

//Error check
if((isNull _Pump) OR (player distance _Pump > 10)) exitWith {};
if (life_is_processing) exitWith {hint localize "STR_Process_Pump_InUse";};
if(life_holdBarrel) exitWith {hint "You are already holding a barrel"; 5 cutText ["","PLAIN"]; life_is_processing = false;};


_upp = localize "STR_Process_Pump_Oil";

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
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
	if(_cP >= 1) exitWith {};
	if(player distance _Pump > 10) exitWith {};
};
	
if(player distance _Pump > 10) exitWith {hint localize "STR_Process_Pump_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};
if(life_holdBarrel) exitWith {hint "You are already holding a barrel"; 5 cutText ["","PLAIN"]; life_is_processing = false;};

_barrel = "Land_BarrelWater_F" createVehicle position player;
_barrel attachTo[player,[0,1,1.9]];
_barrel allowDamage false;
_barrel setVariable ["holding", true, true];
_barrel enableRopeAttach true;
player reveal _barrel;
life_pumped_barrel = _barrel;
life_holdBarrel = true;

titleText[format[localize "STR_Process_Pumped_Oil",1],"PLAIN"];

5 cutText ["","PLAIN"];
life_action_inUse = false;
life_is_processing = false;

while {life_holdBarrel} do {
	sleep 10;
	{ 
		_barrel disableCollisionWith _x;
	} forEach PlayableUnits;
};