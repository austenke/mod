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
_curWep = "";
_curMag = "";

// Nerf stupid ass Bohemia vehicle damage
if ((vehicle _unit) isKindOf "Car" && (isNull _source || _source == _unit)) then
{
    _damage = _damage / 2;
};

// Flashbang
if (_projectile in ["mini_Grenade"]) then {
    _damage = 0;
    [] spawn life_fnc_handleFlashbang;
};

if(isPlayer _source && _source isKindOf "Man") then {
    _curWep = currentWeapon _source;
    _curMag = currentMagazine _source;
};

// //Handle the tazer first (Top-Priority).
// if(!isNull _source) then {
// 	if(_source != _unit) then {
// 		_curWep = currentWeapon _source;
// 		if(_projectile in ["B_9x21_Ball","B_556x45_dual"] && _curWep in ["hgun_P07_snds_F","arifle_SDAR_F"]) then {
// 			if(side _source == west && playerSide != west) then {
// 				private["_distance","_isVehicle","_isQuad"];
// 				_distance = if(_projectile == "B_556x45_dual") then {100} else {35};
// 				_isVehicle = if(vehicle player != player) then {true} else {false};
// 				_isQuad = if(_isVehicle) then {if(typeOf (vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
				
// 				_damage = false;
// 				if(_unit distance _source < _distance) then {
// 					if(!life_istazed && !(_unit GVAR ["restrained",false])) then {
// 						if(_isVehicle && _isQuad) then {
// 							player action ["Eject",vehicle player];
// 							[_unit,_source] spawn life_fnc_tazed;
// 						} else {
// 							[_unit,_source] spawn life_fnc_tazed;
// 						};
// 					};
// 				};
// 			};
			
// 			//Temp fix for super tasers on cops.
// 			if(playerSide == west && side _source == west) then {
// 				_damage = false;
// 			};
// 		};
// 	};
// };

if (_source != _unit && !(playerSide == west && _projectile == "") && ((_curMag in ["30Rnd_9x21_Mag","30Rnd_556x45_Stanag_Tracer_Red","30Rnd_65x39_caseless_green_mag_Tracer","100Rnd_65x39_caseless_mag_Tracer","30Rnd_65x39_caseless_mag_Tracer","16Rnd_9x21_Mag"]) || (_curWep in ["SMG_02_F","arifle_Mk20_F","arifle_Katiba_F","arifle_MX_SW_F","arifle_MXM_Black_F","hgun_P07_snds_F"]))) then {
    if (!(_part in ["","head","body"])) exitWith {_damage = 0;};
    //systemChat format["getDammage _unit = %1, _part = '%2', getHit _part = %3, _damage = %4", getDammage _unit, _part, _unit getHit _part, _damage];
    //diag_log format["_source = %1, _projectile = %2, _curMag = %3, _curWep = %4", _source, _projectile, _curMag, _curWep];
    //diag_log format["getDammage _unit = %1, _part = %2, getHit _part = %3, _damage = %4", getDammage _unit, _part, _unit getHit _part, _damage];
    _hitDam = if (_part == "") then { damage _unit } else { (_unit getHit _part) };
    if (damage _unit >= 0.95 || (_hitDam + _damage >= 0.95)) then {
        _damage = 0;
    	[_unit,_source] spawn life_fnc_tazed;
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

//systemChat format["getDammage _unit = %1, _part = '%2', getHit _part = %3, _damage = %4, _source = %5", getDammage _unit, _part, _unit getHit _part, _damage, _source];

if (playerSide == civilian && life_is_arrested) then {
    _damage = 0;
};
if (playerSide == civilian) then {[8] call SOCK_fnc_updatePartial;};
[] call life_fnc_hudUpdate;
_damage;