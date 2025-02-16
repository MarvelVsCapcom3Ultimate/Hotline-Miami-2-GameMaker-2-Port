if !surface_exists(surf1) surf1=surface_create(192,128)
if !surface_exists(surf2) surf2=surface_create(192,128)

surface_copy(surf2,0,0,surf1)
surface_set_target(surf1)
draw_surface_ext(surf2,0,0,1,1,0,c_white,0.99)
i=0
repeat (16) {
draw_sprite_ext(sprSpread,spreadindex[i],spreadx[i],spready[i],spreadscale[i],spreadscale[i],spreadangle[i],c_white,1)
if global.blink>0 addspeed=1 else addspeed=0
spreadindex[i]+=0.15+addspeed*0.5
spreadx[i]+=xspeed[i]*(1+addspeed*4)
spready[i]+=yspeed[i]*(1+addspeed*4)
if spreadindex[i]>28 {
spreadindex[i]=0
dir=random(360)
xspeed[i]=lengthdir_x(0.15,dir)
yspeed[i]=lengthdir_y(0.15,dir)
spreadx[i]=random(192)
spready[i]=random(102)
spreadangle[i]=random(360)
spreadscale[i]=1+random(1)
}
i+=1
}
surface_reset_target()

