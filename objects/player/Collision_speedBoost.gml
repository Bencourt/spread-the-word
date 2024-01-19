/// @description speed boost collision

spdBoost = 1.25;
alarm[3] = game_get_speed(gamespeed_fps)*spdBoostTime;

repeat(4)
{
part_type_color1(global.splatParticle, c_lime);
var xx = other.x - random_range(-32, 32);
var yy = other.y - random_range(-32, 32);
part_particles_create(global.groundEffects, xx, yy, global.splatParticle, 1);
}

instance_destroy(other);