if image_index<7 image_index+=0.15 else {
my_id=instance_create(x,y,objDeadBody)
my_id.sprite_index=sprite
my_id.image_index=13
my_id.image_angle=image_angle
scrPlayerExecuteFinish()
instance_destroy()
}

if image_index>4 and dead=0 {
sound_play(sndHit)
sound_play(choose(sndCut1,sndCut2))
repeat (3+random(2)) {
my_id=instance_create(x+lengthdir_x(14,image_angle)-1+random(2),y+lengthdir_y(14,image_angle)-1+random(2),objBloodSquirt)
if round(random(1)) my_id.image_angle=image_angle-110+random(20) else my_id.image_angle=image_angle+110-random(20)
}
repeat (3) instance_create(x+lengthdir_x(17,image_angle),y+lengthdir_y(17,image_angle),objBigBlood)
dead=1
}
