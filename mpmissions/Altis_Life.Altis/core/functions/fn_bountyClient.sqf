/*
	File: fn_bountyClient.sqf
	Author: Index
	
	Description:
	Client handler for bounty
*/

private["_data"];
_data = [_this,0,[],[[]]] call BIS_fnc_param;

systemChat format["bountyClient executed, data: %1",_data];

life_bounty = _data select 3;

systemChat format["executing hudupdate with data: %1",_data];

[] call life_fnc_hudUpdate; //Get our HUD updated.