/// @description pause controller
var lastFramePause = paused;

if(pauseMenu || player.upgradesMenu)
{
	paused = true;
}
else
{
	paused = false;
}

if(lastFramePause != paused)
{
	pausedEvent = true;
}
else
{
	pausedEvent = false;
}

