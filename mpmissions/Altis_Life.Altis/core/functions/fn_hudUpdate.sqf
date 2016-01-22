#include <macro.h>
#define IDC_LIFE_BAR_FOOD 2200
#define IDC_LIFE_BAR_WATER 2201
#define IDC_LIFE_BAR_HEALTH 2202
#define IDC_LIFE_FOOD_TEXT 1000
#define IDC_LIFE_WATER_TEXT 1001
#define IDC_LIFE_HEALTH_TEXT 1002

#define LIFEdisplay (GVAR_UINS ["playerHUD",displayNull])
#define LIFEctrl(ctrl) ((GVAR_UINS ["playerHUD",displayNull]) displayCtrl ctrl)
/*
	File: fn_hudUpdate.sqf
	Author: Dillon "Itsyuka" Modine-Thuen

	Description:
	Updates the HUD when it needs to.
*/
disableSerialization;

_bounty = life_bounty;
if(life_bounty / 1000000 >= 1) then {
	_bounty = format["%1m",life_bounty / 1000000];
};

if(isNull LIFEdisplay) then {[] call life_fnc_hudSetup;};
LIFEctrl(IDC_LIFE_BAR_FOOD) progressSetPosition (1 / (100 / life_hunger));
LIFEctrl(IDC_LIFE_BAR_WATER) progressSetPosition (1 / (100 / life_thirst));
LIFEctrl(IDC_LIFE_BAR_HEALTH) progressSetPosition (.5);
LIFEctrl(IDC_LIFE_BAR_HEALTH) progressSetPosition (1);

LIFEctrl(IDC_LIFE_FOOD_TEXT) ctrlsetText format["%1", life_hunger];
LIFEctrl(IDC_LIFE_WATER_TEXT) ctrlsetText format["%1", life_thirst];
LIFEctrl(IDC_LIFE_HEALTH_TEXT) ctrlsetText format["%1", round((1 - (damage player)) * 100)];
LIFEctrl(1003) ctrlsetText format["$%1", _bounty];