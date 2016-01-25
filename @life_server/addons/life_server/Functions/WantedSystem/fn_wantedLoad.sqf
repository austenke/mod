// Thanks to Kevin Webb for initial source

private["_uid","_name","_query","_queryResult"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;

_query = format["wantedLoad:%1",_uid];
waitUntil{!DB_Async_Active};

_queryResult = [_query,2] call DB_fnc_asyncCall;

if(typeName _queryResult select 0 == "STRING") then {_queryResult = call compile format["%1", _queryResult select 0];};

if (!(typeName _queryResult == "ARRAY")) then {_queryResult = [];};
if(count _queryResult < 2) exitWith {};

_queryResult set[0,_name];
life_wanted_list pushBack _queryResult; 
