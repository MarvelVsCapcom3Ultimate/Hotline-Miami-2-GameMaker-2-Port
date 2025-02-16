function bgm_LoadNetStream(argument0) {
	/* Loads a sample format song as a stream from the internet. This means that it
	   is downloaded and decompressed while it plays instead of all at once.
	   The URL must begin with either "http://" or "ftp://".
	   Modules cannot be loaded or streamed.
   
	   <songID> bgm_LoadNetStream( URL )
   
	   Example:
   
	   song1 = bgm_LoadStream("http://YourSong.mp3");

	******************************************************************************/

	var ret;
	ret = external_call(global._bgm_LoadNetStream, argument0, false);
	if (ret==false && global._bgm_showErrors != false)
	  show_error(external_call(global._bgm_Error), false);
	return ret;



}
