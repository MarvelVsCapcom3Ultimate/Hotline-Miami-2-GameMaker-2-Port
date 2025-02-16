if state=0 {
if !instance_exists(objMaskBox) state=1
}

if state=1 {
if objPlayer.x>352 and objPlayer.x<400 and objPlayer.y>128 and objPlayer.y<176 {
scrGetMessage(0)
state=2
objPlayer.active=0
objPlayer.dir=45
objPlayer.aimon=0
}
}

if state=2 {
if !instance_exists(objConversation) {
with objZebraHQ5 {
if objPlayer.image_index=0 {
if point_distance(x,y,objPlayer.x,objPlayer.y)>32 {
dir=point_direction(x,y,objPlayer.x+lengthdir_x(8,objPlayer.dir),objPlayer.y+lengthdir_y(8,objPlayer.dir))
image_angle=dir
x+=lengthdir_x(1,dir)
y+=lengthdir_y(1,dir)
} else {if image_index<5 image_index+=0.2 else objPlayer.image_index=1}
} else {
if point_distance(x,y,objPlayer.x,objPlayer.y)<48 {
dir=point_direction(x,y,objPlayer.x,objPlayer.y)-180
x+=lengthdir_x(1,dir)
y+=lengthdir_y(1,dir)
if image_index<sprite_get_number(sprite_index)-1 image_index+=0.2 
} else {if image_index<sprite_get_number(sprite_index)-1 image_index+=0.2 else objFansHQScene5.state=3}
}
}
} else {
with objNPC {image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x+lengthdir_x(8,objPlayer.dir),objPlayer.y+lengthdir_y(8,objPlayer.dir)),10)}
}
}

if state=3 {
if !instance_exists(objConversation) {
with objTigerHQ5 {
if objPlayer.image_index=1 {
if point_distance(x,y,objPlayer.x,objPlayer.y)>32 {
dir=point_direction(x,y,objPlayer.x+lengthdir_x(8,objPlayer.dir),objPlayer.y+lengthdir_y(8,objPlayer.dir))
image_angle=dir
x+=lengthdir_x(1,dir)
y+=lengthdir_y(1,dir)
} else {if image_index<5 image_index+=0.2 else objPlayer.image_index=2}
} else {
if point_distance(x,y,objPlayer.x,objPlayer.y)<48 {
dir=point_direction(x,y,objPlayer.x,objPlayer.y)-180
x+=lengthdir_x(1,dir)
y+=lengthdir_y(1,dir)
if image_index<sprite_get_number(sprite_index)-1 image_index+=0.2 
} else {objFansHQScene5.state=4}
}
}
}
}

if state=4 {
with objTigerHQ5 {
if image_index<sprite_get_number(sprite_index)-1 image_index+=0.2
}
if !instance_exists(objConversation) {
with objSwan1HQ5 {
if objPlayer.image_index=2 {
if point_distance(x,y,objPlayer.x,objPlayer.y)>32 {
dir=point_direction(x,y,objPlayer.x+lengthdir_x(8,objPlayer.dir),objPlayer.y+lengthdir_y(8,objPlayer.dir))
image_angle=dir
x+=lengthdir_x(1,dir)
y+=lengthdir_y(1,dir)
} else {if image_index<5 image_index+=0.2 else objPlayer.image_index=3}
} else {
if point_distance(x,y,objPlayer.x,objPlayer.y)<48 {
dir=point_direction(x,y,objPlayer.x,objPlayer.y)-180
x+=lengthdir_x(1,dir)
y+=lengthdir_y(1,dir)
if image_index<sprite_get_number(sprite_index)-1 image_index+=0.2
} else {if image_index<sprite_get_number(sprite_index)-1 image_index+=0.2 else objFansHQScene5.state=5}
}
}
}
}

if state=5 {
with objTigerHQ5 {
if image_index<sprite_get_number(sprite_index)-1 image_index+=0.2
}
scrSongVolume(vol)
if vol>0 vol-=0.0025
if message<17 {
if !instance_exists(objConversation) {
scrGetMessage(message) 
if message=11 scrPlaySong(Videodrome)
message+=1
} else {
if message=13 scrCameraPan(objZebraHQ5.x,objZebraHQ5.y)
if message=15 scrCameraPan(objTigerHQ5.x,objTigerHQ5.y)
if message=17 scrCameraPan(objSwan1HQ5.x,objSwan1HQ5.y)
if message=13 or message=15 or message=16 nothing=1 else scrCameraPan(objPlayer.x,objPlayer.y)
}
} else {
if !instance_exists(objConversation) {
state=6
sound_loop(sndPhoneCall)
wait=120
} else {
if message=17 scrCameraPan(objSwan1HQ5.x,objSwan1HQ5.y)
}
}
}

if state=6 {
scrCameraPan(objFansComputerTable.x,objFansComputerTable.y)
if wait>0 wait-=1 else {
objTigerHQ5.sprite_index=sprTigerWalkUnarmed
objZebraHQ5.sprite_index=sprZebraWalkUnarmed
with objPlayerBear {
my_id=instance_create(x,y,objBearHQ5)
with my_id move_contact_solid(180,64)
my_id.image_angle=dir
instance_destroy()
}
with objSwan1HQ5 {
my_id=instance_create(x,y,objPlayerSwan1)
my_id.sprite_index=sprSwanTakeOffMask
my_id.dir=image_angle
my_id.aimon=0
my_id.active=0
instance_destroy()
}
state=7
}
}

if state=7 {
scrCameraPan(objPlayer.x,objPlayer.y)
if objPlayer.image_index<7 objPlayer.image_index+=0.2 else {
objPlayer.sprite_index=sprSwanWalkUnmasked
scrGetMessage(1)
state=8
}
}

if state=8 {
scrCameraPan(objPlayer.x,objPlayer.y)
if !instance_exists(objConversation) {
objPlayer.active=1
objPlayer.aimon=1
state=9
wait=60
}
}


if state=10 {
if !instance_exists(objConversation) {
scrCameraPan(objSwan2HQ5.x,objSwan2HQ5.y)
if wait>0 wait-=1 else state=11
}
}

if state=11 {
if objSwan2HQ5.image_index<44 objSwan2HQ5.image_index+=0.2 else {
scrGetMessage(3)
state=12
}
}

if state=12 {
scrCameraPan(objTigerHQ5.x,objTigerHQ5.y)
if !instance_exists(objConversation) {
scrGetMessage(4)
state=13
}
}

if state=13 {
scrCameraPan(objSwan2HQ5.x,objSwan2HQ5.y)
if !instance_exists(objConversation) {
scrGetMessage(5)
state=14
}
}

if state=14 {
scrCameraPan(objZebraHQ5.x,objZebraHQ5.y)
if !instance_exists(objConversation) {
scrGetMessage(6)
state=15
}
}

if state=15 {
scrCameraPan(objSwan2HQ5.x,objSwan2HQ5.y)
if !instance_exists(objConversation) {
if objSwan2HQ5.image_index<47 objSwan2HQ5.image_index+=0.2 else {
sound_stop(sndPhoneCall)
scrGetMessage(7)
state=16
}
}
}

if state=16 {
scrCameraPan(objSwan2HQ5.x,objSwan2HQ5.y)
if !instance_exists(objConversation) {
if objSwan2HQ5.image_index<54 objSwan2HQ5.image_index+=0.2 else {
scrGetMessage(8)
state=17
}
}
}

if state=17 {
with objPlayerSwan1 {
my_id=instance_create(x,y,objSwan1HQ5)
my_id.sprite_index=sprSwanWalkUnarmed
my_id.image_angle=dir
instance_destroy()
}
with objSwan2HQ5 {
my_id=instance_create(x,y,objPlayerSwan1)
my_id.sprite_index=sprSwan2WalkUnarmed
my_id.dir=270
with objNPC follow=1
instance_destroy()
}
global.done=1
state=18
}
