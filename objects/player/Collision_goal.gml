/// @description collision with the goal object
// You can write your code in this editor

show_debug_message("collision");
fans += fansPerGoal;

repeat(20)
{
var xx = other.x - random_range(-32, 32);
var yy = other.y - random_range(-32, 32);
part_particles_create(global.particleSystem, xx, yy, global.Particle1, 1);
}


show_debug_message(string_concat("fans ", fans));
instance_destroy(other)

goalInit = gameController.CreateGoal();

var currentGoal = instance_create_layer(goalInit[0], goalInit[1],"Instances",goal);
var currentGoalNPC = instance_create_layer(goalInit[0], goalInit[1],"Instances",goalNPC);
currentGoalNPC.connectedGoal = currentGoal;