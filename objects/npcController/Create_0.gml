/// @description Insert description here
// You can write your code in this editor

maxNPCs = 10;
CurrentNPCS = [];
collisionObstacles = [buildingFootprint, obstacleParent, wall, player];

function spawnLocation ()
{
	x = random_range(player.x - camera_get_view_width(view_camera[0])/2, player.x + camera_get_view_width(view_camera[0])/2);
	y = random_range(player.y - camera_get_view_height(view_camera[0])/2, player.y + camera_get_view_height(view_camera[0])/2);
	array = [x,y];
	
	if(collision_rectangle(x-32,y-32,x+32,y+32,collisionObstacles,false,false) != noone)
	{
		show_debug_message("NPC SPAWN COLLISION");
		array = spawnLocation();
	}
	return array;
}

for(var i = 0; i < maxNPCs; i++)
{
	var npcLocation = spawnLocation();
	show_debug_message(string_concat("Spawned npc at: ", npcLocation[0], ", ", npcLocation[1] ));
	instance_create_layer(npcLocation[0], npcLocation[1], "Instances", npcParent);
}