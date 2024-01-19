/// @description game controller gui

if(pauseMenu)
{
	draw_set_color(c_gray);
	draw_set_alpha(.75);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_color(c_black);
	draw_set_alpha(1);
	draw_set_font(cSans);
	draw_text(room_width/2, room_height/2, "paused");
}


