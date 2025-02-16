function bgm_FadeVol(argument0, argument1, argument2) {
	/*  Fades the volume of a song to the given level over a certain period of
	    time, given in milliseconds.
    
	    Ex:
    
	    // Fade out a song over 5 seconds
	    bgm_FadeVol(song, 0, 5000);

	******************************************************************************/

	var ret;

	if (is_real(argument0))
	  ret = external_call(global._bgm_FadeVolById, argument0, argument1, argument2)
	else
	  ret = external_call(global._bgm_FadeVolByFname, argument0, argument1, argument2);

	if (!ret && global._bgm_showErrors)
	  show_error(external_call(global._bgm_Error), false);
  
	return ret;



}
