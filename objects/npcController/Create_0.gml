/// @description Insert description here
// You can write your code in this editor

maxNPCs = 10;
currentNPCS = [];
collisionObstacles = [buildingFootprint, obstacleParent, wall, player];

show_debug_message(camera_get_view_height(view_camera[0])/2);
show_debug_message(camera_get_view_width(view_camera[0])/2);

function spawnLocationInit ()
{
	x = random_range(player.x - camera_get_view_width(view_camera[0])/2, player.x + camera_get_view_width(view_camera[0])/2);
	y = random_range(player.y - camera_get_view_height(view_camera[0])/2, player.y + camera_get_view_height(view_camera[0])/2);
	array = [x,y];
	
	if(collision_rectangle(x-32,y-32,x+32,y+32,collisionObstacles,false,false) != noone)
	{
		show_debug_message("NPC SPAWN COLLISION");
		array = spawnLocationInit();
	}
	return array;
}

function spawnLocation (dir, spawnAttemptCount)
{
	var attempts = spawnAttemptCount;
	switch(dir)
	{
		case 0:
			show_debug_message("down case");
			x = random_range(player.x - camera_get_view_width(view_camera[0])/2, player.x + camera_get_view_width(view_camera[0])/2);
			y = random_range(player.y + camera_get_view_height(view_camera[0])/2, player.y + 450);
			show_debug_message(string_concat("y difference: ", y - player.y));
		break;
		case 1:
			show_debug_message("right case")
			x = random_range(player.x + camera_get_view_width(view_camera[0])/2, player.x + 450);
			y = random_range(player.y - camera_get_view_height(view_camera[0])/2, player.y + camera_get_view_height(view_camera[0])/2);
			show_debug_message(string_concat("x difference: ", x - player.x));
		break;
		case 2:
			show_debug_message("up case")
			x = random_range(player.x - camera_get_view_width(view_camera[0])/2, player.x + camera_get_view_width(view_camera[0])/2);
			y = random_range(player.y - 450, player.y - camera_get_view_height(view_camera[0])/2);
			show_debug_message(string_concat("y difference: ", y - player.y));
		break;
		case 3:
			show_debug_message("left case")
			x = random_range(player.x - 450, player.x - camera_get_view_width(view_camera[0])/2);
			y = random_range(player.y - camera_get_view_height(view_camera[0])/2, player.y + camera_get_view_height(view_camera[0])/2);
			show_debug_message(string_concat("x difference: ", x - player.x));
		break;
		default:			
			show_debug_message("default case")	
			x = random_range(player.x - camera_get_view_width(view_camera[0])/2, player.x + camera_get_view_width(view_camera[0])/2);
			y = random_range(player.y - camera_get_view_height(view_camera[0])/2, player.y + camera_get_view_height(view_camera[0])/2);
		break;
	}

	array = [x,y];
	
	if(collision_rectangle(x-32,y-32,x+32,y+32,collisionObstacles,false,false) != noone && attempts <= 10)
	{
		show_debug_message("NPC SPAWN COLLISION");
		attempts++;
		array = spawnLocation(dir, attempts);
	}
	else if(attempts > 10)
	{
		array = [0,0];
	}
	
	return array;
}

for(var i = 0; i < maxNPCs; i++)
{
	var npcLocation = spawnLocationInit();
	show_debug_message(string_concat("Spawned npc at: ", npcLocation[0], ", ", npcLocation[1] ));
	array_push(currentNPCS, instance_create_layer(npcLocation[0], npcLocation[1], "Instances", npcParent));
}