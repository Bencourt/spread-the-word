/// @description shield collision
// You can write your code in this editor

shielded = true;
alarm[4] = game_get_speed(gamespeed_fps)*shieldTime;

repeat(4)
{
part_type_color1(global.splatParticle, c_blue);
var xx = other.x - random_range(-32, 32);
var yy = other.y - random_range(-32, 32);
part_particles_create(global.groundEffects, xx, yy, global.splatParticle, 1);
}

instance_destroy(other);

