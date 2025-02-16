if wait>0 {wait-=1 exit}

if state<6 {
if !instance_exists(objConversation) {
scrGetMessage(state)
state+=1
exit
}
}

if state=6 {
if !instance_exists(objConversation) {
if sprite_index=sprFansVanRepair1 {
sprite_index=sprFansVanRepair2
image_speed=0
image_index=0
}
if image_index<12 image_index+=0.15 else {
global.done=1
state=7
my_id=instance_create(x-79,y,objPlayerSwan1)
my_id.sprite_index=sprSwan2WalkUnarmed
with corpse instance_destroy()
}
}
}


if state=7 {
if sprite_index=sprFansVanRepair2 sprite_index=sprFansVanRepair
if global.done=1 {
if point_distance(x,y,objPlayer.x,objPlayer.y)<80 and objPlayer.visible=1 {
if image_index<12 {
image_index+=0.5
}
} else {
if sprite_index=sprFansVanRepair {if image_index>0.25 image_index-=0.25}
}

mask_index=sprite_index
if place_meeting(x,y,objPlayer) or enter=1 {
enter=1
solid=0
with objPlayer active=0
if point_distance(x,y,objPlayer.x,objPlayer.y)>12 {
objPlayer.x+=lengthdir_x(2,point_direction(objPlayer.x,objPlayer.y,x,y))
objPlayer.y+=lengthdir_y(2,point_direction(objPlayer.x,objPlayer.y,x,y))
with objPlayerSwanGun {
persistent=0
x+=lengthdir_x(2,point_direction(x,y,objPlayer.x,objPlayer.y))
y+=lengthdir_y(2,point_direction(x,y,objPlayer.x,objPlayer.y))
legindex+=0.2
image_index+=0.1
}
} else {
with objPlayer visible=0
with objPlayerSwanGun {
persistent=0
x+=lengthdir_x(2,point_direction(x,y,objPlayer.x,objPlayer.y))
y+=lengthdir_y(2,point_direction(x,y,objPlayer.x,objPlayer.y))
legindex+=0.2
image_index+=0.1
}
if sprite_index=sprFansVanRepair {if image_index>0.25 image_index-=0.25 else {
if start=0 {start=1 sound_play(sndCarStart)}
image_index=0
objEffector.next=1
objEffector.fade=1
objEffector.newsong=1
objEffector.nextroom=scrGetNextRoom()
objEffector.song=scrGetSong()
/*if room=rmFansLevel2Floor1 objEffector.nextroom=rmRestart else objEffector.nextroom=rmScene
if room=rmFansLevel1Floor1 {objEffector.nextroom=rmTalkShow objEffector.stopsong=1}
if room=rmFansHeadQuarters {objEffector.newsong=1 
global.level=scrGetNextRoom()*/
}
}
}
}
}
}
mask_index=sprFansVanRepairMask
/* */
/*  */
