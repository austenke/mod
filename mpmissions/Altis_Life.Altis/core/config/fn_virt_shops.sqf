/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Market",["water","nitro","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","storagesmall","storagebig"]]};
	case "rebel": {["Rebel Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","ziptie","peach","boltcutter","blastingcharge","burlapsack","defib","speedbomb"]]};
	//case "gang": {["Gang Market", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	//case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	//case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "drugdealer": {["Drug Dealer",["cocaine_processed","heroinp","marijuana"]]};
	case "oil": {["Oil Trader",["oilp","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","redgull","defib","fuelF","defusekit"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
	case "moon": {["Moonshine Trader",["bottledshine"]]};
	case "bar": {["Bar",["bottledbeer","bottledwhiskey"]]};
};