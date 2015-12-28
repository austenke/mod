/* 
	File: fn_findTransactionMethod.sqf
	
	Author: Valiant
*/
_result = false; //FALSE = SERVER
if(!isNil 'temp' && {!isNull temp} && {isMultiplayer}) then {_result = temp;};
_result;