/// @description building roof init

buildingFootprintId = instance_nearest(x, y, buildingFootprint);

x = buildingFootprintId.x;
y = buildingFootprintId.y;

heightScale = 1.25;
image_xscale = buildingFootprintId.image_xscale * heightScale;
image_yscale = buildingFootprintId.image_yscale * heightScale;
