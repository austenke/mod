private["_dialog","_list","_plist","_sel","_vehicle","_owners","_index","_unit","_uid"];

if(FETCH_CONST(life_coplevel) < 1 && FETCH_CONST(life_adminlevel) == 0) exitWith {};

_curTarget = cursorTarget;

disableSerialization;

_dialog = findDisplay 2700;
_list = _dialog displayCtrl 2701;
//_plist = _dialog displayCtrl 2702;

_sel = lbCurSel _list;
//_sel2 = lbCurSel _plist;

_left=[_sel,3] call KRON_StrLeft;

[[getPlayerUID _curTarget,name _curTarget,_left],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;