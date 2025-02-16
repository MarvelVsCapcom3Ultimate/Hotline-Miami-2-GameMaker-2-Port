function bgm_LoadStream(argument0) {
	/* Loads a sample format song as a stream. This means that it is loaded and
	   decompressed while it plays instead of all at once.
	   Modules cannot be streamed.
   
	   <songID> bgm_LoadStream( filename )
   
	   Example:
   
	   song1 = bgm_LoadStream("YourSong.wav");

	******************************************************************************/

	var ret;
	ret = external_call(global._bgm_LoadStream, argument0, false);
	if (ret==false && global._bgm_showErrors != false)
	  show_error(external_call(global._bgm_Error), false);
	return ret;



}
