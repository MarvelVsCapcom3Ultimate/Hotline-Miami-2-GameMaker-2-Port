if objFansDead.image_index=1 {
if talks=8 {
talk=10
talks=13
}
}
if objPlayer.y<y+32 and point_distance(x,y,objPlayer.x,objPlayer.y)<72 {
if talk<talks {
scrCameraPan((x+objPlayer.x)/2,(y+objPlayer.y)/2)
image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),5)
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,x,y)
if !instance_exists(objConversation) {
scrGetMessage(talk)
talk+=1
}
} else {
if !instance_exists(objConversation) {
objPlayer.active=1
objPlayer.aimon=1
}
}
}
