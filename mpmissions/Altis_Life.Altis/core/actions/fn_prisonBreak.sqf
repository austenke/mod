/*
file: fn_robShops.sqf
Author: MrKraken
Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
Description:
Executes the rob shob action!
Idea developed by PEpwnzya v1.0
*/
private["_criminal","_shop","_name","_kassa","_ui","_progress","_pgText","_cP","_rip","_pos","_source"];
_prison = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_criminal = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
_action = [_this,2] call BIS_fnc_param;//Action name

if(side _criminal != civilian) exitWith { hint "Only civilians can break people out!"; };
if(_criminal distance _prison > 20) exitWith { hint "You need to stay close to the prison to continue a prison break"; };

if (life_action_robbing) exitWith { hint "Break out already in progress!"; };
if (vehicle player != _criminal) exitWith { hint "Get out of your vehicle!"; };

if (_prison getVariable["inStart",false]) exitWith { hint "A prison break is already in progress"; };

if !(alive _criminal) exitWith {};
if (currentWeapon _criminal == "") exitWith { hint "Are you really trying to start a prison break without a gun?"; };

life_action_robbing = true;
_prison setVariable ["inStart",true];
_prison removeAction _action;
[[1,format[localize "STR_Jail_BreakNOTF",(name _criminal)]],"life_fnc_broadcast",west,FALSE] call life_fnc_MP;
 
//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;

_marker = createMarker ["prison_break"];
_marker setMarkerColor "ColorRed";
_marker setMarkerText "Prison break in progress!";
_marker setMarkerType "hd_warning";

_pgText ctrlSetText format["Prison break in progress, stay within 20 meters (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;
 
if(life_action_robbing) then
{
	while{true} do
	{
			sleep 1.70;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["Prison break in progress, stay within 20 meters (%1%2)...",round(_cP * 100),"%"];

		if(_cP >= 1) exitWith {};
		if(_criminal distance _prison > 20) exitWith {life_action_robbing = false; 5 cutText ["","PLAIN"];};
		if!(alive _criminal) exitWith {life_action_robbing = false; 5 cutText ["","PLAIN"];};
	};

	_counter = 0;
	{
		if(_x distance (getMarkerPos "jail_marker") < 100) then {
			_counter = _counter + 1;
			[[player], "life_fnc_breakout", _x, false] call life_fnc_MP;
		}
	} forEach playableUnits;

	if!(alive _criminal) exitWith { life_action_robbing = false; };
	if(_criminal distance _prison > 20) exitWith { life_action_robbing = false; hint "You need to stay close to the prison to continue a prison break!"; 5 cutText ["","PLAIN"]; };
	5 cutText ["","PLAIN"];

	titleText[format["You have broken out %1 people, now get away before the cops arrive!",_counter],"PLAIN"];
	[[0,format["%1 has broken %2 people out of prison!",name player,_counter]],"life_fnc_broadcast",true,false] call life_fnc_MP;
	life_action_robbing = false;
	[[getPlayerUID _criminal,name _criminal,"512"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
};

sleep 300;
deleteMarker _marker;
_prison setVariable ["inStart",false];
_action = _prison addAction["Start a prison break",life_fnc_robShops, _name];