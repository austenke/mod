#include <macro.h>
/*
	File: fn_adminGodMode.sqf
	Author: Tobias 'Xetoxyc' Sittenauer
 
	Description: Enables God mode for Admin
*/
if(FETCH_CONST(life_adminlevel) < 5) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};
 
[] spawn {
  while {dialog} do {
   closeDialog 0;
   sleep 0.01;
  };
};
 
if(life_stealth) then {
        life_stealth = false;
        titleText ["Stealth mode disabled","PLAIN"]; titleFadeOut 2;
        [[player,false],"TON_fnc_hideObj",false,false] call life_fnc_mp;
} else {
        life_stealth = true;
        titleText ["Stealth mode enabled","PLAIN"]; titleFadeOut 2;
        [[player,true],"TON_fnc_hideObj",false,false] call life_fnc_mp;
};