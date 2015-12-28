/* 
	File: fn_selectBallotMenu.sqf
	
	Author: Valiant
*/
disableSerialization;
if(isNull (findDisplay 8500)) exitWith {};
_dialog = findDisplay 8500;
_listBox = _dialog displayCtrl 1500;
_structuredText = _dialog displayCtrl 1100;

_structuredText ctrlSetStructuredText parseText format["<t size='1.5'>%1</t><br/><br/>%2",_listBox lbText (lbCurSel _listBox),(_listBox lbData (lbCurSel _listBox))];
ctrlEnable[2400,true];