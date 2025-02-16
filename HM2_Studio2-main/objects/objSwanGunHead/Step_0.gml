
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
if image_index>0 image_index-=0.15 else {sprite_index=sprSwanChainsawHeadMove blink=0 image_speed=0.2}
}
exit
}

if scrMovingPlayerExists() {
if scrIsAttacking(objPlayer.sprite_index) {
scale=image_xscale
image_xscale=1.25 image_yscale=1.25
if place_meeting(x,y,objPlayer) {
if dead=0 {
if sprite_index=sprSwanGunHeadAttack and image_index>=10 {
sound_play(sndSwanDie)
scrMeleeBlood(x,y)
scrMeleeBlood(x,y)
speed=2
direction=point_direction(objPlayer.x,objPlayer.y,x,y)
friction=0.15
global.shake=8
sprite_index=sprSwanHeadDie 
image_yscale=-1 
image_index=0 
dead=1
repeat(12) {
my_id=instance_create(x+lengthdir_x(4,image_angle-45)-2+random(4),y+lengthdir_y(4,image_angle-45)-2+random(4),objSwanBrainChunk)
my_id.direction=image_angle+190-random(45)
my_id.speed=random(5)
}
}
}
}
image_xscale=scale
image_yscale=scale
}
}



if objSwanChainsawHead.dead=1 {
if sprite_index=sprSwanChainsawHeadMove and wait=0 {
if reload2>0 reload2-=1 else {
sprite_index=sprSwanGunHeadAttack
image_index=0
image_speed=0
reload2=200
}
}
}

if scrMovingPlayerExists() {
if objPlayer.y<objSwanBossBody.y+64 and objSwanChainsawHead.dead=0 {
if sprite_index=sprSwanChainsawHeadMove {
image_index=0
sprite_index=sprSwanGunHeadAttackInvincible
}
if image_index<5 image_index+=0.2 else {
image_index=5
if reload>0 reload-=1 else {
reload=3
sound_play(sndSwanShoot)
repeat (3) {
my_id=instance_create(x+lengthdir_x(24,image_angle),y+lengthdir_y(24,image_angle),objSwanBullet)
my_id.direction=image_angle-15+random(30)
my_id.image_angle=my_id.direction
my_id.speed=8
}
}
}
exit
}
}


if objSwanBossBody.state=0 {
x=objSwanBossBody.x-16
y=objSwanBossBody.y
exit
}

if sprite_index=sprSwanGunHeadAttack {
if image_index<10 {wait=120 image_index+=0.15} else {
if wait>0 wait-=1 else {
if sprite_index=sprSwanGunHeadAttack blink=0
image_speed=0.15
sprite_index=sprSwanChainsawHeadMove
reload=0
}
}
}

if sprite_index=sprSwanGunHeadAttackInvincible {
if image_index<10 {image_index+=0.15} else {
image_speed=0.15
sprite_index=sprSwanChainsawHeadMove
reload=0
}
}


if round(random(100))=2 {
if objSwanChainsawHead.dead=0 {
targetx=random(room_width)
targety=objSwanBossBody.y-32+random(96)
} else {
targetx=random(room_width)
targety=objSwanBossBody.y-32+random(160)
}
}


if point_distance(x,y,targetx,targety)>48 {
motion_add(point_direction(x,y,targetx,targety),0.25)
if speed>2 speed=2
friction=0
} else {
friction=0.25
}

targetsway=10+speed*10
if sway<targetsway-1 sway+=1
if sway>targetsway+1 sway-=1 

if image_index>=4 and image_index<6 and (sprite_index=sprSwanGunHeadAttack or sprite_index=sprSwanGunHeadAttackInvincible) {
if reload>0 reload-=1 else {
reload=5
my_id=instance_create(x+lengthdir_x(24,image_angle),y+lengthdir_y(24,image_angle),objSwanBullet)
sound_play(sndSwanShoot)
my_id.direction=image_angle
my_id.image_angle=my_id.direction
my_id.speed=5
}
}
