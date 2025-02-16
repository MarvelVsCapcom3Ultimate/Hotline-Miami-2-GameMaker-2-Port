function scrSongVolume(_vol) {
	audio_sound_gain(global.currentsong, (_vol * 100) * global.mvol, 0);
}
