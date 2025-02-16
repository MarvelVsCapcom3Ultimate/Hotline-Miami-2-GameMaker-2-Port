if (on == false)
	exit;
on = false;
sound_play(sndUnPause);
symbol = 3;
with (objPauseMenu) 
	instance_destroy();
