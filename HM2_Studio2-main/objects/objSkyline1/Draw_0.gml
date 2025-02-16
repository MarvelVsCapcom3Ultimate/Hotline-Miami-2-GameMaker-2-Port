draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_general(sprite_index,1,0,0,160,64,x,y,image_xscale,image_yscale,image_angle,merge_color(c_orange,c_aqua,0.5+lengthdir_x(0.5,dir*0.7)),merge_color(c_orange,c_aqua,0.5+lengthdir_x(0.5,dir+110)),merge_color(c_olive,c_teal,0.5+lengthdir_x(0.5,dir*0.8)),merge_color(c_olive,c_teal,0.5+lengthdir_x(0.5,dir*0.8+110)),image_alpha)
draw_sprite_general(sprite_index,2,0,0,160,64,x,y,image_xscale,image_yscale,image_angle,merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,dir*0.7)),merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,dir+110)),merge_color(c_fuchsia,c_aqua,0.5+lengthdir_x(0.5,dir*0.8)),merge_color(c_fuchsia,c_aqua,0.5+lengthdir_x(0.5,dir*0.8+110)),image_alpha)
dir+=2
