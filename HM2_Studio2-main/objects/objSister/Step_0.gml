if instance_number(objEnemy)+instance_number(objKnockedOut)=0 {
with instance_nearest(x,y,objEditorAtticDoorH) solid=0
if objPlayer.y<y+64 and objPlayer.y>y and objPlayer.x>x-32 and objPlayer.x<x+32 {
image_angle=scrRotate(image_angle,point_direction(x,y,objPlayer.x,objPlayer.y)+90,10)
if sprite_index=sprSisterDrawGun {if image_index<3 image_index+=0.2 else {sprite_index=sprSisterIdle image_speed=0.2}}
if state<6 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=point_direction(objPlayer.x,objPlayer.y,x,y)
if !instance_exists(objConversation) {
if state=1 {
with objPlayer scrDropWeapon()
}
scrGetMessage(state)
state+=1
}
}
}

if state=6 {
if !instance_exists(objConversation) {
if objPlayer.y<y+76 {
objPlayer.y+=1
objPlayer.image_index+=0.1
objPlayer.image_index+=0.2
} else {
objPlayer.active=1
objPlayer.aimon=1
state=7
}
}
}

if state=7 {
if objPlayer.y<y+56 and objPlayer.y>y and objPlayer.x>x-16 and objPlayer.x<x+16 {
if sprite_index=sprSisterIdle {
sprite_index=sprSisterShoot
image_speed=0
image_index=0
sound_play(snd9mm)
restart=1
repeat (3) {
my_id=instance_create(x+lengthdir_x(20,image_angle-90),y+lengthdir_y(20,image_angle-90),objEBullet)
my_id.direction=image_angle-90
my_id.speed=12
my_id.image_angle=my_id.direction
}
}
if sprite_index=sprSisterShoot {
if image_index<1 image_index+=0.2 else {sprite_index=sprSisterIdle state=8}
}
}
}

}
