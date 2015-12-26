_onScreenTime = 5;

sleep 5; //Wait in seconds before the credits start after player is in-game

_role1 = "Welcome"; //In yellow
_role1names = ["To Drunken Life"]; //In white
_role2 = "Developers";
_role2names = ["Ohmslaw, Valiant, Index"];
_role3 = "Restarts";
_role3names = ["Temp"];
_role4 = "Website";
_role4names = ["www.DrunkenLife.ca"];
_role5 = "Teamspeak";
_role5names = ["Temp"];
_role6 = "Enjoy";
_role6names = ["Have fun and follow the rules!"];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.40' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction]; //Changes colours
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
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
[_role6, _role6names]
];