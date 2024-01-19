/// @description fans decay

if(fans > 0)
{
	fans -= 1
}
else
{
	fans = 0;
}

alarm_set(1,game_get_speed(gamespeed_fps)*3);
