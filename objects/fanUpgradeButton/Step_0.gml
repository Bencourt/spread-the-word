/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

buttonCost = 10+ceil((power((player.fansPerGoal-5),1.5)));
show_debug_message(10+ceil((power((player.fansPerGoal-5),1.5))));
buttonText = string_concat("More Fans-$",buttonCost,".00");
