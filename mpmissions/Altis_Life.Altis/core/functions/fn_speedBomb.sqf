/*	File: fn_speedBomb.sqf	Author: Fuzz		Description:	Attaches a speed bomb to a vehicle.*/
private["_unit"];
_unit = cursorTarget;
if((!(_unit isKindOf "LandVehicle"))&&(!(_unit getVariable ["restrained",false]))) exitWith {hint "You cannot add a speed bomb to this."};
if(player distance _unit > 7) exitWith {hint "You need to be within 7 feet!"};
if(!([false,"speedbomb",1] call life_fnc_handleInv)) exitWith {};
closeDialog 0;
life_action_inUse = true;
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 1.5;
waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};
life_action_inUse = false;
if(player distance _unit > 7) exitWith {titleText["You are not in range!","PLAIN"];};
titleText["You have attached a speed bomb to this vehicle.","PLAIN"];
[_unit] spawn {	
	_veh = _this select 0;	
	waitUntil {(speed _veh) > 60};	
	[[_veh, "caralarm",10],"life_fnc_playSound",true,false] spawn BIS_fnc_MP;	
	hint "A speed bomb you planted on a vehicle has just become active!";	
	{ 
		[[2,"A speed bomb has been activated on this vehicle and will detonate when your speed drops below 50km/h!"],"life_fnc_broadcast",_x,false] spawn BIS_fnc_MP; 
	} foreach (crew _veh);	
	waitUntil {(speed _veh) < 50};	
	_bigBoom = "Bo_Mk82" createVehicle [0,0,9999];
	_bigBoom setPos (getPos _veh);
	_bigBoom setVelocity [100,0,0];
	hint "A speed bomb you planted on a vehicle has detonated!";
};