#include "..\..\script_macros.hpp"

private["_dialog","_list","_plist","_sel","_vehicle","_owners","_index","_unit","_uid","_data"];

if(FETCH_CONST(life_coplevel) < 1 && FETCH_CONST(life_adminlevel) == 0) then {
	ctrlShow[9950,false];
};

_curTarget = cursorTarget;

disableSerialization;

_dialog = findDisplay 2700;
_list = _dialog displayCtrl 2701;
_data = lbData [ _list, ( lbCurSel _list ) ]; // retrieve the data (previously set) from the listbox's currently selected index

hint format["Charging suspect %1 with %2",name _curTarget,_data];

[getPlayerUID _curTarget,name _curTarget,_data] remoteExecCall ["life_fnc_wantedAdd",RSERV];