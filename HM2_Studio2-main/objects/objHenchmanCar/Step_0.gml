/*
if point_distance(objPlayer.x,objPlayer.y,x+lengthdir_x(24,image_angle+90),y+lengthdir_y(24,image_angle+90))<32 {
if doorindex<6 doorindex+=0.25
} else {
if doorindex>0 doorindex-=0.25
}*/

//FANS VAN CODE

if on=1 {
if done=0 {
if doorindex<6 doorindex+=0.2 else {
my_id=instance_create(x,y,objPlayerHenchman)
my_id.active=0
my_id.direction=image_angle+90
my_id.active=0
with objPlayerDead instance_destroy()
wait=18
done=1
}
}
}

if wait>0 {
wait-=1
my_id.direction=image_angle+90
my_id.x+=lengthdir_x(2,image_angle+90)
my_id.y+=lengthdir_y(2,image_angle+90)
my_id.legindex+=0.35
my_id.image_index+=0.2
} else {
if done=1 {my_id.active=1 done=2 depth=1 scrSaveFloor() on=2} 
}

if done=2 and global.done=0 {
if doorindex>0.2 doorindex-=0.2 else {if doorindex>0 sound_play(sndCarClose) doorindex=0} 
}

if global.done=1 {
if point_distance(x+lengthdir_x(6,image_angle),y,objPlayer.x,objPlayer.y)<80 and objPlayer.visible=1 {
if enter=0 {
if doorindex<6 {
if doorindex=0 sound_play(sndCarOpen)
doorindex+=0.5
}
} else {if doorindex>0.25 doorindex-=0.25 else {if doorindex>0 sound_play(sndCarClose) doorindex=0} } 
} else {
if doorindex>0.25 doorindex-=0.25 else {if doorindex>0 sound_play(sndCarClose) doorindex=0} 
}

mask_index=sprite_index
if place_meeting(x,y,objPlayer) or enter=1 {
enter=1
solid=0
depth=-1
with objPlayer active=0
if point_distance(x,y,objPlayer.x,objPlayer.y)>12 {
objPlayer.x+=lengthdir_x(2,point_direction(objPlayer.x,objPlayer.y,x,y))
objPlayer.y+=lengthdir_y(2,point_direction(objPlayer.x,objPlayer.y,x,y))
} else {
with objPlayer visible=0
if sprite_index=sprHenchmanCar {sound_play(sndCarStart) sprite_index=sprHenchmanCarStart image_index=0}
if sprite_index=sprHenchmanCarStart {
if image_index<3 image_index+=0.25
if start>0 start-=1 else {
objEffector.next=1
objEffector.fade=1
objEffector.nextroom=scrGetNextRoom()
objEffector.newsong=1
objEffector.song=scrGetSong()
}
}
}

}
mask_index=sprCobraCarMask
}
/* */
/*  */
