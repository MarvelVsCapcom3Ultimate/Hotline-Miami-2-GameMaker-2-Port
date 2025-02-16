if sprite_index=sprZebraWalkie {
if objEffector.talked<talks {
if image_index<7 image_index+=0.25 else {
if !instance_exists(objConversation) {
scrGetMessage(objEffector.talked)
objEffector.talked+=1
}
}
}
if objEffector.talked>=talks {
if !instance_exists(objConversation) {
if image_index<12 image_index+=0.25 else {
objEffector.next=1
objEffector.nextroom=room_next(room)
objEffector.fade=1
}
}
}
}


if sprite_index=sprZebraRoll {
scrMoveSolidOn()
scrMoveGlide(rollx,rolly)
scrCameraPan(x,y)
scrCameraPan(x,y)
if !place_free(x+rollx,y+rolly) and image_index<12 image_index=12
if !keyboard_check(vk_space) {
if image_index<12 and image_index>4 image_index=12
}
scrMoveSolidOff()
if image_index<16 image_index+=0.25 else {
sprite_index=weapon
active=1
aimon=1
image_index=0
}
exit
} else {
if rollreload>0 rollreload-=1
}
previousx=x
previousy=y
if wait>0 wait-=1 else persistent=0
//if global.xbox=1 scrXboxPlayerMouseHouse()

global.test=0

scrAim()

xview=__view_get( e__VW.XView, 0 )
yview=__view_get( e__VW.YView, 0 )
if persistent=1 and objEffector.fade=1 {
if place_free(x+addx,y) x+=addx
if place_free(x,y+addy) y+=addy
if image_speed=0 and (abs(addx)>0 or abs(addy)>0) {
image_index+=0.15
legindex+=0.4
}
exit 
}

if active=1 scrPlayerMoveKeyboard()

if scrIsAttacking(sprite_index) {
global.spacex=lengthdir_x(12,dir)
global.spacey=lengthdir_y(12,dir)
with objEnemy {
if object_index=objEGangFat or object_index=objEMafiaFat or (object_get_parent(object_index)=objDog and scrGetMelee()=4) nothing=1 else {
if place_meeting(x,y,objPlayer) or place_meeting(x-global.spacex,y-global.spacey,objPlayer) {
scrEnemyDieMelee(object_index)
}
}
}
}
