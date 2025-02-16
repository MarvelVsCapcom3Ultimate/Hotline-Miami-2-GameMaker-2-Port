function bgm_GetRow(argument0) {
	/*  Returns the current row of the given mod.

	    Ex:
	      row = bgm_GetRow(mySong);
    
	******************************************************************************/

	var ret;

	if (is_real(argument0))
	  ret = external_call(global._bgm_GetRowById, argument0)
	else
	  ret = external_call(global._bgm_GetRowByFname, argument0);
	if (ret==-1 && global._bgm_showErrors)
	  show_error(external_call(global._bgm_Error), false);
	return ret;



}
