/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

buttonCost = 5+ceil((power((player.spd_clamp-100)/10,2)));

buttonText = string_concat("Speed Up-$",buttonCost,".00");