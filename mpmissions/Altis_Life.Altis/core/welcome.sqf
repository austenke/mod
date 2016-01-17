/*
	File: welcome.sqf
	Author: ZedBuster
        Link: opendayz.net/threads/dayz-welcome-message-credits-style.13071/
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 5;

sleep 5; //Wait in seconds before the credits start after player is in-game

_role1 = "Welcome"; //In yellow
_role1names = ["To Drunken Life"]; //In white
_role2 = "Developers";
_role2names = ["Ohmslaw & Valiant & Index"];
_role3 = "Restarts";
_role3names = ["TBD"];
_role4 = "blank";
_role4names = ["blank"];
_role5 = "Website";
_role5names = ["www.DrunkenLife.ca"];
_role6 = "Teamspeak";
_role6names = ["TS.DrunkenLife.ca"];
_role7 = "Rules";
_role7names = ["Do not RDM or VDM, all rules are listed on the Website"];
_role8 = "Enjoy";
_role8names = ["Have fun and follow the rules!"];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.80' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction]; //Changes colours
_finalText = _finalText + "<t size='0.60' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.5,0.35], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names]
];