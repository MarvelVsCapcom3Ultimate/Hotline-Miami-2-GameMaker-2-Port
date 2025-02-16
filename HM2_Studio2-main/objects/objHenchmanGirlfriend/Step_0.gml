if objPlayer.y<310 and objPlayer.x>192 and objPlayer.x<224 and objPlayer.y>300 {
if state<9 {
objPlayer.active=0
objPlayer.aimon=0
with objPlayer {
dir=scrRotate(dir,point_direction(x,y,objHenchmanGirlfriend.x,objHenchmanGirlfriend.y),10)
}
if !instance_exists(objConversation) {
scrGetMessage(state)
state+=1
} else {
if objEffector.sprite=sprFaceHenchmanGirlfriend image_speed=0.1 else {image_speed=0 image_index=0}
scrCameraPan((objPlayer.x+x)/2+40,(objPlayer.y+y)/2)
}
} else {
if state=9 and !instance_exists(objConversation){
state=10
image_speed=0
image_index=0
objPlayer.active=1
objPlayer.aimon=1
}
}
}

