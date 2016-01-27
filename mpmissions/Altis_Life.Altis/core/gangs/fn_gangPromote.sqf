#include "..\..\script_macros.hpp"
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	32 hours...
*/
private["_unit","_unitID","_members","_unitRank"];
disableSerialization;

if(EQUAL((lbCurSel 2621),-1)) exitWith {hint "Select someone to promote";};
_unit = call compile format["%1",CONTROL_DATA(2621)];
_unitRank = _unit getVariable "gangRank";

if(isNull _unit) exitWith {}; //Bad unit?
if(_unit == player) exitWith {hint "You can't promote yourself!";};
if(_unitRank == 4) exitWith {hint "This person is already max rank";};

hint format["Promoting %1 to rank %2",name _unit,_unitRank + 1];
[_unit,grpPlayer] remoteExec ["IND_fnc_clientGangPromote",_unit]; //Promote that bitch!
closeDialog 0;
[] spawn life_fnc_gangMenu;