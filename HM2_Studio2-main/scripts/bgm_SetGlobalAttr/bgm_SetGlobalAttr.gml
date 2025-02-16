function bgm_SetGlobalAttr(argument0, argument1) {
	/*  Sets the value of a global attribute.

	    bgm_SetGlobalAttr( song,
	                       attribute,
	                       value )
                 
	    Example:
    
	    // Set the global output frequency
	    bgm_SetGlobalAttr("freq", 32000);

	******************************************************************************/

	var ret;

	if (is_real(argument1))
	  argument1 = string(argument1);

	ret = external_call(global._bgm_SetAttrById, 0, argument0, argument1);

	if (!ret && global._bgm_showErrors)
	  show_error(external_call(global._bgm_Error), false);
  
	return ret;



}
