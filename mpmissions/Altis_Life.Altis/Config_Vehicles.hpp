class CarShops {
	/*
		Format:
		{ Classname, rental price, license required, { varname, >= value } }

		{ varname, >= value} this is a "level" requirement mainly used by cops and rebels, do not fill this in if you are not utilizing it.
	*/
	class civ_car {
		side = "civ";
		vehicles[] = {
			{ "B_Quadbike_01_F", 2500, "" }, 
			{ "C_Hatchback_01_F", 8333, "driver" }, 
			{ "C_Offroad_01_F", 12500, "driver" },
			{ "C_SUV_01_F", 30000, "driver" },
			{ "C_Hatchback_01_sport_F", 100000, "driver" },
			{ "C_Van_01_transport_F", 43333, "driver" }
		};
	};

	class kart_shop {
		side = "civ";
		vehicles[] = {
			{ "C_Kart_01_Blu_F", 15000 , "driver" },
			{ "C_Kart_01_Fuel_F", 15000, "driver" },
			{ "C_Kart_01_Red_F", 15000, "driver" },
			{ "C_Kart_01_Vrana_F", 15000, "driver" }
		};
	};

	class med_shop {
		side = "med";
		vehicles[] = {
			{ "C_Offroad_01_F", 3333, "" },
			{ "C_SUV_01_F", 10000, "" }
		};
	};

	class med_air_hs {
		side = "med";
		vehicles[] = {
			{ "B_Heli_Light_01_F", 50000, "mAir" },
			{ "O_Heli_Light_02_unarmed_F", 75000, "mAir" }
		};
	};

	class civ_truck {
		side = "civ";
		vehicles[] = {
			{ "C_Van_01_box_F", 56667, "trucking" },
			{ "I_Truck_02_transport_F", 146667, "trucking" },
			{ "I_Truck_02_covered_F", 183333, "trucking" },
			{ "O_Truck_03_transport_F", 533333, "trucking" },
			{ "O_Truck_03_covered_F", 600000, "trucking" },
			{ "B_Truck_01_box_F", 566667, "trucking" },
			{ "O_Truck_03_device_F", 2333333, "trucking" }
		};
	};

	class reb_car {
		side = "civ";
		vehicles[] = {
			{ "B_Quadbike_01_F", 2500, "" },
			{ "B_G_Offroad_01_F", 12500, "" },
			{ "O_MRAP_02_F", 2666667, "" },
			{ "B_G_Offroad_01_armed_F", 3333333, "rebel" },
			{ "B_Heli_Light_01_F", 666667, "" },
			{ "O_Heli_Light_02_unarmed_F", 1533333, "" },
			{ "I_Heli_light_03_unarmed_F", 2333333, "" },
			{ "B_Heli_Transport_01_F", 2666666, "" },
			{ "I_Heli_Transport_02_F", 3333333, "" }
		};
	};

	class cop_car {
		side = "cop";
		vehicles[] = {
			{ "B_Quadbike_01_F", 2500, "", { "life_coplevel", 1 } },
			{ "C_SUV_01_F", 20000, "", { "life_coplevel", 2 } },
			{ "C_Offroad_01_F", 13333, "", { "life_coplevel", 2 } },
			{ "C_Hatchback_01_sport_F", 50000, "", { "life_coplevel", 3 } },
			{ "B_MRAP_01_F", 100000, "", { "life_coplevel", 5 } },
			{ "I_MRAP_03_F", 150000, "", { "life_coplevel", 6 } }
		};
	};

	class civ_air {
		side = "civ";
		vehicles[] = {
			{ "C_Heli_Light_01_civil_F", 500000, "pilot" },
			{ "B_Heli_Light_01_F", 1200000, "pilot" },
			{ "O_Heli_Light_02_unarmed_F", 2000000, "pilot" },
			{ "B_Heli_Transport_03_unarmed_F", 533333, "pilot" },
			{ "O_Heli_Transport_04_box_F", 6666667, "pilot" },
			{ "B_Heli_Transport_01_F", 3333333, "pilot" }
		};
	};

	class cop_air {
		side = "cop";
		vehicles[] = {
			{ "B_Heli_Light_01_F", 75000, "cAir", { "life_coplevel", 2 } },
			{ "O_Heli_Light_02_F", 200000, "cAir", { "life_coplevel", 3 } },
			{ "B_Heli_Transport_01_F", 350000, "cAir", { "life_coplevel", 4 } },
			{ "I_Heli_light_03_F", 400000, "cAir", { "life_coplevel", 5 } },
			{ "B_Heli_Transport_03_F", 450000, "cAir", { "life_coplevel", 6 } }
		};
	};

	class cop_airhq {
		side = "civ";
		vehicles[] = {
			{ "B_Heli_Light_01_F", 75000, "cAir", { "life_coplevel", 2 } },
			{ "O_Heli_Light_02_F", 200000, "cAir", { "life_coplevel", 3 } },
			{ "B_Heli_Transport_01_F", 350000, "cAir", { "life_coplevel", 4 } },
			{ "I_Heli_light_03_F", 400000, "cAir", { "life_coplevel", 5 } },
			{ "B_Heli_Transport_03_F", 450000, "cAir", { "life_coplevel", 6 } }
		};
	};

	class cop_ship {
		side = "cop";
		vehicles[] = {
			{ "B_Boat_Transport_01_F", 10000, "cg" },
			{ "C_Boat_Civil_01_police_F", 20000, "cg" },
			{ "B_SDV_01_F", 100000, "cg" }
		};
	};

	class civ_ship {
		side = "civ";
		vehicles[] = {
			{ "C_Rubberboat", 2667, "boat" },
			{ "C_Boat_Civil_01_F", 4667, "boat" },
			{ "B_SDV_01_F", 150000, "boat" }
		};
	};

	class jetshop {
		side = "civ";
		vehicles[] = {
			{ "O_Plane_CAS_02_F", 7000000, "jet" }
		};
	};
};

/*
	Vehicle Configs (Contains textures and other stuff)

	storageFee (Getting vehicles out of garage) format:
		INDEX 0: Civilian Price
		INDEX 1: Cop Price
		INDEX 3: EMS Price
		INDEX 4: OPFOR Price (Not implemented in vanilla but still leaving support

	Textures config follows { Texture Name, side, {texture(s)path}}
	Texture(s)path follows this format:
		INDEX 0: Texture Layer 0
		INDEX 1: Texture Layer 1
		INDEX 2: Texture Layer 2
		etc etc etc
*/
class CfgVehicles {
	class Default {
		vItemSpace = -1;
		storageFee[] = { 1000, 1000, 1000, 1000 };
		garageSell[] = { 0, 0, 0, 0 };
		insurance = 2500;
		chopShop = 1200;
		textures[] = {};
	};

	class I_Truck_02_medical_F : Default {
		vItemSpace = 150;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 0, 0, 0, 0 };
		chopShop = 3000;
	};

	class O_Truck_03_medical_F : Default {
		vItemSpace = 200;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 0, 0, 0, 0 };
		chopShop = 7500;
	};

	class B_Truck_01_medical_F : Default {
		vItemSpace = 250;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 0, 0, 0, 0 };
		chopShop = 12500;
	};

	class C_Rubberboat {
        vItemSpace = 65;
        storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 0, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class B_Heli_Transport_01_F {
		vItemSpace = 275;
		storageFee[] = { 0, 250, 0, 0 };
		garageSell[] = { 0, 85000, 0, 0 };
		insurance = 16000;
		chopShop = 45000;
		textures[] = {};
	};

	class B_MRAP_01_hmg_F : Default {
		vItemSpace = 100;
	};

	class O_Boat_Armed_01_hmg_F {
        vItemSpace = 175;
        storageFee[] = { 1000, 0, 0, 0 };
		garageSell[] = { 21000, 21000, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class B_Boat_Armed_01_minigun_F {
        vItemSpace = 175;
        storageFee[] = { 0, 16500, 0, 0 };
		garageSell[] = { 0, 21000, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class I_Boat_Armed_01_minigun_F {
        vItemSpace = 175;
        storageFee[] = { 1000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class B_G_Boat_Transport_01_F {
        vItemSpace = 200;
        storageFee[] = { 1000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class B_Boat_Transport_01_F {
        vItemSpace = 200;
        storageFee[] = { 0, 450, 0, 0 };
		garageSell[] = { 0, 850, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class O_Truck_03_transport_F {
        vItemSpace = 450;
        storageFee[] = { 250, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class O_Truck_03_device_F {
        vItemSpace = 350;
        storageFee[] = { 250, 0, 0, 0 };
		garageSell[] = { 185000, 0, 0, 0 };
        insurance = 25000;
        chopShop = 125000;
        textures[] = { };
    };

	class Land_CargoBox_V1_F : Default {
        vItemSpace = 6000;
    };

	class Box_IND_Grenades_F : Default {
        vItemSpace = 400;
    };

	class B_supplyCrate_F {
        vItemSpace = 800;
    };

	class B_G_Offroad_01_F {
        vItemSpace = 70;
        storageFee[] = { 50, 0, 0, 0 };
		garageSell[] = { 3500, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class B_G_Offroad_01_armed_F : B_G_Offroad_01_F {};

	class I_G_Van_01_transport_F {
        vItemSpace = 100;
        storageFee[] = { 50, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class C_Boat_Civil_01_F {
        vItemSpace = 100;
        storageFee[] = { 4500, 2500, 0, 0 };
		garageSell[] = { 6800, 3500, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class C_Boat_Civil_01_police_F {
        vItemSpace = 100;
        storageFee[] = { 0, 3500, 0, 0 };
		garageSell[] = { 0, 4950, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class C_Boat_Civil_01_rescue_F {
        vItemSpace = 100;
        storageFee[] = { 1000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class B_Truck_01_box_F {
        vItemSpace = 800;
        storageFee[] = { 250, 0, 0, 0 };
		garageSell[] = { 150000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class B_Truck_01_transport_F {
        vItemSpace = 0;
        storageFee[] = { 250, 0, 0, 0 };
		garageSell[] = { 135000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class O_MRAP_02_F {
        vItemSpace = 100;
        storageFee[] = { 250, 0, 0, 0 };
		garageSell[] = { 65000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class I_MRAP_03_F {
        vItemSpace = 100;
        storageFee[] = { 250, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = { };
    };

	class C_Offroad_01_F {
        vItemSpace = 65;
        storageFee[] = { 50, 50, 50, 50 };
		garageSell[] = { 6500, 2500, 0, 0 };
        insurance = 2500;
        chopShop = 2500;
        textures[] = {
        	{ "Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa"
            } },
			{ "Yellow", "civ", {
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa",
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa"
            } },
			{ "White", "civ", {
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa",
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa"
            } },
			{ "Blue", "civ", {
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa",
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa"
            } },
			{ "Dark Red", "civ", {
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa",
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa"
            } },
			{ "Blue / White", "civ", {
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa",
	                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa"
            } },
            { "Fed", "fed", {
	                "#(ai,64,64,1)Fresnel(0.3,3)"
            } },
            { "AMC", "civ", {
	                "textures\Offroad\AMC.paa"
            } },
            { "GameOver", "civ", {
	                "textures\Offroad\gameover.paa"
            } },
            { "HelloKitty", "civ", {
	                "textures\Offroad\hello.paa"
            } },
            { "Classy White", "civ", {
	                "textures\Offroad\Offroad_White.paa"
            } },
		    { "Dope", "civ", {
	                "textures\Offroad\weed.paa"
            } },
		    { "Medic", "med", {
	                "textures\medic\offroad.paa"
            } },
			{ "Police", "cop", {
	                "textures\cop\police_truck.paa"
            } },
            { "Taxi", "civ", {
	                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } }
	    };
    };

	class C_Kart_01_Blu_F {
		vItemSpace = 20;
		storageFee[] = { 1500, 0, 0, 0 };
		garageSell[] = { 3500, 0, 0, 0 };
		inusrance = 1650;
		chopShop = 3500;
		textures[] = {};
	};

	class C_Kart_01_Fuel_F : C_Kart_01_Blu_F {}; //Inherits everything from the above class
	class C_Kart_01_Red_F : C_Kart_01_Blu_F {}; //Inherits everything from the above class
	class C_Kart_01_Vrana_F : C_Kart_01_Blu_F {}; //Inherits everything from the above class

	class C_Hatchback_01_sport_F {
        vItemSpace = 40;
        storageFee[] = { 250, 250, 0, 0 };
		garageSell[] = { 15000, 7500, 0, 0 };
        insurance = 5500;
        chopShop = 4500;
        textures[] = {
        	{ "Red", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport01_co.paa"
            } },
			{ "Dark Blue", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport02_co.paa"
            } },
			{ "Orange", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport03_co.paa"
            } },
			{ "Black / White", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport04_co.paa"
            } },
			{ "Beige", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport05_co.paa"
            } },
			{ "Green", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport06_co.paa"
            } },
			{ "Redbull", "civ", {
					"textures\hatch_sport\hb_redbull.paa"
			} },	
			{ "Repsol", "civ", {
					"textures\hatch_sport\hb_repsol.paa"
			} },
			{ "Rockstar", "civ", {
					"textures\hatch_sport\hb_rockstar.paa"
			} },
			{ "Shark", "civ", {
					"textures\hatch_sport\hb_shark.paa"
			} },	
			{ "PedoBear", "civ", {
					"textures\hatch_sport\pedo.paa"
			} },	
			{ "Monster", "civ", {
					"textures\hatch_sport\monster.paa"
			} },
			{ "RedGull", "civ", {
					"textures\hatch_sport\redgull_rally.paa"
			} },
			{ "Youtube", "civ", {
					"textures\hatch_sport\youtube.paa"
			} },	
            { "Police", "cop", {
                "textures\cop\hatch_cop.paa"
            } }
        };
    };

	class B_Quadbike_01_F {
        vItemSpace = 20;
        storageFee[] = { 50, 0, 0, 0 };
		garageSell[] = { 950, 0, 0, 0 };
        insurance = 2500;
        chopShop = 2500;
        textures[] = {
        	{ "Brown", "cop", {
                "\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa"
            } },
			{ "Digi Desert", "reb", {
	                "\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa"
	        } },
			{ "Black", "civ", {
	                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa"
	        } },
			{ "Blue", "civ", {
	                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa"
	        } },
			{ "Red", "civ", {
	                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa"
	        } },
			{ "White", "civ", {
	                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa"
	        } },
			{ "Digi Green", "civ", {
	                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa"
	        } },
			{ "Hunter Camo", "civ", {
	                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
	        } },
	        { "Rebel Camo", "reb", {
                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
            } }
        };
    };

	class I_Truck_02_covered_F {
        vItemSpace = 275;
        storageFee[] = { 250, 0, 0, 0 };
		garageSell[] = { 62000, 0, 0, 0 };
        insurance = 6500;
        chopShop = 20000;
        textures[] = {
        	{ "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            } },
            { "Black", "fed", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

	class I_Truck_02_transport_F : I_Truck_02_covered_F {
        vItemSpace = 220;
        storageFee[] = { 250, 0, 0, 0 };
		garageSell[] = { 49800, 3500, 0, 0 };
    };

	class O_Truck_03_covered_F {
		vItemSpace = 250;
		storageFee[] = { 25000, 0, 0, 0 };
		garageSell[] = { 65000, 0, 0, 0 };
		insurance = 2500;
		chopShop = 5000;
		textures[] = {};
	};

	class C_Hatchback_01_F {
        vItemSpace = 40;
        storageFee[] = { 50, 0, 0, 0 };
		garageSell[] = { 4500, 3500, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = {
        	{ "Beige", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa"
            } },
			{ "Green", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa"
            } },
			{ "Blue", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa"
            } },
			{ "Dark Blue", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa"
            } },
			{ "Yellow", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa"
            } },
			{ "White", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa"
            } },
			{ "Grey", "civ", {
	                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa"
            } },
            { "Black", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa"
            } }
        };
    };

	class C_SUV_01_F {
        vItemSpace = 40;
        storageFee[] = { 50, 0, 0, 0 };
		garageSell[] = { 15000, 7500, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = {
        	{ "Dark Red", "civ", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa"
            } },
			{ "Black", "civ", {
	                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa"
            } },
			{ "Silver", "civ", {
	                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa"
            } },
			{ "Orange", "civ", {
	                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa"
            } },
			{ "BlueFlame", "civ", {
					"textures\suv\blueflame.paa"
            } },
			{ "Camo", "civ", {
					"textures\suv\camo.paa"
			} },		
			{ "Ferrari", "civ", {
					"textures\suv\ferrari.paa"
			} },
			{ "Pimp", "civ", {
					"textures\suv\pimp.paa"
			} },	
			{ "Superman", "civ", {
					"textures\suv\superman.paa"
			} },
			{ "Fireball", "civ", {
					"textures\suv\suv_fireball.paa"
			} },	
			{ "Monster", "civ", {
					"textures\suv\suv_monster.paa"
			} },
			{ "Tagged", "civ", {
					"textures\suv\suv_tag.paa"
			} },			
			{ "Taxi", "civ", {
					"textures\suv\SUV_Taxi.paa"
			} },	
			{ "Tron", "civ", {
					"textures\suv\suv_tron.paa"
			} },
			{ "Trippy", "civ", {
					"textures\suv\trippy.paa"
			} },	
		    { "Medic", "med", {
	                "textures\medic\suv.paa"
            } },
            { "Cop", "cop", {
                "textures\cop\police_suv.paa"
            } }
	        };
    };

	class C_Van_01_transport_F {
        vItemSpace = 100;
        storageFee[] = { 50, 0, 0, 0 };
		garageSell[] = { 25000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = {
        	{ "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            } },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            } }
        };
    };

	class C_Van_01_box_F {
        vItemSpace = 150;
        storageFee[] = { 50, 0, 0, 0 };
		garageSell[] = { 35000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = {
        	{ "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            } },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            } }
        };
    };
    
	class B_MRAP_01_F {
        vItemSpace = 100;
        storageFee[] = { 0, 50, 0, 0 };
		garageSell[] = { 0, 10000, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = {
        	{ "Regular", "cop", {
                "\A3\Soft_F\MRAP_01\Data\mrap_01_base_co.paa"
            } },
            { "Black", "fed", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

	class B_Heli_Light_01_F {
        vItemSpace = 20;
        storageFee[] = { 50, 50, 0, 0 };
		garageSell[] = { 57000, 35000, 0, 0 };
        insurance = 2500;
        chopShop = 57000;
        textures[] = {
        	{ "Sheriff", "cop", {
                "textures\cop\cop_heli1.paa"
            } },
			{ "Black", "reb", {
	                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa"
            } },
			{ "RedBull", "civ", {
	                "textures\heli\lb_redbull.paa"
            } },
			{ "Civ Blue", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"
            } },
			{ "Civ Red", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"
            } },
			{ "Digi Green", "reb", {
	                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa"
            } },
			{ "Blueline", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"
            } },
			{ "Elliptical", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"
            } },
			{ "Furious", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"
            } },
			{ "Jeans Blue", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"
            } },
			{ "Speedy Redline", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"
            } },
			{ "Sunset", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"
            } },
			{ "Vrana", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"
            } },
			{ "Waves Blue", "civ", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"
            } },
			{ "Rebel Digital", "reb", {
	                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            } },
            { "EMS White", "med", {
                "textures\medic\heli.paa"
            } }
        };
    };

	class O_Heli_Light_02_unarmed_F {
        vItemSpace = 200;
        storageFee[] = { 250, 250, 22000, 0 };
		garageSell[] = { 72500, 0, 35000, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = {
        	{ "Black", "civ", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa"
            } },
			{ "White / Blue", "civ", {
	                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa"   
            } },
			{ "Digi Green", "reb", {
	                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa"
            } },
			{ "Desert Digi", "reb", {
	                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa" 
            } },
            { "EMS White", "med", {
                "textures\medic\heli.paa"
            } }
        };
    };

	class I_Heli_Transport_02_F {
        vItemSpace = 375;
        storageFee[] = { 250, 250, 0, 0 };
		garageSell[] = { 125000, 0, 0, 0 };
        insurance = 2500;
        chopShop = 5000;
        textures[] = {
        	{ "Ion", "civ", {
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_ion_co.paa",
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_ion_co.paa",
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_3_ion_co.paa"
            } },
            { "Dahoman", "civ", {
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_dahoman_co.paa",
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_dahoman_co.paa",
                "\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_3_dahoman_co.paa"
            } }
        };
    };

    class O_Heli_Transport_04_box_F {
		vItemSpace = 275;
		storageFee[] = { 50, 0, 1500, 0 };
		garageSell[] = { 0, 0, 5000, 0 };
		chopShop = 3000;
	};

	class B_Heli_Transport_03_unarmed_F {
		vItemSpace = 375;
		storageFee[] = { 50, 0, 1500, 0 };
		garageSell[] = { 0, 0, 5000, 0 };
		chopShop = 3000;
	};

	class I_Heli_light_03_unarmed_F {
		vItemSpace = 250;
		storageFee[] = { 50, 0, 1500, 0 };
		garageSell[] = { 0, 0, 5000, 0 };
		chopShop = 3000;
	};

	class C_Heli_Light_01_civil_F {
		vItemSpace = 20;
		storageFee[] = { 0, 0, 1500, 0 };
		garageSell[] = { 0, 0, 5000, 0 };
		chopShop = 3000;
	};
};