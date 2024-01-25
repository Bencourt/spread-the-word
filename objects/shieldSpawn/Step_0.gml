/// @description Insert description here
// You can write your code in this editor

var shieldPwrup = instance_nearest(x,y, shield);
if(alarm[0] == -1)
{
	if(shieldPwrup != noone)
	{
		if(distance_to_object(shieldPwrup) > 32)
		{
			alarm[0] = game_get_speed(gamespeed_fps)*10;
		}
	}
	else
	{
		alarm[0] = game_get_speed(gamespeed_fps)*10;
	}
}




