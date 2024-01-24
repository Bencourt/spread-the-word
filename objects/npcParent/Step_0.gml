/// @description depth calculation

var nearestRoof = instance_nearest(x, y, buildingRoof);
var xCollision = ( abs(nearestRoof.x - x)  < (sprite_width/2 + nearestRoof.sprite_width/2));
var yCollision = ( abs(nearestRoof.y - y)  < (sprite_height/2 + nearestRoof.sprite_height/2));
if(xCollision && yCollision)
{
	depth = nearestRoof.depth + 1;
}
else
{
	depth = player.y - y;
}