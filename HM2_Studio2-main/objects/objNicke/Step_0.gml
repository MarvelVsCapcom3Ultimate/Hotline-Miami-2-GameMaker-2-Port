if sprite_index=sprNickeWalkie {
if objEffector.talked<talks {
if image_index<7 image_index+=0.25 else {
if !instance_exists(objConversation) {
scrGetMessage(objEffector.talked)
objEffector.talked+=1
}
}
} else {
if !instance_exists(objConversation) {
if image_index<12 image_index+=0.25 else {
sprite_index=sprNickeWalkUnarmed
active=1
aimon=1
}
}
}
}

if ammo=0 {
if global.magammo>0 {
if sprite_index=sprNickeWalkShotgun {sprite_index=sprNickeReloadShotgun image_index=0 image_speed=0}
if sprite_index=sprNickeWalkSniper {sprite_index=sprNickeReloadSniper image_index=0 image_speed=0}
if sprite_index=sprNickeWalkMachinegun {sprite_index=sprNickeReloadMachinegun image_index=0 image_speed=0}
}
}

previousx=x
previousy=y
//if wait>0 wait-=1 else persistent=0
//if global.xbox=1 scrXboxPlayerMouseHouse()

global.test=0
scrReload()
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
if object_index=objSoldierFatKnife or object_index=objSoldierFatGun nothing=1 else {
if place_meeting(x,y,objPlayer) or place_meeting(x-global.spacex,y-global.spacey,objPlayer) {
scrEnemyDieMelee(object_index)
}
}
}
}
