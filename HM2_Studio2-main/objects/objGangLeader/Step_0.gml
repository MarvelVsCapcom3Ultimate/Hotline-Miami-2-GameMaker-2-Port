if sprite_index=sprGangLeaderGrafitti {
scrCameraPan(x,y)
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=90
with objEnemy speed=0
if wait>0 wait-=1 else {
if talked=0 {talked=1 scrGetMessage(0)} else {
if !instance_exists(objConversation) {
sprite_index=sprGangLeaderWalk
objPlayer.active=1
objPlayer.aimon=1
image_speed=0
scrGoToExactSpeed(path,point[current].x,point[current].y,0.75)
}
}
}
exit
}

if scrIsAttacking(objPlayer.sprite_index) {
if place_meeting(x-lengthdir_x(8,objPlayer.dir),y-lengthdir_y(8,objPlayer.dir),objPlayer) {
type=scrGetMelee(objPlayer.sprite_index)
if type=4 {
sound_play(sndPunch)
global.shake=2
my_id=instance_create(x,y,objKnockedOut)
my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)
my_id.speed=2+random(2)
my_id.friction=0.15
my_id.image_angle=my_id.direction-180
my_id.enemyx=my_id.x
my_id.enemyy=my_id.y
my_id.sprite_index=sprGangLeaderGetUp
} else {
my_id1=instance_create(x,y,objGangLeaderPipe) 
my_id1.direction=random(360)
my_id1.friction=0.15 
my_id1.speed=3
my_id1=instance_create(x,y,objGangLeaderGlasses) 
my_id1.direction=random(360)
my_id1.friction=0.15 
my_id1.speed=3
sound_play(sndHit)
if type=0 or type=6 sound_play(sndPunch)
if type=1 sound_play(sndCut1)
global.shake=8
my_id=instance_create(x,y,objDeadBody)
my_id.direction=point_direction(objPlayer.x,objPlayer.y,x,y)
my_id.speed=2+random(2)
my_id.friction=0.15
if type=0 my_id.sprite_index=sprGangLeaderDeadBlunt
if type=1 my_id.sprite_index=sprGangLeaderDeadCut
if type=6 {my_id.sprite_index=sprGangLeaderHurt my_id.image_speed=0.15 my_id.bled=1}
my_id.image_index=floor(random(sprite_get_number(my_id.sprite_index)))
my_id.alarm[0]=6
my_id.image_angle=my_id.direction
scrMeleeBlood(x,y)
scrMeleeBlood(x,y)
with (instance_create(x, y - 24, objPoints))
	objPoints.str = "800pts";
global.myscore+=800
if type=0 or type=1 {
with objWriter {kills+=1 objEffector.killamount=1}
}
}
instance_destroy()
}
}


if sprite_index=sprGangLeaderBang {
reload=5
seen=scrLook(objPlayer.x,objPlayer.y,6)
if image_index>=4 and image_index-image_speed<4 {
sound_play(sndGangBang)
with objEnemy {
if alert=0 alert=1
}
}
exit
}

if reload>0 reload-=1 else {
reload=5
seen=scrLook(objPlayer.x,objPlayer.y,6)
if seen==0 or seen==2 {
speed=0
path_end()
image_angle=point_direction(x,y,objPlayer.x,objPlayer.y)
sprite_index=sprGangLeaderBang
image_speed=0.25
legindex=0
bangs=0
exit
}
}

if path_speed>0 image_index+=path_speed*0.125 else image_index+=speed*0.125
legindex+=speed*0.25
image_angle=direction

if point_distance(x,y,point[current].x,point[current].y)<12 {
if current<points current+=1 else current=0
scrGoToExactSpeed(path,point[current].x,point[current].y,0.75)
}


