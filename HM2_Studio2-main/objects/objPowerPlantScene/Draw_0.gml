d3d_set_projection_ortho(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),0)
if rumble=1 {
draw_set_blend_mode(bm_subtract)
draw_circle_color(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2,__view_get( e__VW.WView, 0 )*0.76+random(24),merge_color(c_black,merge_color(c_black,c_aqua,0.5+lengthdir_x(0.5,global.dir*4)),amount),merge_color(c_black,merge_color(c_black,c_aqua,0.25+lengthdir_x(0.25,global.dir*4)),amount),0)
draw_set_blend_mode(bm_normal)
if amount<1 amount+=0.025 else amount=1
}
d3d_set_projection_ortho(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),__view_get( e__VW.Angle, 0 ))
