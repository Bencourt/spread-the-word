/// @description building roof parallax

var xdif = (buildingFootprintId.x - player.x) * .2;
var ydif = (buildingFootprintId.y - player.y) * .2;

x = buildingFootprintId.x + (xdif * heightScale);
y = buildingFootprintId.y + (ydif-20* heightScale);


if((player.x - (player.sprite_width*.5) < x + (sprite_width * .5) && player.x + (player.sprite_width*.5) > x - (sprite_width * .5)) && (player.y - (player.sprite_height*.5) < y + (sprite_height * .5) && player.y + (player.sprite_height*.5) > y - (sprite_height * .5)))
{
	depth = player.y - (buildingFootprintId.y + (buildingFootprintId.sprite_height * .5));
}
else
{
	depth = point_distance(buildingFootprintId.x, buildingFootprintId.y, player.x, player.y) + (point_distance(buildingFootprintId.x, buildingFootprintId.y, x, y) * heightScale);
}