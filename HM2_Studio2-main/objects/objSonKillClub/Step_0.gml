if image_index<17 image_index+=0.2 else {
my_id=instance_create(x,y,objDeadBody)
my_id.sprite_index=sprite
my_id.image_index=17
my_id.image_angle=image_angle
scrPlayerExecuteFinish()
instance_destroy()
}

if image_index>11 and dead=0 {
sound_play(sndPunch)
sound_play(sndHit)
sound_play(sndDoorHit)
global.shake=5
repeat (2+random(2)) {
my_id=instance_create(x+lengthdir_x(17,image_angle)-1+random(2),y+lengthdir_y(17,image_angle)-1+random(2),objBloodSquirt)
my_id.image_angle=image_angle+120-random(60)
}
repeat (3) instance_create(x+lengthdir_x(17,image_angle),y+lengthdir_y(17,image_angle),objBigBlood)
dead=1
}
