/// @description player rebound
show_debug_message("collision");

var forcex =  other.x - x;
var forcey =  other.y - y;
var magnitude = 30;
show_debug_message(forcex);
show_debug_message(forcey);

if(!other.shielded)
{
	with (other)
	{
		physics_apply_force(x, y, forcex * magnitude, forcey * magnitude);
	}

	cameraFollower.screenShakeAmount = 10;
		
	player.alarm[2] = game_get_speed(gamespeed_fps);

	if(!player.hit)
	{
		player.hit = true;
		if(player.money >= 3)
		{
			player.money -= 3;	
		}
		else
		{
			player.money -= player.money;
		}
	}
}