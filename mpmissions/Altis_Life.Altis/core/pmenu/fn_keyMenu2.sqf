#include <macro.h>
/*
	File: fn_keyMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the key menu
	Will be revised.
*/
private["_display","_vehicles","_plist","_near_units","_pic","_name","_text","_color","_index"];

if(FETCH_CONST(life_coplevel) < 1 && FETCH_CONST(life_adminlevel) == 0) exitWith {};

disableSerialization;

_display = findDisplay 9950;
_vehicles = _display displayCtrl 9951;
lbClear _vehicles;
_plist = _display displayCtrl 9952;
lbClear _plist;
_near_units = [];

_crimes = ["187 - Manslaughter","901 - Escaping Jail",
	"215 - Attempted Auto Theft","213 - Use of Illegal Explosives",
	"211 - Robbery","207 - Kidnapping","207A - Attempted Kidnapping",
	"487 - Grand Theft","488 - Petty Theft","480 - Hit and Run","481 - Drug Posession",
	"482 - Intent To Distribute","483 - Drug Trafficking","459 - Burglary","390 - Public Intoxication"];

{
	_vehicles lbAdd format["%1",_x];
	_vehicles lbSetData [(lbSize _plist)-1,str(_x)];
} foreach _crimes;

if(((lbSize _vehicles)-1) == -1) then {
	_vehicles lbAdd "No players";
	_vehicles lbSetData [(lbSize _vehicles)-1,str(ObjNull)];
};