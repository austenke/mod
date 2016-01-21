#include "..\script_macros.hpp"
/*
	Master client initialization file
*/
life_firstSpawn = true;
life_session_completed = false;
private["_handle","_timeStamp"];
0 cutText["Setting up client, please wait...","BLACK FADED"];
0 cutFadeOut 9999999;
_timeStamp = diag_tickTime;
diag_log "------------------------------------------------------------------------------------------------------";
diag_log "--------------------------------- Starting Altis Life Client Init ----------------------------------";
diag_log "------------------------------------------------------------------------------------------------------";
waitUntil {!isNull player && player == player}; //Wait till the player is ready
[] call compile PreprocessFileLineNumbers "core\clientValidator.sqf";

//Setup initial client core functions
diag_log "::Life Client:: Initialization Variables";
[] call compile PreprocessFileLineNumbers "core\configuration.sqf";

diag_log "::Life Client:: Variables initialized";
diag_log "::Life Client:: Setting up Eventhandlers";
[] call life_fnc_setupEVH;

diag_log "::Life Client:: Eventhandlers completed";
diag_log "::Life Client:: Setting up user actions";
[] call life_fnc_setupActions;

diag_log "::Life Client:: User actions completed";
diag_log "::Life Client:: Waiting for server functions to transfer..";
waitUntil {(!isNil {TON_fnc_clientGangLeader})};

diag_log "::Life Client:: Received server functions.";
0 cutText ["Waiting for the server to be ready...","BLACK FADED"];
0 cutFadeOut 99999999;

diag_log "::Life Client:: Waiting for the server to be ready..";
waitUntil{!isNil "life_server_isReady"};
waitUntil{(life_server_isReady OR !isNil "life_server_extDB_notLoaded")};

if(!isNil "life_server_extDB_notLoaded" && {life_server_extDB_notLoaded != ""}) exitWith {
	diag_log life_server_extDB_notLoaded;
	999999 cutText [life_server_extDB_notLoaded,"BLACK FADED"];
	999999 cutFadeOut 99999999;
};

[] call SOCK_fnc_dataQuery;
waitUntil {life_session_completed};
0 cutText["Finishing client setup procedure","BLACK FADED"];
0 cutFadeOut 9999999;

life_fnc_alreadycappedNotice = compileFinal
"
	hint ""This cartel has been captured too recently"";
";

life_fnc_capNotice = compileFinal
"
_zone = _this select 0;
_win = [_this,1,false,[false]] call BIS_fnc_param;
_enemy = [_this,2,"""",[""""]] call BIS_fnc_param;
if(_win) then {
	hint parseText format [""<t align='center'><t color='#FF0000'><t size='2'>Congratulations!</t></t><br/><br/><t color='#ffffff'>You have captured the <t color='#00ff00'>%1</t>! You will now receive money in your gang bank each time this item is bought or sold."",_zone];
} else {
	hint parseText format [""<t align='center'><t color='#FF0000'><t size='2'>Attention</t></t><br/><br/><t color='#ffffff'>Your territory zone, <t color='#00ff00'>%1</t>, is being captured by the gang known as %2!"",_zone,_enemy];
};
";

//diag_log "::Life Client:: Group Base Execution";
[] spawn life_fnc_escInterupt;

switch (playerSide) do {
	case west: {
		_handle = [] spawn life_fnc_initCop;
		waitUntil {scriptDone _handle};
	};
	case civilian: {
		//Initialize Civilian Settings
		_handle = [] spawn life_fnc_initCiv;
		waitUntil {scriptDone _handle};
	};
	case independent: {
		//Initialize Medics and blah
		_handle = [] spawn life_fnc_initMedic;
		waitUntil {scriptDone _handle};
	};
	case sideLogic:    {
     	_handle = [] spawn life_fnc_initZeus;
        waitUntil {scriptDone _handle};
	};
};

player SVAR ["restrained",false,true];
player SVAR ["Escorting",false,true];
player SVAR ["transporting",false,true];

diag_log "Past Settings Init";
[] execFSM "core\fsm\client.fsm";

diag_log "Executing client.fsm";
waitUntil {!(isNull (findDisplay 46))};

diag_log "Display 46 Found";
(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call life_fnc_keyHandler"];
player addRating 99999999;
diag_log "------------------------------------------------------------------------------------------------------";
diag_log format["                End of Altis Life Client Init :: Total Execution Time %1 seconds ",(diag_tickTime) - _timeStamp];
diag_log "------------------------------------------------------------------------------------------------------";

life_sidechat = true;
[player,life_sidechat,playerSide] remoteExecCall ["TON_fnc_managesc",RSERV];
0 cutText ["","BLACK IN"];
[] call life_fnc_hudSetup;

/* Set up frame-by-frame handlers */
LIFE_ID_PlayerTags = ["LIFE_PlayerTags","onEachFrame","life_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
LIFE_ID_RevealObjects = ["LIFE_RevealObjects","onEachFrame","life_fnc_revealObjects"] call BIS_fnc_addStackedEventHandler;

player SVAR ["steam64ID",steamid];
player SVAR ["realname",profileName,true];

life_fnc_moveIn = compileFinal
"
	player moveInCargo (_this select 0);
";

[] spawn life_fnc_survival;

CONSTVAR(life_paycheck); //Make the paycheck static.
if(EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),0)) then {player enableFatigue false;};

[] call life_fnc_Uniformscolor;