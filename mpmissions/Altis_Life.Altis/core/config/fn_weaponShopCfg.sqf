#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do {
	case "cop_basic": {
		switch(true) do {
			case (playerSide != west): {"You are not a cop!"};
			default {
				["Altis Cop Shop",
					[]
				];
			};
		};
	};
	
	case "cop_cadet":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (FETCH_CONST(life_coplevel) < 1): {"You are not the Cadet rank!"};
			default
			{
				["Altis Cadet Shop",
					[
						["SMG_02_F","Cadet Gun",5000],
						["30Rnd_9x21_Mag",nil,200],
						["optic_Holosight",nil,9000],
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150]
					]
				];
			};
		};
	};

	case "cop_constable":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (FETCH_CONST(life_coplevel) < 2): {"You are not at a Constable rank!"};
			default
			{
				["Altis Constable weapon Shop",
					[
						["arifle_MX_Black_F",nil,5000],
						["arifle_MXC_Black_F",nil,5000],
						["30Rnd_65x39_caseless_mag_Tracer",nil,500],
						["optic_Arco",nil,50],
						["optic_MRCO",nil,500],
						["optic_Hamr",nil,500],
						["optic_Aco",nil,500],
						["optic_Holosight",nil,500],
						["ItemGPS",nil,500],
						["Binocular",nil,500],
						["ToolKit",nil,500],
						["FirstAidKit",nil,500]					]
				];
			};
		};
	};

	case "cop_corporal":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (FETCH_CONST(life_coplevel) < 3): {"You are not the Corporal rank!"};
			default
			{
				["Altis Corporal weapon Shop",
					[
						["arifle_MX_Black_F",nil,5000],
						["arifle_MXC_Black_F",nil,5000],
						["30Rnd_65x39_caseless_mag_Tracer",nil,500],
						["optic_Arco",nil,50],
						["optic_MRCO",nil,500],
						["optic_Hamr",nil,500],
						["optic_DMS",nil,500],
						["optic_Aco",nil,500],
						["optic_Holosight",nil,500],
						["smokeshellyellow","TearGas",2000],
						["ItemGPS",nil,500],
						["Binocular",nil,500],
						["ToolKit",nil,500],
						["FirstAidKit",nil,500]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (FETCH_CONST(life_coplevel) < 4): {"You are not the Sergeant rank!"};
			default
			{
				["Altis Sergeant weapon Shop",
					[
						["arifle_MX_Black_F",nil,5000],
						["arifle_MXC_Black_F",nil,5000],
						["30Rnd_65x39_caseless_mag_Tracer",nil,500],
						["optic_Arco",nil,50],
						["optic_MRCO",nil,500],
						["optic_Hamr",nil,500],
						["optic_DMS",nil,500],
						["optic_Aco",nil,500],
						["optic_NVS",nil,500],
						["optic_SOS",nil,500],
						["optic_AMS",nil,500],
						["optic_Holosight",nil,500],
						["bipod_02_F_blk",nil,500],
						["smokeshellyellow","TearGas",2000],
						["ItemGPS",nil,500],
						["Binocular",nil,500],
						["ToolKit",nil,500],
						["FirstAidKit",nil,500]
					]
				];
			};
		};
	};

	case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (FETCH_CONST(life_coplevel) < 5): {"You are not the Lieutenant rank!"};
			default
			{
				["Altis Lieutenant weapon Shop",
					[
						["arifle_MXM_Black_F",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer",nil,500],
						["optic_Arco",nil,50],
						["optic_MRCO",nil,500],
						["optic_Hamr",nil,500],
						["optic_DMS",nil,500],
						["optic_Aco",nil,500],
						["optic_NVS",nil,500],
						["optic_SOS",nil,500],
						["optic_AMS",nil,500],
						["optic_Holosight",nil,500],
						["bipod_02_F_blk",nil,500],
						["smokeshellyellow","TearGas",2000],
						["ItemGPS",nil,500],
						["Binocular",nil,500],
						["ToolKit",nil,500],
						["FirstAidKit",nil,500]
					]
				];
			};
		};
	};

	case "cop_captain":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (FETCH_CONST(life_coplevel) < 6): {"You are not the Captain rank!"};
			default
			{
				["Altis Captain weapon Shop",
					[
						["arifle_MXM_Black_F",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer",nil,500],
						["optic_Arco",nil,50],
						["optic_MRCO",nil,500],
						["optic_Hamr",nil,500],
						["optic_DMS",nil,500],
						["optic_Aco",nil,500],
						["optic_NVS",nil,500],
						["optic_SOS",nil,500],
						["optic_AMS",nil,500],
						["optic_Holosight",nil,500],
						["bipod_02_F_blk",nil,500],
						["smokeshellyellow","TearGas",2000],
						["ItemGPS",nil,500],
						["Binocular",nil,500],
						["ToolKit",nil,500],
						["FirstAidKit",nil,500]
					]
				];
			};
		};
	};

	case "cop_chief":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (FETCH_CONST(life_coplevel) < 7): {"You are not the Chief rank!"};
			default
			{
				["Altis Chief shop",
					[
						["arifle_MXM_Black_F",nil,500],
						["30Rnd_65x39_caseless_mag_Tracer",nil,500],
						["optic_Arco",nil,50],
						["optic_MRCO",nil,500],
						["optic_Hamr",nil,500],
						["optic_DMS",nil,500],
						["optic_Aco",nil,500],
						["optic_NVS",nil,500],
						["optic_SOS",nil,500],
						["optic_AMS",nil,500],
						["optic_Holosight",nil,500],
						["bipod_02_F_blk",nil,500],
						["smokeshellyellow","TearGas",2000],
						["ItemGPS",nil,500],
						["Binocular",nil,500],
						["ToolKit",nil,500],
						["FirstAidKit",nil,500]
					]
				];
			};
		};
	};

	case "med_basic": {
		switch (true) do {
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["srifle_DMR_05_tan_f",nil,1000000],
						["10Rnd_93x64_DMR_05_Mag",nil,20000],
						["srifle_EBR_F",nil,600000],
						["srifle_DMR_03_tan_F",nil,600000],
						["srifle_DMR_06_camo_F",nil,500000],
						["20Rnd_762x51_Mag",nil,10000],
						["srifle_DMR_01_F",nil,350000],
						["10Rnd_762x54_Mag",nil,3000],
						["arifle_Katiba_F",nil,150000],
						["arifle_Katiba_C_F",nil,100000],
						["30Rnd_65x39_caseless_green",nil,1200],
						["arifle_MXM_F",nil,250000],
						["arifle_MX_F",nil,150000],
						["arifle_MXC_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,1200],
						["SMG_01_F",nil,100000],
						["30Rnd_45ACP_Mag_SMG_01",nil,750],
						["arifle_TRG21_F",nil,50000],
						["arifle_Mk20_F",nil,50000],
						["30Rnd_556x45_Stanag",nil,750],
						["arifle_SDAR_F",nil,30000],
						["30Rnd_556x45_Stanag",nil,750],
						["20Rnd_556x45_UW_mag",nil,1000],
						["hgun_PDW2000_F",nil,25000],
						["hgun_ACPC2_F",nil,5000],
						["hgun_Rook40_F",nil,5000],
						["hgun_Pistol_heavy_02_F",nil,9000],
						["30Rnd_9x21_Mag",nil,750],
						["16Rnd_9x21_Mag",nil,300],
						["9Rnd_45ACP_Mag",nil,300],
						["6Rnd_45ACP_Cylinder",nil,300],
						["optic_Arco",nil,15000],
						["optic_MRCO",nil,15000],
						["optic_DMS",nil,25000],
						["optic_AMS",nil,25000],
						["optic_Aco",nil,15000],
						["optic_Holosight",nil,9000],
						["optic_Hamr",nil,15000],
						["optic_NVS",nil,25000],
						["optic_SOS",nil,28000],
						["muzzle_snds_H",nil,150000],
						["muzzle_snds_M",nil,100000],
						["muzzle_snds_L",nil,50000],
						["bipod_01_F_snd",nil,75000],
						["bipod_02_F_blk",nil,75000],
						["smokeshell",nil,5000],
						["smokeshellgreen",nil,5000],
						["smokeshellred",nil,5000],
						["smokeshellpurple",nil,5000],
						["smokeshellorange",nil,5000],
						["smokeshellblue",nil,5000],
						["ItemGPS",nil,500],
						["Binocular",nil,500],
						["ToolKit",nil,20000],
						["FirstAidKit",nil,500]
				    ]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,20000],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
