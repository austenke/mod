#include <macro.h>
/*
	File: fn_adminGodMode.sqf
	Author: Tobias 'Xetoxyc' Sittenauer
 
	Description: Enables God mode for Admin
*/

_foo = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(_foo getVariable["life_adminlevel",false] < 1) exitWith {closeDialog 0; hint "You are not an admin, good try though";};

[] spawn {
  while {dialog} do {
   closeDialog 0;
   sleep 0.01;
  };
};
 
if(life_stealth) then {
        life_stealth = false;
        titleText ["Stealth mode disabled","PLAIN"]; titleFadeOut 2;
        _foo hideObject false;
} else {
        life_stealth = true;
        titleText ["Stealth mode enabled","PLAIN"]; titleFadeOut 2;
        _foo hideObject true;
};