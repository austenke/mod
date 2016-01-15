#include "..\..\script_macros.hpp"
/*
	Author Bryan "Tonic" Boardwine
	
	Description:
	Once word is received by the server the rest of the jail execution is completed.
*/
private["_time","_bail","_countDown"];

params [
	["_ret",[],[[]]],
	["_bad",false,[false]]
];


if(_bad) then { _time = time + 1100; } else { _time = time + (15 * 60); };

if(count _ret > 0) then { life_bail_amount = SEL(_ret,3); } else { life_bail_amount = 1500; _time = time + (10 * 60); };
_bail = false;

// Save gear
life_prison_backpack = backpack player;
life_prison_uniform = uniform player;
life_prison_headgear = headgear player;
life_prison_vest = vest player;

sleep 1;

// Remove gear
removeBackpack player;
removeHeadgear player;
removeVest player;
removeUniform player;

// Add prison uniform
player addUniform "U_C_WorkerCoveralls";

// Texture prison uniform
if((uniform player) == "U_C_WorkerCoveralls") then { [player,0,"textures\prisoner_uniform.jpg"] remoteExecCall ["life_fnc_setTexture",RCLIENT]; };

[_bad] spawn {
	life_canpay_bail = false;
	if(_this select 0) then {
		sleep (10 * 60);
	} else {
		sleep (5 * 60);
	};
	life_canpay_bail = nil;
};

while {true} do {
	if((round(_time - time)) > 0) then {
		_countDown = [(_time - time),"MM:SS.MS"] call BIS_fnc_secondsToString;
		hintSilent parseText format[(localize "STR_Jail_Time")+ "<br/> <t size='2'><t color='#FF0000'>%1</t></t><br/><br/>" +(localize "STR_Jail_Pay")+ " %3<br/>" +(localize "STR_Jail_Price")+ " $%2",_countDown,[life_bail_amount] call life_fnc_numberText,if(isNil "life_canpay_bail") then {"Yes"} else {"No"}];
	};
	
	if(player distance (getMarkerPos "jail_marker") > 50) then {
		player setPos (getMarkerPos "jail_marker");
		hint "You have been returned to jail";
	};
	
	if(life_bail_paid) exitWith {
		_bail = true;
	};

	if((round(_time - time)) < 1) exitWith {hint ""};
	if(!alive player && ((round(_time - time)) > 0)) exitWith {};
	sleep 0.1;
};

switch (true) do {
	case (_bail): {
		life_is_arrested = false;
		life_bail_paid = false;
		hint localize "STR_Jail_Paid";
		serv_wanted_remove = [player];
		player setPos (getMarkerPos "jail_release");
		[getPlayerUID player] remoteExecCall ["life_fnc_wantedRemove",RSERV];
		[5] call SOCK_fnc_updatePartial;
		player addUniform life_prison_uniform;
    	player addBackpack life_prison_backpack;
    	player addHeadgear life_prison_headgear;
    	player addVest life_prison_vest;
	};
	
	case (alive player && !_bail): {
		life_is_arrested = false;
		hint localize "STR_Jail_Released";
		[getPlayerUID player] remoteExecCall ["life_fnc_wantedRemove",RSERV];
		player setPos (getMarkerPos "jail_release");
		[5] call SOCK_fnc_updatePartial;
		player addUniform life_prison_uniform;
    	player addBackpack life_prison_backpack;
    	player addHeadgear life_prison_headgear;
    	player addVest life_prison_vest;
	};
};