if sprite_index=sprSwanKillChainsawLean {
if image_index<13 {
image_index+=0.15
if round(random(12))=2 {
my_id=instance_create(x+lengthdir_x(8,image_angle),y+lengthdir_y(8,image_angle),objBloodSquirt)
my_id.image_angle=image_angle-180-40+random(80)
}
if round(random(10))=2 {
my_id=instance_create(x+lengthdir_x(8,image_angle),y+lengthdir_y(8,image_angle),objSplat)
diradd=90-round(random(1))*180
my_id.image_angle=image_angle-180-40+random(80)
my_id.direction=my_id.image_angle
my_id.speed=1.5+random(1.5)
}
if round(random(13))=2 {
my_id=instance_create(x+lengthdir_x(8,image_angle),y+lengthdir_y(8,image_angle),objIntestine)
diradd=90-round(random(1))*180
my_id.image_angle=image_angle-180-40+random(80)
my_id.direction=my_id.image_angle
my_id.speed=1.5+random(1.5)
}
if round(random(16))=2 {
my_id=instance_create(x+lengthdir_x(8,image_angle)-4+random(8),y+lengthdir_y(8,image_angle)-4+random(8),objSmokeHit)
my_id.image_blend=c_red
my_id.color1=c_red
my_id.color2=c_maroon
my_id.image_angle=image_angle-180-40+random(80)
my_id.direction=my_id.image_angle
my_id.speed=random(1)
}
if image_index>13 and dead=0 {
repeat (6) {
my_id=instance_create(x+lengthdir_x(8,image_angle),y+lengthdir_y(8,image_angle),objBloodSquirt)
my_id.image_angle=image_angle-180-20+random(40)
}
dead=1
}
} else {
repeat (3) instance_create(x+lengthdir_x(17,image_angle),y+lengthdir_y(17,image_angle),objBigBlood)
my_id=instance_create(x,y,objDeadBody)
my_id.sprite_index=sprite
my_id.image_index=13
my_id.image_angle=image_angle
scrPlayerExecuteFinish()
instance_destroy()
}
}
