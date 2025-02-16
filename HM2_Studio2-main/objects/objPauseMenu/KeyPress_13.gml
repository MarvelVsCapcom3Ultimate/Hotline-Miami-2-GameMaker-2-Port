if select = 0 
{
	with objPause {
		on = 0;
		audio_play_sound(sndUnPause, 0, false);
		symbol = 3;
	}
	instance_destroy();
}
if select=3 
{
	if (global.editor = 0) 
	{
		scrMusicClose();
		sound_stop(sndStaticVHS);
		scrClearBlood();
		for (var i = 0; i < 1000; i++)
		{
			if surface_exists(i) 
				surface_free(i);
		}
		game_restart();
	} 
	else 
	{
		room = rmEditor;
		sound_stop(sndStaticVHS);
	}
}
