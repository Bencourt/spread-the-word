/// @description player init
show_debug_log(true);
fans = 0;
fansPerGoal = 5;
money = 0;
hit = false;
shielded = false;
spd_clamp = 100;
spdBoost = 1;
spdBoostTime = 8;
shieldTime = 8;
alarmPause0 = -1;
alarmPause1 = -1;
upgradesMenu = false;
alarm_set(0,game_get_speed(gamespeed_fps)*5); // set money timer
alarm_set(1,game_get_speed(gamespeed_fps)*3); // set fan decay timer

depth = 0;