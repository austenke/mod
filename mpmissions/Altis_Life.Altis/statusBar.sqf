waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

_rscLayer = "statusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["statusBar","PLAIN"];
systemChat format["*Welcome and have a drunken good time!* %1!", _rscLayer];

[] spawn {
	sleep 5;
	_statusText = "Welcome";
	_counter = 180;
	_timeSinceLastUpdate = 0;
	while {true} do
	{
		sleep 1;
		_counter = _counter - 1;
		_statusText = "Teamspeak: |ts.drunkenlife.ca|www.drunkenlife.ca|";
		((uiNamespace getVariable "statusBar")displayCtrl 1000)ctrlSetText format["%3 | FPS: %1 | Humains vivants : %2 | TS : ts.drunkenlife.ca  ", round diag_fps, count playableUnits, _statusText, _counter];
	};
};
