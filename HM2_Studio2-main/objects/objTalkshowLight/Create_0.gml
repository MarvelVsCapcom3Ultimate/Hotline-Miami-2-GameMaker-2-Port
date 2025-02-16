surf=surface_create(640,640)
surface_set_target(surf)
draw_clear_alpha(c_black,0)
surface_reset_target()
repeat (20) {
my_id=instance_create(random(room_width),random(room_height),objSpotlight)
my_id.speed=2+random(1)
my_id.direction=random(360)
}
flash=0
nightmare=0

i=0
repeat (100) {
size[i]=1+random(2)
myx[i]=random(room_width)
myy[i]=random(room_height)
mydir[i]=random(360)
myspeed[i]=1+random(2)
diradd[i]=-4+random(8)
i+=1
}
