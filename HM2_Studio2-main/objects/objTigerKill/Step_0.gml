if image_index<7 image_index+=0.2 else {
my_id=instance_create(x,y,objDeadBody)
my_id.sprite_index=sprite
my_id.image_index=7
my_id.image_angle=image_angle
scrPlayerExecuteFinish()
instance_destroy()
}

if image_index>2 and dead=0 {
sound_play(sndPunch)
sound_play(sndHit)
global.shake=5
repeat (1+random(2)) {
my_id=instance_create(x+lengthdir_x(17,image_angle)-1+random(2),y+lengthdir_y(17,image_angle)-1+random(2),objBloodSquirt)
my_id.image_angle=image_angle-120+random(240)
}
dead=1
}
if image_index>6 and dead=1 {
sound_play(sndPunch)
sound_play(sndHit)
global.shake=5
repeat (1+random(2)) {
my_id=instance_create(x+lengthdir_x(17,image_angle)-1+random(2),y+lengthdir_y(17,image_angle)-1+random(2),objBloodSquirt)
my_id.image_angle=image_angle-120+random(240)
}
dead=2
repeat (3) instance_create(x+lengthdir_x(17,image_angle),y+lengthdir_y(17,image_angle),objBigBlood)
}


