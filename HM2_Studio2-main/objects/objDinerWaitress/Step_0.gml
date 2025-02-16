if talked>0 {
if !instance_exists(objConversation) {
if talked<4 {
scrGetMessage(talked)
talked+=1
} else {
if objPlayer.sprite_index=sprCopWalkUnarmed objPlayer.active=1
global.done=1
}
}
}

with objCop {
if sprite_index=sprCopDrinkCoffee {
image_speed=0
if image_index<21 image_index+=0.2 else {
sprite_index=sprCopWalkUnarmed
with objDinerCup {visible=true hspeed=1 friction=0.15 image_index=1}
repeat (2) {
my_id=instance_create(objDinerCup.x-2+random(2),objDinerCup.y-5-random(2),objChange)
my_id.speed=1+random(1)
my_id.direction=-20+random(40)
my_id.image_angle=random(360)
my_id.friction=0.1
repeat (2) {
my_id=instance_create(objDinerCup.x-2+random(2),objDinerCup.y-5-random(2),objChange)
my_id.speed=random(2)
my_id.direction=-20+random(40)
my_id.image_angle=random(360)
my_id.friction=0.15
my_id.image_index=1+random(1)
}
}
}
}
}
