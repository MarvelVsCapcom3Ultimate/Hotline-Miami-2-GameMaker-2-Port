function bgm_IsLoaded(argument0) {
	/*  Returns whether or not a song with the given filename or ID number is
	    currently loaded. Can be used to validate a number as being an ID.

	    Example:
    
	    if (bgm_IsLoaded(12)) {
	      bgm_Play(12);
	    }
    
	******************************************************************************/

	var ret;

	if (is_real(argument0))
	  ret = external_call(global._bgm_IsLoadedById, argument0)
	else
	  ret = external_call(global._bgm_IsLoadedByFname, argument0);
	return ret;



}
