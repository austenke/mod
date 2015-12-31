#include <macro.h>
/*
	File: fn_adminGodMode.sqf
	Author: Tobias 'Xetoxyc' Sittenauer
 
	Description: Enables God mode for Admin
*/
if(FETCH_CONST(life_adminlevel) < 5) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};
 
_foo = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

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