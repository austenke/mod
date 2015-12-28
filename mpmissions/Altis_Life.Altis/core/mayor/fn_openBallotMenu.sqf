/* 
	File: fn_openBallotMenu.sqf
	
	Author: Valiant
*/
disableSerialization;
if(dialog) exitWith {};
if(!createDialog "mayor_ballot_menu") exitWith {};
[[player],"MAYOR_fnc_getBallotEntries",(call life_fnc_findTransactionMethod)] spawn life_fnc_MP;
ctrlEnable[2400,false];
