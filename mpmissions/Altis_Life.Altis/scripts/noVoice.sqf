 while {true} do {
                
	waitUntil {((!isNull findDisplay 63) && (!isNull findDisplay 55))};
    
	if (ctrlText ((findDisplay 55) displayCtrl 101) == "\A3\ui_f\data\igui\rscingameui\rscdisplayvoicechat\microphone_ca.paa") then {
	
		sleep 1;
		
        if (ctrlText ((findDisplay 63) displayCtrl 101) == (localize "str_channel_side")) then 
		{
		
			//if (!(player getvariable ["usingVoice",false])) then
			//{
				//player setVariable["usingVoice",true];
				
				cutText["","BLACK OUT",0.1];
						
				//disableUserInput true;
			
				//["<t size = '0.8' shadow = '2' color = '#FF0000'>You are using voice in side chat! You will be kicked if you continue.</t>", 0, 1, 5, 2, 0, 1] spawn bis_fnc_dynamictext;
				
				if (isNil "warnings") then 
				{
					warnings = 0;
				}
				else
				{
					warnings = warnings + 1;
				};
				
				[] spawn
				{
					sleep 120;
					warnings = nil;
				};
				
				switch(warnings) do
				{
				
					case(0): 
					{
						["<t size = '0.8' shadow = '2' color = '#FF0000'>You are using voice in side chat! First warning. You will be kicked if you continue.</t>", 0, 1, 5, 2, 0, 1] spawn bis_fnc_dynamictext;
					};
				
					case(1): 
					{
						["<t size = '0.8' shadow = '2' color = '#FF0000'>You are using voice in side chat! Second warning. You will be kicked if you continue.</t>", 0, 1, 5, 2, 0, 1] spawn bis_fnc_dynamictext;
						playSound "flashbang";
					};
					
					case(2): 
					{
						["<t size = '0.8' shadow = '2' color = '#FF0000'>You are using voice in side chat! Third and final warning. You will be kicked if you continue.</t>", 0, 1, 5, 2, 0, 1] spawn bis_fnc_dynamictext;
						playSound "flashbang";
					};
					
					case(3): 
					{
						
						[[],"SOCK_fnc_updateRequest",false,false] spawn life_fnc_mp;
						
						sleep 2;
						
						if (isNull (findDisplay 7300)) then 
						{
							player setPos [0,0,0];
							[[0,format["%1 was kicked for side chat voice.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_mp;
							sleep 0.5;
							["noVoice",false,false] call BIS_fnc_endMission;
						};
					};
					
					default
					{
						warnings = 2;
					};
					
				};
				
				
				sleep 2;
			
				waitUntil {((isNull findDisplay 63) && (isNull findDisplay 55))};
				
				cutText["","BLACK IN",0.1];
			
				//disableUserInput false;
				
				//player setVariable["usingVoice",false];
				
			//};
						
		};
	};
};