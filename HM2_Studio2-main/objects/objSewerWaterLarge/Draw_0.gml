i=0
repeat (image_yscale) {
draw_sprite_ext(sprSewerWaterLarge,image_index,x+lengthdir_x(sprite_get_height(sprite_index)*i,image_angle-90),y+lengthdir_y(sprite_get_height(sprite_index)*i,image_angle-90),1,1,image_angle,image_blend,1)
i+=1
}
if surface_exists(surf) {
draw_set_blend_mode(bm_add)
if image_angle=0 draw_surface_ext(surf,x,y,1,1,0,c_white,0.8)
if image_angle=90 draw_surface_ext(surf,x,y-sprite_get_width(sprite_index),1,1,0,c_white,0.8)
if image_angle=180 draw_surface_ext(surf,x-sprite_get_width(sprite_index),y-image_yscale*sprite_get_height(sprite_index),1,1,0,c_white,0.8)
if image_angle=270 draw_surface_ext(surf,x-sprite_get_height(sprite_index)*image_yscale,y,1,1,0,c_white,0.8)
draw_set_blend_mode(bm_normal)
}
