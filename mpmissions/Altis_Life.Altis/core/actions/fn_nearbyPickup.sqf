#include "..\..\script_macros.hpp"
/*
	fn_nearbyPickup.sqf

	Author: Index

	Description:
	Pickup for nearby items
*/

private["_obj","itemName","_dialog","_list"];

_dialog = findDisplay 1520;
_list = _dialog displayCtrl 1521;
_itemName = lbData [ 1521, ( lbCurSel 1521 ) ]; // retrieve the data (previously set) from the listbox's currently selected index

{
	_itemInfo = _x getVariable ["item",[]];
	if (count _itemInfo > 0 && ITEM_NAME(SEL(_itemInfo,0)) == _itemName ) exitWith { _obj = _x };
} forEach _objects;

_miscItems = ["Land_BottlePlastic_V1_F","Land_TacticalBacon_F","Land_Can_V3_F","Land_CanisterFuel_F","Land_Suitcase_F"];

if((typeOf _obj) in _miscItems) then {
	[_obj,player,false] remoteExecCall ["TON_fnc_pickupAction",RSERV];
} else {
	[_obj,player,true] remoteExecCall ["TON_fnc_pickupAction",RSERV];
};