#include <macro.h>
/*	COP UNIFORM SCRIPT	
Edited: by maximum for better handling of actual uniforms	
Created for www.altisliferpg.com*/
#define FETCH_CONST(var) (call var)

// Medics
if ((uniform player) == "U_Rangemaster" && playerSide != west) then {		
	player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"];	
};

// Prisoner 	
if(uniform player == "U_C_WorkerCoveralls") then {	
	player setObjectTextureGlobal [0, "textures\prisoner_uniform.jpg"];	
};	
