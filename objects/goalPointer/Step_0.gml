/// @description pointer rotation code

var xVec = player.x - goal.x;
var yVec = goal.y - player.y;

var theta = arctan2(yVec,xVec);

x = player.x - (cos(theta) * 16);
y = player.y + (sin(theta) * 16);


image_angle = radtodeg((theta + (pi * .5)));