#include <macro.h>
/*
	File: fn_processAction.sqf
	Author: Bryan "Tonic" Boardwine
	edited by theInfinit (to process 2 Item to a combination)
	ajust for 4.0 by AC1D_R4iN
	Description:
	Master handling for processing an item.
*/
private["_vendor","_type","_itemInfo","_oldItem","_oldItem2","_newItem","_cost","_upp","_hasLicense","_itemName","_itemNameo1","_itemNameo2","_oldVal","_oldVal2","_ui","_progress","_pgText","_cP","_error1","_error2", "_min", "_license","_randp","_artefact"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 10)) exitWith {};
 
_error1 = false; // used below check the comment there ;) 
_error2 = false;
_min = 0;
//unprocessed item,processed item, cost if no license,Text to display (I.e Processing  (percent) ..."
 
_itemInfo = switch (_type) do
{
	case "oil": {_license = "oil";["oil_unprocessed","oil_processed",1200,(localize "STR_Process_Oil"), false];};
	case "diamond": {_license = "diamond";["diamond_uncut","diamond_cut",1350,(localize "STR_Process_Diamond"), false];};
	case "heroin": {_license = "heroin";["heroin_unprocessed","heroin_processed",4000,(localize "STR_Process_Heroin"), false];};
	case "copper": {_license = "copper";["copper_unrefined","copper_refined",750,(localize "STR_Process_Copper"), false];};
	case "iron": {_license = "iron";["iron_unrefined","iron_refined",1120,(localize "STR_Process_Iron"), false];};
	case "sand": {_license = "sand";["sand","glass",650,(localize "STR_Process_Sand"), false];};
	case "salt": {_license = "salt";["salt_unrefined","salt_refined",450,(localize "STR_Process_Salt"), false];};
	case "cocaine": {_license = "cocaine";["cocaine_unprocessed","cocaine_processed",3000,(localize "STR_Process_Cocaine"), false];};
	case "marijuana": {_license = "marijuana";["cannabis","marijuana",2000,(localize "STR_Process_Marijuana"), false];};
	case "cement": {_license = "cement";["rock","cement",350,(localize "STR_Process_Cement"), false];};
	case "mash": {_license = "stiller";["water","mash",100,"Grinding Cornmeal",true,"cornmeal"]};//new
	case "whiskey": {_license = "stiller";["yeast","whiskey",1000,"Fermenting Whiskey",true,"rye"]};//new
	case "beer": {_license = "liquor";["yeast","beerp",1500,"Brewing Beer",true,"hops"]};//new
	case "moonshine": {_license = "stiller";["yeast","moonshine",250,"Making Moonshine",true,"mash"]};//new
	case "bottledshine": {_license = "bottler";["moonshine","bottledshine",500,"Bottling Moonshine",false]};//new
	case "bottledbeer": {_license = "bottler";["beerp","bottledbeer",500,"Bottling Beer",false]};//new
	case "bottledwhiskey": {_license = "bottler";["whiskey","bottledwhiskey",500,"Bottling Whiskey",false]};//new
	default {[];};
};
 
//Error checking
if(count _itemInfo == 0) exitWith {};
 
//Setup vars.
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;
_2var = _itemInfo select 4;
if(_2var) then { _oldItem2 = _itemInfo select 5;};  
 
if(_vendor in [mari_processor,coke_processor,heroin_processor]) then {
	_hasLicense = true;
} else {
	_hasLicense = LICENSE_VALUE(_license,"civ");
};
 
_itemName = ITEM_NAME(_newItem);
_itemNameo1 = ITEM_NAME(_oldItem);
_oldVal = ITEM_VALUE(_oldItem);
_min = _oldVal;
//2vars
if(_2var) then { _oldVal2 = ITEM_VALUE(_oldItem2); }; 
 
if(_2var) then {
	if(_oldVal >= _oldVal2) then {_min = _oldVal2} else {_min = _oldVal};
	_itemNameo2 = ITEM_NAME(_oldItem2);
};
 
_cost = _cost * _min;
//Some more checks
if(_min == 0) exitWith {};
 
//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;
 
life_is_processing = true;
 
if(_hasLicense) then
{
	while{true} do
 
	{
		sleep  0.3;
		_cP = _cP + 0.02;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
		
	};
 
 
	if(player distance _vendor > 10) exitWith {hint localize "STR_Process_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};
 
	
		
	if(!([false,_oldItem,_min] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
	//2vars
	if(_2var) then 
	{
		
		([false,_oldItem2,_min] call life_fnc_handleInv);
		5 cutText ["","PLAIN"];
 
		titleText[format["You have processed %1 and %2 to %3.",_itemNameo1,_itemNameo2,_itemName],"PLAIN"];
	} else
	{
		
		5 cutText ["","PLAIN"];
		titleText[format["You have process %1 to %2.",_itemNameo1,_itemName],"PLAIN"];
	};
	if(!([true,_newItem,_min] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_min] call life_fnc_handleInv; life_is_processing = false;};
	life_is_processing = false;
			
 
}
else
{
	if(life_cash < _cost) exitWith {hint format["You need $%1 to process without a license!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
 
 
	while{true} do
	{
			sleep  0.9;
			_cP = _cP + 0.02;
			_progress progressSetPosition _cP;
			_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
			if(_cP >= 1) exitWith {};
			if(player distance _vendor > 10) exitWith {};
	};
 
 
	if(player distance _vendor > 10) exitWith {hint "You need to stay within 10m to process."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
 
	if(life_cash < _cost) exitWith {hint format["You need $%1 to process  without a license!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	
	if(!([false,_oldItem,_min] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
	//2vars
	if(_2var) then 
	{	
		([false,_oldItem2,_min] call life_fnc_handleInv);
		5 cutText ["","PLAIN"];
		titleText[format["You have process %1 and %2 to %3 for %4$.",_itemNameo1,_itemNameo2,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
	} else
	{
		
		5 cutText ["","PLAIN"];
		titleText[format["You have process %1 to %2 for %3$.",_itemNameo1,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
	};
	if(!([true,_newItem,_min] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_min] call life_fnc_handleInv; life_is_processing = false;};
	life_cash = life_cash - _cost;
	
	life_is_processing = false;
};