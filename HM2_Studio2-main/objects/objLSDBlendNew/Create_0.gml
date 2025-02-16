surf=surface_create(__view_get( e__VW.WPort, 0 ),__view_get( e__VW.HPort, 0 ))

surface_set_target(surf) 
draw_clear_alpha(c_black,0)
surface_reset_target()

surf2=surface_create(__view_get( e__VW.WPort, 0 ),__view_get( e__VW.HPort, 0 ))

surface_set_target(surf2) 
draw_clear_alpha(c_black,0)
surface_reset_target()


dir=0

h=0

screenx=__view_get( e__VW.XView, 0 )
screeny=__view_get( e__VW.YView, 0 )
