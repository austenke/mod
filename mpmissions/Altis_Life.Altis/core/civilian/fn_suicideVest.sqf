/*
Author: Index
*/

private["_bigBoom"];

//player say3D "explosion";

for [{_x=5},{_x > 0},{_x=_x-1}] do {

	titleText[format["%1",_x],"PLAIN"];
	sleep 1;

	if(vest player != "V_HarnessOGL_gry") exitWith {life_isSuicide = false;};
	if(!alive player) exitWith {life_isSuicide = false;};
	if(life_istazed) exitWith {life_isSuicide = false;};
}

titleText["BOOOOOOM!","PLAIN"];

sleep .5;

life_isSuicide = true;

removeVest player;

_bigBoom = "Bo_Mk82" createVehicle [0,0,9999];

_bigBoom setPos (getPos player);

_bigBoom setVelocity [100,0,0];

if(alive player) then {player setDamage 1;};

life_isSuicide = false; 

[[0,format["%1 detonated their suicide vest",name player]],"life_fnc_broadcast",true,false] call life_fnc_MP;