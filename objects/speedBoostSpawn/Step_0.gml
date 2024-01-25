/// @description Insert description here
// You can write your code in this editor

var spdBoost = instance_nearest(x,y, speedBoost);
if(alarm[0] == -1)
{
	if(spdBoost != noone)
	{
		if(distance_to_object(spdBoost) > 32)
		{
			alarm[0] = game_get_speed(gamespeed_fps)*10;
		}
	}
	else
	{
		alarm[0] = game_get_speed(gamespeed_fps)*10;
	}
}




