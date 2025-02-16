d3d_set_projection_ortho(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),0)
draw_set_blend_mode(bm_subtract)
draw_surface(surf,0,0)
draw_set_blend_mode(bm_normal)
if flash>0 {
draw_set_blend_mode(bm_add)
draw_set_color(merge_color(c_black,c_white,flash))
draw_rectangle(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),0)
draw_set_blend_mode(bm_normal)
flash-=0.05
}
