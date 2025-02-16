function scrDrawEnemy(argument0) {
	/*if alert=0 image_blend=c_white
	if alert=1 image_blend=c_red
	if alert=2 image_blend=c_aqua
	if alert=3 image_blend=c_green*/
	if x>__view_get( e__VW.XView, 0 )-sprite_width-10 and x<__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+sprite_width+10 and y>__view_get( e__VW.YView, 0 )-sprite_height-10 and y<__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+sprite_height+10 {
	if path_index>=0 and (alert>=3 or alert=0) angle=direction
	if speed>0 and alert=0 angle=direction
	if speed>0 or path_index>=0 draw_sprite_ext(argument0,image_index*2,x,y,image_xscale,image_yscale,direction,image_blend,1)
	draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,left,angle,c_black,0.5)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,left,angle,image_blend,image_alpha)
	//draw_set_color(c_white)
	//if path_index>=0 draw_path(path,0,0,1)
	}



}
