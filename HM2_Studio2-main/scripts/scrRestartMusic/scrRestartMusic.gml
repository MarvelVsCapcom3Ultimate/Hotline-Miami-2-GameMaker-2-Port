function scrRestartMusic() {
	if file_exists("restartmusic") {
	file=file_text_open_read("restartmusic")
	song=file_text_read_string(file)
	file_text_close(file)
	scrPlaySong(song)
	file_delete("restartmusic")
	scrSaveFloor()
	}



}
