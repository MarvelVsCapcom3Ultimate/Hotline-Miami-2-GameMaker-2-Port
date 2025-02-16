function bgm_GetOrder(argument0) {
	/*  Returns the current order of the given mod.

	    Ex:
	      order = bgm_GetOrder(mySong);
    
	******************************************************************************/

	var ret;

	if (is_real(argument0))
	  ret = external_call(global._bgm_GetOrderById, argument0)
	else
	  ret = external_call(global._bgm_GetOrderByFname, argument0);
	if (ret==-1 && global._bgm_showErrors)
	  show_error(external_call(global._bgm_Error), false);
	return ret;



}
