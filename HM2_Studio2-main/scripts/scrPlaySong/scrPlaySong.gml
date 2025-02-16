function scrPlaySong(_song, _loop = true) {
	var lastsong = global.currentsong;
	if file_exists(working_directory+"\\restartmusic")
		global.currentsong = "" 
	else 
		audio_stop_sound(global.currentsong)
		
	global.currentsong = _song;
	
	if (!audio_is_playing(global.currentsong))
		audio_play_sound(global.currentsong, 0, _loop, global.mvol);
	
	if string(lastsong) == "" 
		nothing = true;
	else 
		audio_stop_sound(lastsong);
}
