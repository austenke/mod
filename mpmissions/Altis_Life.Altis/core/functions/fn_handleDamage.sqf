#include <macro.h>
/*
	File: fn_handleDamage.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_damage","_source","_projectile","_part","_curWep"];
_unit = SEL(_this,0);
_part = SEL(_this,1);
_damage = SEL(_this,2);
_source = SEL(_this,3);
_projectile = SEL(_this,4);

_oldDamage = 0;

//Handle the tazer first (Top-Priority).
if(!isNull _source) then {
	if(_source != _unit) then {
		_curWep = currentWeapon _source;
		if(_projectile in ["B_9x21_Ball","B_556x45_dual"] && _curWep in ["hgun_P07_snds_F","arifle_SDAR_F"]) then {
			if(side _source == west && playerSide != west) then {
				private["_distance","_isVehicle","_isQuad"];
				_distance = if(_projectile == "B_556x45_dual") then {100} else {35};
				_isVehicle = if(vehicle player != player) then {true} else {false};
				_isQuad = if(_isVehicle) then {if(typeOf (vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
				
				_damage = false;
				if(_unit distance _source < _distance) then {
					if(!life_istazed && !(_unit GVAR ["restrained",false])) then {
						if(_isVehicle && _isQuad) then {
							player action ["Eject",vehicle player];
							[_unit,_source] spawn life_fnc_tazed;
						} else {
							[_unit,_source] spawn life_fnc_tazed;
						};
					};
				};
			};
			
			//Temp fix for super tasers on cops.
			if(playerSide == west && side _source == west) then {
				_damage = false;
			};
		};
	};
};

if(_projectile in ["B_65x39_Caseless","B_9x21_Ball"] && _curWep in ["arifle_MXC_Black_F","arifle_MX_Black_F","arifle_MXM_Black_F","SMG_02_F"]) then {
			//copied from taser source
			if(side _source == west && playerSide != west) then {
				private["_isVehicle"];
				_isVehicle = if(vehicle player != player) then {true} else {false};
				//_damageHandle = false;

				//player allowDamage false;

				_damage = (damage player) + .05;

				if(!((1 - damage player) > _damage) && !(_isVehicle && !life_istazed)) then {
					//hint "tazing";
					//player setDamage .8;
					[_unit,_source] spawn life_fnc_tazed;
				};	
			};
			
			//Change _damagae = true to false if you do not want cops to kill eachother with these. _damagaHandle is being used also so they take no damage aswell.
			if(playerSide == west && side _source == west) then {
				_damage = true;
				_damageHandle = false;
			};
		};

if (vehicle _unit == _unit) then
{
    if ( _source isKindOf "Air" OR _source isKindOf "Car" OR _source isKindOf "Boat" ) then
    {
        _damage = false;
        [_unit,_source] spawn life_fnc_vdmed; //_Source is Vehicle, Not a player driving a vehicle
    }
    else
    {    
        _vehicle = vehicle _source;
        if (driver _vehicle == _source) then {
            if (_vehicle isKindOf "Air" OR _vehicle isKindOf "Car" OR _vehicle isKindOf "Boat") then
            {
                _damage = false;
                [_unit,_source] spawn life_fnc_vdmed;
            };
        };
    };
};

[] call life_fnc_hudUpdate;
_damage;