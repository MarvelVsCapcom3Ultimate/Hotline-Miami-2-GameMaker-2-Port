draw_set_blend_mode(bm_add)
image_blend=merge_color(merge_color(c_white,c_aqua,random(1)),c_teal,alpha)
image_xscale=speed*0.5
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_set_blend_mode(bm_normal)
