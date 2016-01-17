waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Recent Change Logs"];
player createDiarySubject ["serverrules","Server Rules"];
player createDiarySubject ["policerules","Police GuideBook"];
player createDiarySubject ["civrules","Rebel/Civ Info"];
player createDiarySubject ["illegal","Illegal Possessions"];
player createDiarySubject ["controls","Controls"];
player createDiarySubject ["DLstuff","Drunken Life"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Change Log Update 12/2/15",
				"
Added a ton of item icons<br/><br/>

Started work on manual crime charge menu<br/>

Fixed vehicle prices<br/><br/>

Increased capacity of police vest<br/><br/>

Start work on actual item gather (real 3d items)<br/><br/>

Fixed bug with civilian revives<br/><br/>

Extended Oil Rig platform<br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Ghosting or Metagaming", 
				"
Using the multi server system with syncing to give you or your gang an advantage in any way.<br/><br/>

Leaking information from a secondary gang to your primary gang to gain advantage is metagaming.
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Trolling and Racism", 
				"
A high level of Trolling can be a bannable offense. Dont be a dick or continue toxicity for long periods of time.<br/><br/>

Racism is against the rules, in and out of character.
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Combat Logging and Exploiting", 
				"
Do not exit the game, return to lobby, or respawn to avoid a role-play situation.<br/><br/>

Another player breaking rules does not give you the right to combat log.<br/><br/>

This rule also applies to storing vehicles. This includes, but is not limited to, being engaged in a firefight, being chased, or having your vehicle stolen after you pull it from the garage.<br/><br/>

Duping items and/or money is bannable. If someone sends you an unobtainable amount of money right at the start of the game, report to an admin IMMEDIATELY. We have Money logs to monitor the entire economy.<br/><br/>

Using clearly hacked items. If a hacker comes in and spawns unobtainable items, you could be banned for using said items. Report the items to the admins immediately and stay away from them.<br/><br/>

Knowingly using a bug or glitch to your advantage or another's detriment is not allowed.	
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"New Life Rules (NLR)", 
				"
New Life Rules applies to all areas of the map except Kill on Sight (KOS) zones.<br/><br/>

If you die in one particular area you are not allowed to respawn within the same city you died in. If you are traveling around the map, you are not allowed to be within 2 kilometers from your death scene.<br/><br/>

Grey-Area: If you are traveling to Athira, and died there by a specific gang who stole your chopper, you may respawn to another location. If you see your old chopper 2 kilometers away at another location you may then initiate or chase them. However if you go straight to the Chop shop without visually seeing them since your respawn you will be banned.
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Communication Rules and Teamspeak Rules", 
				"
You must make sure you have your in-game effects volume turned up! This is the sound level for your direct communication. VON is used for Vehicle, Group, and Side.<br/><br/>

No voice on side chat as well as promoting other servers of any kind.<br/><br/>

If you wish to initiate on a player, give the player 5 seconds to respond to your demands before shooting. If the player poses a threat, ex: He's armed and looks straight at you during the 5 second initiation you may shoot him for your safety.<br/><br/>

Side Chat may not be used to play music or otherwise micspam.<br/><br/>

Teamspeak channels are split up into areas for a reason. Police Officers must be in the Police Teamspeak at all times unless off-duty. Our teamspeak is ts.DrunkenLife.ca <br/><br/>

Civilians cannot be in any police channels on teamspeak in order to gather information on their location, movements, or to resolve a problem. If a problem persists, please contact your Admin to settle the issue. Civs caught doing this will be removed the channel. Repeat offenders can be kicked or banned from both the game and teamspeak.
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Kill on Sight (KOS)", 
				"
Cartels, Federal Reserves, Chop Shops, Store Robberies, and Rebel Outposts are all Kill on Sight. These locations are exempt from RDM rule. Traveling to these areas are at your own risk, please consider your security before going into those areas.
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"Vehicular Death Match (VDM)", 
				"
Vehicular Death Match is using your vehicle as a weapon to kill or injure a player intentionally.<br/><br/>
				
If you run over a player accidently you will be charged for Vehicular Manslaughter, police and administration will keep track of your vehicular manslaughter counts to determine whether you're breaking the rules intentionally or not over time.<br/><br/>

If you run over a player accidently, please consider getting your charges appealed by an A.P.D. Officer explaining the situation. This is up to your discretion to get an appeal.
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Random Death Match (RDM)",
				"
Random Death Match is using your gun as a weapon without initiating verbal contact, sending text message in-game, or by any means to kill a player without establishing a way to notify the person that his life is in danger.<br/><br/>

If you wish to initiate on a player, give the player 5 seconds to respond to your demands before shooting. If the player poses a threat, ex: He's armed and looks straight at you during the 5 second initiation you may shoot him for your safety.
				"
		]
	];
	
// Police Section
	player createDiaryRecord ["policerules",
		[
			"Last updated 12/2/15",
				"
The Police Rules and Guidebook has been updated and modified by the Altis Chief of Police. nKitsu
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"The Federal Reserve",
				"
The Federal Reserve is illegal for civilians to enter, unless they have been given authorization. If civilians enter without authorization they are to be escorted off-site or ticketed if they persist.<br/><br/>

Helicopters flying over the Federal Reserve may be asked to leave and disabled if they refuse.<br/><br/>

If the Federal Reserve is getting robbed, it is mandatory that all available officers move in to stop it.<br/><br/>

Nearby officers should immediately head to the Federal Reserve to assist. Petty crimes can be dropped during a robbery.<br/><br/>

Lethal force may only be authorized by the highest ranking officer. Always start with Taze bullets, roleplay is automatically intiated between two parties. (Police and Rebels)<br/><br/>

Any civilian who actively makes an attempt to block the police from entering the building may be arrested or ticketed.				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Illegal Area Policy",
				"
You may enter any drug-related area and camp for a maximum of 5 minutes. Read Raiding/Camping Policy for more information. After you finish holding the hideout for 5 minutes, you may not return for 30 minutes unless you're in pursuit of a player back into the area.<br/><br/>

Police may NEVER enter any Drug Cartels or Rebel Outposts. If there's a situation of going into pursuit of suspects into these two areas you are allowed to continue the chase but request backup immediately. If there's a hostage situation and you've discovered evidence that it's being held at these two locations, you are to ask your highest ranking officer to handle the raid.
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Checkpoint Procedures",
				"
Cops are encouraged to setup checkpoints in strategic areas to help combat illegal activity and promote safety on the road.<br/><br/>
				
A checkpoint must consist of 3 or more officers, utilizing 2 or more vehicles. An ATV does not count as one of the required vehicles, but may still be used.<br/><br/>

A checkpoint can not be setup within 300m of an illegal area.(Except Weed Fields)<br/><br/>

Checkpoints do not have to be marked on the map.


Proper Checkpoint Procedure:<br/><br/>

Have the driver stop the vehicle at a safe distance and turn off the engine.<br/><br/>

Ask the driver and any passengers if they have any weapons.<br/><br/>
				
3. Ask the driver and any passengers to exit the vehicle. If they have weapons, do not immediately restrain them when they get out, tell them to lower their weapons and given them a reasonable amount of time to do so.<br/><br/>

Ask them where they are headed to and from.<br/><br/>

Ask if they will submit to a search.<br/><br/>

If they consent to a search, you may tell the civilians to stand 15 meters back to search their car. Or restrain them if they consent to restraints.<br/><br/>

If they do not submit to a search, you must let them go, unless there is probable cause.<br/><br/>

After the search is done, you may allow them to re-enter their vehicle and drive away.<br/><br/>

In case anything illegal is found, the person may be ticketed or arrested depending on the crime.
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Vehicles and Aviations",
				"
Vehicles in the parking lot, or are reasonably parked elsewhere should be left alone.<br/><br/>

Vehicles that look abandoned, broken, with no driver, can be impounded after texting the registration owner and wait a good 60 seconds for a response.<br/><br/>

Boats should be parked reasonably on shore that creates no harm to marine life.<br/><br/>

Any vehicle that hasn't moved in a significant amount of time may be impounded, around 10 minutes or more.<br/><br/>

Impounding is an essential job for a cop, it helps keep the streets clean and more efficient.<br/><br/>

You may have permission to search and or sieze a vehicle if it has drugs passing the value or $50,000.<br/><br/>

Helicopters are allowed to land in City-Limits at ANY time if it's in a reasonable area. If it's not in a reasonable area but the civilian has a good reason to land there, you may decide on the issue.<br/><br/>

A helicopter flying under 150m above city limits must be texted to raise aviation to 200m. If the pilot is planning to land out of obviousness, please let them land in proper areas. If they refuse to follow your orders you need to get your group units to higher ground and send them a warning shot. If he/she is still refusing to raise aviation, you may take it down with force.
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Traffic Safety", 
				"
The following speeds are to be enforced by the Altis Police Dep. for the absolute safety of the citizens of Kavala and throughout Altis.<br/><br/>
				
City Speed Limit: 50km/hr<br/>
Public Highways: 115km/hr<br/>
Country Roads: 80km/hr<br/><br/>

Offroading is considered dangerous, you may be questioned to search for suspicion. If you are caught offroading 300 meters from an illegal area the officer has the right to search you without consent. After this procedure has passed, the officer will request you to drive on roads, failure to do this will be charged for violating Law # 8.7 in the Guidebook.
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Police Ticket/Charge Guidebook",
				"
8.0 - Manslaughter<br/><br/>

Killing a human in a way without reason is guilty of Manslaughter. Pushing bodies off the cliffs, houses, or any higher ground making them die is also guilty of Manslaughter.<br/><br/>


8.1 - Attempted Manslaughter<br/><br/>

An attempt to point, shoot, injure, or plan to kill an officer, civilian, medic, or any human being is guilty of attempt to kill.<br/><br/>


8.2 - Hit and Run (Vehicular Manslaughter)<br/><br/>

Hitting a person unlawfully and driving away without feelings for the humans eating rubber tires all day is guilty by Altis Law.<br/><br/>


8.3 - Evading Arrest<br/><br/>

Refusal to halt by an officer may sometimes lead to Disobeying order from officer. If a higher degree of refusal or avoiding an officer with an intent to kill you will be charged for Evading Arrest.<br/><br/>


8.4 - Possession of Police Equipment<br/><br/>

Possession of any clothing, equipment, or weapons issued by the A.P.D. (Altis Police Department) without proper consent of an Officer. Firearms and Clothing are by no circumstance authorized.<br/><br/>


8.5 - Possession of Illegal Firearm<br/><br/>

Possession of a firearm without being issued a certified firearm license is accountable to the crime for owning a firearm illegally.<br/><br/>

Possession of any guns that you can't buy from the Firearms store in a city is guilty of possession of an illegal firemarm.<br/><br/>


8.6 - Possession of Illegal Vehicle<br/><br/>

Possession of a 50 cal or an Ifrit is considered illegal and have no place here on Altis.<br/><br/>


8.7 - Disobeying Orders from Officer<br/><br/>

Threatening an officer after being requested to stop, refusing to halt when ordered, or given a simple order and showing your refusal to comply will be guilty under Altis Law.<br/><br/>


8.8 - Public Intoxication<br/><br/>

Intoxication of Narcotics or Alcohol is against humanity here on Altis.<br/><br/>


8.9 - Possession of Marijuana<br/><br/>

Possession of Marijuana is illegal and forbidden by Altis Law due to lack of critical thinking causing more harm than good to motivational skills, physical exercise, and increase the obesity rates by 35 percent..<br/><br/>


9.0 - Possession of Cocaine<br/><br/>

Possession of Cocaine is illegal and forbidden by Altis Law due to high chance of organ failure and may cause depression or excessive adrenaline causing the heart to experience sharp pain and leading to fatal heart attacks.<br/><br/>


9.1 - Possession of Moonshine<br/><br/>

Possession of Moonshine is illegal and forbidden by Altis Law due to scientific research that Moonshine contains a deadly virus infected alcohol that's known to consume your brain cells.<br/><br/>


9.2 - Hostage<br/><br/>

Any members being associated or involved with holding a person/group hostage under your command or being associated with the commanders group will be subjected to holding a person hostage.<br/><br/>


9.3 - Terrorism<br/><br/>

Any members being associated with a gang or a 3rd party group that has declared war on town is guilty under the charge of Terrorism.<br/><br/>

Possession of a Suicide Vest shows the intent to commit terrorism and detonating a Suicide Vest will automatically charge the criminal for the same crime.<br/><br/>

Being associated with a 50 caliber within 1 km of city limits will be subject to Terrorism.<br/><br/>


9.4 - Disturbing the Peace<br/><br/>

Anyone being a general nuisance or disturbing the public is guilty of disturbance.<br/><br/>


9.5 - Firearm Trafficking.<br/><br/>

Possession of over 2 Primary Firearms and/or 3 Secondary Firearms is subjected to being guilty of Weapon Trafficking.
				"
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"Use of Police Sirens", 
				"

Police Sirens should only be enabled when you are in active pursuit or commanded to do so by higher rank.<br/><br/>

You may use flashing emergency lights if you're speeding on any traffic, to let the public know you're in a rush.
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Use of Non-Lethal Force",
				"
At this time the Taser (police weapons only) is the only form of Non-Lethal Force.<br/><br/>

Taser should be used to incapacitate non complying civilians in order to restrain them.<br/><br/>

Do not discharge your Taser unless you intend to incapacitate a civilian, randomly discharging your weapon will result in getting marked.
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Raiding/Camping",
				"
Raiding is defined as a squad of police officers invading an area of high criminal activity in order to stop the criminals in illegal acts.<br/><br/>

In order to raid a home, the cops must request backup and ask the highest ranking officer for permission to raid a home. Police must call for backup before raiding a location of an illegal area. You may conduct a solo raid into a location AFTER requesting backup but if you die in the process you take responsibility for your actions. If you respawn, you may not return.<br/><br/>

All civilians in a raid area may be restrained if they ignore your demands to leave. You may also charge them for disboying order from an officer.<br/><br/>

If illegals are found during a search, you may proceed to arrest or fine the suspects potentially involved. (be careful here)<br/><br/>

Lethal force is only authorized as described under 'Use of Lethal Force'.<br/><br/>

After the area is secure and raiding is complete, the officers must leave the area.<br/><br/>

An area cannot be raided again for 30 minutes minutes after a previous raid.<br/><br/>

If the raid is a failure (All officers die), the 30 minute timer comes into effect and you may not return.<br/><br/>

Camping is defined as the prolong stay of an officer in an area.<br/><br/>

Checkpoints are not considered camping. Checkpoints are considered governmental property to be used by APD.<br/><br/>

Camping of an illegal area may never exceed longer than 5 minutes when you do not see any form of contact or a suspect. If you do see someone, you may stay a bit longer until you get the situation under control by requesting backup.
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Chain of Command",
				"
The highest ranking officer on duty is in charge of the police force outside of admins currently online. The highest ranking officer is expected to follow the rules and guidelines of his/her rank, and must report to the admin in case any action need be taken.<br/><br/>

				Police Chain of Command:<br/><br/>
				1. Chief<br/>
				2. Captain<br/>
				3. Lieutenant<br/>
				4. Sergeant<br/>
				5. Corporal<br/>
				6. Constable<br/>
				7. Cadets<br/><br/>

It is your responsibility to contact an admin if you are not registered under a proper rank on the forums or Teamspeak.<br/><br/>

Our Forums: DrunkenLife.ca<br/>
Our Teamspeak: ts.DrunkenLife.ca
			"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Use of Lethal Force",
				"
Use of lethals is only permitted by the highest ranking officer online. Only times Lethals are necessary is when you can't make any effort to compromise the situation with use of tracers. You must always ask the highest ranking officer online. The lowest ranking officer allowed to authorize lethals if no higher officers are present is Corporal, and the Corporal or higher rank will take responsibility for authorizing this command.<br/><br/>

Discharging of a weapon when not under threat or not during training exercises is not allowed. Officers caught in violation of this rule must join a training within 2 weeks prior to your violation. This is mandatory unless you appeal to this offense to a Lieutenant or up.<br/><br/>

Failure to follow proper weapons discipline and procedure will get you marked. If you exceed a # of points you will be demoted or blacklisted from the force.
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Police Requirements",
				"
All cops must be on Teamspeak 3 in a designated cop channel before you connect to the police slot. Failure to be on Teamspeak during your police shift will get you marked. If you exceed a # of marks you will be demoted or blacklisted.<br/><br/>

Your most powerful weapon is your voice, please use it as your primary weapon and your use of force as your secondary weapon. You will represent the entire government structure of Altis. You will serve for the peaceful law abiding civilians of Altis to make sure our nation is under peace and prosperity.<br/><br/>

Each ranking officer is only permitted a certain equipment locker in the Headquarters. If you wear any other equipment issued from a higher rank, you will get marked. You must wear your police uniform and gear at all times unless there's a reason not to in terms of Roleplay.<br/><br/>

Cadets must be with a Constable or higher to instruct training procedures in Altis. If you witness a Cadet without his tutor please report it to a higher ranking officer confidentially.
				"
		]
	];
	
	player createDiaryRecord ["civrules",
		[
			"Declaring War",
				"
If you are to declare a war on a specific town, you must have a minimum of 8 cops online and make a request to an admin. After approval you need to send a text to the entire police warning them 5 minutes in advance before you approach the city.<br/><br/>

Only one war may be established at a time, any 3rd party gang being in between the gang and the police is shoot on sight. Any unarmed civilians need to be roleplayed to meet your demands, failure to meet your demands will be your decision to execute or spare their life.<br/><br/>

If a medic comes in between an active firefight between you and the police, you are permitted to kill the medic without roleplay. Medic takes responsibility and risk for walking into an active firefight. This is only during the effect of war, if there is no war at the time and he walks into an active firefight within 300 meters of city limits, you MUST roleplay with him. Don't be tricked!
				"
		]
	];

	player createDiaryRecord ["civrules",
		[
			"Robbing the Federal Reserve",
				"
Federal Reserve can only be robbed when there's a minimum of 5 police officers online, this will increase to 8 when population grows. Any hostile contact approaching the fed within 1 kilometers is shoot on sight. Except civilians driving on traffic unless they're hostile and intend to approach you.<br/><br/>

Medic can also be shot on sight, they may approach from time to time to save a life of a citizen, a police, or your gang members. This is a risky decision based your choice to spare his life or kill him.
				"
		]
	];

	player createDiaryRecord ["civrules",
		[
			"Cartels",
				"
You are permitted to kill anyone on sight airborne or on ground within 850 meters of the Cartel. This is an activity specifically designed for Rebels to participate in, police are not allowed to approach the Cartels under any circumstance unless a hostage has been taken place. Police can follow you into the Cartels if they're in active pursuit, but once losing visual contact they must not continue pursuit.<br/><br/>

Cartels will take a cut on drugs produced by civilians, a percentage of drugs will go to your gang bank which will be used to your gang leaders discretion. For Gang Paychecks, or upgrades.
				"
		]
	];
	
	player createDiaryRecord ["illegal",
		[
			"Illegal Vehicles",
				"
A civilian in control of the following vehicles is guilty in possession of an illegal vehicle by Altis Law.<br/><br/>

Ifrit<br/>

50 Cal.<br/>

Police Vehicles under Civilian Possession<br/>

Medic Vehicles under Civilian Possession<br/>

Stolen Vehicles illegally obtained by another Civilian.
				"
		]
	];

	player createDiaryRecord ["illegal",
		[
			"Illegal Items",
				"
Any weaponry, explosives, or items used to commit a crime purchased from a Rebel Outpost or in the blackmarket is an illegal item.<br/><br/>

Any legal or illegal firearm obtained without a certified Firearm license is an illegal weapon.<br/><br/>

Possession of any Narcotics such as Marijuana and Cocaine is an illegal item and will be confiscated by the police department.<br/><br/>

Possession of Oil from Oil Rigs are illegal<br/><br/>

Possession of Moonshine is extremely illegal as the President of Altis declared Moonshine as 'poisonous' to the economy and the health of all Civilians.<br/><br/>

Possession of Police Equipment is an illegal item, however goes under a different charge. 'Violation for Possession of Police Equipment'
				"
		]
	];

	player createDiaryRecord ["controls",
		[
			"Player Controls",
				"
DEL: Earplugs reduce sound by 20 percent.<br/><br/>

Y: Open Player Menu<br/><br/>

U: Lock and unlock cars<br/><br/>

F: Cop Siren (if cop)<br/><br/>

T: Vehicle Trunk<br/><br/>
Left Shift + R: Restrain (Cop Only)<br/><br/>

Left Shift + G: To place your hands up<br/><br/>

Left Windows: Main Interaction key which is used for picking up items/money, gathering, interacting with cars (repair,etc) and for cops to interact with civilians. Can be rebound to a single key like H by pressing ESC->Configure->Controls->Custom->Use Action 10<br/><br/>

Left Shift + L: Activates cop siren lights (as a cop).<br/><br/>

Left Shift + H: Holster's your pistol<br/><br/>

Left Shift + F: Unholster's your weapon<br/><br/>
				"
		]
	];

	player createDiaryRecord["DLstuff",
		[
			"Drunken Life Info",
				"
Welcome to Drunken Life server!<br/><br/>

If you are interested to join our Forums please visit us at<br/>
DrunkenLife.ca<br/><br/>

If you want to join our community on Teamspeak please connect us at<br/>
TS.DrunkenLife.ca<br/><br/>
				"
		]
	];

	player createDiaryRecord["DLstuff",
		[
			"DL Credits",
				"
The Developers of the server are credited by Valiant, Ohmslaw, and Index.<br/><br/>

The Owner of the website and photo icons credits are credited by nKitsu<br/><br/>

The Textures of skins were added to the server by Ohmslaw<br/><br/>
				"
		]
	];
