/*
File: al_safezone.sqf


Description:
Allows you to setup markers that execute the SafeZone script.


Note:
A lot of this is just C&P with different code. It's kinda simple to add / remove stuff
*/


#define POLICE_ZONES    [["pz_xx", 50]]
#define CIV_ZONES    [["cz_xx", 50]]
#define KOS_ZONES    [["kos_xx", 50]]




#define PZ_MSG "You are entering the Police Base."
#define CIV_MSG "You are entering a Civilian SafeZone."
#define KOS_MSG "You are entering Rebel Land! Cops are a kill on sight! Rebels with weapons out are kill on sight for cops!"


     if (isDedicated) exitWith {};
     waitUntil {!isNull player};


switch (playerSide) do
{ 
case civilian:
{
     player addEventHandler ["Fired", {
            if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count POLICE_ZONES > 0) then
            {
             deleteVehicle (_this select 6);
             titleText [PZ_MSG, "PLAIN", 3];
             };
        }];  
};
};


switch (playerSide) do
{ 
case civilian:
{
     player addEventHandler ["Fired", {
            if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count CIV_ZONES > 0) then
            {
             deleteVehicle (_this select 6);
             titleText [CIV_MSG, "PLAIN", 3];
             };
        }];  
};
};


switch (playerSide) do
{
case civilian:
{
     player addEventHandler ["Fired", {
            if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count KOS_ZONES > 0) then
            {
             deleteVehicle (_this select 6);
             titleText [KOS_MSG, "PLAIN", 3];
             };
        }];  
};
};
