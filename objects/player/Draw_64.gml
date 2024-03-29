/// @description Insert description here
// You can write your code in this editor

//in game ui
draw_set_colour(c_black);
draw_set_font(cSans);
draw_text(64, 64, string_concat("Fans: ", fans));
draw_text(64, 96, string_concat("Money: $", money,".00"));

//upgrades menu ui
if(upgradesMenu)
{
	draw_set_color(c_gray);
	draw_set_alpha(.75);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_color(c_blue);
	draw_set_alpha(1);
	draw_set_font(cSans);
	draw_set_halign(fa_center);
	draw_text(room_width/2, 64, "Upgrades Menu");
}

//train transition ui
if(!gameController.paused)
{
	if(teleported)
	{
		transitionFrame++;
		frame = floor((14/30) * transitionFrame);
		xScale = window_get_width() / 109; 
		yScale = (window_get_height()-32) / 64;
		draw_sprite_ext(trainTransitionSprite, frame, 0, 28, xScale, yScale, 0, c_white, 1);
	}
}