if surface_exists(surf) {
draw_surface_ext(surf,__view_get( e__VW.XView, 0 )+1,__view_get( e__VW.YView, 0 ),1/3,1/3,0,c_black,1)
draw_surface_ext(surf,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+1,1/3,1/3,0,c_black,1)
draw_surface_ext(surf,__view_get( e__VW.XView, 0 )-1,__view_get( e__VW.YView, 0 ),1/3,1/3,0,c_black,1)
draw_surface_ext(surf,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )-1,1/3,1/3,0,c_black,1)
draw_surface_ext(surf,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),1/3,1/3,0,c_white,1)
}


