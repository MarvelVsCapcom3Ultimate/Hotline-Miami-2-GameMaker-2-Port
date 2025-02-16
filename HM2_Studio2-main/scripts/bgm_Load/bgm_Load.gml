function bgm_Load(argument0, argument1) {
	/* Loads a song of any kind and returns a handle (id) for it.
	   + Sampled audio on the local computer may be either loaded/uncompressed all
	     at once or streamed from the filesystem.
	   + Sampled audio may be streamed from the internet by providing an http:// or
	     ftp:// URL. "stream" is ignored in this case since the data must be
	     streamed no matter what.
	   + Modules can only be loaded from the local computer and may not be
	     streamed.
     
	   bgm_Load( Filename or URL,
	             stream )
	   Examples:
   
	   song1 = bgm_Load("YourSong.xm");
	   song2 = bgm_Load("YourSong.mp3", true);
	   song3 = bgm_Load("http://www.yoursite.com/YourSong.ogg", true);

	******************************************************************************/

	var ret;
	ret = external_call(global._bgm_Load, argument0, argument1, false);
	if (ret==false && global._bgm_showErrors != false)
	  show_error(external_call(global._bgm_Error), false);
	return ret;



}
