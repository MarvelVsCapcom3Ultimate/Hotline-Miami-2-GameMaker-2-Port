if instance_number(objEnemy)+instance_number(objKnockedOut)=0 with objEditorDoorV solid=0

if global.done=1 {
if visible=0 {
visible=1
image_speed=0.125
}
if objPlayer.y<64 {
if state<6 {
objPlayer.active=0
objPlayer.aimon=0
with objPlayer dir=scrRotate(dir,point_direction(x,y,objAndy.x,objAndy.y),5)
image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),5)
sprite_index=sprAndy
image_index=0
image_speed=0
if state=3 {
if image_index<5 image_index+=0.2
} else {
if image_index>0 image_index-=0.1
}
if !instance_exists(objConversation) {
scrGetMessage(state)
state+=1
}
}
} 
}


if state>=6 {
if !instance_exists(objConversation) {
if state=6 {
state=7
objPlayer.active=1
objPlayer.aimon=1
}
if image_angle=70 {
speed=3
direction=70
image_speed=0.2
sprite_index=sprEGangWalkUnarmed
} else image_angle=scrRotate(image_angle,70,10)
}
}
