/*
	Author: Index
*/
disableSerialization;
_display = findDisplay 9000;
_list = _display displayctrl 9001;

createDialog "life_add_wanted";

_crimes = ["187 - Manslaughter","901 - Escaping Jail",
	"215 - Attempted Auto Theft","213 - Use of Illegal Explosives",
	"211 - Robbery","207 - Kidnapping","207A - Attempted Kidnapping",
	"487 - Grand Theft","488 - Petty Theft","480 - Hit and Run","481 - Drug Posession",
	"482 - Intent To Distribute","483 - Drug Trafficking","459 - Burglary","390 - Public Intoxication"];

{
	_list lbAdd format["%1", _x];
	_list lbSetData [(lbSize _list)-1,str(_x)];
} foreach _crimes;