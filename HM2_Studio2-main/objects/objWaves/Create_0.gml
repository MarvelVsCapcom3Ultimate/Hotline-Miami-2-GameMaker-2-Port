
surf = surface_create(view_get_wport(view_current) / 2, view_get_hport(view_current) / 2)//surface_create(__view_get( e__VW.WView, 0) / 2, __view_get( e__VW.HView, 0) / 2);
surface_set_target(surf)
draw_clear_alpha(c_white,1)
surface_reset_target()

i=0
repeat (99) {
index[i]=random(360)
i+=1
}

wavey=0
dir=0
angle=0
addx=lengthdir_x(32,angle)
addy=lengthdir_y(32,angle)
