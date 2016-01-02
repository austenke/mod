#include <macro.h>
/*
	Author: Valiant

	-------------For Drunken Life use ONLY--------------
*/

private["_sell"];
_sell = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if((isNull _sell) OR (player distance _Proc > 10)) exitWith {};

deletevehicle barrelp;

ADD(CASH,70000);