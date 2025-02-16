draw_set_blend_mode(bm_add)
with objRainDrop {
dist=point_distance(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,x,y)
dir=point_direction(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,x,y)
draw_line_width_color(x+lengthdir_x(height*(dist*0.005),dir),y+lengthdir_y(height*(dist*0.005),dir),x+lengthdir_x((height+10)*(dist*0.005),dir),y+lengthdir_y((height+10)*(dist*0.005),dir),1,c_gray,c_dkgray)
}
draw_set_blend_mode(bm_normal)
