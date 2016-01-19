/*
Author: Index
*/

private["_bigBoom"];

if(life_blowUp) exitWith {}; //Already detonating
if(player getVariable["restrained",false]) exitWith {hint "You are restrained";};

//player say3D "explosion";

life_blowUp = true;

[[0,format["%1 is about to detonate their suicide vest!",name player]],"life_fnc_broadcast",true,false] call life_fnc_MP;

for [{_x=5},{_x > 0},{_x=_x-1}] do {

	titleText[format["%1",_x],"PLAIN"];
	sleep 1;

	if(vest player != "V_HarnessOGL_gry") exitWith {life_blowUp = false;};
	if(!alive player) exitWith {life_blowUp = false;};
	if(life_istazed) exitWith {life_blowUp = false;};
};

removeVest player;

_bigBoom = "Bo_Mk82" createVehicle [0,0,9999];

_bigBoom setPos (getPos player);

_bigBoom setVelocity [100,0,0];

if(alive player) then {player setDamage 1;};

life_blowUp = false; 

[[0,format["%1 detonated their suicide vest",name player]],"life_fnc_broadcast",true,false] call life_fnc_MP;