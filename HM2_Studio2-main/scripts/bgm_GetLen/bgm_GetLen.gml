function bgm_GetLen(argument0) {
	/*  Gets the length of a song, in seconds, or returns -1 on error.

	    Ex:
	    seconds = bgm_GetLen(mySong);
    
	******************************************************************************/

	var ret;

	if (is_real(argument0))
	  ret = external_call(global._bgm_GetLenById, argument0)
	else
	  ret = external_call(global._bgm_GetLenByFname, argument0);
	if (ret==-1 && global._bgm_showErrors)
	  show_error(external_call(global._bgm_Error), false);
	return ret;



}
