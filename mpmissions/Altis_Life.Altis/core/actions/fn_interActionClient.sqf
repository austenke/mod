#include <macro.h>
/*
	File: fn_interActionClient.sqf
*/
private "_unit";
_unit = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;

hint format["%1 is having sex with you!",name _unit];
player switchMove "AinjPfalMstpSnonWrflDf_carried"; //Animation in
player setVectorDirAndUp[[1,0,0],[0,0,1]];
player setVariable["sex",true,true];
sleep 10;
player switchMove ""; //Animation out
player setVariable["sex",false,true];