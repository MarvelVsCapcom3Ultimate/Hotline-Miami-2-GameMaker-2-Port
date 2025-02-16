if sprite_index=sprSwanWalkie {
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
objEffector.nextroom=rmRestart
objEffector.fade=1
objEffector.newsong=1
objEffector.song = Dust;
}
}
}
}

if active=1 {
if start=0 {
active=0
image_index=2
sprite_index=sprSwanStartChainsaw
sound_play(sndChainsawStart)
image_speed=0.15
start=1
}
}

if sprite_index=sprSwanStartChainsaw scrCameraPan(x,y)

previousx=x
previousy=y
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
if object_index=objEGangFat or object_index=objEMafiaFat {
my_id=instance_create((x+objPlayer.x)*0.5,(y+objPlayer.y)*0.5,objSwanKillFat)
if object_index=objEMafiaFat my_id.sprite_index=sprEMafiaFatDieSwan
my_id.image_angle=point_direction(objPlayer.x,objPlayer.y,x,y)
my_id.left=objPlayer.left
my_id.ammo=ammo
my_id.playerx=x
my_id.playery=y
with objPlayer {if object_index=objPlayerSwanChainsaw instance_destroy()}
instance_destroy()
exit
} else scrEnemyDieMelee(object_index)
}
}
}
