class Socket_Reciever
{
	tag = "SOCK";
	class SQL_Socket
	{
		file = "core\session";
		class requestReceived {};
		class dataQuery {};
		class insertPlayerInfo {};
		class updateRequest {};
		class syncData {};
		class updatePartial {};
	};
};

class Life_Client_Core
{
	tag = "life";
	
	class Master_Directory
	{
		file = "core";
		class setupActions {};
		class setupEVH {};
		class initCiv {};
		class initCop {};
		class initZeus {};
		class initMedic {};
		class survival {};
		class jip {};
	};

//	class Slots    ---------------In Development----------------
//	{
//		file = "core\casino\slots";
//		class slotInit {};
//		class slotPlay {};
//		class slotRandom {};
//		class slotRewards {};
//		class slotStat {};
//	};
	
	class Admin
	{
		file = "core\admin";
		class admininfo {};
		class adminid {};
		class admingetID {};
		class adminMenu {};
		class adminQuery {};
		class adminSpectate {};
		class adminTeleport {};
		class adminTpHere {};
		class adminTpTo {};
		class adminDebugCon {};
		class adminCompensate {};
		class adminGodMode {};
		class adminFreeze {};
		class adminMarkers {};
		class adminStealth {};
		class cashWipe {};
	};
	
	class Medical_System
	{
		file = "core\medical";
		class onPlayerKilled {};
		class onPlayerRespawn {};
		class respawned {};
		class revivePlayer {};
		class revived {};
		class medicMarkers {};
		class requestMedic {};
		class medicRequest {};
		class deathScreen {};
		class medicLoadout {};
		class medicSirenLights {};
		class medicLights {};
		class medicSiren {};
	};
	
	class Actions
	{
		file = "core\actions";
		class interactOil {};
		class scrollPickup {};
		class nearbyPickup {};
		class buyLicense {};
		class healHospital {};
		class pushVehicle {};
		class repairTruck {};
		class serviceChopper {};
		class catchFish {};
		class catchTurtle {};
		class dpFinish {};
		class dropFishingNet {};
		class getDPMission {};
		class postBail {};
		class processAction {};
		class arrestAction {};
		class escortAction {};
		class impoundAction {};
		class seizeAction {};
		class pulloutAction {};
		class putInCar {};
		class stopEscorting {};
		class restrainAction {};
		class searchAction {};
		class searchVehAction {};
		class unrestrain {};
		class pickupItem {};
		class pickupMoney {};
		class ticketAction {};
		class packupSpikes {};
		class storeVehicle {};
		class robAction {};
		class captureHideout {};
		class gather {};
		class gutAnimal {};
		class surrender {}; //surrender action
		class robShops {}; //Rob Gas Station & Shops Script
		class robBank {}; 
		class detonate {};
		class BagHostage {};
		class BaggedHostage {};
		class UnBagHostage {};
		class removeWeaponAction {};
		class PumpOil {};
		class processOil {};
		class sellOil {};
		class activateNitro {};
		class prisonBreak {};
	};
	
	class Housing
	{
		file = "core\housing";
		class buyHouse {};
		class getBuildingPositions {};
		class houseMenu {};
		class lightHouse {};
		class lightHouseAction {};
		class sellHouse {};
		class initHouses {};
		class copBreakDoor {};
		class raidHouse {};
		class lockupHouse {};
		class copHouseOwner {};
		class lockHouse {};
		class garageRefund {};
		class gangHouseAction {};
	};
	
	class Config
	{
		file = "core\config";
		class itemWeight {};
		class taxRate {};
		class vehicleAnimate {};
		class weaponShopCfg {};
		class vehicleWeightCfg {};
		class houseConfig {};
	};

	class Player_Menu
	{
		file = "core\pmenu";
		class wantedList {};
		class wantedInfo {};
		class wantedMenu {};
		class pardon {};
		class giveItem {};
		class giveMoney {};
		class p_openMenu {};
		class p_updateMenu {};
		class removeItem {};
		class useItem {};
		class cellphone {};
		class keyMenu {};
		class keyMenu2 {};
		class keyGive {};
		class keyDrop {};
		class s_onSliderChange {};
		class updateViewDistance {};
		class settingsMenu {};
		class s_onChar {};
		class s_onCheckedChange {};
		class chargeCrime {};
	};
	
	class Functions
	{
		file = "core\functions";
		class UnLockCarSound {};
		class LockCarSound {};
		class robbankdone {};
		class bankAlarm {};
		class robberyFinish {};
		class robberyStart {};
		class robberyFail {};
		class calWeightDiff {};
		class fetchCfgDetails {};
		class handleInv {};
		class hudSetup {};
		class hudUpdate {};
		class tazeSound {};
		class introsound {};
		class animSync {};
		class simDisable {};
		class keyHandler {};
		class dropItems {};
		class handleDamage {};
		class numberText {};
		class handleItem {};
		class accType {};
		class receiveItem {};
		class giveDiff {};
		class receiveMoney {};
		class playerTags {};
		class clearVehicleAmmo {};
		class pullOutVeh {};
		class nearUnits {};
		class actionKeyHandler {};
		class playerCount {};
		class fetchDeadGear {};
		class loadDeadGear {};
		class isnumeric {};
		class escInterupt {};
		class onTakeItem {};
		class fetchVehInfo {};
		class pushObject {};
		class onFired {};
		class revealObjects {};
		class nearestDoor {};
		class inventoryClosed {};
		class inventoryOpened {};
		class isUIDActive {};
		class saveGear {};
		class loadGear {};
		class stripDownPlayer {};
		class nearATM {};
		class fadeSound {};
		class vdmed {};
		class speedBomb {};
		class Uniformscolor {};
		class insurance {};
		class handleFlashbang {};
		class copAutoGear {};
	};
	
	class Network
	{
		file = "core\functions\network";
		class broadcast {};
		class MP {};
		class MPexec {};
		class corpse {};
		class jumpFnc {};
		class soundDevice {};
		class setFuel {};
		class setTexture {};
		class say3D {};
		class findTransactionMethod {};
	};
	
	class Civilian
	{
		file = "core\civilian";
		class jailMe {};
		class jail {};
		class breakout {};
		class tazed {};
		class knockedOut {};
		class knockoutAction {};
		class robReceive {};
		class robPerson {};
		class removeLicenses {};
		class demoChargeTimer {};
		class civLoadout {};
		class freezePlayer {}; //Add This
		class punchBalls {};
      	class punchBallsAction {};
      	class suicideVest {};
      	class handledowned {};
      	class removeWeapons {};
	};
	
	class Vehicle
	{
		file = "core\vehicle";
		class colorVehicle {};
		class openInventory {};
		class lockVehicle {};
		class vehicleOwners {};
		class vehStoreItem {};
		class vehTakeItem {};
		class vehInventory {};
		class vInteractionMenu {};
		class vehicleWeight {};
		class deviceMine {};
		class addVehicle2Chain {};
	};
	
	class Cop
	{
		file = "core\cop";
		class copMarkers {};
		class copLights {};
		class vehInvSearch {};
		class copSearch {};
		class bountyReceive {};
		class searchClient {};
		class restrain {};
		class ticketGive {};
		class ticketPay {};
		class ticketPrompt {};
		class copSiren {};
		class spikeStripEffect {};
		class radar {};
		class questionDealer {};
		class copInteractionMenu {};
		class sirenLights {};
		class licenseCheck {};
		class licensesRead {};
		class repairDoor {};
		class doorAnimate {};
		class fedCamDisplay {};
		class copLoadout {};
		class ticketPaid {};
		class breathalyzer {};
		class copEnter {};
	};
	
	class Gangs
	{
		file = "core\gangs";
		class initGang {};
		class gangPayout {};
		class createGang {};
		class toggleCaptureUI {};
		class updateCaptureUI {};
		class gangCreated {};
		class gangMenu {};
		class gangKick {};
		class gangLeave {};
		class gangNewLeader {};
		class gangUpgrade {};
		class gangInvitePlayer {};
		class gangInvite {};
		class gangDisband {};
		class gangDisbanded {};
		class gangMarkers {};
		class gangPromote {};
	};
	
	class Shops
	{
		file = "core\shops";
		class atmMenu {};
		class buyClothes {};
		class changeClothes {};
		class clothingMenu {};
		class clothingFilter {};
		class vehicleShopMenu {};
		class vehicleShopLBChange {};
		class vehicleShopBuy {};
		class weaponShopFilter {};
		class weaponShopMenu {};
		class weaponShopSelection {};
		class weaponShopBuySell {};
		class virt_buy {};
		class virt_menu {};
		class virt_update {};
		class virt_sell {};
		class chopShopMenu {};
		class chopShopSelection {};
		class chopShopSell {};
	};
	
	
	class Items
	{
		file = "core\items";
		class pickaxeUse {};
		class lockpick {};
		class spikeStrip {};
		class jerryRefuel {};
		class flashbang {};
		class boltcutter {};
		class blastingCharge {};
		class defuseKit {};
		class storageBox {};
		class weed {};
		class drinkbeer {};
		class drinkmoonshine {};
		class drinkwhiskey {};
		class chainsawUse {};
		class nitro {};
	};
	
	class Dialog_Controls
	{
		file = "dialog\function";
		class setMapPosition {};
		class displayHandler {};
		class spawnConfirm {};
		class spawnMenu {};
		class spawnPointCfg {};
		class spawnPointSelected {};
		class progressBar {};
		class impoundMenu {};
		class unimpound {};
		class sellGarage {};
		class bankDeposit {};
		class bankWithdraw {};
		class bankTransfer {};
		class garageLBChange {};
		class safeInventory {};
		class safeOpen {};
		class safeTake {};
		class safeFix {};
		class vehicleGarage {};
		class gangDeposit {};
		class gangWithdraw {};
		class wireTransfer {};
		class cashWipeMe {};
		class pickupItems {};
	};

	/*
	class Mayor
	{
		file = "core\mayor";
		class openBallotMenu {};
		class populateBallotMenu {};
		class selectBallotMenu {};
		class voteBallotMenu {};
		class applyBallotApplicationMenu {};
		class openBallotApplicationMenu {};
		class openBallotApplicationMenuClient {};
	};
	*/

	class Cam
	{
	   file ="core";
	   class IntroCam {};
	};
};