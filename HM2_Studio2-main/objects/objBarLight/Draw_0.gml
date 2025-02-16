if instance_exists(objLSD) exit
draw_set_blend_mode(bm_subtract)
//mp_grid_draw(global.grid)
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_set_blend_mode(bm_normal)
dir+=1
