/// @description gameplay init controller

paused = false;
pauseMenu = false;
pausedEvent = false;
global.particleSystem = part_system_create_layer("Instances", false);
global.groundEffects = part_system_create_layer("groundEffectsLayer", false);

//goal reach particle
global.Particle1 = part_type_create();
part_type_sprite(global.Particle1,musicSpinSprite, true, false, true);
part_type_size(global.Particle1,1,1.5,-.05,0);
part_type_alpha1(global.Particle1,1);
part_type_speed(global.Particle1,2,4,-0.10,0);
part_type_direction(global.Particle1,0,359,0,5);
part_type_orientation(global.Particle1,0,30,0,0,false);
part_type_life(global.Particle1,game_get_speed(gamespeed_fps)*.1,game_get_speed(gamespeed_fps)*1.5);

//goal reach particle
global.splatParticle = part_type_create();
part_type_sprite(global.splatParticle,splatSprite, false, false, false);
part_type_size(global.splatParticle,2,2.5,-.01,0);
part_type_alpha1(global.splatParticle,1);
part_type_speed(global.splatParticle,0,0,0,0);
part_type_direction(global.splatParticle,0,0,0,0);
part_type_orientation(global.splatParticle,0,359,0,0,false);
part_type_life(global.splatParticle,game_get_speed(gamespeed_fps)*1.5,game_get_speed(gamespeed_fps)*2.5);

//Goal init
randomize();

function CreateGoal ()
{
	x = random_range(64,room_width-128);
	y = random_range(64,room_height-128);
	show_debug_message(string_concat("goal x ", x));
	array = [x,y];
	
	if(collision_rectangle(x-32,y-32,x+32,y+32,buildingFootprint,false,false) != noone)
	{
		show_debug_message("collision detected for goal");
		array = CreateGoal();
	}
	return array;
}
goalInit = CreateGoal();

instance_create_layer(goalInit[0], goalInit[1],"Instances",goal);
