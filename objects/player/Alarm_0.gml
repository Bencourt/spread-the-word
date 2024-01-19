/// @description money timer

money += floor(fans/10);
show_debug_message(string_concat("money ", money));
alarm_set(0,game_get_speed(gamespeed_fps)*5);
