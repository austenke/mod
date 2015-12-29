_query = format["CARTELS_Check"];

waitUntil{sleep (random 0.3); !DB_Async_Active};
_tickTime = diag_tickTime;
_queryResult = [_query,2] call DB_fnc_asyncCall;

if (count _queryResult < 1) then {
	diag_log "########################## INDEX ##########################";
	diag_log "### >> CAN'T LOAD INFO FROM DATABASE                    ###";
	diag_log "###########################################################";
} else {
	INDEX_Cartels_Info  = _queryResult;
	diag_log "########################## INDEX ##########################";
	diag_log "### >> SUCCESSFULLY LOADED INFO                         ###";
	diag_log "###########################################################";
};