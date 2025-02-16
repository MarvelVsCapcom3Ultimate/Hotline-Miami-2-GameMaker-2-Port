if done=1 exit
if instance_exists(objDeadBody) {
if objPlayer.y>y {
if talk<talks {
scrCameraPan((x+objPlayer.x)/2,(y+objPlayer.y)/2)
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,x,y)
if !instance_exists(objConversation) {
scrGetMessage(talk)
talk+=1
}
} else {
objPlayer.active=1
objPlayer.aimon=1
done=1
global.done=1
}
}
}
