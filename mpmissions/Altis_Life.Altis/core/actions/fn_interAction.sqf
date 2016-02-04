#include <macro.h>
/*
	File: fn_interAction.sqf
*/
private "_unit";
_unit = cursorTarget;

player playMove "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"; //Animation in
_unit attachTo [player,[0.1,1.1,0]];
[[player], "life_fnc_interActionClient", _unit, false] call life_fnc_MP;
player setVariable["sex",true,true];
player reveal _unit;