if room=rmMallFloor1 {
if global.done=0 exit
if objPlayer.y>448 {
image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),8)
}

if wait>0 wait-=1
if wait=1 {
on=1
}

if on=1 {
if image_index<3 image_index+=0.15
}
}

if room=rmPigApartment2 {
image_angle=point_direction(x,y,204,344)
}

if room=rmNightmareFloor6 {
if scrMovingPlayerExists() {
if objPlayer.active=1 image_angle=point_direction(x,y,236,128) else {
image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),5)
}
}
}

if fire=1 {
if reload>0 reload-=1 else {
sound_play(snd9mm)
ammo-=1
shake=3
reload=20
global.shake=6
my_id=instance_create(x+lengthdir_x(26,image_angle),y+lengthdir_y(26,image_angle),objEBullet)
if instance_exists(my_id) {
my_id.direction=image_angle-6+random(12)
my_id.speed=12+random(4)
my_id.image_angle=my_id.direction
}
my_id=instance_create(x+lengthdir_x(5,image_angle-5*image_yscale),y+lengthdir_y(5,image_angle-5*image_yscale),objShell)
my_id.sprite_index=sprUziShell
my_id.image_angle=image_angle
my_id.direction=image_angle-90*image_yscale-20+random(30)
my_id.speed=1+random(3)
light=20
}
}
