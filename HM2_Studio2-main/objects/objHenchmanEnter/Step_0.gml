if state=0 {
scrCameraPan(x,y-32)
if y>objSonIdleBox.y+32 {
y-=1
image_index+=0.1
legindex+=0.2
} else {
image_angle=scrRotate(image_angle,point_direction(x,y,objSonIdleBox.x,objSonIdleBox.y),5)
if wait>0 wait-=1 else {
scrGetMessage(0)
state=1
}
}
}

if state>0 and state<14 {
scrCameraPan(x+64,y-32)
if !instance_exists(objConversation) {
scrGetMessage(state)
state+=1
}
if state>9 {
if objSonIdleBox.image_speed=0 {
objSonIdleBox.sprite_index=sprSonWalkUnarmed
objSonIdleBox.image_angle=scrRotate(objSonIdleBox.image_angle,point_direction(objSonIdleBox.x,objSonIdleBox.y,x,y),10)
}
}
} else {
if !instance_exists(objConversation) {
if state=14 {
with objSonIdleBox {
global.style=0
my_id=instance_create(x,y,objSon)
my_id.dir=image_angle
global.done=1
state=15
instance_destroy()
}
}
}
}
