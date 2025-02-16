

draw_set_blend_mode(bm_add)
//mp_grid_draw(global.grid)
draw_sprite_ext(sprPigsmoke,0,x,y,image_xscale,image_yscale,image_angle,merge_color(c_black,c_gray,0.6+lengthdir_x(0.4,dir)),image_alpha)
draw_sprite_ext(sprPigsmoke,1,x,y,image_xscale,image_yscale,image_angle,merge_color(c_black,c_gray,0.6+lengthdir_x(0.4,dir+120)),image_alpha)
draw_sprite_ext(sprPigsmoke,2,x,y,image_xscale,image_yscale,image_angle,merge_color(c_black,c_gray,0.6+lengthdir_x(0.4,dir+240)),image_alpha)
draw_set_blend_mode(bm_subtract)
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_set_blend_mode(bm_normal)
dir += 1;
