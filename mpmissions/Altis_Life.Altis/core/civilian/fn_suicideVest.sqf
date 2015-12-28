/*
Author: Index


*/

private["_bigBoom"];

life_isSuicide = true;

sleep .5;


if(vest player != "V_HarnessOGL_gry") exitWith {life_isSuicide = false;};

removeVest player;

_bigBoom = "Bo_Mk82" createVehicle [0,0,9999];

_bigBoom setPos (getPos player);

_bigBoom setVelocity [100,0,0];

if(alive player) then {player setDamage 1;};

life_isSuicide = false; 

[[0,format["%1 detonated their suicide vest",name player]],"life_fnc_broadcast",true,false] call life_fnc_MP;