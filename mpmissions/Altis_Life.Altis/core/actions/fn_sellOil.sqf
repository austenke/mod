#include <macro.h>
/*
	Author: Valiant

	-------------For Drunken Life use ONLY--------------
*/

private["_sell","_price","_barrelp"];
_sell = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_barrelp = nearestObjects[getPos player,["Land_MetalBarrel_F"],8] select 0;
_price = 300000;

if((isNull _sell) OR (player distance _sell > 10)) exitWith {};

deletevehicle _barrelp;

ADD(CASH,_price);

titleText[format[localize "STR_Shop_sellOil",1],"PLAIN"];