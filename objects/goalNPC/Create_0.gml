/// @description Insert description here
// You can write your code in this editor

connectedGoal = noone;
spriteValue = irandom(6);
speaking = (irandom(9) == 0);
line = "";

textLines = [
"Rent's skyrocketing in this neighborhood.",
"Know any good coffee shops around here?",
"Missed the train again; waiting for the next one.",
"Traffic's a nightmare today.",
"Can you spare a quarter before my meter runs out?",
"Running late, I should catch the train.",
"I love this city's energy.",
"The subway was packed this morning." ,
"They're opening a stadium on the north side.",
"What time's the next train to the airport?",
"City never sleeps, and neither do I with all this noise.",
"Take the train or walk to work?",
"Saw an old friend on the street, what a small world.",
"I lost my wallet on the train.",
"All this dumb rap music is driving me crazy." ,
"I went to the stadium up north. It's huge!",
"I could really go for some pizza.",
];

phy_active = true;
phy_fixed_rotation = true;

bounce = 0;
bounceDir = 1;

switch(spriteValue)
{
	case 0:
		sprite_index = npcSprite1;
	break;
	case 1:
		sprite_index = npcSprite2;
	break;
	case 2:
		sprite_index = npcSprite3;
	break;
	case 3:
		sprite_index = npcSprite4;
	break;
	case 4:
		sprite_index = npcSprite5;
	break;
	case 5:
		sprite_index = npcSprite6;
	break;
	case 6:
		sprite_index = npcSprite7;
	break;
}


if(speaking)
{
	line = textLines[irandom(array_length(textLines)-1)];
}

