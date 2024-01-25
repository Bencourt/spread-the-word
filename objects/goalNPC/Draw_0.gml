//// @description Insert description here
// You can write your code in this editor
draw_self();

if(speaking)
{
	draw_set_color(c_white);
	draw_set_font(cSans_speech);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	var width = string_width_ext(line, -1, 150);
	var height = string_height_ext(line, -1, 150);
	var margin = 5;
	var position = [ x - width/2,  y - height/2 - floor(bounce/5)]
	draw_sprite_stretched(textboxSprite, 0, position[0], position[1] - 36, width + margin*2,height + margin*2);
	draw_set_color(c_black);
	draw_text_ext(position[0]+margin, position[1]-36+margin, line, -1, 150);
	
	if(abs(bounce) > 15)
	{
		bounceDir = -bounceDir;	
	}
	
	bounce += bounceDir;
}
