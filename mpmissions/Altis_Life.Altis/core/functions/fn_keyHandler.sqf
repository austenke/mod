#include "..\..\script_macros.hpp"
/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main key handler for event 'keyDown'
*/
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys","_query","_queryResult"];
_ctrl = SEL(_this,0);
_code = SEL(_this,1);
_shift = SEL(_this,2);
_ctrlKey = SEL(_this,3);
_alt = SEL(_this,4);
_speed = speed cursorTarget;
_handled = false;

_interactionKey = if((EQUAL(count (actionKeys "User10"),0))) then {219} else {(actionKeys "User10") select 0};
_mapKey = SEL(actionKeys "ShowMap",0);
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

//Vault handling...
if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute")) && {(player GVAR ["restrained",false])}) exitWith {
	true;
};

if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if(!(EQUAL(count (actionKeys "User10"),0)) && {(inputAction "User10" > 0)}) exitWith {
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	if(!life_action_inUse) then {
		[] spawn {
			private "_handle";
			_handle = [] spawn life_fnc_actionKeyHandler;
			waitUntil {scriptDone _handle};
			life_action_inUse = false;
		};
	};
	true;
};

if(!(EQUAL(count (actionKeys "User5"),0)) && {(inputAction "User5" > 0)}) exitWith {
	// this action is for changing the emergency lights mode

	_veh = vehicle player;

	// if it's a high-ranking cop and he's driving a vehicle, let him toggle the advanced lights
	if(playerSide == west && _veh != player && (driver _veh) == player && life_coplevel >= 5) then {

		// if the vehicle's advancedLights variable hasn't been initialized, do that now
		if(isNil {_veh getVariable "advancedLights"}) then {_veh setVariable["advancedLights",false,true];};

		// toggle them on or off
		if(_veh getVariable ["advancedLights",false]) then {
			_veh setVariable ["advancedLights", false, true];
			titleText ["Police lights: OFF", "PLAIN"];
		} else {
			_veh setVariable ["advancedLights", true, true];
			titleText ["Police lights: ON", "PLAIN"];
		};
		_handled = true;
	};
};

// Add redgull to user action 11
if(!(EQUAL(count (actionKeys "User11"),0)) && {(inputAction "User11" > 0)} && life_inv_redgull > 1) exitWith {
	if(([false,"redgull",1] call life_fnc_handleInv)) then {
		[] spawn {
			life_redgull_effect = time;
			titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
			player enableFatigue false;
			waitUntil {!alive player OR ((time - life_redgull_effect) > (5 * 60))};
			player enableFatigue true;
		};
		true;
	};
};

// Nearby items dialog
if(!(EQUAL(count (actionKeys "User8"),0)) && {(inputAction "User8" > 0)}) exitWith {
if(!_alt && !_ctrlKey) then {
		if(player getVariable ["restrained", false]) then {
			hint "You cannot pick up items while you're restrained!";
		} else {
			closeDialog 0;
			createDialog "life_pickup_items";
			_handled = true;
		};
	};
};

switch (_code) do {
	
	//Delete, fade sound
	case 211: {
		[] call life_fnc_fadeSound;
    	_handled = true;
	};

	//Space key for Jumping
	case 57: {
		if(isNil "jumpActionTime") then {jumpActionTime = 0;};
		if(_shift && {!(EQUAL(animationState player,"AovrPercMrunSrasWrflDf"))} && {isTouchingGround player} && {EQUAL(stance player,"STAND")} && {speed player > 2} && {!life_is_arrested} && {SEL((velocity player),2) < 2.5} && {time - jumpActionTime > 1.5}) then {
			jumpActionTime = time; //Update the time.
			[player,true] spawn life_fnc_jumpFnc; //Local execution
			[player,false] remoteExec ["life_fnc_jumpFnc",RANY]; //Global execution 
			_handled = true;
		};
	};
	
	// Tab, causes surrender
	case 15:
	{
		if (!_shift && !_alt && vehicle player == player && !(player getVariable ["restrained", false]) && (animationState player) != "Incapacitated" && !life_istazed) then
		{
			if (player getVariable ["surrender", false]) then
			{
				player setVariable ["surrender", false, true];
			} else
			{
				[] spawn life_fnc_surrender;
			};
		};
	};

	// Test key
	case 16: {
		[] spawn life_fnc_activateNitro
	};
	
	case 17:
	{
		//[[1,2],"STR_ISTR_Bolt_AlertBank",true,[]] remoteExecCall ["life_fnc_broadcast",RCLIENT];
	};

	//Map Key
	case _mapKey: {
		switch (playerSide) do {
			case west: {if(!visibleMap) then {[] spawn life_fnc_copMarkers;}};
			case independent: {if(!visibleMap) then {[] spawn life_fnc_medicMarkers;}};
			case civilian: {if(!visibleMap) then {[] spawn life_fnc_gangMarkers;}};
		};
	};
	
	//Holster / recall weapon.
	case 35: {
		if((currentWeapon player) in [RIFLE,LAUNCHER,PISTOL] && (currentWeapon player) != "") then {
			life_curWep_h = currentWeapon player;
			player action ["SwitchWeapon", player, player, 100];
			player switchCamera cameraView;
		} else {
			player selectWeapon life_curWep_h;
		};
	};
	
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey: {
		if(!life_action_inUse) then {
			[] spawn  {
				private "_handle";
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};
		};
	};
	
//Restraining or robbing (Shift + R)
	case 19:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			[] call life_fnc_restrainAction;
		};
		
//Robbing
		if(_shift && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && cursorTarget distance player < 4 && speed cursorTarget < 1) then
		{
			if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed && !(player getVariable["surrender",false])) then
			{
				[cursorTarget] spawn life_fnc_knockoutAction;
			};
			_handled = true;
		};
	};
	//T Key (Trunk)
	case 20: {
		if(!_alt && !_ctrlKey && !dialog && {!life_action_inUse}) then {
			if(vehicle player != player && alive vehicle player) then {
				if((vehicle player) in life_vehicles) then {
					[vehicle player] call life_fnc_openInventory;
				};
			} else {
				private "_list";
				_list = ["landVehicle","Air","Ship","House_F"];
				if(KINDOF_ARRAY(cursorTarget,_list) && {player distance cursorTarget < 7} && {vehicle player == player} && {alive cursorTarget} && {!life_action_inUse}) then {
					if(cursorTarget in life_vehicles OR {!(cursorTarget GVAR ["locked",true])}) then {
						[cursorTarget] call life_fnc_openInventory;
					};
				};
			};
		};
	};
	//L Key?
	case 38: {
		//If cop run checks for turning lights on.
		if(_shift && playerSide in [west,independent]) then {
			if(vehicle player != player && (typeOf vehicle player) in ["C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F"]) then {
				if(!isNil {vehicle player GVAR "lights"}) then {
					if(playerSide == west) then {
						[vehicle player] call life_fnc_sirenLights;
					} else {
						[vehicle player] call life_fnc_medicSirenLights;
					};
					_handled = true;
				};
			};
		};
		
		if(!_alt && !_ctrlKey) then { [] call life_fnc_radar; };
	};
	
	//Y Player Menu
	case 21: {
		if(!_alt && !_ctrlKey && !dialog && {!life_action_inUse}) then {
			[] call life_fnc_p_openMenu;
		};
	};
	
	    //F Key
	case 33: {
        if (!_shift) then
        {
            if(playerSide == west && vehicle player != player && !life_siren_active && ((driver vehicle player) == player)) then
            {
                [] spawn
                {
                    life_siren_active = true;
                    sleep 4.7;
                    life_siren_active = false;
                };
                _veh = vehicle player;
                if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
                if((_veh getVariable "siren")) then
                {
                    titleText ["Sirens Off","PLAIN"];
                    _veh setVariable["siren",false,true];
                }
                    else
                {
                    titleText ["Sirens On","PLAIN"];
                    _veh setVariable["siren",true,true];
                    [[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
                };
            };                                            
        };
    };

	//U Key
	case 22: {
		if(!_alt && !_ctrlKey) then {
			if(vehicle player == player) then {
				_veh = cursorTarget;
			} else {
				_veh = vehicle player;
			};
			
			if(_veh isKindOf "House_F" && {playerSide == civilian}) then {
				if(_veh in life_vehicles && player distance _veh < 8) then {
					_door = [_veh] call life_fnc_nearestDoor;
					if(EQUAL(_door,0)) exitWith {hint localize "STR_House_Door_NotNear"};
					_locked = _veh GVAR [format["bis_disabled_Door_%1",_door],0];
					
					if(EQUAL(_locked,0)) then {
						_veh SVAR [format["bis_disabled_Door_%1",_door],1,true];
						_veh animate [format["door_%1_rot",_door],0];
						systemChat localize "STR_House_Door_Lock";
					} else {
						_veh SVAR [format["bis_disabled_Door_%1",_door],0,true];
						_veh animate [format["door_%1_rot",_door],1];
						systemChat localize "STR_House_Door_Unlock";
					};
				};
			} else {
				_locked = locked _veh;
				if(_veh in life_vehicles && player distance _veh < 8) then {
					if(EQUAL(_locked,2)) then {
						if(local _veh) then {
							_veh lock 0;
						} else {
							[_veh,0] remoteExecCall ["life_fnc_lockVehicle",_veh];
						};
						[[_veh],"life_fnc_UnLockCarSound",nil,true] spawn life_fnc_MP;
						systemChat localize "STR_MISC_VehUnlock";
					} else {
						if(local _veh) then {
							_veh lock 2;
						} else {
							[_veh,2] remoteExecCall ["life_fnc_lockVehicle",_veh];
						};	
						[[_veh],"life_fnc_LockCarSound",nil,true] spawn life_fnc_MP;
						systemChat localize "STR_MISC_VehLock";
					};
				};
			};
		};
	};
};

_handled;