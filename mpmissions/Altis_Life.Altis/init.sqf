StartProgress = false;
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.5";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "teargas.sqf";
[] execVM "scripts\Visuals.sqf";
[] execVM "scripts\fn_statusBar.sqf";

StartProgress = true;