if speed>0 exit

if on=1 {
if done=0 {
if doorangle<75 doorangle+=5 else {
my_id=instance_create(x,y,objSon)
my_id.active=0
my_id.direction=image_angle+90
my_id.active=0
my_id.start=0
my_id.style=global.style
if global.style=0 my_id.sprite_index=sprSonWalkSword
if global.style=2 {my_id.sprite_index=sprSonWalkSpecial my_id.ammo=64 my_id.mags=1}
with objPlayerDead instance_destroy()
wait=18
done=1
}
}
}

if wait>0 {
wait-=1
my_id.direction=direction+90
my_id.x+=lengthdir_x(2,image_angle+90)
my_id.y+=lengthdir_y(2,image_angle+90)
my_id.legindex+=0.35
my_id.image_index+=0.2
} else {
if done=1 {my_id.active=1 done=2 scrSaveFloor() on=2} 
}


if done=2 and global.done=0 {
if doorangle>5 doorangle-=5 else {if doorangle sound_play(sndCarClose) doorangle=0}
}

if global.done=1 {
if point_distance(x,y,objPlayer.x,objPlayer.y)<80 and objPlayer.visible=1 {
if doorangle<75 {
if doorangle=0 sound_play(sndCarOpen)
doorangle+=5
}
} else {
if sprite_index=sprSonCar {if doorangle>5 doorangle-=5 else {if doorangle>0 sound_play(sndCarClose) doorangle=0}}
}

mask_index=sprite_index
if place_meeting(x,y,objPlayer) or enter=1 {
enter=1
solid=0
with objPlayer active=0
if point_distance(x,y,objPlayer.x,objPlayer.y)>12 {
objPlayer.x+=lengthdir_x(2,point_direction(objPlayer.x,objPlayer.y,x,y))
objPlayer.y+=lengthdir_y(2,point_direction(objPlayer.x,objPlayer.y,x,y))
} else {
with objPlayer visible=0
if sprite_index=sprSonCar {if doorangle>5 doorangle-=5 else {sound_play(sndCarClose) sound_play(sndCarStart) sprite_index=sprSonCarStart doorangle=0}}
if sprite_index=sprSonCarStart {
if image_index<5 image_index+=0.25
if start>0 start-=1 else {
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
mask_index=sprSonCarMask
}
/* */
/*  */
