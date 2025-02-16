function scrDrawWriterBerserk() {
	prevkills=kills
	if instance_exists(objWriter) kills=objWriter.kills
	if prevkills<kills killamount=1
	if kills>0 {if killamount<kills*0.5 killamount=kills*0.5 if killamount>1 killamount=1}
	if kills>0 {
	if killamount>0 {
	if killamount>kills*0.5 killamount-=0.005
	draw_set_blend_mode(bm_subtract)
	draw_circle_color(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2,__view_get( e__VW.WView, 0 )*0.75,c_black,merge_color(c_black,c_aqua,killamount),0)
	draw_set_blend_mode(bm_add)
	myx=-random(32)
	myy=-random(32)
	draw_sprite_tiled_ext(sprNoise,0,myx,myy,1,1,merge_color(c_black,c_white,killamount),1)
	draw_set_blend_mode(bm_normal)
	}
	}



}
