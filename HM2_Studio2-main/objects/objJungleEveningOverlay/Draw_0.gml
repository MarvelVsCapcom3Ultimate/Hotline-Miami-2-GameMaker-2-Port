d3d_set_projection_ortho(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),0)
color2=merge_color(merge_color(merge_color(c_fuchsia,c_red,0.25),c_purple,0.2+lengthdir_x(0.2,dir1)),c_black,0.6+lengthdir_x(0.15,dir2))
color1=merge_color(merge_color(merge_color(c_yellow,c_red,0.25),c_fuchsia,0.2+lengthdir_x(0.2,dir1*1.12)),c_black,0.6+lengthdir_x(0.15,dir2*0.71))
draw_set_blend_mode(bm_add)
draw_rectangle_color(-10,-10,__view_get( e__VW.WView, 0 )+10,__view_get( e__VW.HView, 0 )+10,color1,color1,color2,color2,0)
draw_set_blend_mode(bm_normal)
dir1+=1
dir2+=0.9
d3d_set_projection_ortho(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),__view_get( e__VW.Angle, 0 ))
