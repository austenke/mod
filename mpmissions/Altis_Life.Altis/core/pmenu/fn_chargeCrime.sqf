//Index is a god

_player = [_this,0,"",[""]] call BIS_fnc_param;

_display = findDisplay 9000;
_list = _display displayCtrl 9001;
_data = lbData[9001,(lbCurSel 9001)];
_data = call compile format["%1", _data];
if(isNil "_data") exitWith {};
if(typeName _data != "ARRAY") exitWith {};
if(count _data == 0) exitWith {};

_left=[_data,3] call KRON_StrLeft
[getPlayerUID _player,name _player,_left] remoteExecCall ["life_fnc_wantedAdd",RSERV];