if state=0 {
if objPlayer.x>224 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=0
if objPlayer.x<248 {
objPlayer.x+=2
objPlayer.legindex+=0.3
objPlayer.image_index+=0.15
} else {
objPlayer.legindex=0
with objEditorDoorV {
image_angle=scrRotate(image_angle,0,10)
solid=1
}
}
if wait>0 {
wait-=1
wait2=120
} else {
global.shake=image_index*2
if sprite_index=sprBearBossEat {
sprite_index=sprBearBossRise
x-=17
image_index=0
image_speed=0
sound_play(sndBearRoar)
}
if wait2>0 {
if image_index<4 image_index+=0.2 else {
if wait2>0 wait2-=1
}
} else {
sprite_index=sprBearBossWalk state=1 objPlayer.active=1 objPlayer.aimon=1
}
}
scrCameraPan(x,y)
}
}


if state=1 {
if point_distance(x,y,objPlayer.x,objPlayer.y)>96 and sprite_index=sprBearBossWalk {
motion_add(point_direction(x,y,objPlayer.x,objPlayer.y),0.15)
if speed>1 speed=1
image_speed=speed*0.15
image_angle=direction
} else {
if sprite_index=sprBearBossWalk {
sprite_index=sprBearBossRun
image_index=1
}
motion_add(point_direction(x,y,objPlayer.x,objPlayer.y),0.5)
if speed>4 speed=4
image_angle=direction
image_speed=speed*0.1
if scrIsAttacking(objPlayer.sprite_index) {
if place_meeting(x+lengthdir_x(12,objPlayer.dir-180),y+lengthdir_y(12,objPlayer.dir-180),objPlayer) {
my_id=instance_create(x,y,objDeadBody)
my_id.sprite_index=sprBearBossDead
with objEditorDoorV solid=0
my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)
my_id.speed=2+random(1)
my_id.friction=0.15
scrMeleeBlood(x,y)
scrMeleeBlood(x,y)
sound_play(sndHit)
sound_play(sndPunch)
instance_destroy()
exit
}
}
if place_meeting(x,y,objPlayer) {
my_id=instance_create(objPlayer.x,objPlayer.y,objPlayerDieBear)
my_id.direction=direction
my_id.image_angle=direction
my_id.speed=3
my_id.sprite_index=sprPlayerDeadDog
my_id.alarm[0]=10
sound_play(sndBearEat)
with objPlayer {if object_index=objPlayerDieBear nothing=1 else instance_destroy()}
instance_destroy()
}
}
}
