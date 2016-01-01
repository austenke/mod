#define steamid getPlayerUID player
life_tagson = true;

//Block esc menu buttons
[] spawn {
	while{true} do
	{
	disableSerialization;
	waitUntil{!isNull (findDisplay 49)};
	_display49 = findDisplay 49;
	if (!isNull _display49) then
	{
		{
			_btn = _display49 displayCtrl _x;
			if (!isNull _btn) then
			{
				_btn ctrlSetText 'AntiHack';
				_btn ctrlEnable false;
				_btn buttonSetAction '';
				_btn ctrlCommit 0;
			};
		} forEach [16700,2];
			(_display49 displayCtrl 103) ctrlEnable false;
			(_display49 displayCtrl 103) ctrlSetText '';
			(_display49 displayCtrl 122) ctrlEnable false;
			(_display49 displayCtrl 122) ctrlShow false;
			(_display49 displayCtrl 523) ctrlSetText '';
			(_display49 displayCtrl 120) ctrlSetText 'ANTIHACK';
		};
	};
};

//Anti Teleport & Anti God Mode
[] spawn {
	while{true} do
	{
		if (!isNil 'life_adminlevel') then {
			if (!(typeName life_adminlevel == 'SCALAR')) then {
				if (call life_adminlevel == 0) then {
					onMapSingleClick '';
					//player allowDamage true;
					//vehicle player allowDamage true;
					sleep .5;
				};
			} else {
				onMapSingleClick '';
				//player allowDamage true;
				//vehicle player allowDamage true;
				sleep .5;
			};
		};
	};
};

//Anti ESP
[] spawn {
	disableSerialization;
	waitUntil {!(isNull (findDisplay 46))};
	while {true} do
	{
		sleep 10;
		onEachFrame {}; //Every 10 seconds reset this.
		if(life_tagson) then {LIFE_ID_PlayerTags = ["LIFE_PlayerTags","onEachFrame","life_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;};
		removeAllMissionEventHandlers "Draw3D"; //Workaround BLOCK
	};
};

[] spawn {
	while {true} do {
		_checkAllowed = [-1,602,5980,7730,88888,5546,666,39500,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2060,2070,2300,2400,2520,2600,2620,2650,2700,2800,2900,2901,2902,2903,3000,3100,3494,3500,7300,37400,38200,38300,38400,38500,39400,15100,15000];
		_break = true;
		{if (!isNull (findDisplay _x)) exitWith {_break = false;};} forEach _checkAllowed;
		if (_break) then {closeDialog 0;closeDialog 0;closeDialog 0;};
		uiSleep 0.25;
	};
};


[] spawn {
	while {true} do
	{
		if (!isNil 'life_adminlevel' && !isNil 'life_donator') then
		{
			if (typeName life_adminlevel == 'SCALAR') then
			{
				if (life_adminlevel > 0) then
				{
					[[profileName,format["DETECTED CHANGE IN ADMIN LEVEL, REPORT TO AN ADMINISTRATOR RIGHT AWAY"]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
					[[profileName,getPlayerUID player,"Change in Admin Level Detected"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
					sleep 0.5;
					vehicle player setVelocity[1e10,1e14,1e18]; //It's a surprise.
					sleep 3;
					preProcessFile "SpyGlass\endoftheline.sqf";
					sleep 2.5;
					failMission "SpyGlass";
				};
			};

			if (typeName life_donator == 'SCALAR') then
			{
				if (life_donator > 0) then
				{
					[[profileName,format["DETECTED CHANGE IN DONATOR LEVEL, REPORT TO AN ADMINISTRATOR RIGHT AWAY"]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
					[[profileName,getPlayerUID player,"Change in Donator Level Detected"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
					sleep 0.5;
					vehicle player setVelocity[1e10,1e14,1e18]; //It's a surprise.
					sleep 3;
					preProcessFile "SpyGlass\endoftheline.sqf";
					sleep 2.5;
					failMission "SpyGlass";
				};
			};

			if (call life_adminlevel == 0) then {
				_life_cash = life_cash;
				_life_atmcash = life_atmcash;
				uisleep 2;
				_one = life_cash + life_atmcash;
				_two = _life_cash+_life_atmcash;

				if (_one >= 100000000) then {
					[[profileName,format["60mil! Money hack/cheat detected!"]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
					[[profileName,getPlayerUID player,"Money Cheat Confirmed"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
					sleep 0.5;
					vehicle player setVelocity[1e10,1e14,1e18]; //It's a surprise.
					sleep 3;
					preProcessFile "SpyGlass\endoftheline.sqf";
					sleep 2.5;
					failMission "SpyGlass";
				};

				if (_one > (_two + 1000000)) then
				{
					//hint format["life_cash+life_atmcash increased from %1 to %2 within 2 seconds",[_two] call life_fnc_numberText,[_one] call life_fnc_numberText];
					[[profileName,format["DETECTED POSSIBLE MONEY HACK/CHEAT! REPORT TO AN ADMINISTRATOR RIGHT AWAY"]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
					[[profileName,getPlayerUID player,"Possible money cheat"],"SPY_fnc_observe",false,false] call life_fnc_MP;

				};
				if (_one > (_two + 2000000)) then
				{
					[[profileName,format["Money hack/cheat detected!"]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
					[[profileName,getPlayerUID player,"Money Cheat Very Likely"],"SPY_fnc_observe",false,false] spawn life_fnc_MP;
					sleep 0.5;
					vehicle player setVelocity[1e10,1e14,1e18]; //It's a surprise.
					sleep 3;
					preProcessFile "SpyGlass\endoftheline.sqf";
					sleep 2.5;
					failMission "SpyGlass";
				};
				uisleep 2;

				_badUniforms = ["U_O_Protagonist_VR","U_B_Protagonist_VR"];
				_uniform = uniform player;
				if (_uniform in _badUniforms) then {
					hint "You are using a cheated item, your gear has been stripped";
				    switch(playerSide) do {
				        case west: {
				            [] call life_fnc_copLoadout;
				        };

				        case civilian: {
				            [] call life_fnc_civLoadout;
				        };

				        case independent: {
				            [] call life_fnc_medicLoadout;
				        };
				    };
				};
			};
		};
	};
};