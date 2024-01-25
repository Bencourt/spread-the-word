/// @description init for obstacle
// You can write your code in this editor

collided = false;
dirx = -1;
diry = 0;
pathPos = 0;
previousX = 0;
previousY = 0;
carSprites = [carSprite1, carSprite2, carSprite3, carSprite4, carSprite5, carSprite6]
sprite_index = carSprites[irandom(array_length(carSprites)-1)];

path_start(Path1, 4, path_action_restart, true);
