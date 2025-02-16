function bgm_Error() {
	/*  Returns a description of the last error that occured in BGM.
	    After this is called the error cache is cleared.
    
	    Example:
    
	    if (!bgm_Load("MySong.ogg"))
	      str = bgm_Error();
      
	    show_message(str); // This would display a message explaining why the
	                       // song couldn't be loaded.
                       
	******************************************************************************/

	return external_call(global._bgm_Error);



}
