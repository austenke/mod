#include <macro.h>
#include "..\..\script_macros.hpp"

/*
Filename: fn_insurance.sqf
Author: Kevin Webb
Description: Simple way of insuring the vehicle. Will be modified in the future.
*/

private["_nearVehicles","_vehicle","_price"];

if(vehicle player != player) then 
{
	_vehicle = vehicle player; 
}
else
{
    _nearVehicles = nearestObjects[getPos player,["Car","Air","Ship"],50];
    
    if(count _nearVehicles > 0) then
    {
        
        {
            if(!isNil "_vehicle") exitWith {};
            
            //Kill the loop
            _vehData = _x getVariable["vehicle_info_owners",[]];
            
            if(count _vehData > 0) then
            {
                _vehOwner = (_vehData select 0) select 0;
                if((getPlayerUID player) == _vehOwner) exitWith
                {
                    _vehicle = _x; 
                };   
            };
        } foreach _nearVehicles;
    };
};


if(isNil "_vehicle") exitWith
{
    hint "Make sure your vehicle is closest to the NPC and try again";        
};

if(isNull _vehicle) exitWith {};
if(_vehicle getVariable["isInsured",false]) exitWith { hint "This vehicle already has insurance."; };
if(!(_vehicle in life_vehicles)) exitWith { hint "The target vehicle doesn't seem to be your own."; };

_price = switch((typeOf _vehicle) isKindOf) do
{
    case "Car":
    {
        5000
    };
    case "Air":
    {
        10000
    };
    case "Ship":
    {
        5000
    };
    default
    {
        -1
    };
};

if(_price == -1) exitWith { hint "You can not insure this type of vehicle"; };
if(playerSide == independent) then { _price = _price / 4; };
//_price = (_price * __GETC__(life_vip_discount));
if(BANK < _price) exitWith
{
    hint format["You do not have enough money in your bank account to complete this transaction, it requires $%1",_price];   
};
hint format["You have been charged $%1 to insure this vehicle. If it explodes, it will be placed back inside your garage.",_price];
SUB(BANK,_price);
closeDialog 0;
_vehicle setVariable["isInsured",true,true];
[[_vehicle],"TON_fnc_vehicleInsurance",false,false] spawn life_fnc_MP;
[1] call SOCK_fnc_updatePartial;