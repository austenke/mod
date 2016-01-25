// Thanks to Kevin Webb for initial source

private["_uid","_name","_query","_queryResult"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;

_query = format["wantedLoad:%1",_uid];
waitUntil{!DB_Async_Active};

_queryResult = [_query,2] call DB_fnc_asyncCall;

if(_queryResult select 0 == "") exitWith {};

diag_log str _queryResult;

_queryResult = _queryResult select 0;

diag_log str _queryResult;

if(typeName _queryResult == "STRING") then {_queryResult = call compile format["%1", _queryResult];};

if(count _queryResult < 2) exitWith {};

diag_log str _queryResult;

_queryResult set[0,_name];
life_wanted_list pushBack _queryResult; 
