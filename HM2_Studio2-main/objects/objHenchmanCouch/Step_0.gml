if state=0 {
if image_index<44 image_index+=0.15 else state=1
}
if state=1 {
scrGetMessage(2)
state=2
}
if state=2 {
if !instance_exists(objConversation) {
if sprite_index=sprHenchmanPhone {
sprite_index=sprHenchmanThrow
image_index=0
}
if image_index>11 and phone=1 {
sound_play(sndThrow)
my_id=instance_create(x-8,y+9,objCellPhone)
my_id.vspeed=6
my_id.friction=0
my_id.depth=0
phone=0
}
if image_index<14 image_index+=0.2 else {wait=30 state=3}
}
}

if state=3 {
if wait>0 wait-=1 else {
my_id=instance_create(room_width+100,-84,objFansVanDrive)
my_id.hspeed=-12
my_id.image_angle=180
state=4
}
}

if state=4 {
if scrMovingPlayerExists() state=5
}
