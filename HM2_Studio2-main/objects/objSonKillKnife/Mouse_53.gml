if image_index=0 {
energie-=1
image_speed=0.2
image_index=1
sound_play(sndHit)
sound_play(choose(sndCut1,sndCut2))
repeat (3+random(2)) {
my_id=instance_create(x+lengthdir_x(14,image_angle)-1+random(2),y+lengthdir_y(14,image_angle)-1+random(2),objBloodSquirt)
my_id.image_angle=image_angle-110+random(20)
}
repeat (3) instance_create(x+lengthdir_x(17,image_angle),y+lengthdir_y(17,image_angle),objBigBlood)
}
