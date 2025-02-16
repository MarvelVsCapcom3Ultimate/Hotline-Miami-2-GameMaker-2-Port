if dead=1 {
if shake<10 shake+=0.2 else {instance_destroy() with objInvisibleWallV instance_destroy()}
x+=10-shake
exit
}
if wait>0 wait-=1 else {
if image_alpha=0 objNewBGTiger.thunder=1
if image_alpha<1 image_alpha+=0.1
if x<objPlayer.x-72 {if index<1.4 index+=0.2 else index=0 x+=12} else {
if index<5 index+=0.2
x=objPlayer.x-60
if killed=0 {
objPlayer.acitve=0
objPlayer.image_xscale=2
objPlayer.image_yscale=2
if place_meeting(x,y,objPlayer) {
with objPlayer {my_id=instance_create(x,y,objPlayerDead) my_id.visible=0 my_id.sprite_index=sprSonDeadExplode instance_destroy()}
killed=1
} else {
objPlayer.image_xscale=1
objPlayer.image_yscale=1
}
}

if height>2 height-=0.2
if image_index<5 image_index+=0.5 else {
if blood=0 {
blood=1
objNewBGTiger.thunder=1
scrCreateBloodWhirl(x+60,y)
alarm[0]=10
global.shake=12
repeat (5) scrMeleeBlood(x+60,y)
scrMeleeBlood(x+60,y)
repeat (24) {
my_id=instance_create(x+60,y,objBrains)
my_id.direction=random(360)
my_id.speed=1+random(3)
}
repeat (16) {
my_id=instance_create(x+60,y,objIntestine)
my_id.direction=random(360)
my_id.speed=1.5+random(2.5)
}
}
if image_index<25 image_index+=0.2
}
}
}
