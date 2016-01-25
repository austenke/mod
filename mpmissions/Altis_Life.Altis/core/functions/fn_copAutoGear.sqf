#include <macro.h>
/*
	File: copAutoGear.sqf
	Author: Jason_000
	
	Description:
	Sets cop loadout gear with scroll option
*/
if (playerSide == independent) exitWith {hint "You must be a cop to purchase this!"};  //cops only
if (playerSide == civilian) exitWith {hint "You must be a cop to purchase this!"};  //cops only

/*Cadet*/
if ((life_cash > 29999) && (FETCH_CONST(life_coplevel) == 1)) then //cost = $30,000
{
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
	sleep 10;
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
//
	hintSilent "You are all kitted up and ready to stop crime, good luck officer!";
}
else
{
 hintSilent "Sorry you do not have $30,000 for this loadout";
};

///////////////////////////////////////////////////////////////////////////////////////////////////

/*Constable*/
if ((life_cash > 34999) && (FETCH_CONST(life_coplevel) == 2)) then //cost = $35,000
{
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
	sleep 10;
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
//
	hintSilent "You are all kitted up and ready to stop crime, good luck officer!";
}
else
{
 hintSilent "Sorry you do not have $35,000 for this loadout";
};

//////////////////////////////////////////////////////////////////////////////////////////////////

/*Corporal*/
if ((life_cash > 34999) && (FETCH_CONST(life_coplevel) == 3)) then //cost = $35,000
{
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
	sleep 10;
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
//
	hintSilent "You are all kitted up and ready to stop crime, good luck officer!";
}
else
{
 hintSilent "Sorry you do not have $35,000 for this loadout";
};

//////////////////////////////////////////////////////////////////////////////////////////////////

/*Sergeant*/
if ((life_cash > 39999) && (FETCH_CONST(life_coplevel) == 4)) then //cost = $40,000
{
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
	sleep 10;
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
//
	hintSilent "You are all kitted up and ready to stop crime, good luck officer!";
}
else
{
 hintSilent "Sorry you do not have $40,000 for this loadout";
};

//////////////////////////////////////////////////////////////////////////////////////////////////

/*Lieutenant*/
if ((life_cash > 44999) && (FETCH_CONST(life_coplevel) == 5)) then //cost = $45,000
{
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
	sleep 10;
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
//
	hintSilent "You are all kitted up and ready to stop crime, good luck officer!";
}
else
{
 hintSilent "Sorry you do not have $45,000 for this loadout";
};

//////////////////////////////////////////////////////////////////////////////////////////////////

/*Captain*/
if ((life_cash > 44999) && (FETCH_CONST(life_coplevel) == 6)) then //cost = $45,000
{
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
	sleep 10;
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
//
	hintSilent "You are all kitted up and ready to stop crime, good luck officer!";
}
else
{
 hintSilent "Sorry you do not have $45,000 for this loadout";
};

//////////////////////////////////////////////////////////////////////////////////////////////////

/*Cheif Of Police*/
if ((life_cash > 44999) && (FETCH_CONST(life_coplevel) == 7)) then //cost = $45,000
{
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
	sleep 10;
	//Weapons & Clothes
	player addUniform "U_B_CombatUniform_mcam";
	player addVest "V_PlateCarrierGL_rgr";
	player addBackpack "B_Kitbag_mcamo";
	player addHeadGear "H_Cap_police";
	player addWeapon "srifle_DMR_03_ARCO_F";
	player addMagazine "20Rnd_762x51_Mag";
	player addMagazine "20Rnd_762x51_Mag";
	player addMagazine "20Rnd_762x51_Mag";
	player addMagazine "20Rnd_762x51_Mag";
	player addMagazine "20Rnd_762x51_Mag";
	player addMagazine "20Rnd_762x51_Mag";
	player addMagazine "20Rnd_762x51_Mag";
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
//
	hintSilent "You are all kitted up and ready to stop crime, good luck officer!";
}
else
{
 hintSilent "Sorry you do not have $45,000 for this loadout";
};