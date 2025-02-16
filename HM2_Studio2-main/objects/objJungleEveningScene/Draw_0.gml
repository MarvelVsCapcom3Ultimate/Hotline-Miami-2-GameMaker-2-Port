draw_set_blend_mode(bm_normal)
draw_surface_general(surf1,0,0,672,340,-16-1-lengthdir_x(1,dir+90),-50-1-lengthdir_y(1,dir+90),1,1,0,c_maroon,c_black,merge_color(c_green,c_orange,0.5+lengthdir_x(0.5,dir)),merge_color(c_yellow,c_red,0.5+lengthdir_x(0.5,dir)),0.6)
draw_surface_general(surf1,0,0,672,340,-16+lengthdir_x(1,dir),-50+lengthdir_y(1,dir),1,1,0,merge_color(c_red,c_maroon,0.5+lengthdir_x(0.5,dir)),merge_color(c_red,c_maroon,0.5+lengthdir_x(0.5,dir+30)),merge_color(c_maroon,c_black,0.15+lengthdir_x(0.15,dir)),merge_color(c_maroon,c_black,0.25+lengthdir_x(0.25,dir)),0.7+lengthdir_x(0.1,dir*0.7))
draw_set_blend_mode(bm_add)
draw_surface_general(surf2,0,0,672,340,-16+-lengthdir_x(1,dir),-50-lengthdir_y(1,dir),1,1,0,c_black,c_maroon,merge_color(c_teal,c_maroon,0.5+lengthdir_x(0.5,dir)),merge_color(c_aqua,c_fuchsia,0.5+lengthdir_x(0.5,dir)),1)
draw_set_blend_mode(bm_normal)
dir+=4
__view_set( e__VW.Angle, 0, lengthdir_x(2,dir*0.3) )

/*draw_set_blend_mode(bm_add)
i=0
repeat (10) {
draw_sprite_general(sprPalmTrees,0,0,0,64,160,i*64,room_height/5,1,1,0,merge_color(c_teal,c_black,0.25+lengthdir_x(0.25,dir+i*20)),merge_color(c_teal,c_black,0.25+lengthdir_x(0.25,dir+30+i*20)),c_black,c_black,1)
i+=1
}
draw_set_blend_mode(bm_normal)*/
draw_surface_ext(surf3,-1,-1,1,1,0,c_black,1)
draw_surface_ext(surf3,1,1,1,1,0,c_black,1)
draw_surface_ext(surf3,-1,1,1,1,0,c_black,1)
draw_surface_ext(surf3,1,-1,1,1,0,c_black,1)
draw_surface_ext(surf3,0,0,1,1,0,c_white,1)


if fade=0 {
if c_amount<180 {
c_amount+=5
color1=merge_color(c_black,merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,c_amount)),0.5+lengthdir_x(0.5,c_amount))
if c_amount>90 color2=merge_color(c_black,merge_color(c_fuchsia,c_white,abs(lengthdir_y(1,c_amount))),abs(lengthdir_y(1,c_amount))) else color2=c_white
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(__view_get( e__VW.XView, 0 )-20,__view_get( e__VW.YView, 0 )-20,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+20,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+20,color1,color2,color2,color1,0)
draw_set_blend_mode(bm_normal)
}
}

if fade=1 {
if c_amount>0  {
c_amount-=5
color1=merge_color(c_black,merge_color(c_aqua,c_white,0.5+lengthdir_x(0.5,c_amount)),0.5+lengthdir_x(0.5,c_amount))
if c_amount>90 color2=merge_color(c_black,merge_color(c_fuchsia,c_white,abs(lengthdir_y(1,c_amount))),abs(lengthdir_y(1,c_amount))) else color2=c_white
draw_set_blend_mode(bm_subtract)
draw_rectangle_color(__view_get( e__VW.XView, 0 )-20,__view_get( e__VW.YView, 0 )-20,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+20,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+20,color2,color1,color1,color2,0)
draw_set_blend_mode(bm_normal)
} else {room_goto(global.level)}
}

draw_set_blend_mode(bm_subtract)
my_y=random(32)
my_x=random(32)
draw_sprite_tiled_ext(sprNoise,0,-my_x,-my_y,1,1,c_white,1)
//draw_circle_color(room_width/2,room_height/2,room_width*0.8+random(10),c_black,c_lime,0)
draw_set_blend_mode(bm_normal)


/* */
/*  */
