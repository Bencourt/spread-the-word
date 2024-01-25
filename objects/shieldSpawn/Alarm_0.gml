/// @description create speed boost
// You can write your code in this editor

repeat(4)
{
part_type_color1(global.splatParticle, c_blue);
var xx = x - random_range(-32, 32);
var yy = y - random_range(-32, 32);
part_particles_create(global.groundEffects, xx, yy, global.splatParticle, 1);
}

shieldPowerup = instance_create_depth(x, y, depth - 1, shield);

shieldPowerup.image_xscale = .5;
shieldPowerup.image_yscale = .5;