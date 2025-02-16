if state=1 {
if place_meeting(x-12,y,objPlayer) and objPlayer.y>y-18 and objPlayer.y<y-2 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=0
scrGetMessage(state+2)
state+=1
}
}

if state=2 {
if !instance_exists(objConversation) {
if place_meeting(x-12,y,objPlayer) and objPlayer.y>y-18 and objPlayer.y<y-2 {
if image_index>=7 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=0
objPlayer.x=x-35
objPlayer.y=y-10
scrGetMessage(state+2)
state+=1
}
}
}
}
