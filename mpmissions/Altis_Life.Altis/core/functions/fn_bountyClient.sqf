/*
	File: fn_bountyClient.sqf
	Author: Index
	
	Description:
	Client handler for bounty
*/

private["_data"];
_data = [_this,0,"",[""]] call BIS_fnc_param;

life_bounty = _data select 2;
[] call life_fnc_hudUpdate; //Get our HUD updated.