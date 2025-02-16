if image_index>=10 and dead=0 {
sound_play(sndUzi)
sound_play(sndHit)
global.shake=4
ammo-=1
if shots=0 scrHearPlayer()
shots+=1
global.shake=5
repeat (2+random(3)) {
my_id=instance_create(x+lengthdir_x(17,image_angle)-1+random(2),y+lengthdir_y(17,image_angle)-1+random(2),objBloodSquirt)
my_id.image_angle=image_angle-120+random(240)
}
repeat (3) instance_create(x+lengthdir_x(17,image_angle),y+lengthdir_y(17,image_angle),objBigBlood)
targetindex+=3
index=targetindex-2
dead=1
}

if ammo>0 and shots<3 and image_index>=11.5 {
image_index=10
dead=0
}

if index<targetindex index+=0.25
if index=targetindex and dead=1 and (shots=3 or ammo=0) {
my_id=instance_create(x,y,objDeadBody)
my_id.sprite_index=sprite
my_id.image_index=targetindex
my_id.image_angle=image_angle
scrPlayerExecuteFinish()
instance_destroy()
}
