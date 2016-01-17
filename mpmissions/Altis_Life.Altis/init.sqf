StartProgress = false;
enableSaving[false,false];

if (!isDedicated) then {
	[] execVM "core\welcome.sqf";

life_versionInfo = "Altis Life RPG v3.1.5";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "scripts\Visuals.sqf";
[] execVM "scripts\fn_statusBar.sqf";
[] execVM "IgiLoad\IgiLoadInit.sqf";

StartProgress = true;