image_speed=0.15
if image_angle=0 or image_angle=180 {
surf=surface_create(sprite_get_width(sprite_index),sprite_get_height(sprite_index)*image_yscale)
}
if image_angle=90 or image_angle=270 {
surf=surface_create(sprite_get_height(sprite_index)*image_yscale,sprite_get_width(sprite_index))
}
surface_set_target(surf)
draw_clear_alpha(c_black,0)
surface_reset_target()
reset=0
