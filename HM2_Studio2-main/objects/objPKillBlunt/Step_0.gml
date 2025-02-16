if image_index<2 image_index+=0.35
if image_index>4.85 and image_index<5.15 {
global.shake=5
if targetindex=8 targetindex=11
if targetindex=4 targetindex=8
if targetindex=0 {targetindex=4}
sound_play(sndHit)
sound_play(sndPunch)
repeat (2+random(3)) {
my_id=instance_create(x+lengthdir_x(17,image_angle)-1+random(2),y+lengthdir_y(17,image_angle)-1+random(2),objBloodSquirt)
my_id.image_angle=image_angle-120+random(240)
}
instance_create(x+lengthdir_x(17,image_angle),y+lengthdir_y(17,image_angle),objBigBlood)
}

if index<targetindex index+=0.25
if index=11 {
my_id=instance_create(x,y,objDeadBody)
my_id.sprite_index=sprite
my_id.image_index=targetindex
my_id.image_angle=image_angle
scrPlayerExecuteFinish()
instance_destroy()
}
