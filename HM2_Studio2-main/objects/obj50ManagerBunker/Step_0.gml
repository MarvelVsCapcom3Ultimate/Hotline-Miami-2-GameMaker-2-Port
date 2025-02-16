if state=0 {
if point_distance(x,y,objPlayer.x,objPlayer.y)<80 {
objPlayer.active=0
objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,x,y)
objPlayer.aimon=0
state=1
}
}

if state=1 {
scrCameraPan(x,y)
if point_distance(x,y,objPlayer.x,objPlayer.y)>48 {
dir=point_direction(x,y,objPlayer.x,objPlayer.y)
image_angle=scrRotate(image_angle,dir,10)
x+=lengthdir_x(1,dir)
y+=lengthdir_y(1,dir)
image_index+=0.1
legindex+=0.2
} else state=2
}

if state>=2 and state<16 {
if !instance_exists(objConversation) {
scrGetMessage(state-2)
state+=1
} 
}

if state=16 {
if !instance_exists(objConversation) {
objPlayer.active=1
objPlayer.aimon=1
global.done=1
state=17
}
}
