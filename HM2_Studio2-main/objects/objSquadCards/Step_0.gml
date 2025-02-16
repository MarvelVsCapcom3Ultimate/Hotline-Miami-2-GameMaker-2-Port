if state<10 {
with objPlayer {
aimon=0
active=0
dir=180
}
if !instance_exists(objConversation) {
scrGetMessage(state)
state+=1
} else {
if objConversation.sprite=sprFaceBlackSquad scrCameraPan(x-32,y)
if objConversation.sprite=sprFaceFatSquad scrCameraPan(x+32,y)
if objConversation.sprite=sprFaceNicke scrCameraPan(objPlayer.x,objPlayer.y)
}
}

if state=10 {
if !instance_exists(objConversation) {
objPlayer.active=1
objPlayer.aimon=1
state=11
} else {
if objConversation.sprite=sprFaceBlackSquad scrCameraPan(x-32,y)
if objConversation.sprite=sprFaceFatSquad scrCameraPan(x+32,y)
if objConversation.sprite=sprFaceNicke scrCameraPan(objPlayer.x,objPlayer.y)
}
}
