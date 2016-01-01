/*
	File: fn_fadeSound.sqf
	Auhtor: Michael Francis
	
	Description:
	Fades out sound.
*/
life_fadeSound = !life_fadeSound;

if (life_fadeSound) then 
{
	1 fadeSound 0.2; // Faded to 10%
	titleText ["You have inserted earplugs.", "PLAIN"];
}
else
{
	1 fadeSound 1; // Returned to 100%
	titleText ["You have removed earplugs.", "PLAIN"];
};