draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprCamera,dir,x+lengthdir_x(4,image_angle+180),y+lengthdir_y(4,image_angle+180),image_xscale,image_yscale,image_angle-180+lengthdir_x(30,dir),image_blend,image_alpha)
dir+=0.25
