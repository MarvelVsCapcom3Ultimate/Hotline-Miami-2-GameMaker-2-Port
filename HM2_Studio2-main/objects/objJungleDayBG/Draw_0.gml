color1=c_red
color2=c_maroon
draw_rectangle_color(-16,-16,room_width+16,room_height*0.8,merge_color(color1,color2,0.5+lengthdir_x(0.5,dir)),merge_color(color1,color2,0.5+lengthdir_x(0.5,dir)),c_olive,c_olive,0)
draw_set_blend_mode(bm_add)
draw_circle_color(room_width*0.7,room_height*0.15,128,merge_color(c_white,c_olive,0.5+lengthdir_x(0.5,dir)),c_black,0)
draw_circle_color(room_width*0.7,room_height*0.15,24+lengthdir_x(1,dir),c_orange,c_black,0)
draw_set_blend_mode(bm_normal)
draw_rectangle_color(-16,room_height*0.5,room_width+16,room_height+16,c_orange,c_orange,c_maroon,c_maroon,0)

dir+=0.5
draw_circle_color(room_width*0.7,room_height*0.35,16+lengthdir_x(1,dir),c_white,merge_color(c_yellow,c_white,0.5+lengthdir_x(0.5,dir*3)),0)
//draw_sprite_general(sprJungleMoon,0,0,0,96,96,room_width*0.7-16,room_height*0.15-16,0.333,0.333,0,c_white,c_white,c_orange,c_orange,1)
draw_sprite_general(sprMountain,0,0,0,480,96,0,room_height*0.5-95,1,1,0,c_yellow,c_yellow,c_orange,c_orange,1)
