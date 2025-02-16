if state<11 {
scrCameraPan(x,y)
if !instance_exists(objConversation) {
scrGetMessage(state)
state+=1
}
}

if state=11 {
if !instance_exists(objConversation) {
if sprite_index=sprCopDrinkBeer {
sprite_index=sprCopWalkUnarmed
image_index=0
with objCopLegsSit instance_destroy()
with objHipsterChairs {
if place_meeting(x,y,objCopHipsterBar) {
hspeed=1.5
friction=0.1
}
}
}

with objWriterHipsterBar {
if sprite_index=sprWriterSitAnxious {
sprite_index=sprWriterWalkUnarmed
image_index=0
with objHipsterChairs {
if place_meeting(x,y,objCopHipsterBar) {
hspeed=1.5
friction=0.1
}
}
}
}

image_angle=scrRotate(image_angle,270,10)
objWriterHipsterBar.image_angle=scrRotate(objWriterHipsterBar.image_angle,270,10)

if image_angle=270 and objWriterHipsterBar.image_angle=270 state=12
}
}

if state=12 {
with objWriterHipsterBar {
if y<300 {x-=0.5 y+=1 image_index+=0.1 legindex+=0.15}
}
if y<300 {y+=1 image_index+=0.1 legindex+=0.15}
if objWriterHipsterBar.y=300 and y=300 state=13
}

if state=13 {
objWriterHipsterBar.state=1
objWriterHipsterBar.image_speed=0
my_id=instance_create(x,y,objCop)
my_id.dir=image_angle
my_id.legindex=legindex
my_id.image_index=image_index
instance_destroy()
}
