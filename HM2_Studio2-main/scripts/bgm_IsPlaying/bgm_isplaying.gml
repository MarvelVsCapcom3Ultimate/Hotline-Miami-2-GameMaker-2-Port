function bgm_isplaying() {
	var ret;
	ret = bgm_IsPlaying();
	if (ret==2)
	  return 3;
	if (ret==3)
	  return 2;
	return ret;



}
