/// @description Insert description here
// You can write your code in this editor
if(player.alarm[4] != -1 &&  player.alarm[4] != 0)
{
	var percent = player.alarm[4] / (game_get_speed(gamespeed_fps)*player.shieldTime);
	var degrees = 360*(percent);

	draw_set_color(c_blue);
	var tex = sprite_get_texture(recordSprite, 0);

	var _steps = 20;
	var _xx = room_width - 64;
	var _yy = 128;
	var _radius = 48;
	draw_primitive_begin_texture(pr_trianglefan,tex);
	draw_vertex_texture(_xx, _yy, .5, .5);
	for(var i = 0; i <= _steps; ++i;)
	{
	    draw_vertex_texture(_xx + lengthdir_x(_radius, degrees * (i / _steps)), _yy + lengthdir_y(_radius, degrees * (i / _steps)), .5 + lengthdir_x(.5, degrees * (i / _steps)), .5 + lengthdir_y(.5, degrees * (i / _steps)));
	}
	draw_primitive_end();
}


