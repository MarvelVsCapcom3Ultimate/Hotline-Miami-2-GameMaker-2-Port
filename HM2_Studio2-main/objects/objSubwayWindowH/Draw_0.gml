color=merge_color(merge_color(c_red,c_white,random(1)),c_black,0.8)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if y<room_height/2 {
length=64-point_distance(x+32,y,global.lightx,y)*0.2
dir1=point_direction(global.lightx,y-480,x+4,y)
dir2=point_direction(global.lightx,y-480,x+60,y)
if length<0 length=0
draw_set_blend_mode(bm_add)
draw_triangle_color(x+4,y+8,x+lengthdir_x(length,dir1),y+lengthdir_y(length,dir1),x+60,y+8,merge_color(c_black,color,length*(1/64)),c_black,merge_color(c_black,color,length*(1/64)),0)
draw_triangle_color(x+lengthdir_x(length,dir1),y+lengthdir_y(length,dir1),x+60+lengthdir_x(length,dir2),y+lengthdir_y(length,dir2),x+60,y+8,c_black,c_black,merge_color(c_black,color,length*(1/64)),0)
draw_set_blend_mode(bm_normal)
}
/*
if y>room_height/2 {
length=64-point_distance(x+32,y,global.lightx,y)*0.1
dir1=point_direction(global.lightx,y+480,x+4,y)
dir2=point_direction(global.lightx,y+480,x+60,y)
if length<0 length=0
draw_set_blend_mode(bm_add)
draw_triangle_color(x+4,y-1,x+lengthdir_x(length,dir1),y+lengthdir_y(length,dir1),x+60,y-1,merge_color(c_black,color,length*(1/64)),c_black,merge_color(c_black,color,length*(1/64)),0)
draw_triangle_color(x+lengthdir_x(length,dir1),y+lengthdir_y(length,dir1),x+60+lengthdir_x(length,dir2),y+lengthdir_y(length,dir2),x+60,y-1,c_black,c_black,merge_color(c_black,color,length*(1/64)),0)
draw_set_blend_mode(bm_normal)
}


/* */
/*  */
