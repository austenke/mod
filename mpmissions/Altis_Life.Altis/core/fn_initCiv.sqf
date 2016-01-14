/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the civilian.
*/
private["_spawnPos"];
civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
waitUntil {!(isNull (findDisplay 46))};

if(life_is_arrested) then {
	life_is_arrested = false;
	[player,true] spawn life_fnc_jail;
} else {
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
	

	//_pid = getPlayerUID player;
	//_query = format["getLocation:%1",_pid];
	//waitUntil {!DB_Async_Active};
	//_tickTime = diag_tickTime;
	//_queryResult = [_query,2,true] call DB_fnc_asyncCall;

	//if((EQUAL(EXTDB_SETTINGS("MySQL_Query"),1))) then {
	//	["diag_log",[
	//		"------------- Player Location Request -------------",
	//		format["QUERY: %1",_query],
	//		format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)],
	//		format["Result: %1",_queryResult],
	//		"-------------------------------------------------"
	//	]] call TON_fnc_logIt;
	//};
};

//[] call life_fnc_gangPayout;

player addRating 9999999;
call life_fnc_Uniformscolor;
