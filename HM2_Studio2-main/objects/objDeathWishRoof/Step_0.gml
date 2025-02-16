if state=0 {
if objPlayer.x>objEditorDoorV.x+8 and objPlayerSwanGun.x>objEditorDoorV.x+8 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=0
with objPlayerSwanGun {
my_id=instance_create(x,y,objSwanRoof)
my_id.image_angle=dir
my_id.sprite_index=sprite_index
my_id.image_index=image_index
instance_destroy()
}
state=1
}
}

if state=1 {
lastx=objPlayer.x
lasty=objPlayer.y
if objPlayer.x<435 {objPlayer.dir=0 objPlayer.x+=2}
if objPlayer.y>301 {objPlayer.dir=45 objPlayer.y-=1}
if objPlayer.y<299 {objPlayer.dir=-45 objPlayer.y+=1}
if objPlayer.x=lastx and objPlayer.y=lasty nothing=1 else {objPlayer.legindex+=0.25 objPlayer.image_index+=0.15}
lastx=objSwanRoof.x
lasty=objSwanRoof.y
if objSwanRoof.x<435 {objSwanRoof.image_angle=0 objSwanRoof.x+=2}
if objSwanRoof.y>241 {objSwanRoof.image_angle=45 objSwanRoof.y-=1}
if objSwanRoof.y<239 {objSwanRoof.image_angle=-45 objSwanRoof.y+=1}
if objSwanRoof.x=lastx and objSwanRoof.y=lasty nothing=1 else {objSwanRoof.image_index+=0.15}
scrCameraPan(objPlayer.x,(objPlayer.y+objSwanRoof.y)*0.5)
if objPlayer.x>=435 and objSwanRoof.x>=435 {
objSwanRoof.sprite_index=sprSwanWalkie
objSwanRoof.image_index=0
state=2
}
}


if state=2 {
if objSwanRoof.image_index<7 objSwanRoof.image_index+=0.1 else {
scrGetMessage(0)
state=3
}
}

if state>=3 and state<8 {
if !instance_exists(objConversation) {
if objSwanRoof.image_index<12 objSwanRoof.image_index+=0.1 else {
if !instance_exists(objConversation) {
scrGetMessage(state-2)
state+=1
}
}
} else {
if objEffector.sprite=sprMaskSwan2 scrCameraPan(objSwanRoof.x,objSwanRoof.y)
if objEffector.sprite=sprMaskSwan1 scrCameraPan(objPlayer.x,objPlayer.y)
}
}

if state=8 {
if !instance_exists(objConversation) {
if !instance_exists(objSonRoof) {
instance_create(objEditorDoorV.x-12,objEditorDoorV.y+16,objSonRoof)
}
objPlayer.dir=scrRotate(objPlayer.dir,180,5)
objSwanRoof.image_angle=scrRotate(objSwanRoof.image_angle,180,5)
scrCameraPan(objSonRoof.x+96,objSonRoof.y)
if objSonRoof.x<objEditorDoorV.x+32 {objSonRoof.x+=1 objSonRoof.image_index+=0.1} else {
objSonRoof.image_index=0
objSonRoof.image_angle=scrRotate(objSonRoof.image_angle,point_direction(objSonRoof.x,objSonRoof.y,objSwanRoof.x,objSwanRoof.y),5)
if objSonRoof.image_angle=point_direction(objSonRoof.x,objSonRoof.y,objSwanRoof.x,objSwanRoof.y) {
sound_play(sndMagnum)
my_id=instance_create(objSonRoof.x+lengthdir_x(20,objSonRoof.image_angle),objSonRoof.y+lengthdir_y(20,objSonRoof.image_angle),objEBullet)
my_id.direction=objSonRoof.image_angle
my_id.image_angle=objSonRoof.image_angle
my_id.speed=12
objSonRoof.sprite_index=sprSonAttackMagnum
objSonRoof.image_index=0
state=9
}
}
} else {
if objEffector.sprite=sprMaskSwan2 scrCameraPan(objSwanRoof.x,objSwanRoof.y)
if objEffector.sprite=sprMaskSwan1 scrCameraPan(objPlayer.x,objPlayer.y)
}
}

if state=9 {
if objSonRoof.image_index<sprite_get_number(objSonRoof.sprite_index)-1 objSonRoof.image_index+=0.25 else {
objSonRoof.sprite_index=sprSonMagnumSwanLSD
objSonRoof.image_index=0
state=10
wait=40
}
}

if state=10 {
objPlayer.dir=scrRotate(objPlayer.dir,point_direction(objPlayer.x,objPlayer.y,objSwanRoof.x,objSwanRoof.y),5)
scrCameraPan(objPlayer.x,objPlayer.y)
if wait>0 wait-=1 else {
scrGetMessage(6)
state=11
wait=30
}
}

if state=11 {
if !instance_exists(objConversation) {
scrCameraPan(objSonRoof.x+96,objSonRoof.y)
if objSonRoof.image_index<sprite_get_number(objSonRoof.sprite_index)-1 objSonRoof.image_index+=0.15 else {
objSonRoof.image_angle=scrRotate(objSonRoof.image_angle,point_direction(objSonRoof.x,objSonRoof.y,objPlayer.x,objPlayer.y),5)
if objSonRoof.image_angle=point_direction(objSonRoof.x,objSonRoof.y,objPlayer.x,objPlayer.y) {
if wait>0 {objPlayer.dir=scrRotate(objPlayer.dir,175,10) wait-=1} else {
scrGetMessage(7)
state=12
}
}
}
}
}

if state=12 {
if !instance_exists(objConversation) {
sound_play(sndMagnum)
my_id=instance_create(objSonRoof.x+lengthdir_x(20,objSonRoof.image_angle),objSonRoof.y+lengthdir_y(20,objSonRoof.image_angle),objEBullet)
my_id.direction=objSonRoof.image_angle
my_id.speed=12
my_id=instance_create(objSonRoof.x+lengthdir_x(20,objSonRoof.image_angle),objSonRoof.y+lengthdir_y(20,objSonRoof.image_angle),objEBullet)
my_id.direction=objSonRoof.image_angle
my_id.speed=12
objSonRoof.sprite_index=sprSonAttackMagnum
objSonRoof.image_index=0
state=13
wait=60
}
}

if state=13 {
if objSonRoof.image_index<sprite_get_number(objSonRoof.sprite_index)-1 objSonRoof.image_index+=0.25 else {
scrCameraPan(objPlayer.x,objPlayer.y)
if wait>0 wait-=1 else {
with objSonRoof {
sprite_index=sprSonWalkRoofLSD
image_index=0
my_id=instance_create(x+12,y+8,objMagnum)
my_id.direction=-45
my_id.speed=1.5
my_id.friction=0.15
image_angle=0
}
state=14
}
}
}

if state=14 {
scrPlaySong(Dust)
scrSongVolume(0)
objEffector.fade=1
objEffector.next=1
objEffector.newsong=0
objEffector.nextroom=rmScore
global.level=rmFansLevel5Outro
wait=120
state=15
}

if state=15 {
objSonRoof.x+=0.5
objSonRoof.image_index+=0.1
if wait>0 wait-=1 else {
viewspeed+=0.01
if viewspeed>0 __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (viewspeed) )
}
scrSongVolume(vol)
if vol<0.997 vol+=0.003 else vol=1
objEffector.amount+=14.5
}


if instance_exists(objSonRoof) and state<14 {
if vol>0 vol-=0.005
scrSongVolume(vol)
} 
