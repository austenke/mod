#include <macro.h>
/*
	Author: Valiant

	-------------For Drunken Life use ONLY--------------
*/

private["_Proc","_upp","_ui","_progress","_pgText","_cP","_barrelp","_barrel"];
_Proc = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_barrel = nearestObjects[getPos player,["Land_BarrelWater_F"],8] select 0;

//Error check
if((isNull _Proc) OR (player distance _Proc > 10)) exitWith {};
if (life_is_processing) exitWith {hint localize "STR_Process_Proc_InUse";};


_upp = localize "STR_Process_Proc_Oil";

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
	if(player distance _Proc > 10) exitWith {};
};
	
if(player distance _Proc > 10) exitWith {hint localize "STR_Process_Proc_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};

_barrelp = createVehicle ["Land_MetalBarrel_F", position player, [], 0, "CAN_COLLIDE"];
_barrelp attachTo[player,[0,1,1.9]];
_barrelp setVariable ["owner", player, true];

titleText[format[localize "STR_Process_Procdone_Oil",1],"PLAIN"];

5 cutText ["","PLAIN"];
life_action_inUse = false;
life_is_processing = false;

deletevehicle _barrel;