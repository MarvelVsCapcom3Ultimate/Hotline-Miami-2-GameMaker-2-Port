i=0
draw_set_blend_mode(bm_add)
repeat (7) {
if i=0 color=c_red
if i=1 color=c_orange
if i=2 color=c_yellow
if i=3 color=c_lime
if i=4 color=c_aqua
if i=5 color=c_blue
if i=6 color=c_fuchsia
mycolor1=merge_color(merge_color(color,merge_color(c_aqua,c_purple,0.5+lengthdir_x(0.5,dir*0.1)),0.35),c_black,0.15+lengthdir_x(0.15,dir+i*20)+random(0.05))
mycolor2=merge_color(merge_color(color,merge_color(c_aqua,c_purple,0.5+lengthdir_x(0.5,dir*0.1)),0.35),c_black,0.15+lengthdir_x(0.15,dir+90+i*20)+random(0.05))
draw_rectangle_color(x1+i*16,y1,x1+i*16+16,y2,c_black,c_black,mycolor1,mycolor2,0)
addx=random(16)
draw_line_color(x1+i*16+addx,y2,x1+i*16+addx,y2*(0.4+random(0.3)),merge_color(mycolor1,c_black,0.7+random(0.1)),c_black)
i+=1
}
draw_rectangle_color(x1,y2*0.3,x1+7*16,y2*0.55,c_black,c_black,c_dkgray,c_dkgray,0)
draw_set_color(c_dkgray)
draw_rectangle(x1,y2*0.55,x1+7*16,y2*0.65,0)
draw_rectangle_color(x1,y2*0.65,x1+7*16,y2*0.9,c_dkgray,c_dkgray,c_black,c_black,0)
draw_set_blend_mode(bm_normal)
dir+=4
