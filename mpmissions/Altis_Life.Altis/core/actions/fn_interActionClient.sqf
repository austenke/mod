#include <macro.h>
/*
	File: fn_interActionClient.sqf
*/
private "_unit";
_unit = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;

hint format["%1 is having sex with you!",name _unit];
player playMove "AinjPfalMstpSnonWrflDf_carried"; //Animation in
player setVariable["sex",true,true];