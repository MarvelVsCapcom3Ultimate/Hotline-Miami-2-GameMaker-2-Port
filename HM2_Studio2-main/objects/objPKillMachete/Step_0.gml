if image_index>=4 and dead=0 {
sound_play(sndPunch)
sound_play(sndHit)
global.shake=5
repeat (4+random(6)) {
my_id=instance_create(x+lengthdir_x(13,image_angle)-1+random(2),y+lengthdir_y(13,image_angle)-1+random(2),objBloodSquirt)
my_id.image_angle=image_angle-120+random(60)
}
repeat (3) instance_create(x+lengthdir_x(13,image_angle),y+lengthdir_y(13,image_angle),objBigBlood)
dead=1
}
if image_index>=11 and dead=1 {
sound_play(sndPunch)
sound_play(sndHit)
global.shake=5
repeat (4+random(6)) {
my_id=instance_create(x+lengthdir_x(13,image_angle)-1+random(2),y+lengthdir_y(13,image_angle)-1+random(2),objBloodSquirt)
my_id.image_angle=image_angle-120+random(60)
}
repeat (3) instance_create(x+lengthdir_x(13,image_angle),y+lengthdir_y(13,image_angle),objBigBlood)
dead=2
}
if image_index>=18 and dead=2 {
sound_play(sndPunch)
sound_play(sndHit)
global.shake=5
repeat (4+random(6)) {
my_id=instance_create(x+lengthdir_x(13,image_angle)-1+random(2),y+lengthdir_y(13,image_angle)-1+random(2),objBloodSquirt)
my_id.image_angle=image_angle-120+random(240)
}
repeat (3) instance_create(x+lengthdir_x(13,image_angle),y+lengthdir_y(13,image_angle),objBigBlood)
my_id=instance_create(x+lengthdir_x(16,image_angle),y+lengthdir_y(16,image_angle),objSeveredHead)
my_id.direction=image_angle
my_id.speed=2
my_id.image_angle=image_angle
dead=3
}
