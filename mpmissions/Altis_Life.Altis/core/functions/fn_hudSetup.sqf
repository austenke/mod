#include <macro.h>
/*
	File: fn_hudSetup.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Setups the hud for the player?
*/
private["_alpha","_version","_p","_pg"];
disableSerialization;
_alpha = CONTROL(46,1001);
_version = CONTROL(46,1000);

2 cutRsc ["playerHUD","PLAIN"];
_version ctrlSetText format["BETA: 0.%1.%2",(productVersion select 2),(productVersion select 3)];
[] call life_fnc_hudUpdate;

[] spawn
{
	private["_dam","_boun"];
	while {true} do
	{
		_dam = damage player;
		_boun = life_bounty
		waitUntil {(damage player) != _dam || life_bounty != _boun};
		[] call life_fnc_hudUpdate;
	};
};