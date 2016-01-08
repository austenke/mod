#include <macro.h>
/*	COP UNIFORM SCRIPT	
Edited: by maximum for better handling of actual uniforms	
Created for www.altisliferpg.com*/
#define FETCH_CONST(var) (call var)

// Medics
if(side player == independent) then {	
	if ((uniform player) == "U_Rangemaster") then {		
		player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"];	
	};
};

if(side player == civilian) then {	
	// Prisoner 	
	if(side player == civilian && uniform player == "U_C_WorkerCoveralls") then {	
		player setObjectTextureGlobal [0, "textures\prisoner_uniform.jpg"];	};	
};

