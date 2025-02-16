if state=0 {
if point_distance(x,y,objPlayer.x,objPlayer.y)<96 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,x,y)
scrGetMessage(0)
state=1
}
}

if state=1 {
scrCameraPan(x,y)
if !instance_exists(objConversation) {
objPlayer.active=1
objPlayer.aimon=1
state=2
}
}

if state=2 {
mask=mask_index
mask_index=sprite_index
if place_meeting(x,y,objPlayer) {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,x,y)
state=3
}
mask_index=mask
}


if state=3 {
if point_distance(x,y,objPlayer.x,objPlayer.y)>4 and objPlayer.visible=1 {
objPlayer.legindex+=0.15
objPlayer.image_index+=0.1
objPlayer.x+=lengthdir_x(1,objPlayer.dir)
objPlayer.y+=lengthdir_y(1,objPlayer.dir)
scrCameraPan(objPlayer.x,objPlayer.y)
} else {
objPlayer.visible=0
if hspeed<4 hspeed+=0.1
image_index+=hspeed*0.075
objEffector.fade=1
objEffector.next=1
objEffector.nextroom=room_next(room)
objEffector.newsong=1
objEffector.song=SlumLord
with objEffector amount+=12
}
}
