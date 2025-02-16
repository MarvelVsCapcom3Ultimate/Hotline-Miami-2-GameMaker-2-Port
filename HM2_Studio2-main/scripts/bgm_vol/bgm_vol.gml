function bgm_vol(argument0, argument1) {
	/*if (argument0<=-1)
	  return bgm_GetAttr(0,"cvolume")
	else*/
	  return bgm_SetAttr(argument0,"cVolume", argument1);



}
