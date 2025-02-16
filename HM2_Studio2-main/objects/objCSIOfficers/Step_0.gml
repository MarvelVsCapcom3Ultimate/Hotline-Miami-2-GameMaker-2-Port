if on==1 {
if talk<talks {
image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y),10)
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,x,y)
if !instance_exists(objConversation) {
scrGetMessage(talk)
talk+=1
}
} else {
if !instance_exists(objConversation) {
on=2
objPlayer.active=1
objPlayer.aimon=1
global.done=1
}
}
}

if on=2 {
image_angle=scrRotate(image_angle,angle,10)
}









if image_index>0 exit
if on=1 exit
image_xscale=3
image_yscale=3
if place_meeting(x,y,objPlayer) {
on=1
}
image_yscale=1
image_xscale=1
