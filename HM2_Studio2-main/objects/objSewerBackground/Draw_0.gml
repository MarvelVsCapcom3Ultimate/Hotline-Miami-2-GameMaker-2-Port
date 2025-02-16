dir+=0.25
color2=c_black
color1=merge_color(c_black,merge_color(merge_color(c_purple,c_maroon,0.15+lengthdir_x(0.15,dir*3.12)),c_red,0.125+lengthdir_y(0.125,dir*1.73)),global.blink*0.6-random(global.blink*0.4))
draw_rectangle_color(__view_get( e__VW.XView, 0 )-60,__view_get( e__VW.YView, 0 )-60,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+60,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+60,color1,color1,color2,color2,0)
if global.blink>0 global.blink-=0.02 else global.blink=0
