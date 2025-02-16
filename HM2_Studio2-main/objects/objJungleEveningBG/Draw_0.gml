color1=merge_color(merge_color(c_fuchsia,c_red,0.5),c_black,0.5)
color2=merge_color(merge_color(c_red,c_purple,0.5),c_black,0.5)
draw_rectangle_color(-16,-16,room_width+16,room_height*0.5,merge_color(color1,color2,0.5+lengthdir_x(0.5,dir)),merge_color(color1,color2,0.5+lengthdir_x(0.5,dir)),__background_get_colour( ),__background_get_colour( ),0)
dir+=0.5
draw_set_blend_mode(bm_add)
draw_circle_color(room_width*0.3,room_height*0.15,80,merge_color(merge_color(c_maroon,c_orange,0.5+lengthdir_x(0.5,dir)),c_black,0.5),c_black,0)
draw_circle_color(room_width*0.3,room_height*0.15,24+lengthdir_x(1,dir),c_gray,c_black,0)
draw_set_blend_mode(bm_normal)
//draw_circle_color(room_width*0.7,room_height*0.35,16+lengthdir_x(1,dir),merge_color(c_white,c_aqua,0.5+lengthdir_x(0.5,dir*3)),merge_color(c_aqua,c_teal,0.5+lengthdir_x(0.5,dir*3)),0)
draw_sprite_general(sprJungleMoon,0,0,0,96,96,room_width*0.3-16,room_height*0.15-16,0.333,0.333,0,merge_color(c_white,c_yellow,0.5+lengthdir_x(0.25,dir*3)),merge_color(c_white,c_yellow,0.5+lengthdir_x(0.25,dir*3)),merge_color(c_white,c_red,0.5+lengthdir_x(0.25,dir*3)),merge_color(c_white,c_red,0.5+lengthdir_x(0.25,dir*3)),1)
draw_sprite_general(sprMountain,0,0,0,480,96,0,room_height*0.5-95,1,1,0,merge_color(c_black,c_red,0.5+lengthdir_x(0.1,dir)),merge_color(c_black,c_red,0.5+lengthdir_x(0.1,dir)),__background_get_colour( ),__background_get_colour( ),1)




