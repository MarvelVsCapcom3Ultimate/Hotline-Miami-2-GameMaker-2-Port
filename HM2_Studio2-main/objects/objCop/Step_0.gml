previousx=x
previousy=y
//if wait>0 wait-=1 else persistent=0
//if global.xbox=1 scrXboxPlayerMouseHouse()

if sprite_index=sprCopPush {
if image_index<4 and image_index>0 image_index+=0.2 else {
image_index=0
if room=rmNightmareFloor2MovieSet {sprite_index=sprCopWalkUnarmed active=1 aimon=1}
}
exit
}

if sprite_index=sprCopRipTape {
if image_index<15 {
image_index+=0.2
if image_index>=8 and image_index-0.2<8 sound_play(sndPoliceTape)
} else {
sprite_index=sprCopWalkUnarmed
image_index=0
active=1
aimon=1
x+=10
objPoliceTape.image_index=1
objPoliceTape.visible=1
objPoliceTape.depth=2
}
exit
}

global.test=0

scrAim()
scrTurnAround()
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
if object_index=objEGangFat or object_index=objEMafiaFat or object_index=objFatPolice or(object_get_parent(object_index)=objDog and scrGetMelee()=4) nothing=1 else {
if place_meeting(x,y,objPlayer) or place_meeting(x-global.spacex,y-global.spacey,objPlayer) {
scrEnemyDieMelee(object_index)
}
}
}
}
