color=merge_color(c_ltgray,mycolor,0.5+lengthdir_x(0.5,dir))
draw_set_color(color)
draw_set_blend_mode(bm_subtract)

draw_surface_ext(surf,x1,y1,1,1,0,color,1)
//draw_rectangle(x1,y1,x2,y2,0)
//draw_rectangle_color(x1,y1,x1+32,y2,color,c_black,c_black,color,0)
//draw_rectangle_color(x2-32,y1,x2,y2,c_black,color,color,c_black,0)
//draw_rectangle_color(x1,y1,x2,y1+32,color,color,c_black,c_black,0)
//draw_rectangle_color(x1,y2-32,x2,y2,c_black,c_black,color,color,0)
draw_set_blend_mode(bm_normal)
if dir<360 dir+=1 else dir=0
if dir=180 {
if mycolor=c_aqua {mycolor=c_fuchsia exit}
if mycolor=c_red {mycolor=c_aqua exit}
if mycolor=c_fuchsia {mycolor=c_red exit}
}
