/*
	File: fn_gagAction.sqf
	Author: lowheartrate
	Assistance by: Panda
	
	Description:
	What happens to the player when gagged.
*/
private["_gagger"]

_gagger = param[0,ObjNull,[ObjNull]];

hint format["You have been gagged by %1.", _gagger getVariable["realname",_gagger]];
titleText ["You have been gagged you cannot speak!", "PLAIN"];

5 enableChannel false;
//Disable Group Chat
3 enableChannel false;
//Disable Vehicle Chat
4 enableChannel false;
//Disable Side Chat
7 enableChannel false;

waitUntil{!(player getVariable ["gagged",false]) OR !(player getVariable ["restrained",false])};
hint "You are not gagged anymore you can speak now!";
titleText ["You have been ungagged!", "PLAIN"];
5 enableChannel true;
3 enableChannel true;
4 enableChannel true;
7 enableChannel true;