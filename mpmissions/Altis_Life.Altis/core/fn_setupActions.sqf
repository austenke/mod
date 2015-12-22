/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do {
	case civilian: {
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction["Rob Person",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget in ["Incapacitated","amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"] && !(cursorTarget getVariable["robbed",FALSE]) ']];
		life_actions = life_actions + [player addAction["Punch Balls",life_fnc_punchBallsAction,"",0,false,false,"",'
        !isNull cursorTarget && player distance cursorTarget < 5 && isPlayer cursorTarget && animationState cursorTarget in ["Incapacitated","amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"]']];
        //GagKit Player
		life_actions = [player addAction["<t color='#800000'>Gag Player</t>",life_fnc_gagAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (cursorTarget getVariable["restrained",FALSE]) && !(cursorTarget GVAR["gagged",FALSE]) && life_inv_gagkit > 0']];

		//Remove Gag from player.
		life_actions = [player addAction["<t color='#800000'>Remove Gag</t>",life_fnc_removeGagAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (cursorTarget getVariable["restrained",FALSE]) && (cursorTarget GVAR["gagged",FALSE])']];

		_money = "Land_Money_F";
		_miscItems = ["Land_BottlePlastic_V1_F","Land_TacticalBacon_F","Land_Can_V3_F","Land_CanisterFuel_F","Land_Suitcase_F"];

		//Pick up items
		life_actions = [player addAction["<t color='#800000'>Pick Up Items</t>",life_fnc_pickupAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && (((typeOf _curTarget) in _miscItems) || (EQUAL((typeOf _curTarget),_money)))']];
	};
};

case cop:
{
        //GagKit Player
	life_actions = [player addAction["<t color='#800000'>Gag Player</t>",life_fnc_gagAction,"",0,false,false,"",'
	!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (cursorTarget getVariable["restrained",FALSE]) && !(cursorTarget GVAR["gagged",FALSE]) && life_inv_gagkit > 0']];

        //Remove Gag from player.
	life_actions = [player addAction["<t color='#800000'>Remove Gag</t>",life_fnc_removeGagAction,"",0,false,false,"",'
	!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (cursorTarget getVariable["restrained",FALSE]) && (cursorTarget GVAR["gagged",FALSE])']];
};