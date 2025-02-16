if objPlayer.y>132 and objPlayer.y<138 and objPlayer.x>340 and objPlayer.x<388 {
if state<7 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,x,y)
if !instance_exists(objConversation) {
scrGetMessage(state+10)
state+=1
} else {
if objConversation.sprite=sprFaceGeneralDown scrCameraPan(x,y)
if objConversation.sprite=sprFaceNicke scrCameraPan(objPlayer.x,objPlayer.y)
}
}
}

if state=7 {
if !instance_exists(objConversation) {
state=8
objWeaponTable.on=1
objPlayer.active=1
objPlayer.aimon=1
} else {
if objConversation.sprite=sprFaceGeneralDown scrCameraPan(x,y)
if objConversation.sprite=sprFaceNicke scrCameraPan(objPlayer.x,objPlayer.y)
}
}
