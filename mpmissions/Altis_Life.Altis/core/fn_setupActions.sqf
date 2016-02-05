/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do {
	case civilian: {
		// Blow up big boi
		life_actions = life_actions + [player addAction["<t color='#FFCC00'>Blow Up!</t>",life_fnc_suicideVest,"",0,false,false,"",' 
		alive player && vest player == "V_HarnessOGL_gry" && !(player getVariable "restrained") ']];
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction["Rob Person",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 5 && isPlayer cursorTarget && animationState cursorTarget in ["Incapacitated","amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"] && !(cursorTarget getVariable["robbed",FALSE]) ']];
		
		life_actions = life_actions + [player addAction["Punch Balls",life_fnc_punchBallsAction,"",0,false,false,"",'
        !isNull cursorTarget && player distance cursorTarget < 5 && isPlayer cursorTarget && animationState cursorTarget in ["Incapacitated","amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"]']];

        life_actions = life_actions + [player addAction["Restrain",life_fnc_restrainAction,"",0,false,false,"",'
    	!isNull cursorTarget && life_inv_ziptie > 1 && animationState cursorTarget in ["amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon","Acts_InjuredLookingRifle01","incapacitated","Incapacitated","AinjPfalMstpSnonWnonDf_carried_fallwc"] && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 6 && speed cursorTarget < 1 ']];
        
        life_actions = life_actions + [player addAction["Unrestrain",life_fnc_unrestrain,"",0,false,false,"",'
        !isNull cursorTarget && cursorTarget getVariable ["civ_restrained", false] && cursorTarget distance player < 6 && speed cursorTarget < 1 ']];

        life_actions = life_actions + [player addAction["Escort",life_fnc_escortAction,"",0,false,false,"",'
        !isNull cursorTarget && (cursorTarget getVariable ["restrained", false] || cursorTarget getVariable ["civ_restrained", false]) && !(cursorTarget getVariable["Escorting",false]) && cursorTarget distance player < 5 && speed cursorTarget < 1 ']];

		//life_actions = life_actions + [player addAction["Disarm",life_fnc_disarmAction,"",0,false,false,"",'
        //!isNull cursorTarget && (cursorTarget getVariable ["restrained", false] || cursorTarget getVariable ["civ_restrained", false]) && !(cursorTarget getVariable["Escorting",false]) && cursorTarget distance player < 5 && speed cursorTarget < 1 ']];

		life_actions = life_actions + [player addAction["Stop Escorting",life_fnc_stopEscorting,"",0,false,false,"",'
        !isNull cursorTarget && (cursorTarget getVariable["Escorting",false]) && cursorTarget distance player < 5 ']];

		life_actions = life_actions + [player addAction["Pick Up Barrel",life_fnc_interactOil,"",0,false,false,"",'
        !life_holdBarrel && (typeOf cursorTarget) in ["Land_BarrelWater_F","Land_MetalBarrel_F"] && cursorTarget distance player < 5 && speed cursorTarget < 1 && !(cursorTarget getVariable "holding") ']];
	
		life_actions = life_actions + [player addAction["Drop Barrel",life_fnc_interactOil,"",0,false,false,"",'
		life_holdBarrel && speed player < 1']];

		life_actions = life_actions + [player addAction["Pick Up Items",life_fnc_scrollPickup,"",0,false,false,"",'
		!isNull cursorTarget && cursorTarget distance player < 7 && speed cursorTarget < 1 && typeOf cursorTarget in ["Land_BottlePlastic_V1_F","Land_TacticalBacon_F","Land_Can_V3_F","Land_CanisterFuel_F","Land_Can_V3_F","Land_Money_F","Land_Suitcase_F"]']];
	
		//Revive
		life_actions = life_actions + [player addAction["Revive Player",life_fnc_revivePlayer,"",200,false,false,"",'
		!isNull cursorTarget && life_inv_defib >= 1 && !alive cursorTarget && isPlayer cursorTarget && cursorTarget isKindOf "Man" && cursorTarget distance player < 9 ']];
	};

	case west: {
		//CopEnter - Driver Seat 
		life_actions = life_actions + [player addAction["Cop Enter as Driver",life_fnc_copEnter,"driver",200,false,false,"",'
		cursorTarget isKindOf "Car" && cursorTarget distance player < 7 && (locked cursorTarget) !=0 && speed cursorTarget < 1 ']];
		//!isNull cursorTarget && (()||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship"))
		// (locked cursorTarget) != 0 && cursorTarget distance player < 3.5

		//CopEnter - Passenger Seat 
		life_actions = life_actions + [player addAction["Cop Enter as Passenger",life_fnc_copEnter,"passenger",100,false,false,"",'
		cursorTarget isKindOf "Car" && cursorTarget distance player < 7 && (locked cursorTarget) !=0 && speed cursorTarget < 1 ']];
		// !isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5 ']];

		//CopEnter - Exit 
		life_actions = life_actions + [player addAction["Cop Exit Vehicle",life_fnc_copEnter,"exit",100,false,false,"",'
		(vehicle player != player) && (locked(vehicle player)!=0) ']];

        life_actions = life_actions + [player addAction["Restrain",life_fnc_restrainAction,"",0,false,false,"",'
    	!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget != west) && alive cursorTarget && cursorTarget distance player < 6 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1 ']];

        life_actions = life_actions + [player addAction["Unrestrain",life_fnc_unrestrain,"",0,false,false,"",'
        !isNull cursorTarget && (cursorTarget getVariable ["restrained", false] || cursorTarget getVariable ["civ_restrained", false]) && cursorTarget distance player < 5 && speed cursorTarget < 1 ']];

        life_actions = life_actions + [player addAction["Escort",life_fnc_escortAction,"",0,false,false,"",'
        !isNull cursorTarget && (cursorTarget getVariable ["restrained", false] || cursorTarget getVariable ["civ_restrained", false]) && !(cursorTarget getVariable["Escorting",false]) && cursorTarget distance player < 5 && speed cursorTarget < 1 ']];
	
		life_actions = life_actions + [player addAction["Stop Escorting",life_fnc_stopEscorting,"",0,false,false,"",'
        !isNull cursorTarget && (cursorTarget getVariable["Escorting",false]) && cursorTarget distance player < 5 ']];

        //Cop Lights
        life_actions pushBack (player addAction["Emergency Lights ON",{[vehicle player,"life_fnc_copLights",true,false] spawn BIS_fnc_MP;},"",0,false,false,"",' vehicle player != player && ((typeOf vehicle player) in ["I_Quadbike_01_F","C_Offroad_01_F","B_G_Offroad_01_armed_F","C_SUV_01_F","B_MRAP_01_F","C_Hatchback_01_sport_F","I_MRAP_03_F","B_Heli_Light_01_F","B_Heli_Transport_03_unarmed_F","I_Heli_light_03_unarmed_F","O_Heli_Light_02_unarmed_F","B_Heli_Transport_01_F"]) && !isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player) && !(vehicle player getVariable ["lights", false])']);

		life_actions pushBack (player addAction["Emergency Lights OFF",{vehicle player setVariable["lights",false,true];},"",0,false,false,"", ' vehicle player != player && ((typeOf vehicle player) in ["I_Quadbike_01_F","C_Offroad_01_F","C_SUV_01_F","B_MRAP_01_F","C_Hatchback_01_sport_F","I_MRAP_03_F","B_G_Offroad_01_armed_F","B_Heli_Light_01_F","B_Heli_Transport_03_unarmed_F","I_Heli_light_03_unarmed_F","O_Heli_Light_02_unarmed_F","B_Heli_Transport_01_F"]) && !isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player) && (vehicle player getVariable ["lights", false]) ']);

        //Revive
		life_actions = life_actions + [player addAction["Revive Player",life_fnc_revivePlayer,"",200,false,false,"",'
		!isNull cursorTarget && life_inv_defib > 1 && !alive cursorTarget && cursorTarget isKindOf "Man" && cursorTarget distance player < 9 ']];
	
		life_actions = life_actions + [player addAction["Seize Container",life_fnc_interactOrgan,"",0,false,false,"",'
        !isNull cursorTarget && (typeOf cursorTarget) in ["Land_BarrelWater_F","Land_MetalBarrel_F","Land_MetalCase_01_large_F"] && cursorTarget distance player < 5 && speed cursorTarget < 1 && !(cursorTarget getVariable "holding") ']];
	};

	case independent: {
		life_actions = life_actions + [player addAction["Pick Up Organs",life_fnc_interactOrgan,"",0,false,false,"",'
        !life_holdBarrel && (typeOf cursorTarget) in ["Land_MetalCase_01_large_F"] && cursorTarget distance player < 5 && speed cursorTarget < 1 && !(cursorTarget getVariable "holding") ']];
	
		life_actions = life_actions + [player addAction["Drop Organs",life_fnc_interactOrgan,"",0,false,false,"",'
		life_holdBarrel && speed player < 1']];

		//Revive
		life_actions = life_actions + [player addAction["Revive Player",life_fnc_revivePlayer,"",200,false,false,"",'
		!isNull cursorTarget && life_inv_defib > 1 && !alive cursorTarget && cursorTarget isKindOf "Man" && cursorTarget distance player < 9 ']];
	};
};

life_actions pushBack (player addAction["<t color='#0099FF'>Sit Down</t>",{[life_cursorTarget,player] execVM "Chair\sitdown.sqf"},true,1,true,true,"""",'player distance life_cursorTarget < 3 && {([str life_cursorTarget,"bench"] call KRON_StrInStr || [str life_cursorTarget,"chair"] call KRON_StrInStr)} ']);