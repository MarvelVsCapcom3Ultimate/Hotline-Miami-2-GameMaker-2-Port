dir+=0.25
colorbase1=merge_color(merge_color(merge_color(c_orange,c_olive,0.5+lengthdir_y(0.5,dir*3)),merge_color(c_fuchsia,c_yellow,0.5+lengthdir_y(0.5,dir*4.7)),0.25+lengthdir_y(0.25,dir*2)),c_orange,0.75)
colorbase2=merge_color(merge_color(merge_color(c_orange,c_olive,0.5+lengthdir_x(0.5,dir*3)),merge_color(c_fuchsia,c_yellow,0.5+lengthdir_x(0.5,dir*4.7)),0.25+lengthdir_x(0.25,dir*2)),c_olive,0.5)
color1=merge_color(colorbase1,colorbase2,0.5+lengthdir_x(0.5,dir*5))
color2=merge_color(colorbase1,colorbase2,0.5+lengthdir_x(0.5,dir*5+45))
color3=merge_color(colorbase2,colorbase1,0.5+lengthdir_x(0.5,dir*5+90))
color4=merge_color(colorbase2,colorbase1,0.5+lengthdir_x(0.5,dir*5+135))
draw_rectangle_color(__view_get( e__VW.XView, 0 )-60,__view_get( e__VW.YView, 0 )-60,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+60,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+60,color1,color2,color3,color4,0)
draw_sprite_tiled_ext(sprGrassTileDay,0,0,0,1,1,merge_color(c_yellow,c_aqua,0.5+lengthdir_x(0.5,dir*3)),1)
