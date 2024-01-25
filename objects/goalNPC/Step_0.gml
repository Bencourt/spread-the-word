if(!instance_exists(connectedGoal))
{
	if(spriteValue > 2)
	{
		sprite_index = fanNpcSprite2;
	}
	else
	{
		sprite_index = fanNpcSprite1;
	}
	
	if(distance_to_object(player) > camera_get_view_width(view_camera[0])/2)
	{
		instance_destroy();
	}
}