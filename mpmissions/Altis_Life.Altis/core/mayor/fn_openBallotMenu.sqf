/* 
	File: fn_openBallotMenu.sqf
	
	Author: Valiant
*/
disableSerialization;
if(dialog) exitWith {};
if(!createDialog "mayor_ballot_menu") exitWith {};
ctrlEnable[2400,false];
