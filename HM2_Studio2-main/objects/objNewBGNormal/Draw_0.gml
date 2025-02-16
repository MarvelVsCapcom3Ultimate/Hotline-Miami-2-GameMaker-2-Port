bgcolor=merge_color(merge_color(c_fuchsia,c_aqua,0.5+lengthdir_x(0.5,cdir)),c_black,0.3)
color=merge_color(c_fuchsia,c_aqua,0.5+lengthdir_x(0.5,cdir))
draw_rectangle_color(__view_get( e__VW.XView, 0 )-60,__view_get( e__VW.YView, 0 )-60,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+60,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+60,bgcolor,bgcolor,c_black,c_black,0)
draw_set_blend_mode(bm_add)
texture_set_interpolation(true)
if surface_exists(surf1) draw_surface_ext(surf1,__view_get( e__VW.XView, 0 )-60,__view_get( e__VW.YView, 0 )-60,3,3,0,merge_color(merge_color(color,c_black,0.95-random(global.blink*0.35)+lengthdir_x(0.05,cdir*0.5)),c_red,random(global.blink)),1)
texture_set_interpolation(false)
draw_set_blend_mode(bm_normal)
cdir+=1
if global.blink>0 global.blink-=0.02
