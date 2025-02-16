if objPlayer.x<x+64 and objPlayer.y>y-16 and objPlayer.y<y+16 {
if state<13 {
on=0
objPlayer.active=0
objPlayer.aimon=0
with objPlayer {
dir=scrRotate(dir,point_direction(x,y,objSonCouchHideout.x,objSonCouchHideout.y),10)
}
if !instance_exists(objConversation) {
scrGetMessage(state)
state+=1
} else {
if objEffector.sprite=sprFaceSon image_speed=0.1 else {image_speed=0 image_index=0}
scrCameraPan((objPlayer.x+x)/2+40,(objPlayer.y+y)/2)
}
} else {
if state=13 {
if !instance_exists(objConversation) {
state=14
with objDrugSample on=1
image_speed=0
image_index=0
objPlayer.active=1
objPlayer.aimon=1
with objSteelDoorH solid=0
with objSteelDoorH2 solid=0
} else {
if objConversation.current=1 {if sprite_index=sprSonIdleCouch1 {sprite_index=sprSonIdleCouch2 image_index=0}}
if image_index<3 image_index+=0.15
}
}
} 
}

if state=14 {
if image_index>0 image_index-=0.15 else image_index=0
}

