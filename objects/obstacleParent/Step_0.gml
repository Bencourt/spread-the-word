/// @description obstacle movement
//
//
//
//if (collided == false && (place_meeting(x + 32*dirx, y, wall) || place_meeting(x, y + 32*diry, wall)))
//{
//	
//	function findValidDirection () 
//	{
//		var rand = irandom(3);
//		var validOptions = [true, true, true, true];
//		
//		if(place_meeting(x -32, y, wall))
//		{
//			validOptions[0] = false;
//		}
//		if(place_meeting(x +32, y, wall))
//		{
//			validOptions[1] = false;
//		}
//		if(place_meeting(x, y-32, wall))
//		{
//			validOptions[2] = false;
//		}
//		if(place_meeting(x, y+32, wall))
//		{
//			validOptions[3] = false;
//		}
//		
//		if(validOptions[0] == false && validOptions[1] == false && validOptions[2] == false && validOptions[3] == false)
//		{
//			instance_destroy(self);
//		}
//		
//		if(validOptions[rand] == false)
//		{
//			findValidDirection();
//		}
//		
//		return rand;
//	}
//	
//	var validDir = findValidDirection()
//	
//	
//	
//	if(validDir == 0)
//	{
//		dirx = -1;
//		diry = 0;
//		collided = true;
//	}
//	else if(validDir == 1)
//	{
//		dirx = 1;
//		diry = 0;
//		collided = true;
//	}
//	else if(validDir == 2)
//	{
//		dirx = 0;
//		diry = -1;
//		collided = true;
//	}
//	else 
//	{
//		dirx = 0;
//		diry = 1;
//		collided = true;
//	}
//}
//else
//{
//	collided = false;
//}
//
if(gameController.pausedEvent)
{
	if(gameController.paused)
	{
		path_speed = 0;
	}
	else
	{
		path_speed = 4;
	}
}

xdif = x - previousX;
ydif = y - previousY;

if(abs(xdif) > 0)
{
	 if(sign(xdif) > 0)
	 {
		 image_index = 3;
	 }
	 else
	 {
		 image_index = 2;
	 }
}
else
{
	if(sign(ydif) > 0)
	 {
		 image_index = 1;
	 }
	 else
	 {
		 image_index = 0;
	 }
}

previousX = x;
previousY = y;