if state<7 {
if objPlayer.x>256 and objPlayer.x<380 and objPlayer.y>336 {
if song=0 {
scrPlaySong(Richard)
sound_play(sndDirector)
song=1
}
objPlayer.active=0
objPlayer.aimon=0
with objEditorDoorV {
image_angle=scrRotate(image_angle,0,10)
if image_angle=0 solid=1
swingspeed=0
}
with objEditorDoorH {
image_angle=scrRotate(image_angle,0,10)
if image_angle=0 solid=1
swingspeed=0
}
scrCameraPan((x+objPlayer.x)/2,(y+objPlayer.y)/2)
objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,x,y)
if !instance_exists(objConversation) {
scrGetMessage(state)
state+=1
} else {
if state==1 {
if image_index<3 image_index+=0.2
} else {
if image_index>0 image_index-=0.2 else sprite_index=sprPhantom
}
}
}
} else {
if state=7 {
if !instance_exists(objConversation) {
objPlayer.active=1
objPlayer.aimon=1
state=8
}
}
}

if state=8 {
with objChairWood {
if place_meeting(x,y,objPhantom) {hspeed=-1 friction=0.15}
}
if image_index<4 {image_index+=0.2 x-=0.35} else {state=9 image_angle=point_direction(x,y,objPlayer.x,objPlayer.y) sprite_index=sprPhantomWalk}
}

if state=9 {
motion_add(point_direction(x,y,objPlayer.x,objPlayer.y),0.5)
if speed>1.5 speed=1.5
image_angle=direction
image_index+=speed*0.075
legindex+=speed*0.15

if place_meeting(x,y,objPlayer) {
with objPlayer {
my_id=instance_create(x,y,objPhantomChokeCop)
my_id.image_angle=point_direction(x,y,objPhantom.x,objPhantom.y)
instance_destroy()
}
instance_destroy()
}
}
