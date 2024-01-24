/// @description player controller
var spd = 10;
yInput = 0;
xInput = 0;

if(!hit)
{
	if(keyboard_check(ord("W")))
	{
		yInput = -1;
	}

	if(keyboard_check(ord("A")))
	{
		xInput = -1;
	}

	if(keyboard_check(ord("S")))
	{
		yInput = 1;
	}

	if(keyboard_check(ord("D")))
	{
		xInput = 1;
	}
}

normalize = 1;
if(abs(xInput) == 1 && abs(yInput) == 1)
{
	normalize = (sqrt(2)/2);
}


phy_rotation = 0;
phy_fixed_rotation = true;

var xbrake = ((spd_clamp * spdBoost) - abs(phy_linear_velocity_x)) * .5;
var ybrake = ((spd_clamp * spdBoost) - abs(phy_linear_velocity_y)) * .5;
if(!gameController.paused)
{
	phy_active = true;
	image_speed = spd_clamp/250;
	if(xInput == 0 && abs(phy_linear_velocity_x) > 5)
	{
		phy_linear_velocity_x -= (5 * sign(phy_linear_velocity_x));
	}

	if(yInput == 0 && abs(phy_linear_velocity_y) > 5)
	{
		phy_linear_velocity_y -= (5 * sign(phy_linear_velocity_y));
	}

	if(abs(phy_linear_velocity_x) > (spd_clamp * spdBoost))
	{
	}
	else
	{
		phy_linear_velocity_x += ((xInput * normalize)*xbrake);
	}

	if(abs(phy_linear_velocity_y) > (spd_clamp * spdBoost))
	{
	}
	else
	{
		phy_linear_velocity_y += ((yInput * normalize)*ybrake);
	}
	
	//sprite control
	if(xInput > 0)
	{
		//move right
		sprDir = 1;
		sprite_index = playerRunRight;
	}
	
	if(xInput < 0)
	{
		//move left
		sprDir = 3;
		sprite_index = playerRunLeft;
	}
	
	if(yInput > 0)
	{
		//move down
		sprDir = 0;
		sprite_index = playerRunDown;
	}
	
	if(yInput < 0)
	{
		//move up
		sprDir = 2;
		sprite_index = playerRunUp;
	}
	
	if(xInput == 0 && yInput == 0 )
	{
		switch(sprDir)
		{
			case 0:
			sprite_index = playerIdleDown;
			break;
			case 1:
			sprite_index = playerIdleRight;
			break;
			case 2:
			sprite_index = playerIdleUp;
			break;
			case 3:
			sprite_index = playerIdleLeft;
			break;
		}
	}
}
else
{
	phy_active = false;
	image_speed = 0;
}

if(alarm[0] = -1 && gameController.pausedEvent)
{
	alarm[0] = alarmPause0;
	alarm[1] = alarmPause1;
}
else if(gameController.pausedEvent)
{
	alarmPause0 = alarm[0];
	alarmPause1 = alarm[1];
	alarm[0] = -1;
	alarm[1] = -1;
}
