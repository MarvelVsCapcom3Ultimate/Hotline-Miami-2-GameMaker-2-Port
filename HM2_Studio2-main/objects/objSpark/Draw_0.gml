image_blend=merge_color(c_white,c_yellow,random(0.5))
draw_set_blend_mode(bm_add)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_set_blend_mode(bm_normal)
