/// @description button init
hovering = false
clicked = false;
buttonCost = 5;

buttonText = "-$5.00";

function buttonAction ()
{
	if(player.money >= buttonCost && player.spd_clamp < 250)
	{
		player.money -= buttonCost;
		player.spd_clamp += 10;
	}
}