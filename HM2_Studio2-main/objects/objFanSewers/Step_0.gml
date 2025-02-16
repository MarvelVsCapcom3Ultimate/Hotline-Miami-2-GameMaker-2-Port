if state=0 {
if instance_number(objEnemy)+instance_number(objKnockedOut)+instance_number(objKill)=0 {
visible=1
state=1
if objPlayer.object_index=objPlayerTiger sprite_index=sprBearWalkUnarmed
}
}

if state=1 {
global.done=0
if point_distance(x,y,objPlayer.x,objPlayer.y)<72 {
image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),10)
}
if point_distance(x,y,objPlayer.x,objPlayer.y)<48 {
objPlayer.active=0
objPlayer.aimon=0
state=2
}
}

if state>=2 and state<7 {
if point_distance(x,y,objPlayer.x,objPlayer.y)<72 {
image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),10)
}
objPlayer.dir=scrRotate(objPlayer.dir,point_direction(objPlayer.x,objPlayer.y,x,y),10)
if !instance_exists(objConversation) {
scrGetMessage(state-2)
state+=1
} else {
if state=6 scrCameraPan(objSewerEntrance.x,objSewerEntrance.y) else scrCameraPan((x+objPlayer.x)*0.5+30,(y+objPlayer.y)*0.5+30)
}
}

if state=7 {
if point_distance(x,y,objPlayer.x,objPlayer.y)<72 {
image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),10)
}
objPlayer.active=1
objPlayer.aimon=1
state=8
}
