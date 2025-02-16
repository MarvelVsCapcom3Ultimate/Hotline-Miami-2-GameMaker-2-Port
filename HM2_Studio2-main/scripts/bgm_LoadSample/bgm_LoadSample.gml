function bgm_LoadSample(argument0) {
	/* Loads and decompresses a sampled format song and returns a handle (id) for
	   it.
	   Unlike bgm_Load(), this can only load songs of the types WAV, AIFF, MP3 and
	   OGG. The upside is that it's usually faster.
   
	   <songID> bgm_LoadSample( filename )
   
	   Examples:
   
	   song1 = bgm_LoadSample("YourSong.wav");
	   song2 = bgm_LoadSample("YourSong.mp3");

	******************************************************************************/

	var ret;
	ret = external_call(global._bgm_LoadSample, argument0, false);
	if (ret==false && global._bgm_showErrors != false)
	  show_error(external_call(global._bgm_Error), false);
	return ret;



}
