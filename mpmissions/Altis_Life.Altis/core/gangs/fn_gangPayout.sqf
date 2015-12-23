/*
    GrenadeStop v0.8 for ArmA 3 Alpha by Bake (tweaked slightly by Rarek)
    
    DESCRIPTION:
    Stops players from throwing grenades in safety zones.
    
    CONFIGURATION:
    Edit the #defines below.
*/

#define SAFETY_ZONES    [["capture_labal_4", 300]] // Syntax: [["marker1", radius1], ["marker2", radius2], ...]
#define MESSAGE "Granaten sowie Schießen ist auf dem Marktplatz ausgeschaltet!"

     if (isDedicated) exitWith {};
     waitUntil {!isNull player};

if(playerSide != west)
	{


     player addEventHandler ["Fired", {
            if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
            {
             titleText [MESSAGE, "PLAIN", 3];
             };
        }];  
	};