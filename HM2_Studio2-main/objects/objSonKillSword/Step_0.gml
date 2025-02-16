if image_index>=5 and dead=0 {
sound_play(sndPunch)
sound_play(sndHit)
global.shake=5
repeat (4+random(6)) {
my_id=instance_create(x+lengthdir_x(17,image_angle)-1+random(2),y+lengthdir_y(17,image_angle)-1+random(2),objBloodSquirt)
my_id.image_angle=image_angle-120+random(240)
}
repeat (3) instance_create(x+lengthdir_x(17,image_angle),y+lengthdir_y(17,image_angle),objBigBlood)
targetindex=3
index=1
dead=1
}

if index<targetindex index+=0.25
