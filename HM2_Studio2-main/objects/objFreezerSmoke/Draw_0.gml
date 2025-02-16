draw_set_blend_mode(bm_add)
draw_sprite_ext(sprMallFreezerSmoke,0,x,y,image_xscale,image_yscale,image_angle,merge_color(c_black,merge_color(c_gray,c_teal,random(0.2)),0.6+lengthdir_x(0.4,dir)),image_alpha)
draw_sprite_ext(sprMallFreezerSmoke,1,x,y,image_xscale,image_yscale,image_angle,merge_color(c_black,merge_color(c_gray,c_teal,random(0.2)),0.6+lengthdir_x(0.4,dir+120)),image_alpha)
draw_sprite_ext(sprMallFreezerSmoke,2,x,y,image_xscale,image_yscale,image_angle,merge_color(c_black,merge_color(c_gray,c_teal,random(0.2)),0.6+lengthdir_x(0.4,dir+240)),image_alpha)
draw_set_blend_mode(bm_normal)
dir+=1
