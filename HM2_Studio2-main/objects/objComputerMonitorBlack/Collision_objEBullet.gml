if sprite_index=sprComputerMonitorBlackBroken exit
image_xscale=3
image_yscale=3
global.my_id=id
bullets=0
with objEBullet {
if place_meeting(x,y,global.my_id) {
global.my_id.bullets+=1
my_id=instance_create(x,y,objSmokeHit)
my_id.color1=c_gray
my_id.color2=c_dkgray
my_id.image_angle=image_angle
my_id.direction=image_angle
my_id.speed=random(1)
instance_destroy()
alert=1
}
}
image_xscale=1
image_yscale=1
if energie<=0 exit
energie-=bullets
if energie>0 {
if sprite_index=sprELisComputerMonitorBlack {
global.shake=3
sound_play(sndBottleBreak)
sound_play(sndTaser)
sprite_index=sprComputerMonitorBlackBreak
i=0
repeat (12) {
my_id=instance_create(x+lengthdir_x(5,image_angle-45+i*(90/12)),y+lengthdir_y(5,image_angle-45+i*(90/12)),objTVShards)
my_id.direction=image_angle-45+i*(90/12)
my_id.speed=1+random(3)
i+=1
}
}
} else {
sound_play(sndExplode)
if life>0 sound_play(sndTaser)
image_speed=0
image_index=choose(0,1)
i=random(1)
repeat (8) {
length=1+random(2)
my_id=instance_create(x+lengthdir_x(length,i*(360/8)),y+lengthdir_y(length,i*(360/8)),objFirePuff)
my_id.image_angle=i*(360/8)-180
my_id.direction=my_id.image_angle-180
my_id.speed=0.5+random(1)
my_id.friction=0.1
i+=1
}
repeat (4) {
my_id=instance_create(x-4+random(8),y-4+random(8),objFireBall)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=0.25+random(0.25)
}

repeat (16) {
my_id=instance_create(x,y,objFireSpark)
my_id.direction=random(360)
my_id.speed=3+random(3)
my_id.image_angle=my_id.direction
}

repeat (32) {
my_id=instance_create(x-6+random(12),y-6+random(12),objComputerMonitorBlackParts)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=2+random(3)
}

if sprite_index=sprELisComputerMonitorBlack {
sound_play(sndBottleBreak)
i=0
repeat (12) {
my_id=instance_create(x+lengthdir_x(5,image_angle-45+i*(90/12)),y+lengthdir_y(5,image_angle-45+i*(90/12)),objTVShards)
my_id.direction=image_angle-45+i*(90/12)
my_id.speed=1+random(3)
i+=1
}
}

my_id=instance_create(x+2,y-2,objComputerMonitorBlackBigParts)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=1+random(2)
my_id.image_index=0

my_id=instance_create(x-2,y+2,objComputerMonitorBlackBigParts)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=1+random(2)
my_id.image_index=1

my_id=instance_create(x-2,y-2,objComputerMonitorBlackBigParts)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=1+random(2)
my_id.image_index=2

my_id=instance_create(x+2,y+2,objComputerMonitorBlackBigParts)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=1+random(2)
my_id.image_index=3

sprite_index=sprComputerMonitorBlackBroken
}
