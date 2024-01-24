/// @description npc rebound
show_debug_message("collision");

var forcex =  other.x - x;
var forcey =  other.y - y;
var magnitude = 600
show_debug_message(forcex);
show_debug_message(forcey);

with (other)
{
	physics_apply_force(x, y, forcex * magnitude, forcey * magnitude);
}