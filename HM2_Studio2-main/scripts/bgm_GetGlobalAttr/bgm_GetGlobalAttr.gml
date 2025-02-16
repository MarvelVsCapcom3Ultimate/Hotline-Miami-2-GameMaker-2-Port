function bgm_GetGlobalAttr(argument0) {
	/*  Returns the value of a global attribute or -1000000 on error.

	    bgm_GetGlobalAttr( attribute )
                 
	    Example:
    
	    // Get the global output frequency
	    freq = bgm_GetGlobalAttr("freq");

	******************************************************************************/

	var ret;

	ret = external_call(global._bgm_GetAttrById, 0, argument0);

	if (ret=="-1000000" && global._bgm_showErrors)
	  show_error(external_call(global._bgm_Error), false);
  
	if (external_call(global._bgm_GetAttrTypeLast)==1)
	  return real(ret);
  
	return ret;



}
