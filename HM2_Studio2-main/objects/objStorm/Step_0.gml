if !surface_exists(surf) {
surf=surface_create(room_width*3,room_height*3)
surface_set_target(surf)
draw_clear_alpha(c_black,0)
surface_reset_target()
}
color1=merge_color(c_dkgray,c_white,0.5+lengthdir_x(0.5,dir))
color2=merge_color(c_dkgray,c_white,0.5+lengthdir_x(0.5,dir+45))
color3=merge_color(c_dkgray,c_white,0.5+lengthdir_x(0.5,dir+135))
color4=merge_color(c_dkgray,c_white,0.5+lengthdir_x(0.5,dir+90))
dir+=4
surface_set_target(surf)
//screen_redraw()
surface_reset_target()
d3d_set_projection_ortho(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),0)
draw_set_color(__background_get_colour( ))
draw_rectangle(0,0,room_width,room_height,0)
draw_set_blend_mode(bm_add)
draw_surface_general(surf,0,0,surface_get_width(surf),surface_get_height(surf),0,0,1/3,1/3,0,color1,color2,color3,color4,1)
draw_set_blend_mode(bm_normal)
scrStormDrawHUD()
//screen_refresh()

