private["_uid","_crimes","_query","_queryResult"];
_uid = [_this,1,"",[""]] call BIS_fnc_param;
_crimes = [_this,0,[],[[]]] call BIS_fnc_param;
_crimes = [_crimes] call DB_fnc_mresArray;

_query = format["wantedSave:%1:%2",_crimes,_uid];
waitUntil{!DB_Async_Active};
_queryResult = [_query,1] call DB_fnc_asyncCall;
