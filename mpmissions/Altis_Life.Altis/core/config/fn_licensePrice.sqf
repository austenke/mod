/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {10000}; //Drivers License cost
	case "boat": {20000}; //Boating license cost
	case "pilot": {500000}; //Pilot/air license cost
	case "gun": {25000}; //Firearm/gun license cost
	case "dive": {15000}; //Diving license cost
	case "oil": {100000}; //Oil processing license cost
	case "cair": {500000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "cg": {20000}; //Coast guard license cost
	case "heroin": {500000}; //Heroin processing license cost
	case "marijuana": {500000}; //Marijuana processing license cost
	case "medmarijuana": {500000}; //Medical Marijuana processing license cost
	case "gang": {10000}; //Gang license cost
	case "rebel": {2000000}; //Rebel license cost
	case "truck": {20000}; //Truck license cost
	case "diamond": {500000};
	case "salt": {300000};
	case "cocaine": {500000};
	case "sand": {500000};
	case "iron": {100000};
	case "copper": {5000};
	case "cement": {5000};
	case "mair": {20000};
	case "home": {1000000};
};