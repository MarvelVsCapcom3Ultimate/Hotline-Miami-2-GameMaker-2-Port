draw_sprite_ext(sprite_index,image_index,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if __background_get( e__BG.Index, 0 )=bgBeachRoad {
draw_set_blend_mode(bm_add)
color=merge_color(c_yellow,c_gray,0.5+lengthdir_x(0.5,dir))
draw_rectangle_color(0,0,480,48,color,color,c_black,c_black,0)
draw_rectangle_color(0,room_height-48,480,room_height,c_black,c_black,color,color,0)
draw_set_blend_mode(bm_normal)
}
dir+=1

if alpha>0 {
draw_set_color(merge_color(c_black,c_white,alpha))
draw_set_blend_mode(bm_add)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_blend_mode(bm_normal)
alpha-=0.1
}
