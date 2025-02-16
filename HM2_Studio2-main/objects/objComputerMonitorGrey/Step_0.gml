
if scrMovingPlayerExists() and (sprite_index=sprELisComputerMonitorGrey or sprite_index=sprComputerMonitorGreyBreak) {
if scrIsAttacking(objPlayer.sprite_index) and place_meeting(x-lengthdir_x(12,objPlayer.dir),y-lengthdir_y(12,objPlayer.dir),objPlayer) {
if life>0 sound_play(sndTaser)
sound_play(sndExplode)
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
my_id=instance_create(x-6+random(12),y-6+random(12),objComputerMonitorGreyParts)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=2+random(3)
}

if sprite_index=sprELisComputerMonitorGrey {
sound_play(sndBottleBreak)
i=0
repeat (12) {
my_id=instance_create(x+lengthdir_x(5,image_angle-45+i*(90/12)),y+lengthdir_y(5,image_angle-45+i*(90/12)),objTVShards)
my_id.direction=image_angle-45+i*(90/12)
my_id.speed=1+random(3)
i+=1
}
}

my_id=instance_create(x+2,y-2,objComputerMonitorGreyBigParts)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=1+random(2)
my_id.image_index=0

my_id=instance_create(x-2,y+2,objComputerMonitorGreyBigParts)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=1+random(2)
my_id.image_index=1

my_id=instance_create(x-2,y-2,objComputerMonitorGreyBigParts)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=1+random(2)
my_id.image_index=2

my_id=instance_create(x+2,y+2,objComputerMonitorGreyBigParts)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=1+random(2)
my_id.image_index=3

sprite_index=sprComputerMonitorGreyBroken

}
}


if sprite_index=sprComputerMonitorGreyBreak or sprite_index=sprComputerMonitorGreyBroken {
if life>0 {
life-=1 
if round(random(3))=2 {
my_id=instance_create(x,y,objElectricity)
my_id.direction=random(360)
my_id.speed=random(1)
}
if round(random(2))=1 {
my_id=instance_create(x-5+random(10),y-5+random(10),objElectricSpark)
my_id.direction=point_direction(x,y,my_id.x,my_id.y)
my_id.speed=3+random(2)
my_id.image_angle=my_id.direction
}
} else {image_speed=0 if sprite_index=sprComputerMonitorGreyBreak image_index=0}
}
