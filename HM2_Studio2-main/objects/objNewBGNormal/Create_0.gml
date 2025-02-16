surf1=surface_create(192,128)
surf2=surface_create(192,128)
i=0
repeat (16) {
dir=random(360)
xspeed[i]=lengthdir_x(0.15,dir)
yspeed[i]=lengthdir_y(0.15,dir)
spreadx[i]=random(192)
spready[i]=random(104)
spreadangle[i]=random(360)
spreadscale[i]=1+random(1)
spreadindex[i]=random(28)
i+=1
}
cdir=0
global.blink=0
