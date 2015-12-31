#include <macro.h>
/*
	File: fn_keyMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the key menu
	Will be revised.
*/
private["_display","_vehicles","_plist","_near_units","_pic","_name","_text","_color","_index"];
disableSerialization;

_display = findDisplay 9950;
_vehicles = _display displayCtrl 9951;
lbClear _vehicles;
_plist = _display displayCtrl 9952;
lbClear _plist;
_near_units = [];

{ if(player distance _x < 20) then {_near_units pushBack _x};} foreach playableUnits;

for "_i" from 0 to 3 do {
	_vehicles lbAdd format["blah"];
	_vehicles lbSetData [(lbSize _vehicles)-1,str(_i)];
};

{
	if(!isNull _x && alive _x && player distance _x < 20 && _x != player) then {
		_plist lbAdd format["%1 - %2",_x getVariable["realname",name _x], side _x];
		_plist lbSetData [(lbSize _plist)-1,str(_x)];
	};
} foreach _near_units;

if(((lbSize _vehicles)-1) == -1) then {
	_vehicles lbAdd localize "STR_PM_no_veh";
	_vehicles lbSetData [(lbSize _vehicles)-1,str(ObjNull)];
};