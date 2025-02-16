if image_index<9 image_index+=0.2 else {
my_id=instance_create(x,y,objDeadBody)
my_id.sprite_index=sprPoliceDeadLean
my_id.image_index=0
my_id.image_angle=image_angle
scrPlayerExecuteFinish()
instance_destroy()
}

if image_index>2 and dead=0 {
sound_play(sndBoxingBag)
sound_play(sndPunch)
dead=1
}

if image_index>6 and dead=1 {
sound_play(sndHit)
sound_play(sndPunch)
repeat (3+random(2)) {
my_id=instance_create(x+lengthdir_x(10,image_angle)-1+random(2),y+lengthdir_y(10,image_angle)-1+random(2),objBloodSquirt)
my_id.image_angle=image_angle+100+random(160)
}
repeat (3) instance_create(x+lengthdir_x(17,image_angle),y+lengthdir_y(17,image_angle),objBigBlood)
dead=2
}
