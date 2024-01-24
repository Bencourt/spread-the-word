/// @description Insert description here
// You can write your code in this editor


//check if npcs are too far from player

for(var i = 0; i < array_length(currentNPCS); i++)
{
	if(point_distance(currentNPCS[i].x, currentNPCS[i].y, player.x, player.y) > 500)
	{
		instance_destroy(currentNPCS[i]);
		
		var newSpawn = spawnLocation(player.sprDir);
		show_debug_message(string_concat("player location: ", player.x, ", ", player.y));
		show_debug_message(string_concat("Spawned npc at: ", newSpawn[0], ", ", newSpawn[1] ));
		show_debug_message(point_distance(newSpawn[0], newSpawn[1], player.x, player.y));
		currentNPCS[i] = instance_create_layer(newSpawn[0], newSpawn[1], "Instances", npcParent);
	}
}




