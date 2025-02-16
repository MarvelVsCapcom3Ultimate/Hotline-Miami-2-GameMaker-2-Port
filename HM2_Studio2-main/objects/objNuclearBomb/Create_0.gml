on=0
surf=surface_create(__view_get( e__VW.WPort, 0 ),__view_get( e__VW.HPort, 0 ))
surface_set_target(surf)
draw_clear_alpha(make_color_hsv(0,0,1),0)
surface_reset_target()
amount=0
add=1
add2=0
vol=1
