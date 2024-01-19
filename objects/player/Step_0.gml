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

}
else
{
	phy_active = false;
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
