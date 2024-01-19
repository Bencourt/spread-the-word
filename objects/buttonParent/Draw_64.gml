/// @description draw button

if(player.upgradesMenu)
{
	draw_self();
	draw_set_font(cSans);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_text(x, y, buttonText);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}
