/// @description building roof init

buildingFootprintId = instance_nearest(x, y, buildingFootprint);

x = buildingFootprintId.x;
y = buildingFootprintId.y;

heightScale = 1.25;
image_xscale = buildingFootprintId.image_xscale * heightScale;
image_yscale = buildingFootprintId.image_yscale * heightScale;

buildingType = irandom(3);
roofSprites = [buildingRoofSprite, buildingRoofSprite2, buildingRoofSprite3];
wallSprites = [wallSprite, wallSprite2, wallSprite3, wallSprite4, wallSprite5];

possibleWalls = wallSprites;

if(buildingType == 0)
{
	possibleWalls = [wallSprite];
}
if(buildingType == 1)
{
	possibleWalls = [wallSprite2, wallSprite3];
}
if(buildingType == 2)
{
	possibleWalls = [wallSprite4, wallSprite5];
}
if(buildingType == 3)
{
	possibleWalls = [wallSprite3];
}

sprite_index = roofSprites[irandom(array_length(roofSprites)-1)];
upWall = possibleWalls[irandom(array_length(possibleWalls)-1)];
downWall = possibleWalls[irandom(array_length(possibleWalls)-1)];
leftWall = possibleWalls[irandom(array_length(possibleWalls)-1)];
rightWall = possibleWalls[irandom(array_length(possibleWalls)-1)];