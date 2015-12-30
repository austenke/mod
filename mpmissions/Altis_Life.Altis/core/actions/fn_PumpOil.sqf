#include <macro.h>

private["_Pump","_upp","_ui","_progress","_pgText","_cP"];
_Pump = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

//Error check
if((isNull _Pump) OR (player distance _Pump > 10)) exitWith {};
if (life_is_processing) exitWith {hint localize "STR_Process_Pump_InUse";};

//case "oil": {["oilu","oilp",1200,(localize "STR_Process_Oil"),0];};

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
	sleep  0.3;
	_cP = _cP + 0.02;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
	if(_cP >= 1) exitWith {};
	if(player distance _Pump > 10) exitWith {};
};
	
if(player distance _Pump > 10) exitWith {hint localize "STR_Process_Pump_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};

_gather = ["oil_unprocessed",1];

if(([true,SEL(_gather,0),_diff] call life_fnc_handleInv)) then {
	titleText[format[localize "STR_Process_Pumped_Oil",1],"PLAIN"];
};

life_action_inUse = false;