function bgm_LoadMod(argument0) {
	/* Loads a traked format song and returns a handle (id) for it.
	   Unlike bgm_Load(), this can only load songs of the types MOD, XM, S3M, IT,
	   MTM and UMX. The upside is that it's usually faster.
   
	   <songID> bgm_LoadMod( filename )
   
	   Examples:
   
	   song1 = bgm_LoadMod("YourSong.xm");
	   song2 = bgm_LoadMod("YourSong.mo3");

	******************************************************************************/

	var ret;
	ret = external_call(global._bgm_LoadMod, argument0, false);
	if (ret==false && global._bgm_showErrors != false)
	  show_error(external_call(global._bgm_Error), false);
	return ret;



}
