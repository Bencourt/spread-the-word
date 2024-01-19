/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


buttonCost = 5;

button_text = "Shield Lasts Longer-$5.00";

function buttonAction ()
{
	if(player.money >= buttonCost && player.shieldTime < 16)
	{
		player.money -= buttonCost;
		player.shieldTime += 1;
	}
}

depth = -1;