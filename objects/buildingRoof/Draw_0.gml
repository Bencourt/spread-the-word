/// @description Insert description here
// You can write your code in this editor
draw_self();

if(((buildingFootprintId.y + (buildingFootprintId.sprite_height * .5)) >= (y + (sprite_height * .5))) && buildingFootprintId.down)
{
	draw_sprite_pos(upWall, 0, x - (sprite_width * .5),
	(y + (sprite_height * .5)),
	x + (sprite_width * .5),
	(y + (sprite_height * .5)),
	buildingFootprintId.x + (buildingFootprintId.sprite_width * .5),
	(buildingFootprintId.y + (buildingFootprintId.sprite_height * .5)),
	buildingFootprintId.x - (buildingFootprintId.sprite_width * .5),
	(buildingFootprintId.y + (buildingFootprintId.sprite_height * .5)),
	1);
}

if(((buildingFootprintId.y - (buildingFootprintId.sprite_height * .5)) <= (y - (sprite_height * .5)))  && buildingFootprintId.up)
{
	draw_sprite_pos(downWall, 0, x - (sprite_width * .5),
	(y - (sprite_height * .5)),
	x + (sprite_width * .5),
	(y - (sprite_height * .5)),
	buildingFootprintId.x + (buildingFootprintId.sprite_width * .5),
	(buildingFootprintId.y - (buildingFootprintId.sprite_height * .5)),
	buildingFootprintId.x - (buildingFootprintId.sprite_width * .5),
	(buildingFootprintId.y - (buildingFootprintId.sprite_height * .5)),
	1);
}

if(((buildingFootprintId.x - (buildingFootprintId.sprite_width * .5)) <= (x - (sprite_width * .5)))  && buildingFootprintId.left)
{
	draw_sprite_pos(leftWall, 0, x - (sprite_width * .5),
	(y - (sprite_height * .5)),
	x - (sprite_width * .5),
	(y + (sprite_height * .5)),
	buildingFootprintId.x - (buildingFootprintId.sprite_width * .5),
	(buildingFootprintId.y + (buildingFootprintId.sprite_height * .5)),
	buildingFootprintId.x - (buildingFootprintId.sprite_width * .5),
	(buildingFootprintId.y - (buildingFootprintId.sprite_height * .5)),
	1);
}

if(((buildingFootprintId.x + (buildingFootprintId.sprite_width * .5)) >= (x + (sprite_width * .5)))  && buildingFootprintId.right)
{
	draw_sprite_pos(rightWall, 0, x + (sprite_width * .5),
	(y - (sprite_height * .5)),
	x + (sprite_width * .5),
	(y + (sprite_height * .5)),
	buildingFootprintId.x + (buildingFootprintId.sprite_width * .5),
	(buildingFootprintId.y + (buildingFootprintId.sprite_height * .5)),
	buildingFootprintId.x + (buildingFootprintId.sprite_width * .5),
	(buildingFootprintId.y - (buildingFootprintId.sprite_height * .5)),
	1);
}

