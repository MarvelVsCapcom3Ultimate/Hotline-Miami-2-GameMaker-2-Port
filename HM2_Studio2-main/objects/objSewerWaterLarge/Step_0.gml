if reset=1 {
surface_free(surf)
}
if !surface_exists(surf) {
if image_angle=0 or image_angle=180 {
surf=surface_create(sprite_get_width(sprite_index),sprite_get_height(sprite_index)*image_yscale)
}
if image_angle=90 or image_angle=270 {
surf=surface_create(sprite_get_height(sprite_index)*image_yscale,sprite_get_width(sprite_index))
}
}
if image_angle=0 {global.myx=x global.myy=y}
if image_angle=90 {global.myx=x global.myy=y-sprite_get_width(sprite_index)}
if image_angle=180 {global.myx=x-sprite_get_width(sprite_index) global.myy=y-image_yscale*sprite_get_height(sprite_index)}
if image_angle=270 {global.myx=x-sprite_get_height(sprite_index)*image_yscale global.myy=y}
surface_set_target(surf)
texture_set_interpolation(true)
draw_surface_ext(surf,-0.5+random(1),-0.5+random(1),1,1,0,c_red,0.999)
with objBlood {
draw_sprite_ext(sprite_index,image_index,x-global.myx,y-global.myy,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}
//with objWaterSplash {

//}
texture_set_interpolation(false)
surface_reset_target()
