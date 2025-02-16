surface_set_target(surf)
draw_clear(make_color_hsv(0,0,185+random(5)))
with objGrandFather draw_circle_color(x,y-12,32+random(4),c_purple,c_ltgray,0)
with objPlayer draw_circle_color(x,y,32+random(4),c_black,c_ltgray,0)

draw_set_blend_mode(bm_add)

i=0
repeat (29) {
draw_circle_color(myx[i],myy[i],size[i]+random(0.5),c_white,c_black,0)
myx[i]+=lengthdir_x(myspeed[i],mydir[i])
myy[i]+=lengthdir_y(myspeed[i],mydir[i])
mydir[i]+=diradd[i]
if round(random(30))=2 diradd[i]=-4+random(8)
if myx[i]<-16 myx[i]+=__view_get( e__VW.WView, 0 )+16
if myy[i]<-16 myy[i]+=__view_get( e__VW.HView, 0 )+16
if myy[i]>__view_get( e__VW.HView, 0 )+16 myy[i]-=__view_get( e__VW.HView, 0 )+16
if myx[i]>__view_get( e__VW.WView, 0 )+16 myx[i]-=__view_get( e__VW.WView, 0 )+16
i+=1
}
draw_set_blend_mode(bm_normal)
surface_reset_target()
