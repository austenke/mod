#include <macro.h>
/*
	Author: Valiant

	-------------For Drunken Life use ONLY--------------
*/

private["_sell","_price","_barrelp"];
_sell = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
//_barrelp = nearestObjects[getPos player,["Land_MetalBarrel_F"],8] select 0;
if((isNull _sell) OR (player distance _sell > 10)) exitWith {hint "You are too far away!";};
if(!life_holdBarrel) exitWith {hint "You need to be holding a barrel first!";};
{
	if ((typeOf _x) in ["Land_BarrelWater_F","Land_MetalBarrel_F"]) exitWith { _barrelp = _x; };
} forEach attachedObjects player;

if(isNull _barrelp) exitWith {hint "You need to be holding a barrel first!";};

_price = 200000;

deletevehicle _barrelp;

ADD(CASH,_price);

life_holdBarrel = false;

titleText[format[localize "STR_Shop_sellOil",1],"PLAIN"];