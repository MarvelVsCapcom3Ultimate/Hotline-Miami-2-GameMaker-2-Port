function bgm_VolIsFading(argument0) {
	/*  Returns whether or not a song's volume is sliding
    
	    bgm_VolIsFading(song)

	******************************************************************************/

	var ret;

	if (is_real(argument0))
	  ret = external_call(global._bgm_VolIsFadingById, argument0)
	else
	  ret = external_call(global._bgm_VolIsFadingByFname, argument0);

	if (!ret && global._bgm_showErrors)
	  show_error(external_call(global._bgm_Error), false);
  
	return ret;



}
