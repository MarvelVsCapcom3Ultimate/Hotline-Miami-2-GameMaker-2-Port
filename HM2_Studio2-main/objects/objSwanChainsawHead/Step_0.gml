if dead=1 {
if image_index<4 image_index+=0.15
image_speed=0
friction=0.15
if !place_meeting(x,y,objPlayer) solid=1
exit
}

image_angle=point_direction(x,y,objPlayer.x,objPlayer.y)
if sprite_index=sprSwanHeadRoar {
if objSwanBossBody.state=0 {
if image_index<3 image_index+=0.15 
}
if objSwanBossBody.state=1 {
if image_index>0 image_index-=0.15 else {sprite_index=sprSwanChainsawHeadMove blink=0  image_speed=0.25}
}
global.shake=image_index*2.5
targetx=x
targety=y
exit
}




if objSwanBossBody.state=0 {
x=objSwanBossBody.x+16
y=objSwanBossBody.y
exit
}

if scrMovingPlayerExists() {
if scrIsAttacking(objPlayer.sprite_index) {
scale=image_xscale
image_xscale=1.25 image_yscale=1.25
if place_meeting(x,y,objPlayer) {
if dead=0 {
if sprite_index=sprSwanChainsawHeadAttack and image_index>=10 {
sound_play(sndSwanDie)
scrMeleeBlood(x,y)
scrMeleeBlood(x,y)
global.shake=8
sprite_index=sprSwanHeadDie 
image_index=0 
speed=2
direction=point_direction(objPlayer.x,objPlayer.y,x,y)
friction=0.15
dead=1
repeat(12) {
my_id=instance_create(x+lengthdir_x(4,image_angle-45)-2+random(4),y+lengthdir_y(4,image_angle-45)-2+random(4),objSwanBrainChunk)
my_id.direction=image_angle+170+random(45)
my_id.speed=random(5)
}
}
}
}
image_xscale=scale
image_yscale=scale
}
} else attack=0


if attack=0 {
if wait>0 {wait2=15 wait-=1} else {
if sprite_index=sprSwanChainsawHeadAttack blink=0
sprite_index=sprSwanChainsawHeadMove
image_speed=0.15
if wait2>0 wait2-=1 else {
if point_distance(x,y,targetx+lengthdir_x(16,dir*2),targety+lengthdir_y(16,dir*2))>0 {
motion_add(point_direction(x,y,targetx+lengthdir_x(16,dir*2),targety+lengthdir_y(16,dir*2)),0.15)
if speed>2 speed=2
friction=0
} else {
friction=0.25
}
}
}
}



if attack=1 {
if point_distance(x,y,objPlayer.x,objPlayer.y)>48 and y<384 {
motion_add(point_direction(x,y,objPlayer.x,objPlayer.y),0.5)
if speed>4 speed=4
friction=0
} else {
if friction=0 {
sound_play(sndLSDSwanChainsaw)
sprite_index=sprSwanChainsawHeadAttack
image_index=0
image_speed=0
}
friction=0.5
attack=2
}
}

if attack=2 {
if image_index<10 {
image_index+=0.2
if image_index>=4 and image_index<=7 {
if place_meeting(x+lengthdir_x(8,image_angle),y+lengthdir_y(8,image_angle),objPlayer) {
with objPlayer {
sound_play(sndHit)
sound_play(sndPunch)
//0 upper 
my_id=instance_create(x,y,objPlayerDead)
my_id.direction=point_direction(objSwanChainsawHead.x,objSwanChainsawHead.y,x,y)-5+random(10)
my_id.speed=3+random(1)
my_id.friction=0.15
my_id.sprite_index=sprSonDeadChainsaw
my_id.image_index=0
my_id.alarm[0]=6
my_id.image_angle=my_id.direction-180
//1 lower
my_id=instance_create(x,y,objBodyPiece)
my_id.direction=point_direction(objSwanChainsawHead.x,objSwanChainsawHead.y,x,y)-5+random(10)
my_id.speed=1+random(1)
my_id.friction=0.15
my_id.sprite_index=sprSonDeadChainsaw
my_id.image_index=1
my_id.alarm[0]=6
my_id.image_angle=my_id.direction-180
objSwanChainsawHead.wait=60
scrDropWeapon()
scrMeleeBlood(x,y)
instance_destroy()
}
}
}
} else {
attack=0
alarm[0]=200
objSwanGunHead.alarm[0]=100
targetx=objSwanBossBody.x+16-20+random(40)
targety=objSwanBossBody.y-20+random(40)
wait=60
image_speed=0
image_index=sprite_get_number(sprite_index)-1
}
}


targetsway=10+speed*10
if sway<targetsway-1 sway+=1
if sway>targetsway+1 sway-=1 
