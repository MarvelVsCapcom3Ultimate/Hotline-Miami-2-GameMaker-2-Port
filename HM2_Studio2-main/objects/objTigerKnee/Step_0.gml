if image_index>=5 and dead=0 {
sound_play(sndPunch)
sound_play(sndHit)
global.shake=5
repeat (2) scrMeleeBlood(x+lengthdir_x(4,image_angle),y+lengthdir_y(4,image_angle))
my_id=instance_create(x,y,objDeadBody)
my_id.sprite_index=sprite
my_id.image_index=image_index
my_id.image_angle=image_angle
my_id.speed=1.5
my_id.direction=image_angle
my_id.friction=0.1
dead=1
}


