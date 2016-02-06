/*
	ARRAY FORMAT:
		0: STRING (Classname)
		1: STRING (Display Name, leave as "" for default)
		2: SCALAR (Price)
		4: ARRAY (This is for limiting items to certain things)
			0: Variable to read from
			1: Variable Value Type
			2: What to compare to
*/
class Clothing {
	class bruce {
		title = "STR_Shops_C_Bruce";
		license = "";
		side = "civ";

		uniforms[] = {
			{ "U_C_Poloshirt_blue", "Poloshirt Blue", 250, { "", "", -1 } },
			{ "U_C_Poloshirt_burgundy", "Poloshirt Burgundy", 275, { "", "", -1 } },
			{ "U_C_Poloshirt_redwhite", "Poloshirt Red/White", 150, { "", "", -1 } },
			{ "U_C_Poloshirt_salmon", "Poloshirt Salmon", 175, { "", "", -1 } },
			{ "U_C_Poloshirt_stripped", "Poloshirt stripped", 125, { "", "", -1 } },
			{ "U_C_Poloshirt_tricolour", "Poloshirt Tricolor", 350, { "", "", -1 } },
			{ "U_C_Poor_2", "Rag tagged clothes", 250, { "", "", -1 } },
			{ "U_IG_Guerilla2_2", "Green stripped shirt & Pants", 650, { "", "", -1 } },
			{ "U_IG_Guerilla3_1", "Brown Jacket & Pants", 735, { "", "", -1 } },
			{ "U_IG_Guerilla2_3", "The Outback Rangler", 1200, { "", "", -1 } },
			{ "U_C_HunterBody_grn", "The Hunters Look", 1500, { "", "", -1 } },
			{ "U_OrestesBody", "Surfing On Land", 1100, { "", "", -1 } },
			{ "U_NikosAgedBody", "Casual Wears", 5000, { "", "", -1 } }
		};

		headgear[] = {
			{ "H_Bandanna_camo", "Camo Bandanna", 120, { "", "", -1 } },
			{ "H_Bandanna_surfer", "Surfer Bandanna", 130, { "", "", -1 } },
			{ "H_Bandanna_gry", "Grey Bandanna", 150, { "", "", -1 } },
			{ "H_Bandanna_cbr", "", 165, { "", "", -1 } },
			{ "H_Bandanna_surfer", "", 135, { "", "", -1 } },
			{ "H_Bandanna_khk", "Khaki Bandanna", 145, { "", "", -1 } },
			{ "H_Bandanna_sgg", "Sage Bandanna", 160, { "", "", -1 } },
			{ "H_StrawHat", "Straw Fedora", 225, { "", "", -1 } },
			{ "H_BandMask_blk", "Hat & Bandanna", 300, { "", "", -1 } },
			{ "H_Booniehat_tan", "", 425, { "", "", -1 } },
			{ "H_Hat_blue", "", 310, { "", "", -1 } },
			{ "H_Hat_brown", "", 276, { "", "", -1 } },
			{ "H_Hat_checker", "", 340, { "", "", -1 } },
			{ "H_Hat_grey", "", 280, { "", "", -1 } },
			{ "H_Hat_tan", "", 265, { "", "", -1 } },
			{ "H_Cap_blu", "", 150, { "", "", -1 } },
			{ "H_Cap_grn", "", 150, { "", "", -1 } },
			{ "H_Cap_grn_BI", "", 150, { "", "", -1 } },
			{ "H_Cap_oli", "", 150, { "", "", -1 } },
			{ "H_Cap_red", "", 150, { "", "", -1 } },
			{ "H_Cap_tan", "", 150, { "", "", -1 } }
		};

		goggles[] = {
			{ "G_Spectacles", "", 200, { "", "", -1 } },
			{ "G_Spectacles_Tinted", "", 200, { "", "", -1 } },
			{ "G_Shades_Black", "", 200, { "", "", -1 } },
			{ "G_Shades_Green", "", 200, { "", "", -1 } },
			{ "G_Shades_Red", "", 200, { "", "", -1 } },
			{ "G_Shades_Blue", "", 200, { "", "", -1 } },
			{ "G_Squares", "", 200, { "", "", -1 } },
			{ "G_Squares_Tinted", "", 200, { "", "", -1 } },
			{ "G_Sport_BlackWhite", "", 200, { "", "", -1 } },
			{ "G_Sport_Blackyellow", "", 200, { "", "", -1 } },
			{ "G_Sport_Greenblack", "", 200, { "", "", -1 } },
			{ "G_Sport_Checkered", "", 200, { "", "", -1 } },
			{ "G_Sport_Blackred", "", 200, { "", "", -1 } },
			{ "G_Sport_Red", "", 200, { "", "", -1 } },
			{ "G_Aviator", "", 200, { "", "", -1 } },
			{ "G_Lady_Mirror", "", 200, { "", "", -1 } },
			{ "G_Lady_Dark", "", 200, { "", "", -1 } },
			{ "G_Lady_Red", "", 200, { "", "", -1 } },
			{ "G_Lady_Blue", "", 200, { "", "", -1 } },
			{ "G_O_Diving", "", 200, { "", "", -1 } },
			{ "G_I_Diving", "", 200, { "", "", -1 } },
			{ "G_Goggles_VR", "", 200, { "", "", -1 } },
			{ "G_Tactical_Black", "", 1000, { "", "", -1 } },
			{ "G_Tactical_Clear", "", 1000, { "", "", -1 } },
			{ "G_Combat", "", 1000, { "", "", -1 } },
			{ "G_Lowprofile", "", 1000, { "", "", -1 } }
		};

		vests[] = {
		};

		backpacks[] = {
			{ "B_AssaultPack_blk", "", 100, { "", "", -1 }},
			{ "B_AssaultPack_ocamo", "", 100, { "", "", -1 }},
			{ "B_AssaultPack_dgtl", "", 100, { "", "", -1 }},
			{ "B_AssaultPack_sgg", "", 100, { "", "", -1 }},
			{ "B_AssaultPack_khk", "", 100, { "", "", -1 }},
			{ "B_AssaultPack_cbr", "", 100, { "", "", -1 }},
			{ "B_FieldPack_ocamo", "", 200, { "", "", -1 }},
			{ "B_FieldPack_blk", "", 200, { "", "", -1 }},
			{ "B_FieldPack_cbr", "", 200, { "", "", -1 }},
			{ "B_FieldPack_oli", "", 200, { "", "", -1 }},
			{ "B_FieldPack_khk", "", 200, { "", "", -1 }},
			{ "B_FieldPack_oucamo", "", 200, { "", "", -1 }},
			{ "B_TacticalPack_ocamo", "", 400, { "", "", -1 }},
			{ "B_TacticalPack_oli", "", 400, { "", "", -1 }},
			{ "B_TacticalPack_blk", "", 400, { "", "", -1 }},
			{ "B_Kitbag_rgr", "", 600, { "", "", -1 }},
			{ "B_Kitbag_sgg", "", 600, { "", "", -1 }},
			{ "B_Kitbag_cbr", "", 600, { "", "", -1 }},
			{ "B_Bergen_blk", "", 600, { "", "", -1 }},
			{ "B_Bergen_mcamo", "", 600, { "", "", -1 }},
			{ "B_Bergen_rgr", "", 600, { "", "", -1 }},
			{ "B_Bergen_sgg", "", 2500, { "", "", -1 }},
			{ "B_Carryall_oli", "", 1000, { "", "", -1 }},
			{ "B_Carryall_khk", "", 1000, { "", "", -1 }},
			{ "B_Carryall_cbr", "", 1000, { "", "", -1 }},
			{ "B_Carryall_ocamo", "", 1000, { "", "", -1 }},
			{ "B_Carryall_mcamo", "", 1000, { "", "", -1 }},
			{ "B_Carryall_oucamo", "", 1000, { "", "", -1 }},
			{ "B_Parachute", "", 10000, { "", "", -1 }}
		};
	};

	class dive {
		title = "STR_Shops_C_Diving";
		license = "dive";
		side = "civ";

		uniforms[] = {
			{ "U_B_Wetsuit", "", 5000, { "", "", -1 } }
		};

		headgear[] = {
		};

		goggles[] = {
			{ "G_Diving", "", 500, { "", "", -1 } }
		};

		vests[] = {
			{ "V_RebreatherB", "", 5000, { "", "", -1 } }
		};

		backpacks[] = {
		};
	};

	class reb {
		title = "STR_Shops_C_Rebel";
		license = "rebel";
		side = "civ";

		uniforms[] = {
			{ "U_BG_Guerrilla_6_1", "", 10000, {"", "", -1} },
			{ "U_BG_Guerilla1_1", "", 10000, {"", "", -1} },
			{ "U_BG_Guerilla2_2", "", 10000, {"", "", -1} },
			{ "U_BG_Guerilla2_1", "", 10000, {"", "", -1} },
			{ "U_BG_Guerilla2_3", "", 10000, {"", "", -1} },
			{ "U_BG_Guerilla3_1", "", 10000, {"", "", -1} },
			{ "U_IG_Guerilla2_1", "", 10000, {"", "", -1} },
			{ "U_IG_Guerilla1_1", "", 10000, {"", "", -1} },
			{ "U_BG_leader", "", 10000, {"", "", -1} },
			{ "U_O_OfficerUniform_ocamo", "", 15000, {"", "", -1} },
			{ "U_I_OfficerUniform", "", 15000, {"", "", -1} },
			{ "U_I_CombatUniform_shortsleeve", "", 15000, {"", "", -1} },
			{ "U_IG_leader", "Guerilla Leader", 17000, { "", "", -1 } },
			{ "U_I_PilotCoveralls", "", 20000, {"", "", -1} },
			{ "U_O_GhillieSuit", "", 50000, { "", "", -1 } },
			{ "U_B_FullGhillie_lsh", "", 100000, { "", "", -1 } },
			{ "U_B_FullGhillie_sard", "", 100000, { "", "", -1 } },
			{ "U_B_FullGhillie_ard", "", 100000, { "", "", -1 } },
			{ "U_O_Wetsuit", "", 5000, {"", "", -1} }
		};

		headgear[] = {
			{ "H_Booniehat_khk", "", 30, { "", "", -1 } },
			{ "H_Booniehat_indp", "", 30, { "", "", -1 } },
			{ "H_Booniehat_mcamo", "", 30, { "", "", -1 } },
			{ "H_Booniehat_tan", "", 30, { "", "", -1 } },
			{ "H_Booniehat_dirty", "", 30, { "", "", -1 } },
			{ "H_Booniehat_khk_hs", "", 30, { "", "", -1 } },
			{ "H_Booniehat_dgtl", "", 30, { "", "", -1 } },
			{ "H_Cap_brn_SPECOPS", "", 30, { "", "", -1 } },
			{ "H_Cap_tan_specops_US", "", 30, { "", "", -1 } },
			{ "H_Cap_khaki_specops_UK", "", 30, { "", "", -1 } },
			{ "H_Cap_blk_Raven", "", 30, { "", "", -1 } },
			{ "H_Bandanna_camo", "", 30, { "", "", -1 } },
			{ "H_Bandanna_mcamo", "", 30, { "", "", -1 } },
			{ "H_Shemag_olive", "", 30, { "", "", -1 } },
			{ "H_ShemagOpen_khk", "", 30, { "", "", -1 } },
			{ "H_HelmetIA", "", 15000, { "", "", -1 } },
			{ "H_HelmetO_ocamo", "", 15000, { "", "", -1 } },
			{ "H_HelmetLeaderO_ocamo", "", 15000, { "", "", -1 } },
			{ "H_HelmetO_oucamo", "", 15000, { "", "", -1 } },
			{ "H_HelmetLeaderO_oucamo", "", 15000, { "", "", -1 } },
			{ "H_HelmetSpecO_ocamo", "", 15000, { "", "", -1 } },
			{ "H_HelmetSpecO_blk", "", 15000, { "", "", -1 } },
			{ "H_HelmetB_light_desert", "", 15000, { "", "", -1 } }
		};

		goggles[] = {
			{ "G_Spectacles", "", 200, { "", "", -1 } },
			{ "G_Spectacles_Tinted", "", 200, { "", "", -1 } },
			{ "G_Shades_Black", "", 200, { "", "", -1 } },
			{ "G_Shades_Green", "", 200, { "", "", -1 } },
			{ "G_Shades_Red", "", 200, { "", "", -1 } },
			{ "G_Shades_Blue", "", 200, { "", "", -1 } },
			{ "G_Squares", "", 200, { "", "", -1 } },
			{ "G_Squares_Tinted", "", 200, { "", "", -1 } },
			{ "G_Sport_BlackWhite", "", 200, { "", "", -1 } },
			{ "G_Sport_Blackyellow", "", 200, { "", "", -1 } },
			{ "G_Sport_Greenblack", "", 200, { "", "", -1 } },
			{ "G_Sport_Checkered", "", 200, { "", "", -1 } },
			{ "G_Sport_Blackred", "", 200, { "", "", -1 } },
			{ "G_Sport_Red", "", 200, { "", "", -1 } },
			{ "G_Aviator", "", 200, { "", "", -1 } },
			{ "G_Lady_Mirror", "", 200, { "", "", -1 } },
			{ "G_Lady_Dark", "", 200, { "", "", -1 } },
			{ "G_Lady_Red", "", 200, { "", "", -1 } },
			{ "G_Lady_Blue", "", 200, { "", "", -1 } },
			{ "G_O_Diving", "", 200, { "", "", -1 } },
			{ "G_I_Diving", "", 200, { "", "", -1 } },
			{ "G_Goggles_VR", "", 200, { "", "", -1 } },
			{ "G_Tactical_Black", "", 1000, { "", "", -1 } },
			{ "G_Tactical_Clear", "", 1000, { "", "", -1 } },
			{ "G_Combat", "", 1000, { "", "", -1 } },
			{ "G_Lowprofile", "", 1000, { "", "", -1 } },
			{ "G_Balaclava_blk", "", 4000, { "", "", -1 } },
			{ "G_Balaclava_oli", "", 4000, { "", "", -1 } },
			{ "G_Balaclava_combat", "", 4000, { "", "", -1 } },
			{ "G_Balaclava_lowprofile", "", 4000, { "", "", -1 } },
			{ "G_Bandanna_blk", "", 4000, { "", "", -1 } },
			{ "G_Bandanna_oli", "", 4000, { "", "", -1 } },
			{ "G_Bandanna_khk", "", 4000, { "", "", -1 } },
			{ "G_Bandanna_tan", "", 4000, { "", "", -1 } },
			{ "G_Bandanna_beast", "", 4000, { "", "", -1 } },
			{ "G_Bandanna_shades", "", 4000, { "", "", -1 } },
			{ "G_Bandanna_sport", "", 4000, { "", "", -1 } },
			{ "G_Bandanna_aviator", "", 4000, { "", "", -1 } },
			{ "G_Diving", "", 500, { "", "", -1 } }
		};

		vests[] = {
			{ "V_BandollierB_khk", "", 7000, { "", "", -1 } },
			{ "V_BandollierB_cbr", "", 7000, { "", "", -1 } },
			{ "V_BandollierB_rgr", "", 7000, { "", "", -1 } },
			{ "V_BandollierB_blk", "", 7000, { "", "", -1 } },
			{ "V_BandollierB_oli", "", 7000, { "", "", -1 } },
			{ "V_Chestrig_khk", "", 10000, { "", "", -1 } },
			{ "V_Chestrig_rgr", "", 10000, { "", "", -1 } },
			{ "V_Chestrig_blk", "", 10000, { "", "", -1 } },
			{ "V_Chestrig_oli", "", 10000, { "", "", -1 } },
			{ "V_TacVest_brn", "", 20000, { "", "", -1 } },
			{ "V_TacVest_camo", "", 20000, { "", "", -1 } },
			{ "V_TacVest_khk", "", 20000, { "", "", -1 } },
			{ "V_TacVest_oli", "", 20000, { "", "", -1 } },
			{ "V_TacVestIR_blk", "", 20000, { "", "", -1 } },
			{ "V_PlateCarrier1_blk", "", 60000, { "", "", -1 } },
			{ "V_PlateCarrierIA1_dgtl", "", 60000, { "", "", -1 } },
			{ "V_RebreatherIR", "", 5000, { "", "", -1 } },
			{ "V_HarnessOGL_gry", "Suicide Vest", 1000000, { "", "", -1 } }
		};

		backpacks[] = {
			{ "B_AssaultPack_blk", "", 100, { "", "", -1 }},
			{ "B_AssaultPack_ocamo", "", 100, { "", "", -1 }},
			{ "B_AssaultPack_dgtl", "", 100, { "", "", -1 }},
			{ "B_AssaultPack_sgg", "", 100, { "", "", -1 }},
			{ "B_AssaultPack_khk", "", 100, { "", "", -1 }},
			{ "B_AssaultPack_cbr", "", 100, { "", "", -1 }},
			{ "B_FieldPack_ocamo", "", 200, { "", "", -1 }},
			{ "B_FieldPack_blk", "", 200, { "", "", -1 }},
			{ "B_FieldPack_cbr", "", 200, { "", "", -1 }},
			{ "B_FieldPack_oli", "", 200, { "", "", -1 }},
			{ "B_FieldPack_khk", "", 200, { "", "", -1 }},
			{ "B_FieldPack_oucamo", "", 200, { "", "", -1 }},
			{ "B_TacticalPack_ocamo", "", 400, { "", "", -1 }},
			{ "B_TacticalPack_oli", "", 400, { "", "", -1 }},
			{ "B_TacticalPack_blk", "", 400, { "", "", -1 }},
			{ "B_Kitbag_rgr", "", 600, { "", "", -1 }},
			{ "B_Kitbag_sgg", "", 600, { "", "", -1 }},
			{ "B_Kitbag_cbr", "", 600, { "", "", -1 }},
			{ "B_Bergen_blk", "", 600, { "", "", -1 }},
			{ "B_Bergen_mcamo", "", 600, { "", "", -1 }},
			{ "B_Bergen_rgr", "", 600, { "", "", -1 }},
			{ "B_Bergen_sgg", "", 2500, { "", "", -1 }},
			{ "B_Carryall_oli", "", 1000, { "", "", -1 }},
			{ "B_Carryall_khk", "", 1000, { "", "", -1 }},
			{ "B_Carryall_cbr", "", 1000, { "", "", -1 }},
			{ "B_Carryall_ocamo", "", 1000, { "", "", -1 }},
			{ "B_Carryall_mcamo", "", 1000, { "", "", -1 }},
			{ "B_Carryall_oucamo", "", 1000, { "", "", -1 }},
			{ "B_Parachute", "", 10000, { "", "", -1 }}
		};
	};

	class kart {
		title = "STR_Shops_C_Kart";
		license = "";
		side = "civ";

		uniforms[] = {
			{ "U_C_Driver_1_black", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_blue", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_red", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_orange", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_green", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_white", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_1_yellow", "", 1500, { "", "", -1 } },
			{ "U_C_Driver_2", "", 3500, { "", "", -1 } },
			{ "U_C_Driver_1", "", 3600, { "", "", -1 } },
			{ "U_C_Driver_3", "", 3700, { "", "", -1 } },
			{ "U_C_Driver_4", "", 3700, { "", "", -1 } }
		};

		headgear[] = {
			{ "H_RacingHelmet_1_black_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_red_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_white_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_blue_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_yellow_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_green_F", "", 1000, { "", "", -1 } },
			{ "H_RacingHelmet_1_F", "", 2500, { "", "", -1 } },
			{ "H_RacingHelmet_2_F", "", 2500, { "", "", -1 } },
			{ "H_RacingHelmet_3_F", "", 2500, { "", "", -1 } },
			{ "H_RacingHelmet_4_F", "", 2500, { "", "", -1 } }
		};

		goggles[] = {
		};

		vests[] = {
		};

		backpacks[] = {
		};
	};
};