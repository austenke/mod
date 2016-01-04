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
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget in ["Incapacitated","amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"] && !(cursorTarget getVariable["robbed",FALSE]) ']];
		life_actions = life_actions + [player addAction["Punch Balls",life_fnc_punchBallsAction,"",0,false,false,"",'
        !isNull cursorTarget && player distance cursorTarget < 5 && isPlayer cursorTarget && animationState cursorTarget in ["Incapacitated","amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"]']];

        life_actions = life_actions + [player addAction["Restrain",life_fnc_restrainAction,"",0,false,false,"",'
    	life_inv_ziptie > 1 && animationState cursorTarget == "Incapacitated" && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && speed cursorTarget < 1 ']];
        
        life_actions = life_actions + [player addAction["Unrestrain",life_fnc_unrestrain,"",0,false,false,"",'
        (currentWeapon player) in [RIFLE,LAUNCHER,PISTOL] && cursorTarget GVAR ["restrained",false] && cursorTarget distance player < 3.5 && speed cursorTarget < 1 ']];

        life_actions = life_actions + [player addAction["Escort",life_fnc_escortAction,"",0,false,false,"",'
        (currentWeapon player) in [RIFLE,LAUNCHER,PISTOL] && cursorTarget GVAR ["restrained",false] && cursorTarget distance player < 3.5 && speed cursorTarget < 1 ']];
	}
	case west: {
		//CopEnter - Driver Seat 
		life_actions = life_actions + [player addAction[localize "Cop Enter as Driver",life_fnc_copEnter,"driver",200,false,false,"",'
		!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];

		//CopEnter - Passenger Seat 
		life_actions = life_actions + [player addAction[localize "Cop Enter as Passenger",life_fnc_copEnter,"passenger",100,false,false,"",'
		!isNull cursorTarget && ((cursorTarget isKindOf "Car") && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];

		//CopEnter - Exit 
		life_actions = life_actions + [player addAction[localize "Cop Exit Vehicle",life_fnc_copEnter,"exit",100,false,false,"",'
		(vehicle player != player) && (locked(vehicle player)!=0)']];

	};
};