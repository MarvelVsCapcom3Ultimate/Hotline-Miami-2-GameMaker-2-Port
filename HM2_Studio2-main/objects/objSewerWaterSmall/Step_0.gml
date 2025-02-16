if reset=1 {
surface_free(surf)
reset=0
surf=-1234535
}
if !surface_exists(surf) {
if image_angle=0 or image_angle=180 {
surf=surface_create(sprite_get_width(sprite_index),sprite_get_height(sprite_index)*image_yscale)
}
if image_angle=90 or image_angle=270 {
surf=surface_create(sprite_get_height(sprite_index)*image_yscale,sprite_get_width(sprite_index))
}
surface_set_target(surf)
draw_clear_alpha(c_black,0)
surface_reset_target()
}


if image_angle=0 {global.myx=x global.myy=y}
if image_angle=90 {global.myx=x global.myy=y-sprite_get_width(sprite_index)}
if image_angle=180 {global.myx=x-sprite_get_width(sprite_index) global.myy=y-image_yscale*sprite_get_height(sprite_index)}
if image_angle=270 {global.myx=x-sprite_get_height(sprite_index)*image_yscale global.myy=y}
surface_set_target(surf)
texture_set_interpolation(true)
global.my_id=id
with objSewerWaterSmall {
if id=global.my_id or reset=1 nothing=1 else {
if surface_exists(surf){
if place_meeting(x+2,y,global.my_id) or place_meeting(x-2,y,global.my_id) or place_meeting(x,y+2,global.my_id) or place_meeting(x,y-2,global.my_id) {
if image_angle=0 draw_surface_ext(surf,x-global.myx-1+random(2),y-global.myy-1+random(2),1,1,0,c_red,0.9999)
if image_angle=90 draw_surface_ext(surf,x-global.myx-1+random(2),y-global.myy-1+random(2)-sprite_get_width(sprite_index),1,1,0,c_red,0.9999)
if image_angle=180 draw_surface_ext(surf,x-global.myx-1+random(2)-sprite_get_width(sprite_index),y-global.myy-1+random(2)-image_yscale*sprite_get_height(sprite_index),1,1,0,c_red,0.9999)
if image_angle=270 draw_surface_ext(surf,x-global.myx-1+random(2)-sprite_get_height(sprite_index)*image_yscale,y-global.myy-1+random(2),1,1,0,c_red,0.9999)
}
}
}
}
if round(random(1)) draw_surface_ext(surf,-0.5+random(1),-0.5+random(1),1,1,0,c_red,0.9999)
draw_surface_ext(surf,0,0,1,1,0,c_red,0.9999)
//draw_surface_ext(surf,lengthdir_x(1,image_angle-90)-1,lengthdir_y(1,image_angle-90)-1,1+2*(1/surface_get_width(surf)),1+2*(1/surface_get_height(surf)),0,merge_color(c_white,c_black,0.02),1)
texture_set_interpolation(false)
with objBlood {
draw_sprite_ext(sprite_index,image_index,x-global.myx,y-global.myy,image_xscale,image_yscale,image_angle,merge_color(c_red,c_maroon,0.5),image_alpha)
}

surface_reset_target()
