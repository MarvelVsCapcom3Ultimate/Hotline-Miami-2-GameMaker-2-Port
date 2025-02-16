if !surface_exists(surface) {
surface=surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ))
}
if instance_exists(objNicke) index=1 else index=0
surface_set_target(surface)
draw_clear_alpha(c_black,0)
i=0
repeat (11) {
//if on=1 alpha=1-addx*(1/32) else {if addy[i]<32 alpha=1-addy[i]*1/32 else alpha=0}
alpha=1-addx*(1/44)
if round(random(5))=2 and on myx=-1+random(2) else myx=0
color=merge_color(c_white,merge_color(c_aqua,c_white,random(1)),alpha)
if lvisible[i]=1 {
if frac(i*0.5)=0 draw_sprite_part_ext(sprFloorCleared,index,0,i,224,1,__view_get( e__VW.WView, 0 )/2-sprite_width/2+addx+myx,__view_get( e__VW.HView, 0 )/3+i+addy[i],1,1,color,alpha) else draw_sprite_part_ext(sprFloorCleared,index,0,i,224,1,__view_get( e__VW.WView, 0 )/2-sprite_width/2-addx+myx,__view_get( e__VW.HView, 0 )/3+i+addy[i],1,1,color,alpha) 
}
i+=1
}
if on=1 {
if addx>0 addx-=2
if addx=4 blink=1
} else {
/*if current>0 current-=0.25
i=10
repeat (11-current) {
addy[i]+=1+addy[i]*0.1
i-=1
}*/
if addx<44 addx+=2 else instance_destroy()
}
//if addy[0]>32 instance_destroy()
surface_reset_target()
/* */
/*  */
