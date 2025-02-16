surface_set_target(surf)
draw_clear_alpha(c_black,0)
draw_set_font(fntLevelClear)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
i=0
start_x=__view_get( e__VW.WView, 0 )/2-string_width(string_hash_to_newline(text))*0.5+string_width(string_hash_to_newline(string_copy(text,1+i,1)))*0.5
repeat (string_length(text)) {
ii=0
letterdir=point_direction(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )*2,start_x,__view_get( e__VW.HView, 0 )/2)
addy=lengthdir_y(0.5*amount,letterdir)
addx=lengthdir_x(0.5*amount,letterdir)
times=8+lengthdir_x(16,dir+i*15)
if times<1 times=1
if amount=0.1 times=1
repeat (times) {
if ii=0 draw_set_blend_mode(bm_normal) else draw_set_blend_mode(bm_add)
if ii=0 draw_set_color(merge_color(c_aqua,c_teal,random(1))) else draw_set_color(merge_color(c_black,merge_color(c_red,c_dkgray,random(1)),(1-ii*0.03)*amount))
//if ii>0 {shakey=-2+random(4) shake=-1+random(2)} else 
{shakey=0 shakex=0}
if on[i]>0 draw_text_transformed(start_x+addx*ii+shakex,__view_get( e__VW.HView, 0 )/2+ii*addy+shakey,string_hash_to_newline(string_copy(text,1+i,1)),1+ii*0.01,1+ii*0.005,0)
ii+=1
}
i+=1
start_x+=string_width(string_hash_to_newline(string_copy(text,1+i,1)))
}
surface_reset_target()
dir-=4
if dir<-230 {if amount>0.1 amount-=0.1 else amount=0.1} 

if dir<-240 {
i=0
repeat (string_length(text)) {
if i=0 {if on[0]>0 on[0]-=0.2} else {
if on[i-1]<=0 {if on[i]>0 on[i]-=0.2}
}
i+=1
}
if on[string_length(text)-1]=0 {surface_free(surf) instance_destroy()}
} else {
i=0
repeat (string_length(text)) {
if i=0 {if on[0]<1 on[0]+=0.2} else {
if on[i-1]>=1 {if on[i]<1 on[i]+=0.2}
}
i+=1
}
}
draw_set_blend_mode(bm_normal)
