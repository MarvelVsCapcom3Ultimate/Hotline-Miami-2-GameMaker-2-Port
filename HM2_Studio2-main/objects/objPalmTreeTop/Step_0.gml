x+=__background_get( e__BG.HSpeed, 0 )
if x<-32 {
y=starty-3+random(6)
x+=room_width+64
image_angle=random(360)
sway=random(360)
image_xscale=0.9+random(0.1)
image_yscale=(0.9+random(0.1))*(-1+round(random(1))*2)
}
