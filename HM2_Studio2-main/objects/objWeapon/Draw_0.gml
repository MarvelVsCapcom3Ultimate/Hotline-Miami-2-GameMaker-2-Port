draw_set_blend_mode(bm_add)
draw_circle_color(x,y,16+lengthdir_x(3,dir*0.5),merge_color(c_dkgray,c_black,0.5),c_black,0)
draw_set_blend_mode(bm_normal)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x,y-1+lengthdir_x(1,dir),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
dir+=6
