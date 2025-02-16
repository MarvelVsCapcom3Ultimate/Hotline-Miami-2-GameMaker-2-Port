if room=rmMallFloor1 {if global.done=0 exit}
if objPlayer.y>448 {
if state<3 {objPlayer.active=0 objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,x,y)}
image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),8)

if sprite_index=sprPolicePoint {
if image_index<6 image_index+=0.25 else {
if state<2 {
if !instance_exists(objConversation) {
scrGetMessage(state)
if state=1 {with objPlayer scrDropWeapon() objPlayer.sprite_index=sprCopBadge objPlayer.image_index=0 }
state+=1
}
}
}
}

if state>=2 {
if !instance_exists(objConversation) {
if state<4 {
if state=2 {
with objPoliceAim {
wait=2+round(random(30))
}
}
sprite_index=sprPoliceTalk
image_speed=0.15
scrGetMessage(state)
state+=1
}
}
}

if state=4 {
if !instance_exists(objConversation) {
image_speed=0
image_index=0
state=4
if objPlayer.active=0 {
objPlayer.active=1
objPlayer.sprite_index=sprCopWalkUnarmed
}
sprite_index=sprPoliceWalk
image_index=0
}
}

if objPlayer.sprite_index=sprCopBadge {
if objPlayer.image_index<19 objPlayer.image_index+=0.15
}



}
