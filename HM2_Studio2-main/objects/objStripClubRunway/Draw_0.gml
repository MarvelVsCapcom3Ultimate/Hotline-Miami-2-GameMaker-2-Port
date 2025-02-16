draw_sprite_ext(sprite_index,0,x+1,y+1,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,make_color_hsv(190+lengthdir_x(40,dir),110+lengthdir_x(80,dir*2.7),240),image_alpha)
dir+=4
//make_color_hsv(190+lengthdir_x(40,dir),190+lengthdir_x(65,dir*2.7),240)
