if state<6 {
scrCameraPan(x+16,y)
if objPlayer.x>300 and objPlayer.x<336 and objPlayer.y>144 and objPlayer.y<184 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=point_direction(objCop.x,objCop.y,x,y)
if !instance_exists(objConversation) {
scrGetMessage(state)
state+=1
}
}
}

if state=6 {
if !instance_exists(objConversation) {
objPlayer.active=1
objPlayer.aimon=1
}
}

if instance_exists(objConversation) {
if objEffector.sprite=sprFacePoliceChief {
image_speed=0.1
} else {image_index=0 image_speed=0}
}
