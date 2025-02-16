draw_set_blend_mode(bm_subtract)
draw_surface(surf,0,0)
draw_set_blend_mode(bm_normal)
if flash>0 {
draw_set_blend_mode(bm_add)
draw_set_color(merge_color(c_black,c_white,flash))
draw_rectangle(0,0,room_width,room_height,0)
draw_set_blend_mode(bm_normal)
flash-=0.05
}
