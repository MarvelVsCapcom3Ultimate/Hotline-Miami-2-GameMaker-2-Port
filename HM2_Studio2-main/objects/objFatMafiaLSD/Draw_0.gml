if x>__view_get( e__VW.XView, 0 )-sprite_width-10 and x<__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+sprite_width+10 and y>__view_get( e__VW.YView, 0 )-sprite_height-10 and y<__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+sprite_height+10 {
angle=direction
if speed>0 or path_index>=0 draw_sprite_ext(sprEMafiaFatLegs,image_index*2,x,y,image_xscale,image_yscale,direction,image_blend,1)
draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,left,angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,left,angle,image_blend,image_alpha)
//draw_set_color(c_white)
//if path_index>=0 draw_path(path,0,0,1)
}
