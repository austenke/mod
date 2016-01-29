#include <macro.h>
/*
	File: copAutoGear.sqf
	Author: Jason_000
	Modified by: Valiant
	
	Description:
	Sets cop loadout gear with scroll option
*/

_Proc = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if (playerSide == independent) exitWith {hint "You must be a cop to purchase this!"};  //cops only
if (playerSide == civilian) exitWith {hint "You must be a cop to purchase this!"};  //cops only

/*Cadet*/
if ((life_cash > 29999) && (FETCH_CONST(life_coplevel) == 1))  then //cost = $30,000
{

if (FETCH_CONST(life_coplevel) < 1) exitWith {};

	life_cash = life_cash - 30000;  //30k
	hintSilent "$30,000 has been removed for this kit";
	sleep 1;
	hintSilent "Please wait while your kit is being assembled, this may take a while";
	//Removes all items the player has (Not Y Menu)
	RemoveAllWeapons player;
	{ player removeMagazine _x; } forEach (magazines player);
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadGear player;

	_upp = localize "STR_Process_Cop_Gear";

	//Setup our progress bar.
	disableSerialization;
	5 cutRsc ["life_progress","PLAIN"];
	_ui = GVAR_UINS "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
	_progress progressSetPosition 0.01;
	_cP = 0.01;

	life_is_processing = true;

	while{true} do {
		sleep  0.5;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _Proc > 10) exitWith {};
};
	
if(player distance _Proc > 10) exitWith {hint localize "STR_Process_Gear_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};

	//Weapons & Clothes
	player addUniform "U_Marshal";
	player addVest "V_Rangemaster_belt";
	player addBackpack "B_Kitbag_mcamo";
	player addHeadGear "H_Cap_police";
	player addWeapon "SMG_02_F";
	player addMagazine "30Rnd_9x21_Mag";
	player addMagazine "30Rnd_9x21_Mag";
	player addMagazine "30Rnd_9x21_Mag";
	player addMagazine "30Rnd_9x21_Mag";
	player addMagazine "30Rnd_9x21_Mag";
	player addMagazine "30Rnd_9x21_Mag";
	player addWeapon "hgun_P07_snds_F";
	player addMagazine "16Rnd_9x21_Mag";
	player addMagazine "16Rnd_9x21_Mag";
	player addItem "NVGoggles_OPFOR";
	player assignItem "NVGoggles_OPFOR";
	//Virtual items
	player addItem "redgull";
	player assignItem "redgull";
	player addItem "tbacon";
	player assignItem "tbacon";

	hintSilent "You are all kitted up and ready to stop crime, good luck officer!";
	5 cutText ["","PLAIN"];
	life_is_processing = false;
}
else
{
 hintSilent "Sorry you do not have $30,000 for this loadout";
};

///////////////////////////////////////////////////////////////////////////////////////////////////

/*Constable*/
if ((life_cash > 34999) && (FETCH_CONST(life_coplevel) == 2)) then //cost = $35,000
{

if (FETCH_CONST(life_coplevel) < 2) exitWith {};

	life_cash = life_cash - 35000;  //35k
	hintSilent "$35,000 has been removed for this kit";
	sleep 1;
	hintSilent "Please wait while your kit is being assembled, this may take a while";
	//Removes all items the player has (Not Y Menu)
	RemoveAllWeapons player;
	{ player removeMagazine _x; } forEach (magazines player);
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadGear player;

	_upp = localize "STR_Process_Cop_Gear";

	//Setup our progress bar.
	disableSerialization;
	5 cutRsc ["life_progress","PLAIN"];
	_ui = GVAR_UINS "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
	_progress progressSetPosition 0.01;
	_cP = 0.01;

	life_is_processing = true;

	while{true} do {
		sleep  0.5;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _Proc > 10) exitWith {};
};
	
if(player distance _Proc > 10) exitWith {hint localize "STR_Process_Gear_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};

	//Weapons & Clothes
	player addUniform "U_Rangemaster";
	player addVest "V_TacVest_blk";
	player addBackpack "B_Kitbag_mcamo";
	player addHeadGear "H_Cap_police";
	player addWeapon "arifle_Mk20_F";
	player addMagazine "30Rnd_556x45_Stanag_Tracer_Red";
	player addMagazine "30Rnd_556x45_Stanag_Tracer_Red";
	player addMagazine "30Rnd_556x45_Stanag_Tracer_Red";
	player addMagazine "30Rnd_556x45_Stanag_Tracer_Red";
	player addMagazine "30Rnd_556x45_Stanag_Tracer_Red";
	player addMagazine "30Rnd_556x45_Stanag";
	player addMagazine "30Rnd_556x45_Stanag";
	player addWeapon "hgun_P07_snds_F";
	player addMagazine "16Rnd_9x21_Mag";
	player addMagazine "16Rnd_9x21_Mag";
	player addItem "NVGoggles_OPFOR";
	player assignItem "NVGoggles_OPFOR";
	//Virtual items
	player addItem "redgull";
	player assignItem "redgull";
	player addItem "tbacon";
	player assignItem "tbacon";

	hintSilent "You are all kitted up and ready to stop crime, good luck officer!";
	5 cutText ["","PLAIN"];
	life_is_processing = false;
}
else
{
 hintSilent "Sorry you do not have $35,000 for this loadout";
};

//////////////////////////////////////////////////////////////////////////////////////////////////

/*Corporal*/
if ((life_cash > 34999) && (FETCH_CONST(life_coplevel) == 3)) then //cost = $35,000
{
	
if (FETCH_CONST(life_coplevel) < 3) exitWith {};

	life_cash = life_cash - 35000;  //35k
	hintSilent "$35,000 has been removed for this kit";
	sleep 1;
	hintSilent "Please wait while your kit is being assembled, this may take a while";
	//Removes all items the player has (Not Y Menu)
	RemoveAllWeapons player;
	{ player removeMagazine _x; } forEach (magazines player);
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadGear player;

	_upp = localize "STR_Process_Cop_Gear";

	//Setup our progress bar.
	disableSerialization;
	5 cutRsc ["life_progress","PLAIN"];
	_ui = GVAR_UINS "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
	_progress progressSetPosition 0.01;
	_cP = 0.01;

	life_is_processing = true;

	while{true} do {
		sleep  0.5;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _Proc > 10) exitWith {};
};
	
if(player distance _Proc > 10) exitWith {hint localize "STR_Process_Gear_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};

	//Weapons & Clothes
	player addUniform "U_Rangemaster";
	player addVest "V_TacVest_blk_POLICE";
	player addBackpack "B_Kitbag_mcamo";
	player addHeadGear "H_Cap_police";
	player addWeapon "arifle_Katiba_F";
	player addMagazine "30Rnd_65x39_caseless_green_mag_Tracer";
	player addMagazine "30Rnd_65x39_caseless_green_mag_Tracer";
	player addMagazine "30Rnd_65x39_caseless_green_mag_Tracer";
	player addMagazine "30Rnd_65x39_caseless_green_mag_Tracer";
	player addMagazine "30Rnd_65x39_caseless_green_mag_Tracer";
	player addMagazine "30Rnd_65x39_caseless_green";
	player addMagazine "30Rnd_65x39_caseless_green";
	player addWeapon "hgun_P07_snds_F";
	player addMagazine "16Rnd_9x21_Mag";
	player addMagazine "16Rnd_9x21_Mag";
	player addItem "NVGoggles_OPFOR";
	player assignItem "NVGoggles_OPFOR";
	//Virtual items
	player addItem "redgull";
	player assignItem "redgull";
	player addItem "tbacon";
	player assignItem "tbacon";

	hintSilent "You are all kitted up and ready to stop crime, good luck officer!";
	5 cutText ["","PLAIN"];
	life_is_processing = false;
}
else
{
 hintSilent "Sorry you do not have $35,000 for this loadout";
};

//////////////////////////////////////////////////////////////////////////////////////////////////

/*Sergeant*/
if ((life_cash > 39999) && (FETCH_CONST(life_coplevel) == 4)) then //cost = $40,000
{
	
if (FETCH_CONST(life_coplevel) < 4) exitWith {};

	life_cash = life_cash - 40000;  //40k
	hintSilent "$40,000 has been removed for this kit";
	sleep 1;
	hintSilent "Please wait while your kit is being assembled, this may take a while";
	//Removes all items the player has (Not Y Menu)
	RemoveAllWeapons player;
	{ player removeMagazine _x; } forEach (magazines player);
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadGear player;

	_upp = localize "STR_Process_Cop_Gear";

	//Setup our progress bar.
	disableSerialization;
	5 cutRsc ["life_progress","PLAIN"];
	_ui = GVAR_UINS "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
	_progress progressSetPosition 0.01;
	_cP = 0.01;

	life_is_processing = true;

	while{true} do {
		sleep  0.5;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _Proc > 10) exitWith {};
};
	
if(player distance _Proc > 10) exitWith {hint localize "STR_Process_Gear_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};

	//Weapons & Clothes
	player addUniform "U_Rangemaster";
	player addVest "V_PlateCarrier1_blk";
	player addBackpack "B_Kitbag_mcamo";
	player addHeadGear "H_Cap_police";
	player addWeapon "arifle_MX_SW_F";
	player addMagazine "100Rnd_65x39_caseless_mag_Tracer";
	player addMagazine "100Rnd_65x39_caseless_mag_Tracer";
	player addMagazine "100Rnd_65x39_caseless_mag_Tracer";
	player addMagazine "100Rnd_65x39_caseless_mag_Tracer";
	player addMagazine "100Rnd_65x39_caseless_mag_Tracer";
	player addMagazine "100Rnd_65x39_caseless_mag";
	player addMagazine "100Rnd_65x39_caseless_mag";
	player addWeapon "hgun_P07_snds_F";
	player addMagazine "16Rnd_9x21_Mag";
	player addMagazine "16Rnd_9x21_Mag";
	player addItem "NVGoggles_OPFOR";
	player assignItem "NVGoggles_OPFOR";
	//Virtual items
	player addItem "redgull";
	player assignItem "redgull";
	player addItem "tbacon";
	player assignItem "tbacon";

	hintSilent "You are all kitted up and ready to stop crime, good luck officer!";
	5 cutText ["","PLAIN"];
	life_is_processing = false;
}
else
{
 hintSilent "Sorry you do not have $40,000 for this loadout";
};

//////////////////////////////////////////////////////////////////////////////////////////////////

/*Lieutenant*/
if ((life_cash > 44999) && (FETCH_CONST(life_coplevel) == 5)) then //cost = $45,000
{

if (FETCH_CONST(life_coplevel) < 5) exitWith {};

	life_cash = life_cash - 45000;  //45k
	hintSilent "$45,000 has been removed for this kit";
	sleep 1;
	hintSilent "Please wait while your kit is being assembled, this may take a while";
	//Removes all items the player has (Not Y Menu)
	RemoveAllWeapons player;
	{ player removeMagazine _x; } forEach (magazines player);
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadGear player;

	_upp = localize "STR_Process_Cop_Gear";

	//Setup our progress bar.
	disableSerialization;
	5 cutRsc ["life_progress","PLAIN"];
	_ui = GVAR_UINS "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
	_progress progressSetPosition 0.01;
	_cP = 0.01;

	life_is_processing = true;

	while{true} do {
		sleep  0.5;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _Proc > 10) exitWith {};
};
	
if(player distance _Proc > 10) exitWith {hint localize "STR_Process_Gear_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};

	//Weapons & Clothes
	player addUniform "U_Rangemaster";
	player addVest "V_PlateCarrierSpec_blk";
	player addBackpack "B_Kitbag_mcamo";
	player addHeadGear "H_Cap_police";
	player addWeapon "arifle_MXM_Black_F";
	player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
	player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
	player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
	player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
	player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
	player addMagazine "30Rnd_65x39_caseless_mag";
	player addMagazine "30Rnd_65x39_caseless_mag";
	player addWeapon "hgun_P07_snds_F";
	player addMagazine "16Rnd_9x21_Mag";
	player addMagazine "16Rnd_9x21_Mag";
	player addItem "NVGoggles_OPFOR";
	player assignItem "NVGoggles_OPFOR";
	//Virtual items
	player addItem "redgull";
	player assignItem "redgull";
	player addItem "tbacon";
	player assignItem "tbacon";

	hintSilent "You are all kitted up and ready to stop crime, good luck officer!";
	5 cutText ["","PLAIN"];
	life_is_processing = false;
}
else
{
 hintSilent "Sorry you do not have $45,000 for this loadout";
};

//////////////////////////////////////////////////////////////////////////////////////////////////

/*Captain*/
if ((life_cash > 44999) && (FETCH_CONST(life_coplevel) == 6)) then //cost = $45,000
{

if (FETCH_CONST(life_coplevel) < 6) exitWith {};

	life_cash = life_cash - 45000;  //45k
	hintSilent "$45,000 has been removed for this kit";
	sleep 1;
	hintSilent "Please wait while your kit is being assembled, this may take a while";
	//Removes all items the player has (Not Y Menu)
	RemoveAllWeapons player;
	{ player removeMagazine _x; } forEach (magazines player);
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadGear player;

	_upp = localize "STR_Process_Cop_Gear";

	//Setup our progress bar.
	disableSerialization;
	5 cutRsc ["life_progress","PLAIN"];
	_ui = GVAR_UINS "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
	_progress progressSetPosition 0.01;
	_cP = 0.01;

	life_is_processing = true;

	while{true} do {
		sleep  0.5;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _Proc > 10) exitWith {};
};
	
if(player distance _Proc > 10) exitWith {hint localize "STR_Process_Gear_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};

	//Weapons & Clothes
	player addUniform "U_B_CombatUniform_mcam";
	player addVest "V_PlateCarrierGL_rgr";
	player addBackpack "B_Kitbag_mcamo";
	player addHeadGear "H_Cap_police";
	player addWeapon "arifle_MXM_Black_F";
	player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
	player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
	player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
	player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
	player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
	player addMagazine "30Rnd_65x39_caseless_mag";
	player addMagazine "30Rnd_65x39_caseless_mag";
	player addWeapon "hgun_P07_snds_F";
	player addMagazine "16Rnd_9x21_Mag";
	player addMagazine "16Rnd_9x21_Mag";
	player addItem "NVGoggles_OPFOR";
	player assignItem "NVGoggles_OPFOR";
	player addItem "bipod_02_F_blk";
	player assignItem "bipod_02_F_blk";
	//Virtual items
	player addItem "redgull";
	player assignItem "redgull";
	player addItem "tbacon";
	player assignItem "tbacon";

	hintSilent "You are all kitted up and ready to stop crime, good luck officer!";
	5 cutText ["","PLAIN"];
	life_is_processing = false;
}
else
{
 hintSilent "Sorry you do not have $45,000 for this loadout";
};

//////////////////////////////////////////////////////////////////////////////////////////////////

/*Cheif Of Police*/
if ((life_cash > 44999) && (FETCH_CONST(life_coplevel) == 7)) then //cost = $45,000
{
	
if (FETCH_CONST(life_coplevel) < 7) exitWith {};

	life_cash = life_cash - 45000;  //45k
	hintSilent "$45,000 has been removed for this kit";
	sleep 1;
	hintSilent "Please wait while your kit is being assembled, this may take a while";
	//Removes all items the player has (Not Y Menu)
	RemoveAllWeapons player;
	{ player removeMagazine _x; } forEach (magazines player);
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadGear player;

	_upp = localize "STR_Process_Cop_Gear";

	//Setup our progress bar.
	disableSerialization;
	5 cutRsc ["life_progress","PLAIN"];
	_ui = GVAR_UINS "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
	_progress progressSetPosition 0.01;
	_cP = 0.01;

	life_is_processing = true;

	while{true} do {
		sleep  0.5;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _Proc > 10) exitWith {};
};
	
if(player distance _Proc > 10) exitWith {hint localize "STR_Process_Gear_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};

	//Weapons & Clothes
	player addUniform "U_B_CombatUniform_mcam";
	player addVest "V_PlateCarrierGL_rgr";
	player addBackpack "B_Kitbag_mcamo";
	player addHeadGear "H_Cap_police";
	player addWeapon "arifle_MXM_Black_F";
	player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
	player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
	player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
	player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
	player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
	player addMagazine "30Rnd_65x39_caseless_mag";
	player addMagazine "30Rnd_65x39_caseless_mag";
	player addWeapon "hgun_P07_snds_F";
	player addMagazine "16Rnd_9x21_Mag";
	player addMagazine "16Rnd_9x21_Mag";
	player addItem "NVGoggles_OPFOR";
	player assignItem "NVGoggles_OPFOR";
	player addItem "bipod_02_F_blk";
	player assignItem "bipod_02_F_blk";
	//Virtual items
	player addItem "redgull";
	player assignItem "redgull";
	player addItem "tbacon";
	player assignItem "tbacon";

	hintSilent "You are all kitted up and ready to stop crime, good luck officer!";
	5 cutText ["","PLAIN"];
	life_is_processing = false;
}
else
{
 hintSilent "Sorry you do not have $45,000 for this loadout";
};