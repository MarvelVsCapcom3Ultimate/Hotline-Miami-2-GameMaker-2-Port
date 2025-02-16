if __background_get( e__BG.X, 0 )<-480 __background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) + (480) ) {
draw_background(__background_get( e__BG.Index, 0 ),__background_get( e__BG.X, 0 ),0)
draw_background(__background_get( e__BG.Index, 0 ),__background_get( e__BG.X, 0 )+480,0)
}
if __background_get( e__BG.Index, 0 )=bgDarkRoad {
draw_set_blend_mode(bm_subtract)
color=merge_color(c_red,c_gray,0.5+lengthdir_x(0.5,dir))
draw_rectangle_color(0,0,480,48,color,color,c_black,c_black,0)
draw_rectangle_color(0,room_height-48,480,room_height,c_black,c_black,color,color,0)
draw_set_blend_mode(bm_normal)
}
dir+=1
