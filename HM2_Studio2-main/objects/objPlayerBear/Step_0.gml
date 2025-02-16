if sprite_index=sprBearWalkie {
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


previousx=x
previousy=y
//if global.xbox=1 scrXboxPlayerMouseHouse()

global.test=0

if ammo=0  and (sprite_index=sprBearWalkSpecial or sprite_index=sprBearTurnSpecial) {
if mags>0 {
sprite_index=sprBearReloadWeapons
image_index=0
image_speed=0
} else {
sprite_index=sprBearHolsterWeapons
image_index=0
image_speed=0
}
}

if sprite_index=sprBearReloadWeapons {
if image_index<16 image_index+=0.25 else {mags-=1 sprite_index=sprBearWalkSpecial}
if image_index>10 and ammo=0 {sound_play(sndPickUpWeapon) ammo=32}
if image_index>13 and ammo=32 {sound_play(sndPickUpWeapon) ammo=64}
}

if sprite_index=sprBearHolsterWeapons {
if image_index<11 image_index+=0.15 else sprite_index=sprBearWalkUnarmed
}

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
