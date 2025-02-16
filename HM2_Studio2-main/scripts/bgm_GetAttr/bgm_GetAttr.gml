function bgm_GetAttr(argument0, argument1) {
	/*  Returns the value of a song's attribute or -1000000 on error.

	    bgm_GetAttr( song,
	                 attribute )
                 
	    Example:
    
	    // Get the panning seperation of a module
	    sep = bgm_GetAttr(song1, "penSep");

	******************************************************************************/

	var ret;

	if (is_real(argument0))
	  ret = external_call(global._bgm_GetAttrById, argument0, argument1)
	else
	  ret = external_call(global._bgm_GetAttrByFname, argument0, argument1);

	if (ret=="-1000000" && global._bgm_showErrors)
	  show_error(external_call(global._bgm_Error), false);
  
	if (external_call(global._bgm_GetAttrTypeLast)==1)
	  return real(ret);
  
	return ret;



}
