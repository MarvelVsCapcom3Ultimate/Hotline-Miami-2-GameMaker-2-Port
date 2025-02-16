bgcolor=merge_color(merge_color(c_black,c_maroon,0.1+lengthdir_x(0.1,cdir)),c_black,0.5)
color=merge_color(c_maroon,c_black,0.95+lengthdir_x(0.05,cdir))
//if room=rmTigersDen {bgcolor=c_black color=c_black}
draw_rectangle_color(__view_get( e__VW.XView, 0 )-60,__view_get( e__VW.YView, 0 )-60,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+60,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+60,bgcolor,bgcolor,c_black,c_black,0)
draw_set_blend_mode(bm_add)
texture_set_interpolation(true)
if surface_exists(surf1) draw_surface_ext(surf1,__view_get( e__VW.XView, 0 )-60,__view_get( e__VW.YView, 0 )-60,3,3,0,merge_color(merge_color(merge_color(color,c_black,0.5-random(global.blink*0.35)+lengthdir_x(0.25,cdir*0.5)),merge_color(c_red,c_white,random(0.5)),random(global.blink)),merge_color(c_white,c_yellow,random(0.5)),random(thunder)),1)
texture_set_interpolation(false)
draw_set_blend_mode(bm_normal)
cdir+=1
if global.blink>0 global.blink-=0.02 else global.blink=0
if thunder>0 thunder-=0.025 else thunder=0

