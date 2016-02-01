#include <macro.h>
/*
	File: fn_interAction.sqf
*/
private "_unit";
_unit = cursorTarget;

player playMove "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"; //Animation in
_unit attachTo [player,[0.1,1.1,0]];
_unit playMove "AinjPfalMstpSnonWrflDf_carried"; //Animation in

player reveal _unit;