function scrRestartMusicOn() {
	audio_stop_sound(global.currentsong);
	file = file_text_open_write("restartmusic");
	if (room == rmFansLevel3Floor3) 
		file_text_write_string(file, evil);
	if (room == rmMethLabFloor3)
		file_text_write_string(file, Quixotic);
	file_text_close(file)



}
