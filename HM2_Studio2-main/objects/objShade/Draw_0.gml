d3d_set_projection_ortho(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),0)
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),c_black,color,color,c_black,0)
draw_set_blend_mode(bm_normal)
