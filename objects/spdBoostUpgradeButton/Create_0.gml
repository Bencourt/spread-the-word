/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

buttonCost = 5;

button_text = "Speed Boost Lasts Longer-$5.00";

function buttonAction ()
{
	if(player.money >= buttonCost && player.spdBoostTime < 16)
	{
		player.money -= buttonCost;
		player.spdBoostTime += 1;
	}
}

depth = -1;