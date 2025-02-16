if current=10 exit
if point_distance(x,y,objPlayer.x,objPlayer.y)<64 {
if current<2 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,x,y)
if image_angle=point_direction(x,y,objPlayer.x,objPlayer.y) {
objWeaponTable.on=1
if !instance_exists(objConversation) {
scrGetMessage(current)
current+=1
} 
} else image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),10)
} else {
if !instance_exists(objConversation) {
objPlayer.aimon=1
objPlayer.active=1
current=10
}
}
}
