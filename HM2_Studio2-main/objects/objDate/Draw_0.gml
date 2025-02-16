d3d_set_projection_ortho(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),0)
if alpha>0 alpha-=0.01
draw_set_color(merge_color(c_black,c_dkgray,random(0.07)))
draw_set_alpha(alpha)
draw_rectangle(-10,-10,room_width+10,room_height+10,0)
draw_set_alpha(1)
if surface_exists(surf) {
draw_surface_ext(surf,-1,0,1,1,0,c_black,1)
draw_surface_ext(surf,1,0,1,1,0,c_black,1)
draw_surface_ext(surf,0,1,1,1,0,c_black,1)
draw_surface_ext(surf,0,-1,1,1,0,c_black,1)
draw_surface_ext(surf,0,0,1,1,0,c_white,1)
}
if wait>0 wait-=1 else {
if factor>0 factor-=0.1 else instance_destroy()
}
