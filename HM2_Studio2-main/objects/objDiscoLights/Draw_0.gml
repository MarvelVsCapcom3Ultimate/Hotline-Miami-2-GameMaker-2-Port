draw_set_blend_mode(bm_add)
i=0
ii=0
if on>=1 {
repeat (6) {
repeat(5+i*2-1) {
iii=0
repeat (3) {
if iii=0 color=c_teal
if iii=1 color=c_purple
if iii=2 color=c_olive
if round(random(1)) {
draw_sprite_ext(sprLaserLight,0,x+lengthdir_x(12*i*factor1,dir+(ii*(360/(5+i*2-1))))+lengthdir_x(10*factor2,dir1+(iii*(360/(3)))),y+lengthdir_y(12*i*factor1,dir+(ii*(360/(5+i*2-1))))+lengthdir_y(10*factor2,dir1+(iii*(360/(3)))),0.5,0.5,0,color,0.75+random(0.25))
draw_set_color(merge_color(c_black,color,random(0.25)))
draw_line_width(x+lengthdir_x(12*i*factor1,dir+(ii*(360/(5+i*2-1))))+lengthdir_x(10*factor2,dir1+(iii*(360/(3)))),y+lengthdir_y(12*i*factor1,dir+(ii*(360/(5+i*2-1))))+lengthdir_y(10*factor2,dir1+(iii*(360/(3)))),x,y,4-random(2))
}
iii+=1
ii+=1
}
}
dir+=60
i+=1
}
}
draw_set_blend_mode(bm_normal)

draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,dir,image_blend,image_alpha)
draw_set_blend_mode(bm_add)
draw_circle_color(x,y,9,merge_color(c_white,c_gray,random(1)),c_black,0)
draw_set_blend_mode(bm_normal)
draw_sprite_ext(sprite_index,2,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if strobe=1 {
if on>0 on-=0.5 else on=2
} else on=1

dir+=dirspeed1
dir1+=dirspeed2

if round(random(30))=2 {
targetfactor1=0.5+random(1.5)
dirspeed1=-2+random(4)
}
if round(random(30))=2 {
targetfactor2=0.1+random(1.9)
dirspeed2=-4+random(8)
}

if round(random(360-strobe*300))=2 {
strobe=round(random(1))
strobe=1
}

if factor1<targetfactor1 factor1+=0.05
if factor1>targetfactor1 factor1-=0.05
if factor2<targetfactor2 factor2+=0.05
if factor2>targetfactor2 factor2-=0.05
