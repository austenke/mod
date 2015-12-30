/* 
	File: fn_openBallotApplicationMenu.sqf
	
	Author: Valiant
*/
disableSerialization;
if(dialog) exitWith {};
if(!createDialog "mayor_ballot_menu") exitWith {};
ctrlEnable[8400,false];
