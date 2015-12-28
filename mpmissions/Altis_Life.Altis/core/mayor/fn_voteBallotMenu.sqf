/* 
	File: fn_voteBallotMenu.sqf
	
	Author: Valiant
*/
disableSerialization;
if(isNull (findDisplay 8500)) exitWith {};
_dialog = findDisplay 8500;
_listBox = _dialog displayCtrl 1500;
_structuredText = _dialog displayCtrl 1100;

_voteId = (_listBox lbValue (lbCurSel _listBox));

if(!isNil 'life_mayor_voted') exitWith {
	hint "You have already voted this term! Please wait for the next term to place another vote.";
};
[[player,_voteId],"MAYOR_fnc_submitBallot",false,false] spawn life_fnc_MP;
closeDialog 0;