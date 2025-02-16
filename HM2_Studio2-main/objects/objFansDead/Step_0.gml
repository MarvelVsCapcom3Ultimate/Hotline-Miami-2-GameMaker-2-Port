if state=0 {
if objPlayer.y<196 {
scrCameraPan(objPlayer.x,objPlayer.y)
if objPlayer.y>164 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,x,y)
objPlayer.image_index+=0.1
objPlayer.legindex+=0.15
objPlayer.y-=1
} else {
objPlayer.sprite_index=sprCopShootTiger
objPlayer.image_index=0
objPlayer.legindex=0
state=1
}
}
}

if state=1 {
with objEnemy instance_destroy()
scrCameraPan(objPlayer.x,(objPlayer.y+objFansDead.y)/2)
if talk<talks {
if !instance_exists(objConversation) {
scrGetMessage(talk)
talk+=1
}
} else {if objPlayer.image_index>=18 and objTigerGiveUp.image_index>=5 and !instance_exists(objConversation) state=2}
}

if state=1 {
if image_index=0 {
instance_create(x,y,objTigerGiveUp)
}
image_index=1
if objTigerGiveUp.image_index<5 and objPlayer.image_index>=13 objTigerGiveUp.image_index+=0.15
if objPlayer.image_index<18 objPlayer.image_index+=0.15
}

if state=2 {
if wait>0 wait-=1 else {
with objPlayer {
my_id=instance_create(x+lengthdir_x(32,dir),y+lengthdir_y(32,dir),objBullet)
my_id.direction=dir
my_id.image_angle=my_id.direction
my_id.speed=8
image_index=18
sound_play(sndMagnum)
}
state=3
}
}

if state=3 {
if objPlayer.image_index<30 {objPlayer.image_index+=0.15 if objPlayer.image_index<21 objPlayer.image_index+=0.2} else {
scrGetMessage(3)
state=4
}
}

if state=4 {
if !instance_exists(objConversation) {
objPlayer.active=1
objPlayer.sprite_index=sprCopWalkUnarmed
objPlayer.image_index=0
objPlayer.aimon=1
state=5
}
}

