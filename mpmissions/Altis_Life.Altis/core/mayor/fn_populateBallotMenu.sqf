/* 
	File: fn_populateBallotMenu.sqf
	
	Author: Valiant
*/
disableSerialization;
_unit = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_entries = [_this,1,[],[[]]] call BIS_fnc_param;
_titleText = [_this,2,"",[""]] call BIS_fnc_param;

if(isNull (findDisplay 8500)) exitWith {};
if(_unit != player) exitWith {};

_dialog = findDisplay 8500;
_listBox = _dialog displayCtrl 1500;
_structuredText = _dialog displayCtrl 1100;
_title = _dialog displayCtrl 1000;

if(count _entries < 1) exitWith {_structuredText ctrlSetStructuredText parseText "<t size='2'>Nobody is currently running for mayor!</t>"; _title ctrlSetText format["Mayor Ballot Menu - %1",_titleText];};

{
	_name = [_x,0,"",[""]] call BIS_fnc_param;
	_message = [_x,1,"",[""]] call BIS_fnc_param;
	_id = [_x,2,-1,[-1]] call BIS_fnc_param;

	_message = [_message, "¬", ","] call KRON_Replace;
	_message = [_message, "~", """"] call KRON_Replace;

	_listBox lbAdd _name;
	_listBox lbSetData[(lbSize _listBox)-1,_message];
	_listBox lbSetValue[(lbSize _listBox)-1,_id];
} forEach _entries;

_structuredText ctrlSetStructuredText parseText "<t size='2'>Ready! Please select a ballot to view.</t>";
_title ctrlSetText format["Mayor Ballot Menu - %1",_titleText];