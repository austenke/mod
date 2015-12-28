class mayor_ballot_menu
{
	idd = 8500;
	name = "mayor_ballot_menu";
	movingEnabled = false;
	enableSimulation = true;
	
	class Controls
	{
		class RscText_1000: Life_RscText
		{
			idc = 1000;
			text = "Mayor Ballot Menu"; //--- ToDo: Localize;
			x = 0.296914 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.40617 * safezoneW;
			h = 0.028 * safezoneH;
			colorBackground[] = {0.338829,0,1,0.937124};
			colorActive[] = {0.338829,0,1,0.937124};
		};
		class RscText_1001: Life_RscText
		{
			idc = 1001;
			x = 0.296914 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			w = 0.40617 * safezoneW;
			h = 0.49 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.8};
			colorActive[] = {-1,-1,-1,0.8};
		};
		class RscListbox_1500: Life_RscListbox
		{
			idc = 1500;
			x = 0.30886 * safezoneW + safezoneX;
			y = 0.332 * safezoneH + safezoneY;
			w = 0.107516 * safezoneW;
			h = 0.42 * safezoneH;
			onLBSelChanged = "[] call life_fnc_selectBallotMenu;";
			sizeEx = 0.030;
		};

		class TextShow : Life_RscControlsGroup {
			x = 0.428322 * safezoneW + safezoneX;
			y = 0.332 * safezoneH + safezoneY;
			w = 0.262816 * safezoneW;
			h = 0.364 * safezoneH;
			
			class HScrollbar : HScrollbar {
				height = 0;
			};
			class controls {
				class RscStructuredText_1100: Life_RscStructuredText
				{
					idc = 1100;
					text = "<t size='2'>Loading Entries...</t>";
					x = 0;
					y = 0;
					w = 0.252816 * safezoneW;
					h = 1;//h = 2.15;
					shadow = 0;
					colorBackground[] = {0.28,0.28,0.28,0.28};
				};
			};
		};

		class RscButtonMenu_2400: Life_RscButtonMenu
		{
			idc = 2400;
			text = "Cast Vote"; //--- ToDo: Localize;
			x = 0.428323 * safezoneW + safezoneX;
			y = 0.71 * safezoneH + safezoneY;
			w = 0.262816 * safezoneW;
			h = 0.042 * safezoneH;
			onButtonClick = "[] call life_fnc_voteBallotMenu;";
		};
		class RscButtonMenu_2401: Life_RscButtonMenu
		{
			idc = 2401;
			text = "Close"; //--- ToDo: Localize;
			x = 0.296915 * safezoneW + safezoneX;
			y = 0.78 * safezoneH + safezoneY;
			w = 0.0597309 * safezoneW;
			h = 0.028 * safezoneH;
			onButtonClick = "closeDialog 0;";
		};
		class RscText_1002: Life_RscText
		{
			idc = 1002;
			text = "Candidates"; //--- ToDo: Localize;
			x = 0.30886 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			w = 0.107516 * safezoneW;
			h = 0.028 * safezoneH;
			colorBackground[] = {0.338829,0,1,0.937124};
			colorActive[] = {0.338829,0,1,0.937124};
		};
		class RscText_1003: Life_RscText
		{
			idc = 1003;
			text = "Information"; //--- ToDo: Localize;
			x = 0.428323 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			w = 0.262816 * safezoneW;
			h = 0.028 * safezoneH;
			colorBackground[] = {0.338829,0,1,0.937124};
			colorActive[] = {0.338829,0,1,0.937124};
		};
	};
};

class mayor_ballot_submission
{
	idd = 8400;
	name = "mayor_ballot_submission";
	movingEnabled = false;
	enableSimulation = true;
	
	class Controls
	{
		class RscText_1000: Life_RscText
		{
			idc = 1000;
			text = "Mayor Ballot Submission Menu"; //--- ToDo: Localize;
			x = 0.296914 * safezoneW + safezoneX;
			y = 0.262 * safezoneH + safezoneY;
			w = 0.40617 * safezoneW;
			h = 0.028 * safezoneH;
			colorBackground[] = {0.338829,0,1,0.937124};
			colorActive[] = {0.338829,0,1,0.937124};
		};
		class RscText_1001: Life_RscText
		{
			idc = 1001;
			x = 0.296914 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			w = 0.40617 * safezoneW;
			h = 0.49 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.8};
			colorActive[] = {-1,-1,-1,0.8};
		};
		class RscButtonMenu_2400: Life_RscButtonMenu
		{
			idc = 2400;
			text = "Apply for Mayor"; //--- ToDo: Localize;
			x = 0.308812 * safezoneW + safezoneX;
			y = 0.724057 * safezoneH + safezoneY;
			w = 0.382319 * safezoneW;
			h = 0.0420106 * safezoneH;
			onButtonClick = "[] call life_fnc_applyBallotApplicationMenu;";
		};
		class RscButtonMenu_2401: Life_RscButtonMenu
		{
			idc = 2401;
			text = "Close"; //--- ToDo: Localize;
			x = 0.296915 * safezoneW + safezoneX;
			y = 0.78 * safezoneH + safezoneY;
			w = 0.0597309 * safezoneW;
			h = 0.028 * safezoneH;
			onButtonClick = "closeDialog 0;";
		};
		class RscText_1003: Life_RscText
		{
			idc = 1003;
			text = "Enter Your Description"; //--- ToDo: Localize;
			x = 0.30882 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			w = 0.382319 * safezoneW;
			h = 0.0280071 * safezoneH;
			colorBackground[] = {0.338829,0,1,0.937124};
			colorActive[] = {0.338829,0,1,0.937124};
		};
		
		/*s
		class RscEdit_1400: Life_RscEdit
		{
			idc = 1400;
			x = 0.30884 * safezoneW + safezoneX;
			y = 0.331958 * safezoneH + safezoneY;
			w = 0.382319 * safezoneW;
			h = 0.378096 * safezoneH;
		};
		*/

		class TextShow : Life_RscControlsGroup {
			x = 0.30884 * safezoneW + safezoneX;
			y = 0.331958 * safezoneH + safezoneY;
			w = 0.382319 * safezoneW;
			h = 0.378096 * safezoneH;
			
			class HScrollbar : HScrollbar {
				height = 0;
			};
			class controls {
				class RscStructuredText_1100: Life_RscEdit
				{
					idc = 1400;
					text = "";
					x = 0;
					y = 0;
					w = 0.380319 * safezoneW;
					h = 1;//h = 2.15;

					type = 2; // CT_EDIT
					sizeEx = 0.030;
					style = 16; // ST_MULTI

					shadow = 0;
					colorBackground[] = {0.28,0.28,0.28,0.28};
				};
			};
		};

	};
};

/* #Gewoda
$[
	1.063,
	["mayor_ballot_menu",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[1000,"",[1,"Mayor Ballot Menu",["0.296914 * safezoneW + safezoneX","0.262 * safezoneH + safezoneY","0.40617 * safezoneW","0.028 * safezoneH"],[-1,-1,-1,-1],[0.338829,0,1,0.937124],[0.338829,0,1,0.937124],"","-1"],[]],
	[1001,"",[1,"",["0.296914 * safezoneW + safezoneX","0.29 * safezoneH + safezoneY","0.40617 * safezoneW","0.49 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,0.8],[-1,-1,-1,0.8],"","-1"],[]],
	[1500,"",[1,"",["0.30886 * safezoneW + safezoneX","0.332 * safezoneH + safezoneY","0.107516 * safezoneW","0.42 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1100,"",[1,"",["0.428322 * safezoneW + safezoneX","0.332 * safezoneH + safezoneY","0.262816 * safezoneW","0.364 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2400,"",[1,"Cast Vote",["0.428323 * safezoneW + safezoneX","0.71 * safezoneH + safezoneY","0.262816 * safezoneW","0.042 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2401,"",[1,"Close",["0.296915 * safezoneW + safezoneX","0.78 * safezoneH + safezoneY","0.0597309 * safezoneW","0.028 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1002,"",[1,"Candidates",["0.30886 * safezoneW + safezoneX","0.304 * safezoneH + safezoneY","0.107516 * safezoneW","0.028 * safezoneH"],[-1,-1,-1,-1],[0.338829,0,1,0.937124],[0.338829,0,1,0.937124],"","-1"],[]],
	[1003,"",[1,"Information",["0.428323 * safezoneW + safezoneX","0.304 * safezoneH + safezoneY","0.262816 * safezoneW","0.028 * safezoneH"],[-1,-1,-1,-1],[0.338829,0,1,0.937124],[0.338829,0,1,0.937124],"","-1"],[]]
]
*/
/* #Nebala
$[
	1.063,
	["mayor_ballot_submission",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[1000,"",[1,"Mayor Ballot Submission Menu",["0.296914 * safezoneW + safezoneX","0.262 * safezoneH + safezoneY","0.40617 * safezoneW","0.028 * safezoneH"],[-1,-1,-1,-1],[0.338829,0,1,0.937124],[0.338829,0,1,0.937124],"","-1"],[]],
	[1001,"",[1,"",["0.296914 * safezoneW + safezoneX","0.29 * safezoneH + safezoneY","0.40617 * safezoneW","0.49 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,0.8],[-1,-1,-1,0.8],"","-1"],[]],
	[2400,"",[1,"Apply for Mayor",["0.308812 * safezoneW + safezoneX","0.724057 * safezoneH + safezoneY","0.382319 * safezoneW","0.0420106 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2401,"",[1,"Close",["0.296915 * safezoneW + safezoneX","0.78 * safezoneH + safezoneY","0.0597309 * safezoneW","0.028 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1003,"",[1,"Enter Your Description",["0.30882 * safezoneW + safezoneX","0.304 * safezoneH + safezoneY","0.382319 * safezoneW","0.0280071 * safezoneH"],[-1,-1,-1,-1],[0.338829,0,1,0.937124],[0.338829,0,1,0.937124],"","-1"],[]],
	[1400,"",[1,"",["0.30884 * safezoneW + safezoneX","0.331958 * safezoneH + safezoneY","0.382319 * safezoneW","0.378096 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/

