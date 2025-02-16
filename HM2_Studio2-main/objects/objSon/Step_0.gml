if sprite_index=sprSonPutOnMask {
if image_index<9 image_index+=0.2 else {sprite_index=sprSonWalkUnarmed style=3 global.style=3}
}
if sprite_index=sprSonTurnOnWater {
if image_index<11 image_index+=0.2 else {sprite_index=sprSonWalkUnarmed image_index=0 legindex=0}
if image_index>7 {
with objLSDSink {
if image_index=0 image_index=1
}
}
}

if ammo=0  and (sprite_index=sprSonWalkSpecial or sprite_index=sprSonTurnSpecial) {
if mags>0 {
sprite_index=sprSonReloadSpecial
image_index=0
image_speed=0
} else {
sprite_index=sprSonWalkUnarmed
image_index=0
image_speed=0
my_id=instance_create(x,y,objMP5)
my_id.direction=dir-45
my_id.speed=2
my_id=instance_create(x,y,objMP5)
my_id.direction=dir+45
my_id.speed=2
sound_play(sndPickUpWeapon)
}
}

if sprite_index=sprSonReloadSpecial {
if image_index<16 image_index+=0.25 else {mags-=1 sprite_index=sprSonWalkSpecial}
if image_index>10 and ammo=0 {sound_play(sndPickUpWeapon) ammo=32}
if image_index>13 and ammo=32 {sound_play(sndPickUpWeapon) ammo=64}
}


if sprite_index=sprSonRoll {
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
//if wait>0 wait-=1 else persistent=0
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


if style=1 {
if scrIsAttacking(sprite_index) {
global.spacex=lengthdir_x(12,dir)
global.spacey=lengthdir_y(12,dir)
with objEnemy {
if place_meeting(x,y,objPlayer) or place_meeting(x-global.spacex,y-global.spacey,objPlayer) {
if object_get_parent(object_index)=objDog and (round(direction*(1/45))*45=round((objPlayer.dir-180)*(1/45))*45 or round(direction*(1/45))*45=round((objPlayer.dir+180)*(1/45))*45) {
my_id=instance_create(objPlayer.x,objPlayer.y,objTigerKillDog)
my_id.sprite_index=sprSonKillDog
my_id.image_angle=objPlayer.dir
my_id.ammo=ammo
my_id.playerx=x
my_id.playery=y
with objPlayer {if object_index=objSon instance_destroy()}
instance_destroy()
exit
} 
if object_index=objEGangFat or object_index=objEMafiaFat {
scrEnemyGetKnockedOut(object_index,point_direction(objPlayer.x,objPlayer.y,x,y))
sound_play(sndPunch)
sound_play(sndBoxingBag)
} else scrEnemyDieMelee(object_index)
}
}
}
} else {
if scrIsAttacking(sprite_index) {
global.spacex=lengthdir_x(12,dir)
global.spacey=lengthdir_y(12,dir)
with objEnemy {
if object_index=objEGangFat or object_index=objEMafiaFat or (object_get_parent(object_index)=objDog and scrGetMelee()=4) {
if object_index=objColombianDodger {
if sprite_index=sprColombianDodgerStunned nothing=1 else sound_play(sndBoxingBag)
sprite_index=sprColombianDodgerStunned
direction=point_direction(x,y,objPlayer.x,objPlayer.y)
image_index=0
speed=0
path_end()
}
} else {
if place_meeting(x,y,objPlayer) or place_meeting(x-global.spacex,y-global.spacey,objPlayer) {
scrEnemyDieMelee(object_index)
}
}
}
}
}

/*
if scrIsAttacking(sprite_index) {
global.spacex=lengthdir_x(12,dir)
global.spacey=lengthdir_y(12,dir)
with objEnemy {
if place_meeting(x,y,objPlayer) or place_meeting(x-global.spacex,y-global.spacey,objPlayer) {
scrEnemyDieMelee(object_index)
}
}
}
/* */
/*  */
