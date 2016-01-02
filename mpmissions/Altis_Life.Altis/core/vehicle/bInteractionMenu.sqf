#include "..\..\script_macros.hpp"

#define Btn1 37450
#define Title 37401
private["_display","_curTarget","_Btn1","_Btn2"];
if(!dialog) then {
	createDialog "bInteraction_Menu";
};
disableSerialization;

_curTarget = param [0,ObjNull,[ObjNull]];
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target

_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
life_bInact_curTarget = _curTarget;

_Btn1 ctrlSetText localize "STR_vInAct_Repair";
_Btn1 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_repairTruck;";

