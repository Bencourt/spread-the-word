/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

buttonCost = 10;

buttonText = "More Fans-$10.00";

function buttonAction ()
{
	if(player.money >= buttonCost && player.fansPerGoal < 20)
	{
		player.money -= buttonCost;
		player.fansPerGoal += 1;
	}
}

depth = -1;