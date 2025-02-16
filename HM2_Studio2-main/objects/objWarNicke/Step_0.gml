if state<5 {
scrCameraPan(x+30,y-16)
if !instance_exists(objConversation) {
scrGetMessage(state+5) 
state+=1
}
}

if state=5 {
if !instance_exists(objConversation) {
depth=0
if image_index<5 image_index+=0.2 else {sprite_index=sprNickeWalkUnarmed image_index=0 state=6}
if image_index>2 and seat=1 {
with objTikiChair {
if place_meeting(x,y,objWarNicke) {vspeed=1.2 friction=0.1}
}
seat=0
}
}
}

if state=6 {
if image_angle=180 state=7 else image_angle=scrRotate(image_angle,180,10)
}

if state=7 {
if x>336 {x-=1 image_index+=0.1} else {
my_id=instance_create(x,y,objNicke)
my_id.sprite_index=sprNickeWalkUnarmed
instance_destroy()
}
}

if state>=5 {
scrCameraPan(x,y)
}
