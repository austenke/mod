#include "..\..\script_macros.hpp"
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	32 hours...
*/
private["_unit","_unitID","_members"];
disableSerialization;

if(EQUAL((lbCurSel 2621),-1)) exitWith {hint "Select someone to promote";};
_unit = call compile format["%1",CONTROL_DATA(2621)];

if(isNull _unit) exitWith {}; //Bad unit?
if(_unit == player) exitWith {hint "You can't promote yourself!";};

hint format["Promoting %1",name _unit];
[_unit,grpPlayer] remoteExec ["IND_fnc_clientGangPromote",_unit]; //Promote that bitch!
[] call life_fnc_gangMenu;