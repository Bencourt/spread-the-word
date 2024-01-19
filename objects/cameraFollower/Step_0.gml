/// @description camera follow code

var xgoal = player.x;
var ygoal = player.y;

if(screenShakeAmount > 0 )
{
	x += random_range(-screenShakeAmount, screenShakeAmount);
	y += random_range(-screenShakeAmount, screenShakeAmount);
	screenShakeAmount--;
}

x += (player.x - x) * .05;
y += (player.y - y) * .05;