/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

buttonCost = 5;

button_text = "Speed Up-$5.00";

function buttonAction ()
{
	if(player.money >= buttonCost && player.spd_clamp < 250)
	{
		player.money -= buttonCost;
		player.spd_clamp += 10;
	}
}

depth = -1;