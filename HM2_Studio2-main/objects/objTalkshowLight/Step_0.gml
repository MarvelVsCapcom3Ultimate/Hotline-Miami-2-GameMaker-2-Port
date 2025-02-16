if nightmare=0 {
surface_set_target(surf)
draw_set_color(c_gray)
draw_rectangle(8,168,600,416,0)
draw_rectangle_color(8,136,600,168,c_black,c_black,c_gray,c_gray,0)
draw_set_blend_mode(bm_subtract)
with objSpotlight draw_circle_color(x,y,24,make_color_hsv(random(255),random(255),255),make_color_hsv(random(255),random(255),0),0)
surface_reset_target()
draw_set_blend_mode(bm_normal)
} else {
surface_set_target(surf)
draw_clear(make_color_hsv(0,0,185+random(5)))
with objRichard draw_circle_color(x,y-12,32+random(4),c_purple,c_ltgray,0)
with objPigInterview draw_circle_color(x,y,32+random(4),c_black,c_ltgray,0)

draw_set_blend_mode(bm_add)

i=0
repeat (29) {
draw_circle_color(myx[i],myy[i],size[i]+random(0.5),c_white,c_black,0)
myx[i]+=lengthdir_x(myspeed[i],mydir[i])
myy[i]+=lengthdir_y(myspeed[i],mydir[i])
mydir[i]+=diradd[i]
if round(random(30))=2 diradd[i]=-4+random(8)
if myx[i]<-16 myx[i]+=432
if myy[i]<-16 myy[i]+=288
if myy[i]>288 myy[i]-=288
if myx[i]>556 myx[i]-=572
i+=1
}
draw_set_blend_mode(bm_normal)
surface_reset_target()
}
