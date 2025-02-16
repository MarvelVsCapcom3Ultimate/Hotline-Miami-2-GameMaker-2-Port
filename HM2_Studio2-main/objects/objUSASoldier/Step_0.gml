if room=rmHotelOutside {
if point_distance(x,y,objPlayer.x,objPlayer.y)<80 {
if state<6 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,x,y)
image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),10)
if !instance_exists(objConversation) {
scrGetMessage(state)
state+=1
} else {
scrCameraPan((x+objPlayer.x)/2,(y+objPlayer.y)/2)
}
} else {
if !instance_exists(objConversation) {
objEffector.next=1
objEffector.nextroom=rmScore
objEffector.newsong=1
objEffector.song=Dust
objEffector.fade=1
objEffector.amount+=10.5
global.level=rmHotelAftermath
}
}
}
}
