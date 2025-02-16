if (instance_exists(objMaskMenu))
	exit;
if (instance_exists(objPlayerDead) && drawrestart == true) 
{
	if (objPlayerDead.sprite_index == sprPigDeadGirl || objPlayerDead.sprite_index == sprCobraWounded1 || objPlayerDead.sprite_index == sprCobraWounded2 || room == rmFansLevel5Roof) 
		exit;
	if (room == rmMethLabFloor1 || room == rmMethLabFloor2 || room == rmMethLabFloor3) 
	{
		sound_stop(sndBigExplosion); 
		scrSongVolume(1);
		if (room == rmMethLabFloor3 && global.done == true) 
		{
			scrRestartMusicOn();
		}
	}
	if room == rmFansLevel3Floor3 
	{
		if (objSister.restart == 1)
			scrRestartMusicOn();
	}
	if file_exists("tempsave") 
	{
		scrResetActiveSurfaces();
		scrLoadFloor();
	} 
	else 
		game_restart();
}
//if keyboard_check(vk_shift) and keyboard_check(vk_control) {}
