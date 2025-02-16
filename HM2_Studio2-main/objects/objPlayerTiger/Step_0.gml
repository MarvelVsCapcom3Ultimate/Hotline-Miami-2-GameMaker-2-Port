if sprite_index=sprTigerWalkie {
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
if place_meeting(x,y,objPlayer) or place_meeting(x-global.spacex,y-global.spacey,objPlayer) {
if object_get_parent(object_index)=objDog and (round(direction*(1/45))*45=round((objPlayer.dir-180)*(1/45))*45 or round(direction*(1/45))*45=round((objPlayer.dir+180)*(1/45))*45) {
my_id=instance_create(objPlayer.x,objPlayer.y,objTigerKillDog)
my_id.image_angle=objPlayer.dir
my_id.ammo=ammo
my_id.playerx=x
my_id.playery=y
with objPlayer {if object_index=objPlayerTiger instance_destroy()}
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
