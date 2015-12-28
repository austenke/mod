/* 
	File: fn_openBallotApplicationMenuClient.sqf
	
	Author: Valiant
*/
disableSerialization;
_player = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_goodToGo = [_this,1,false,[false]] call BIS_fnc_param;

if(isNull _player || {_player != player}) exitWith {};

if(_goodToGo) then {
	createDialog "mayor_ballot_submission";
} else {
	hint "Sorry, you have already ran for mayor this term, or are currently in office. Please wait for the next term to begin.";
	life_mayor_entered = true;
};
life_mayor_query = nil;